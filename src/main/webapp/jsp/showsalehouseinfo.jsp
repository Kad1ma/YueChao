<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>售房详细信息</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<script src="easyui/jquery.min.js"></script>
	<script type="text/javascript">
		$(function (){
			
			$.ajax({
				type : "post",
				url : 'jsp/ShowSelectedSaleHouseInfo.do',
				data : {
					id : <%= request.getParameter("houseId")%>,
					tableName : "House"
				},
				dataType: "json",
				success : function(data) {
					
					if(data.result == "success"){
						$("#span1").text(data.house[0].belongsToBuilding);
						$("#span2").text(data.house[0].unit);
						$("#span3").text(data.house[0].floor);
						$("#span4").text(data.house[0].housePropertyNum);
						$("#span5").text(data.house[0].structure);
						$("#span6").text(data.house[0].propertyType);
						$("#span7").text(data.house[0].houseType);
						$("#span8").text(data.house[0].area);
						$("#span9").text(data.house[0].houseLandscape);
						$("#span10").text(data.house[0].towards);
						$("#span11").text(data.house[0].position);
						$("#span12").text(data.house[0].decorateSituation);
						$("#span13").text(data.house[0].appendFacilities);
						$("#span14").text(data.house[0].housingPrice);
						$("#span15").text(data.house[0].housingPriceChangingInformation);
					}else {
						alert(data.msg);
					}
				}
			});
			
		});
	</script>
	
  </head>
  
  <body>
     <table border="1px" cellspacing="0pxs" align="center">
        <tr>
            <td width="200px">
                所属大楼：<span id="span1"></span><br/><br/>
                所属单元：<span id="span2"></span><br/><br/>
                所属楼层：<span id="span3"></span><br/><br/>
                所属户型：<span id="span4"></span><br/><br/>
                物业类型：<span id="span5"></span><br/><br/>
                具体位置：<span id="span6"></span><br/><br/>
                装修情况：<span id="span7"></span><br/><br/>
                房&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;价：<span id="span8"></span><br/><br/>
            </td>
            <td rowspan="10" width="200px">
                附属设施：<span id="span9"></span><br/><br/>
                房产编号：<span id="span10"></span><br/><br/>
                房屋结构：<span id="span11"></span><br/><br/>
                房屋面积：<span id="span12"></span><br/><br/>
                房屋景观：<span id="span13"></span><br/><br/>
                房屋朝向：<span id="span14"></span><br/><br/>
                房价变动明细：<span id="span15"></span><br/><br/>
               <button onclick="javascript:window.location.href='jsp/paypage.html'" >购买</button>
            </td>
        </tr>
    </table>
    
  </body>
</html>
