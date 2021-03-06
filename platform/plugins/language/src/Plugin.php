<?php

namespace Botble\Language;

use Botble\PluginManagement\Abstracts\PluginOperationAbstract;
use Schema;
use Setting;

class Plugin extends PluginOperationAbstract
{
    public static function activated()
    {
        $plugins = get_active_plugins();

        if (($key = array_search('language', $plugins)) !== false) {
            unset($plugins[$key]);
        }

        $plugins = ['language'] + $plugins;

        Setting::set('activated_plugins', json_encode($plugins))->save();
    }

    public static function remove()
    {
        Schema::dropIfExists('languages');
        Schema::dropIfExists('language_meta');
    }
}
