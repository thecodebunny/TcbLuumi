{extends file='parent:frontend/checkout/confirm.tpl'}

{* two column cart layout *}
{block name="frontend_checkout_confirm_product_table_content"}
    <div class="row mvl">
        <div class="col-md-9">
            {block name='frontend_checkout_confirm_confirm_head'}
                {include file="frontend/checkout/confirm_header.tpl"}
            {/block}

            {block name='frontend_checkout_confirm_item_before'}{/block}

            {block name='frontend_checkout_confirm_item_outer'}
                {foreach $sBasket.content as $sBasketItem}
                    {block name='frontend_checkout_confirm_item'}
                        {include file='frontend/checkout/confirm_item.tpl'}
                    {/block}
                {/foreach}
            {/block}

            {block name='frontend_checkout_confirm_item_after'}{/block}
        </div>

        <div class="col-md-3">
            {block name='frontend_checkout_confirm_confirm_footer'}
                {include file="frontend/checkout/confirm_footer.tpl"}
            {/block}
        </div>
    </div>
{/block}

{block name='frontend_checkout_confirm_confirm_table_actions'}{/block}
