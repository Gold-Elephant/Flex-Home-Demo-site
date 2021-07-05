<?php

namespace Botble\RealEstate\Providers;

use Botble\Payment\Supports\PaymentHelper;
use Botble\RealEstate\Models\Account;
use Botble\RealEstate\Models\Category;
use Form;
use Html;
use Illuminate\Contracts\Container\BindingResolutionException;
use Illuminate\Support\Collection;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\ServiceProvider;
use Botble\RealEstate\Repositories\Interfaces\ConsultInterface;
use Menu;
use Throwable;

class HookServiceProvider extends ServiceProvider
{
    /**
     * @var Collection
     */
    protected $unreadConsults = [];

    /**
     * @throws Throwable
     */
    public function boot()
    {
        add_filter(BASE_FILTER_TOP_HEADER_LAYOUT, [$this, 'registerTopHeaderNotification'], 130);
        add_filter(BASE_FILTER_APPEND_MENU_NAME, [$this, 'getUnReadCount'], 130, 2);

        add_filter(IS_IN_ADMIN_FILTER, [$this, 'setInAdmin'], 20, 1);

        if (defined('MENU_ACTION_SIDEBAR_OPTIONS')) {
            Menu::addMenuOptionModel(Category::class);
            add_action(MENU_ACTION_SIDEBAR_OPTIONS, [$this, 'registerMenuOptions'], 13);
        }

        $this->app->booted(function () {
            if (defined('PAYMENT_FILTER_PAYMENT_PARAMETERS')) {
                add_filter(PAYMENT_FILTER_PAYMENT_PARAMETERS, function ($html) {
                    if (!auth('account')->check()) {
                        return $html;
                    }

                    return $html . Form::hidden('customer_id', auth('account')->id())->toHtml() . Form::hidden('customer_type', Account::class)->toHtml();
                }, 123);
            }

            if (defined('PAYMENT_ACTION_PAYMENT_PROCESSED')) {
                add_action(PAYMENT_ACTION_PAYMENT_PROCESSED, function ($data) {
                    return PaymentHelper::storeLocalPayment($data);
                }, 123);
            }
        });
    }

    /**
     * @return bool
     */
    public function setInAdmin($isInAdmin): bool
    {
        return request()->segment(1) === 'account' || $isInAdmin;
    }

    /**
     * @param string $options
     * @return string
     *
     * @throws Throwable
     */
    public function registerTopHeaderNotification($options)
    {
        if (Auth::user()->hasPermission('consults.edit')) {
            $consults = $this->setUnreadConsults();

            if ($consults->count() == 0) {
                return null;
            }

            return $options . view('plugins/real-estate::notification', compact('consults'))->render();
        }

        return $options;
    }

    /**
     * @param int $number
     * @param string $menuId
     * @return string
     * @throws BindingResolutionException
     */
    public function getUnReadCount($number, $menuId)
    {
        if ($menuId == 'cms-plugins-consult') {
            $unread = count($this->setUnreadConsults());
            if ($unread > 0) {
                return Html::tag('span', (string)$unread, ['class' => 'badge badge-success'])->toHtml();
            }
        }

        return $number;
    }

    /**
     * @return Collection
     * @throws BindingResolutionException
     */
    public function setUnreadConsults(): Collection
    {
        if (!$this->unreadConsults) {
            $this->unreadConsults = $this->app->make(ConsultInterface::class)
                ->getUnread(['id', 'name', 'email', 'phone', 'created_at']);
        }

        return $this->unreadConsults;
    }

    /**
     * Register sidebar options in menu
     * @throws Throwable
     */
    public function registerMenuOptions()
    {
        if (Auth::user()->hasPermission('property_category.index')) {
            Menu::registerMenuOptions(Category::class, trans('plugins/real-estate::category.menu'));
        }
    }
}
