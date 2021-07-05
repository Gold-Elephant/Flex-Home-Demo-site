<?php

namespace Botble\RealEstate\Supports;

class RealEstateHelper
{
    /**
     * @return bool
     */
    public function isRegisterEnabled(): bool
    {
        return setting('real_estate_enabled_register', '1') == '1';
    }
}
