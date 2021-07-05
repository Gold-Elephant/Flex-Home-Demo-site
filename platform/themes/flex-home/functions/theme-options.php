<?php

theme_option()
    ->setField([
        'id'         => 'copyright',
        'section_id' => 'opt-text-subsection-general',
        'type'       => 'text',
        'label'      => __('Copyright'),
        'attributes' => [
            'name'    => 'copyright',
            'value'   => '© 2020 Botble Technologies. All right reserved.',
            'options' => [
                'class'        => 'form-control',
                'placeholder'  => __('Change copyright'),
                'data-counter' => 250,
            ],
        ],
        'helper'     => __('Copyright on footer of site'),
    ])
    ->setField([
        'id'         => 'primary_font',
        'section_id' => 'opt-text-subsection-general',
        'type'       => 'googleFonts',
        'label'      => __('Primary font'),
        'attributes' => [
            'name'  => 'primary_font',
            'value' => 'Nunito Sans',
        ],
    ])
    ->setField([
        'id'         => 'primary_color',
        'section_id' => 'opt-text-subsection-general',
        'type'       => 'customColor',
        'label'      => __('Primary color'),
        'attributes' => [
            'name'  => 'primary_color',
            'value' => '#1d5f6f',
        ],
    ])
    ->setField([
        'id'         => 'primary_color_hover',
        'section_id' => 'opt-text-subsection-general',
        'type'       => 'customColor',
        'label'      => __('Hover primary color'),
        'attributes' => [
            'name'  => 'primary_color_hover',
            'value' => '#063a5d',
        ],
    ])
    ->setField([
        'id'         => 'about-us',
        'section_id' => 'opt-text-subsection-general',
        'type'       => 'textarea',
        'label'      => __('About us'),
        'attributes' => [
            'name'    => 'about-us',
            'value'   => null,
            'options' => [
                'class' => 'form-control',
            ],
        ],
    ])
    ->setField([
        'id'         => 'hotline',
        'section_id' => 'opt-text-subsection-general',
        'type'       => 'text',
        'label'      => __('Hotline'),
        'attributes' => [
            'name'    => 'hotline',
            'value'   => null,
            'options' => [
                'class'        => 'form-control',
                'placeholder'  => 'Hotline',
                'data-counter' => 30,
            ],
        ],
    ])
    ->setField([
        'id'         => 'address',
        'section_id' => 'opt-text-subsection-general',
        'type'       => 'text',
        'label'      => __('Address'),
        'attributes' => [
            'name'    => 'address',
            'value'   => null,
            'options' => [
                'class'        => 'form-control',
                'placeholder'  => 'Address',
                'data-counter' => 120,
            ],
        ],
    ])
    ->setField([
        'id'         => 'email',
        'section_id' => 'opt-text-subsection-general',
        'type'       => 'email',
        'label'      => __('Email'),
        'attributes' => [
            'name'    => 'email',
            'value'   => null,
            'options' => [
                'class'        => 'form-control',
                'placeholder'  => 'Email',
                'data-counter' => 120,
            ],
        ],
    ])
    ->setField([
        'id'         => 'enable_sticky_header',
        'section_id' => 'opt-text-subsection-general',
        'type'       => 'select',
        'label'      => __('Enable sticky header?'),
        'attributes' => [
            'name'    => 'enable_sticky_header',
            'list'    => [
                'yes' => trans('core/base::base.yes'),
                'no'  => trans('core/base::base.no'),
            ],
            'value'   => 'yes',
            'options' => [
                'class' => 'form-control',
            ],
        ],
    ])
    ->setField([
        'id'         => 'show_map_on_properties_page',
        'section_id' => 'opt-text-subsection-general',
        'type'       => 'select',
        'label'      => __('Shop map on properties page?'),
        'attributes' => [
            'name'    => 'show_map_on_properties_page',
            'list'    => [
                'yes' => trans('core/base::base.yes'),
                'no'  => trans('core/base::base.no'),
            ],
            'value'   => 'yes',
            'options' => [
                'class' => 'form-control',
            ],
        ],
    ])
    ->setSection([
        'title'      => __('Social'),
        'desc'       => __('Social links'),
        'id'         => 'opt-text-subsection-social',
        'subsection' => true,
        'icon'       => 'fa fa-share-alt',
    ])
    ->setField([
        'id'         => 'facebook',
        'section_id' => 'opt-text-subsection-social',
        'type'       => 'text',
        'label'      => 'Facebook',
        'attributes' => [
            'name'    => 'facebook',
            'value'   => null,
            'options' => [
                'class' => 'form-control',
            ],
        ],
    ])
    ->setField([
        'id'         => 'twitter',
        'section_id' => 'opt-text-subsection-social',
        'type'       => 'text',
        'label'      => 'Twitter',
        'attributes' => [
            'name'    => 'twitter',
            'value'   => null,
            'options' => [
                'class' => 'form-control',
            ],
        ],
    ])
    ->setField([
        'id'         => 'youtube',
        'section_id' => 'opt-text-subsection-social',
        'type'       => 'text',
        'label'      => 'Youtube',
        'attributes' => [
            'name'    => 'youtube',
            'value'   => null,
            'options' => [
                'class' => 'form-control',
            ],
        ],
    ])
    ->setSection([
        'title'      => __('Content'),
        'desc'       => __('Theme options for content'),
        'id'         => 'opt-text-subsection-homepage',
        'subsection' => true,
        'icon'       => 'fa fa-edit',
        'fields'     => [
            [
                'id'         => 'number_of_featured_projects',
                'type'       => 'number',
                'label'      => __('Number of featured projects on homepage'),
                'attributes' => [
                    'name'    => 'number_of_featured_projects',
                    'value'   => 4,
                    'options' => [
                        'class' => 'form-control',
                    ],
                ],
            ],
            [
                'id'         => 'number_of_featured_cities',
                'type'       => 'number',
                'label'      => __('Number of featured cities on homepage'),
                'attributes' => [
                    'name'    => 'number_of_featured_cities',
                    'value'   => 10,
                    'options' => [
                        'class' => 'form-control',
                    ],
                ],
            ],
            [
                'id'         => 'number_of_properties_for_sale',
                'type'       => 'number',
                'label'      => __('Number of properties for sale on homepage'),
                'attributes' => [
                    'name'    => 'number_of_properties_for_sale',
                    'value'   => 8,
                    'options' => [
                        'class' => 'form-control',
                    ],
                ],
            ],
            [
                'id'         => 'number_of_properties_for_rent',
                'type'       => 'number',
                'label'      => __('Number of properties for rent on homepage'),
                'attributes' => [
                    'name'    => 'number_of_properties_for_rent',
                    'value'   => 8,
                    'options' => [
                        'class' => 'form-control',
                    ],
                ],
            ],
            [
                'id'         => 'number_of_projects_per_page',
                'type'       => 'number',
                'label'      => __('Number of projects per page'),
                'attributes' => [
                    'name'    => 'number_of_projects_per_page',
                    'value'   => 12,
                    'options' => [
                        'class' => 'form-control',
                    ],
                ],
            ],
            [
                'id'         => 'number_of_properties_per_page',
                'type'       => 'number',
                'label'      => __('Number of properties per page'),
                'attributes' => [
                    'name'    => 'number_of_properties_per_page',
                    'value'   => 15,
                    'options' => [
                        'class' => 'form-control',
                    ],
                ],
            ],
            [
                'id'         => 'number_of_related_projects',
                'type'       => 'number',
                'label'      => __('Number of related projects'),
                'attributes' => [
                    'name'    => 'number_of_related_projects',
                    'value'   => 8,
                    'options' => [
                        'class' => 'form-control',
                    ],
                ],
            ],
            [
                'id'         => 'number_of_related_properties',
                'type'       => 'number',
                'label'      => __('Number of related properties'),
                'attributes' => [
                    'name'    => 'number_of_related_properties',
                    'value'   => 8,
                    'options' => [
                        'class' => 'form-control',
                    ],
                ],
            ],
            [
                'id'         => 'home_banner_description',
                'type'       => 'text',
                'label'      => __('The description for banner search block'),
                'attributes' => [
                    'name'    => 'home_banner_description',
                    'value'   => null,
                    'options' => [
                        'class' => 'form-control',
                    ],
                ],
            ],
            [
                'id'         => 'home_banner',
                'type'       => 'mediaImage',
                'label'      => __('Top banner homepage'),
                'attributes' => [
                    'name'  => 'home_banner',
                    'value' => null,
                ],
            ],
            [
                'id'         => 'home_project_description',
                'type'       => 'textarea',
                'label'      => __('The description for projects block'),
                'attributes' => [
                    'name'    => 'home_project_description',
                    'value'   => null,
                    'options' => [
                        'class' => 'form-control',
                    ],
                ],
            ],
            [
                'id'         => 'properties_description',
                'type'       => 'textarea',
                'label'      => __('The description for properties block'),
                'attributes' => [
                    'name'    => 'properties_description',
                    'value'   => null,
                    'options' => [
                        'class' => 'form-control',
                    ],
                ],
            ],
            [
                'id'         => 'home_description_for_projects_by_locations',
                'type'       => 'textarea',
                'label'      => __('The description for projects by locations block'),
                'attributes' => [
                    'name'    => 'home_description_for_projects_by_locations',
                    'value'   => null,
                    'options' => [
                        'class' => 'form-control',
                    ],
                ],
            ],
            [
                'id'         => 'home_description_for_properties_by_locations',
                'type'       => 'textarea',
                'label'      => __('The description for properties by locations block'),
                'attributes' => [
                    'name'    => 'home_description_for_properties_by_locations',
                    'value'   => null,
                    'options' => [
                        'class' => 'form-control',
                    ],
                ],
            ],
            [
                'id'         => 'home_description_for_properties_for_sale',
                'type'       => 'textarea',
                'label'      => __('The description for properties for sale block'),
                'attributes' => [
                    'name'    => 'home_description_for_properties_for_sale',
                    'value'   => null,
                    'options' => [
                        'class' => 'form-control',
                    ],
                ],
            ],
            [
                'id'         => 'home_description_for_properties_for_rent',
                'type'       => 'textarea',
                'label'      => __('The description for properties for rent block'),
                'attributes' => [
                    'name'    => 'home_description_for_properties_for_rent',
                    'value'   => null,
                    'options' => [
                        'class' => 'form-control',
                    ],
                ],
            ],
            [
                'id'         => 'home_description_for_news',
                'type'       => 'textarea',
                'label'      => __('The description for news block'),
                'attributes' => [
                    'name'    => 'home_description_for_news',
                    'value'   => null,
                    'options' => [
                        'class' => 'form-control',
                    ],
                ],
            ],
        ],
    ]);
