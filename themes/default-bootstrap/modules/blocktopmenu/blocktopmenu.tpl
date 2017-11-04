{if $MENU != ''}
	<!-- Menu -->
	<div id="block_top_menu" class="sf-contener clearfix col-lg-12">
		<div class="cat-title">{l s="Menu" mod="blocktopmenu"}</div>
		<ul class="sf-menu clearfix menu-content container"><!--add class .container-->
			{$MENU}
			{if $MENU_SEARCH}
				<li class="sf-search noBack" style="float:right">
					<form id="searchbox" action="{$link->getPageLink('search')|escape:'html':'UTF-8'}" method="get">
						<p>
							<input type="hidden" name="controller" value="search" />
							<input type="hidden" value="position" name="orderby"/>
							<input type="hidden" value="desc" name="orderway"/>
							<input type="text" name="search_query" value="{if isset($smarty.get.search_query)}{$smarty.get.search_query|escape:'html':'UTF-8'}{/if}" />
						</p>
					</form>
				</li>
			{/if}
		</ul>
	</div>
	<!--/ Menu -->
{/if}
<!--script scroll navigation-->
<script type="text/javascript">
$(document).ready(function(){
	var start_pos = $('#block_top_menu').offset().top;
	$(window).scroll(function(){
        if ($(window).scrollTop()>=start_pos) {
      	    if ($('#block_top_menu').hasClass()==false) {
			    $('#block_top_menu').addClass('scroll');
		    }
        } else {
		    $('#block_top_menu').removeClass('scroll');
	    }	
    }); 
});
</script>