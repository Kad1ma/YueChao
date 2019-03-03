<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="en">
<head>
    <title>租楼（我是房东）</title>
    
    <script src="../easyui/jquery.min.js"></script>
	<script type="text/javascript">
		$(function(){
			$("#btn").click(function(){
				for(var i = 1; i <= 17; i++){
					if($("#input"+i).val() == ""){
						alert("不能为空！！！");
						return;
					}
				}
				$("#form").submit();
			});
		});
	</script>
</head>
<body>
<h1>乐巢——哈理工租楼中心（我是卖家）<a href="<%=basePath%>jsp/choosepage.jsp">返回</a></h1>
<form id="form" action="rentHouse.do" method="post">
    <table border="1px" cellspacing="0pxs" align="center">
        <tr>
            <td rowspan="10" align="right">
		                所属大楼：<input id="input1" type="text" name="belongsToBuilding" size="20"><br/><br/>
		                所属单元：<input id="input2" type="text" name="unit" size="20"><br/><br/>
		                所属楼层：<input id="input3" type="text" name="floor" size="20"><br/><br/>
		                房&nbsp;产&nbsp;号：    <input id="input4" type="text" name="housePropertyNum" size="20"><br/><br/>
		                房屋结构：<input id="input5" type="text" name="structure" size="20"><br/><br/>
		                物业类型：<input id="input7" type="text" name="propertyType" size="20"><br/><br/>
		                户&nbsp;&nbsp;&nbsp;&nbsp;型：        <input id="input" type="text" name="houseType" size="20"><br/><br/>
		                房屋面积：<input id="input8" type="text" name="area" size="20"><br/><br/>
            </td>
            <td rowspan="10" align="right">
		                房屋景观：<input id="input9" type="text" name="houseLandscape" size="20"><br/><br/>
		                房产朝向：<input id="input10" type="text" name="towards" size="20"><br/><br/>
		                房屋位置：<input id="input11" type="text" name="position" size="20"><br/><br/>
		                装修状况：<input id="input12" type="text" name="decorateSituation" size="20"><br/><br/>
		                附属设施：<input id="input13" type="text" name="appendFacilities" size="20"><br/><br/>
		                配置设施：<input id="input14" type="text" name="configurationFacilities" size="20"><br/><br/>
		                用&nbsp;&nbsp;&nbsp;&nbsp;途：<input id="input15" type="text" name="purpose" size="20"><br/><br/>
		                联系电话：<input id="input16" type="text" name="tel" size="20"><br/><br/>
            </td>
            <td rowspan="10" align="center">
                   房屋出租价:<input id="input17" type="text" name="rentMoney" size="5">元<br/><br/>
                <input id="btn" type="button" value="提交"/>&nbsp;&nbsp;
                <input type="reset" value="重置"/>&nbsp;&nbsp;
                <input type="hidden" value="rent" name="serviceType" >
            </td>
        </tr>
    </table>
</form>
<a href="<%=basePath%>/jsp/pricingtrial.jsp?" style="padding-left: 340px;">→→→在线定价试算（帮助您快速估计房屋的参考价值，结果仅供参考）</a>
</body>
</html>

