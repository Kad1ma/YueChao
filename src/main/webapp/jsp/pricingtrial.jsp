<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="en">
<head>
    <title>定价试算</title>
    <script src="easyui/jquery.min.js"></script>
    <script src="easyui/jquery.easyui.min.js"></script>
    <script type="text/javascript">
    		function fun(){
    			var selected = $("#mthd option:selected").val();
    			if(selected == "sale"){
    				$("#mth").hide();
    			}else{
    				$("#mth").show();
    			}
    		}
    </script>
  
</head>
<body>
    <form action="pricingtrial.do" method="post">
        <h1>请如实填写相关信息，结果仅供参考：</h1>
        请选择房屋划分：<select id="mthd" onchange="fun()" name="method">
                    <option value="rent">租楼</option>
                    <option value="sale">卖楼</option>
                  </select><br><br><br>
        （1）户型面积：<input type="text" name="area" size="5">平方米<br><br><br>
        （2）楼层：<input type="radio" value="6" name="FLOOR">高&nbsp;&nbsp;&nbsp;&nbsp;
                    <input type="radio" value="8" name="FLOOR">中&nbsp;&nbsp;&nbsp;&nbsp;
                    <input type="radio" value="4" name="FLOOR">低<br><br><br>
        （3）结构：<input type="radio" value="6" name="structure">复式&nbsp;&nbsp;&nbsp;&nbsp;
                    <input type="radio" value="4" name="structure">单层<br><br><br>
        （4）朝向：<input type="radio" value="9" name="towards">南北朝向（最好）&nbsp;&nbsp;&nbsp;&nbsp;
                    <input type="radio" value="4" name="towards">东西朝向（较好）<br><br><br>
        （5）位置：<input type="radio" value="8" name="POSITION">高校&nbsp;&nbsp;&nbsp;&nbsp;
                    <input type="radio" value="7" name="POSITION">机场车站&nbsp;&nbsp;&nbsp;&nbsp;
                    <input type="radio" value="8" name="POSITION">地铁站&nbsp;&nbsp;&nbsp;&nbsp;
                     <input type="radio" value="7" name="POSITION">靠近景点<br><br><br>
        （6）附属设施：<input type="radio" value="9" name="appendFacilities">停车位&nbsp;&nbsp;&nbsp;&nbsp;
                        <input type="radio" value="6" name="appendFacilities">电梯&nbsp;&nbsp;&nbsp;&nbsp;
                        <input type="radio" value="7" name="appendFacilities">阳台<br><br><br>
        （7）装修程度：<input type="radio" value="9" name="decorateSituation">精装&nbsp;&nbsp;&nbsp;&nbsp;
                         <input type="radio" value="7" name="decorateSituation">简装&nbsp;&nbsp;&nbsp;&nbsp;
                         <input type="radio" value="4" name="decorateSituation">无装<br><br><br>
                  <div id="mth" style="display: block;">（8）月份：<input type="text" name="month"></div>
                  <input type="submit" value="试算" style="margin-left:400px">
                  <a href="<%=basePath%>choosepage.jsp">返回</a>
    </form>
</body>
</html>