<html>
<head>
	<title></title>
	<style type="text/css">
		.hide{
			display: none;
		}
		body{
			margin: 0;
		}
	</style>
</head>
<body>
<span class="span_div span_0" >
	<center><img src="../ans.png" usemap="#ans" style="height: 500px; width: 300px; border: 1px solid #eee;"></center>
	<map name="ans">
	  <area shape="circle" coords="185,457,26" href="javascript:void(0);" class="next" rel="1">
	</map> 
</span>
<span class="span_div span_1 hide" >
	<center><img src="../ans1.png" usemap="#ans1" style="height: 500px; width: 300px; border: 1px solid #eee;"></center>
	<map name="ans1">
	  <area shape="circle" coords="280,35,18" href="javascript:void(0);" class="next" rel="2">
	  <input type="text" name="url" class="url" value="" placeholder="Enter a URL or search the web" style="position: absolute; left: 30%; top: 4.8%; width: 225px; border: medium none; ">
	</map> 
</span>
<span class="span_div span_2 hide" >
	<center><img src="./1.png" usemap="#ans2" style="height: 500px; width: 300px; border: 1px solid #eee;"></center>
	<map name="ans2">
	  <area shape="circle" coords="55,230,50" href="javascript:void(0);" class="next" rel="3">
	</map>
</span>
<span class="span_div span_3 hide" >
	<center><img src="./2.png" usemap="#ans3" style="height: 500px; width: 300px; border: 1px solid #eee;"></center>
	<map name="ans3">
	  <area shape="circle" coords="130,420,25" href="javascript:void(0);" class="next" rel="4">
	  <input type="text" name="url1" class="url1" value="" style="position: absolute; border: medium none; top: 44.6%; width: 130px; left: 44.5%;">
	</map> 
</span>
<span class="span_div span_4 hide" >
	<center><img src="./last.png" style="height: 500px; width: 300px; border: 1px solid #eee;"></center>
</span>
<script src="../jquery.min.js"></script>
<script type="text/javascript">
	$(document).on("click",".next",function(){		
		$(".span_div").addClass('hide');
        var no=$(this).attr("rel");
        if(no==2 || no==4)
        {
        	var url=$(".url").val();
        	var url1=$(".url1").val();
        	if(url=='www.indiapost.gov.in')
        	{
        		$(".span_"+no).removeClass('hide');
        	}
        	else if(url1=='CM437977444IN')
        	{
        		$(".span_"+no).removeClass('hide');
        	}
        	else
        	{
        		$(this).closest(".span_div").removeClass('hide');
        	}
        }
    	else
    	{
        	$(".span_"+no).removeClass('hide');
    	}
    	$(".url").val('');
    	$(".url1").val('');
    	var no1=$('.orange',window.parent.document).attr("rel");
        $('.q'+no1, window.parent.document).val(no);
    });
</script>
</body>
</html>