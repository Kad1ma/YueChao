<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>售楼（我要卖楼）</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	
	<script src="easyui/jquery.min.js"></script>
    <script src="easyui/jquery.easyui.min.js"></script>
    <script src="easyui/locale/easyui-lang-zh_CN.js"></script>
    <link rel="stylesheet" type="text/css" href="easyui/themes/icon.css" />
    <link rel="stylesheet" type="text/css" href="easyui/themes/metro-blue/easyui.css" />
	<script>
        $(function() {
            $("#tbl").datagrid({
            	idField:"houseId",
                width:'100%',
                striped : true,//是否显示斑马线效果
                url:"jsp/showAllSaleHousesByPage.do",  //使用url属性指定datagrid远程加载数据的数据源
                rownumbers:true,  //显示一列序号
                singleSelect:true,  //代表当前数据表格中的行只能够进行单选
                pagination:true,  //在数据表中显示一行分页工具栏
                pageSize:30,
                queryParams : {
                	tableName : "House"
                },
                onClickRow: function(rowIndex,rowData){
                	showSelectedHouseDataOnMap(rowData);
                }, 
                columns:[
                    [
                        {field:"housingPrice", title:"房价", width:"6.7%", align:"center"},
                        {field:"houseType", title:"户型", width:"6.7%", align:"center"},
                        {field:"belongsToBuilding", title:"所属大楼", width:"6.6%", align:"center"},
                        {field:"towards", title:"朝向", width:"6.7%", align:"center"},
                        {field:"appendFacilities", title:"附属设施", width:"6.7%", align:"center"},
                        {field:"structure", title:"结构", width:"6.6%", align:"center"},
                        {field:"decorateSituation", title:"装修状况", width:"6.7%", align:"center"},
                        {field:"position", title:"位置", width:"6.7%", align:"center"},
                        {field:"housingPriceChangingInformation", title:"房价变动明细", width:"6.7%", align:"center"},
                        {field:"floor", title:"楼层", width:"6.6%", align:"center"},
                        {field:"unit", title:"单元", width:"6.6%", align:"center"},
                        {field:"area", title:"面积", width:"6.7%", align:"center"},
                        {field:"houseLandscape", title:"房屋景观", width:"6.7%", align:"center"},
                        {field:"propertyType", title:"物业类型", width:"6.7%", align:"center"},
                        {field:"housePropertyNum", title:"房产号", width:"6.6%", align:"center"},
                    ]
                ]
            });
            
            var showSelectedHouseDataOnMap = function(rowData){
            	if(rowData.houseId){
            		window.open("jsp/showsalehouseinfo.jsp?houseId=" + rowData.houseId);
            	}
            };
        });
    </script>
	
  </head>
  
  <body>
    <h1>乐巢——哈理工售楼中心（我是买家）<a href="<%=basePath%>jsp/choosepage.jsp">返回</a></h1>
	<table id="tbl"></table>
  </body>
</html>
