{extends file='parent:frontend/checkout/cart.tpl'}

{* two column cart layout *}
{block name='frontend_checkout_cart_panel'}
	<div class="row mvl">
		<div class="col-md-9">
		    {block name='frontend_checkout_cart_cart_head'}
		        {include file="frontend/checkout/cart_header.tpl"}
		    {/block}

		    {foreach $sBasket.content as $sBasketItem}
		        {block name='frontend_checkout_cart_item'}
		            {include file='frontend/checkout/cart_item.tpl'}
		        {/block}
		    {/foreach}
		</div>

		<div class="col-md-3">
		    {block name='frontend_checkout_cart_cart_footer'}
		        {include file="frontend/checkout/cart_footer.tpl"}
		    {/block}	
		</div>
	</div>
{/block}

{block name='frontend_checkout_cart_table_actions_wrapper'}{/block}
{block name='frontend_checkout_cart_table_actions_bottom_wrapper'}{/block}