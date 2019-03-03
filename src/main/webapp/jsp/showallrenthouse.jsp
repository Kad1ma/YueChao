<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>jsp/">
    
    <title>租楼（我要租楼）</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

	
	<script src="../easyui/jquery.min.js"></script>
    <script src="../easyui/jquery.easyui.min.js"></script>
    <script src="../easyui/locale/easyui-lang-zh_CN.js"></script>
    <link rel="stylesheet" type="text/css" href="../easyui/themes/icon.css" />
    <link rel="stylesheet" type="text/css" href="../easyui/themes/metro-blue/easyui.css" />
     <script>
        $(function() {
            $("#tbl").datagrid({
            	idField:"rentHouseId",
                width:'100%',
                url:"showAllRentByPage.do?",  //使用url属性指定datagrid远程加载数据的数据源
                rownumbers:true,  //显示一列序号
                singleSelect:true,  //代表当前数据表格中的行只能够进行单选
                pagination:true,  //在数据表中显示一行分页工具栏
                queryParams :{
                	tableName : "RentHouse"
                },
                page:30,
                onClickRow: function(rowIndex,rowData){
                	showSelectedHouseDataOnMap(rowData);
                },
                columns:[
                    [
                        {field:"housePropertyNum", title:"房产编号", width:"6.25%", align:"center"},
                        {field:"belongsToBuilding", title:"所属大楼", width:"6.25%", align:"center"},
                        {field:"unit", title:"所属单元", width:"6.25%", align:"center"},
                        {field:"floor", title:"房屋楼层", width:"6.25%", align:"center"},
                        {field:"houseType", title:"房屋户型", width:"6.25%", align:"center"},
                        {field:"propertyType", title:"物业类型", width:"6.25%", align:"center"},
                        {field:"position", title:"房屋位置", width:"6.25%", align:"center"},
                        {field:"decorateSituation", title:"具体位置", width:"6.25%", align:"center"},
                        {field:"towards", title:"房屋朝向", width:"6.25%", align:"center"},
                        {field:"area", title:"房屋面积", width:"6.25%", align:"center"},
                        {field:"configurationFacilities", title:"配置设施", width:"6.25%", align:"center"},
                        {field:"appendFacilities", title:"房屋价格", width:"6.25%", align:"center"},
                        {field:"structure", title:"房屋价格", width:"6.25%", align:"center"},
                        {field:"houseLandscape", title:"房屋价格", width:"6.25%", align:"center"},
                        {field:"purpose", title:"房屋价格", width:"6.25%", align:"center"},
                        {field:"tel", title:"房屋价格", width:"6.25%", align:"center"},
                        {field:"rentMoney", title:"房屋价格", width:"6.25%", align:"center"},
                    ]
                ]
            });
            
             var showSelectedHouseDataOnMap = function(rowData){
            	if(rowData.rentHouseId){
            		window.open("showrenthouseinfo.jsp?rentHouseId=" + rowData.rentHouseId);
            	}
            };
        });
    </script>

</head>
<body>
<h1>乐巢——哈理工租楼中心（我是买家）<a href="<%=basePath%>jsp/choosepage.jsp">返回</a></h1>
<table id="tbl"></table>
</body>
</html>
