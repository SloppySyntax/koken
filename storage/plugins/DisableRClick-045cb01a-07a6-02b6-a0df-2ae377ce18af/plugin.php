<?php

class NoRClick extends KokenPlugin {

	function __construct()
	{
		$this->register_hook('before_closing_head', 'head');
		$this->register_hook('before_closing_body', 'body');
	}

	function head(){
		if (isset($this->data->NoRClick_Color)){
			$color = $this->data->NoRClick_Color;
		}else{
			$color = "#fff";
		}	
		if (isset($this->data->NoRClick_Opacity)){
			$opacity = $this->data->NoRClick_Opacity;
		}else{
			$opacity = "0.8";
		}	
		if (isset($this->data->NoRClick_Padding)){
			$padding = $this->data->NoRClick_Padding;
		}else{
			$padding = "15px";
		}			

		echo "
		<script>
		$(function () {
			  $('#menu').hide();	
			  $('img').bind(\"contextmenu\",function(e){
					$('#menu').css({
						top: e.pageY+'px',
						left: e.pageX+'px'
					}).show();

				return false;
			  });  
		 });
		</script>
		<style>
		#menu {
			display: none;
			position: absolute;
			padding: ".$padding.";
			background-color:".$color.";
			opacity: ".$opacity.";
			-moz-border-radius:10px;
			-webkit-border-radius:10px;
			-webkit-box-shadow: 0px 0 3px rgba(0,0,0,0.25);
			-moz-box-shadow: 0px 0 3px rgba(0,0,0,0.25);
			box-shadow: 0px 0 3px rgba(0,0,0,0.25); 	
		}	
		</style>
		";
	}
	function body(){
		if (isset($this->data->NoRClick)){
			$notice = $this->data->NoRClick;
		}else{
			$notice = "Rightclick has been disabled";
		}
		if (isset($this->data->NoRClick_Year)){
			$year = date('Y');
		}else{
			$year = "";
		}			
		echo "<div id=\"menu\">&copy; ".$year." ".$notice."</div>";
	}
}