{extends file="parent:frontend/checkout/finish.tpl"}

{block name='frontend_checkout_finish_items'}
    <div class="row mvl">
        <div class="col-md-9">
            {block name='frontend_checkout_finish_table_header'}
                {include file="frontend/checkout/finish_header.tpl"}
            {/block}

            {foreach name=basket from=$sBasket.content item=sBasketItem key=key}
                {block name='frontend_checkout_finish_item'}
                    {include file='frontend/checkout/finish_item.tpl'}
                {/block}
            {/foreach}
        </div>

        <div class="col-md-3">
            {block name='frontend_checkout_finish_table_footer'}
                {include file="frontend/checkout/finish_footer.tpl"}
            {/block}
        </div>
    </div>
{/block}
