{extends file='parent:frontend/checkout/confirm_footer.tpl'}

{* replace cart button with confirm button *}
{block name="frontend_checkout_summary_button"}
	{if !$sLaststock.hideBasket}
        {if $sPayment.embediframe || $sPayment.action}
            <button type="submit" class="btn btn-primary btn-block confirm-form-submit" form="confirmForm" data-preloader-button="true">
                {s name='ConfirmDoPaymentFooter'}Zahlungspflichtig bestellen{/s}
            </button>
        {else}
            <button type="submit" class="btn btn-primary btn-block confirm-form-submit" form="confirmForm" data-preloader-button="true">
                {s name='ConfirmActionSubmitFooter'}Zahlungspflichtig bestellen{/s}
            </button>
        {/if}
    {/if}
{/block}

{block name="frontend_checkout_cart_summary_add_voucher"}{/block}