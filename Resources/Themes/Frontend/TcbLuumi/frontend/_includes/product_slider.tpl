{extends file="parent:frontend/_includes/product_slider.tpl"}

{* remvove slider arrows *}
{block name="frontend_common_product_slider_config"}
    {$smarty.block.parent}

    {$sliderArrows = '0'}
    {$sliderMDArrows = '0'}
    {$sliderHDArrows = '0'}
    {$sliderSMArrows = '0'}
    {$sliderXSArrows = '0'}
{/block}