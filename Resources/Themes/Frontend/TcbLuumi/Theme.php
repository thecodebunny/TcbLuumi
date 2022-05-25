<?php

namespace Shopware\Themes\Splendor;

use Shopware\Components\Form as Form;

class Theme extends \Shopware\Components\Theme

{

    protected $extend = 'Responsive';

    protected $name = <<<'SHOPWARE_EOD'

SPLENDOR

SHOPWARE_EOD;

    protected $description = <<<'SHOPWARE_EOD'

Ultimate Mega UI/UX Theme by TheCodeBunny

SHOPWARE_EOD;

    protected $author = <<<'SHOPWARE_EOD'

TheCodeBunny

SHOPWARE_EOD;

    protected $license = <<<'SHOPWARE_EOD'

TheCodeBunny (Hemang Vyas)

SHOPWARE_EOD;

    protected $injectBeforePlugins =  true;

    protected $css = array(
        'src/css/jquery-ui.css'
    );

    protected $javascript = array(
        'src/js/jquery-ui.min.js',
        'src/js/scroll-to-top.js',
        'src/js/override.js',
        'src/js/init-jqi.js'
    );

    public function createConfig(Form\Container\TabContainer $container)
    {
    }
}