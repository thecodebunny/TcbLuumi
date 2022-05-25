{extends file='parent:frontend/listing/index.tpl'}

{* fullscreen listing without sidebar *}
{block name="gridconfig"}
	{$smarty.block.parent}

    {assign "grid" "g010" scope="global"}
{/block}

{* empty left sidebar *}
{block name='frontend_index_content_left'}{/block}