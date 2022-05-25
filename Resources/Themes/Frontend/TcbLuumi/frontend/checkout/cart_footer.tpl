{block name='frontend_checkout_cart_footer_element'}
    <div class="cart-summary-sidebar">
        {block name='frontend_checkout_cart_cart_footer_right'}
            {block name='frontend_checkout_cart_footer_tax_information'}{/block}

            {block name='frontend_checkout_cart_footer_field_labels'}
                <div class="panel panel-default">
                    <div class="panel-heading">
                        {s name="CartFooterSummaryHeader"}Zusammenfassung{/s}
                    </div>

                    <div class="panel-body">
                        {* Basket sum *}
                        {block name='frontend_checkout_cart_footer_field_labels_sum'}
                            <div class="row mbs">
                                {block name='frontend_checkout_cart_footer_field_labels_sum_label'}
                                    <div class="col-xs-7">
                                        {s name="CartFooterLabelSum"}{/s}
                                    </div>
                                {/block}
                                {block name='frontend_checkout_cart_footer_field_labels_sum_value'}
                                    <div class="col-xs-5">
                                        {$sBasket.Amount|currency}
                                    </div>
                                {/block}
                            </div>
                        {/block}

                        {* Shipping costs *}
                        {block name='frontend_checkout_cart_footer_field_labels_shipping'}
                            <div class="row mbs">
                                {block name='frontend_checkout_cart_footer_field_labels_shipping_label'}
                                    <div class="col-xs-7">
                                        {s name="CartFooterLabelShipping"}{/s}
                                    </div>
                                {/block}
                                {block name='frontend_checkout_cart_footer_field_labels_shipping_value'}
                                    <div class="col-xs-5">
                                        {$sShippingcosts|currency}
                                    </div>
                                {/block}
                            </div>
                        {/block}

                        {* Total sum *}
                        {block name='frontend_checkout_cart_footer_field_labels_total'}
                            <div class="row mbs">
                                {block name='frontend_checkout_cart_footer_field_labels_total_label'}
                                    <div class="col-xs-7">
                                        <strong>{s name="CartFooterLabelTotal"}{/s}</strong>
                                    </div>
                                {/block}
                                {block name='frontend_checkout_cart_footer_field_labels_total_value'}
                                    <div class="col-xs-5">
                                        <strong>{if $sAmountWithTax && $sUserData.additional.charge_vat}{$sAmountWithTax|currency}{else}{$sAmount|currency}{/if}</strong>
                                    </div>
                                {/block}
                            </div>                        
                        {/block}

                        {* Total net *}
                        {block name='frontend_checkout_cart_footer_field_labels_totalnet'}
                            {if $sUserData.additional.charge_vat}
                                <div class="row mbs">
                                    {block name='frontend_checkout_cart_footer_field_labels_totalnet_label'}
                                        <div class="col-xs-7">
                                            {s name="CartFooterTotalNet"}{/s}
                                        </div>
                                    {/block}
                                    {block name='frontend_checkout_cart_footer_field_labels_totalnet_value'}
                                        <div class="col-xs-5">
                                            {$sAmountNet|currency}
                                        </div>
                                    {/block}
                                </div>

                                {* Taxes *}
                                {block name='frontend_checkout_cart_footer_field_labels_taxes'}
                                    {foreach $sBasket.sTaxRates as $rate=>$value}
                                        {block name='frontend_checkout_cart_footer_field_labels_taxes_entry'}
                                            <div class="row mbs">
                                                {block name='frontend_checkout_cart_footer_field_labels_taxes_label'}
                                                    <div class="col-xs-7">
                                                        {s name="CartFooterTotalTax"}{/s}
                                                    </div>
                                                {/block}
                                                {block name='frontend_checkout_cart_footer_field_labels_taxes_value'}
                                                    <div class="col-xs-5">
                                                        {$value|currency}
                                                    </div>
                                                {/block}
                                            </div>
                                        {/block}
                                    {/foreach}
                                {/block}
                            {/if}
                        {/block}

                        {block name="frontend_checkout_cart_summary_add_voucher"}
                            {if $sTargetAction != 'shippingPayment'}
                                <form class="mtl" method="post" action="{url action='addVoucher' sTargetAction=$sTargetAction}">
                                    <div class="input-group">
                                        <input type="text" class="form-control" id="basket_add_voucher" name="sVoucher" placeholder="{s name='CheckoutFooterAddVoucherLabelInline' namespace='frontend/checkout/cart_footer_left'}{/s}">
                                        <span class="input-group-btn">
                                            <button class="btn btn-default" type="submit">
                                                <i class="fa fa-plus"></i>
                                            </button>
                                        </span>
                                    </div>
                                </form>
                            {/if}
                        {/block}
                    </div>

                    {block name="frontend_checkout_cart_summary_panel"}
                        {if $sTargetAction != 'shippingPayment'}
                            <div class="panel-footer">
                                {block name="frontend_checkout_summary_button"}
                                    <a href="{if {config name=always_select_payment}}{url controller='checkout' action='shippingPayment'}{else}{url controller='checkout' action='confirm'}{/if}" 
                                       title="{"{s name='CheckoutActionsLinkProceed' namespace='frontend/checkout/actions'}{/s}"|escape}" 
                                       class="btn btn-primary btn-block checkout-action-btn" {if $sMinimumSurcharge && $sDispatchNoOrder}disabled="disabled"{/if}>
                                        {s name="CheckoutActionsLinkProceed" namespace="frontend/checkout/actions"}{/s}
                                    </a>
                                {/block}
                            </div>
                        {/if}
                    {/block}
                </div>
            {/block}
        {/block}
    </div>
{/block}
