
function goPage(pno,psize){
	var itable = document.getElementById("tags-browser"); 
	var num = itable.rows.length-1; //所有行数
	var totalPage = 0; //总页数
	var pageSize = psize;  //每页显示的行数
	
	if(num/pageSize > parseInt(num/pageSize)){
		totalPage = parseInt(num/pageSize)+1;
	}else{
		totalPage = parseInt(num/pageSize);
	}
	
	var currentPage = pno;
	var startRow = (currentPage-1) * pageSize + 1;
	var endRow = currentPage * pageSize;
	endRow = (endRow > num)?num:endRow;
	
	for(var i=1; i<(num+1);i++){
		var irow = itable.rows[i-1];
		if(i>=startRow && i<=endRow){
			irow.style.display = "block";
		}
		else{
			irow.style.display = "none";
		}
	}
	var tempStr = "共" + num +"条记录 分" + totalPage +"页 当前第" + currentPage + "页";
	if(currentPage>1){
		tempStr += "<a href=\"planeManage.jsp\" onClick=\"goPage("+(1)+","+psize+")\">&nbsp首页&nbsp</a>";
		tempStr += "<a href=\"planeManage.jsp\" onClick=\"goPage("+(currentPage-1)+","+psize+")\">&nbsp上一页&nbsp</a>";
	}else{
		tempStr += " 首页 ";
		tempStr += "上一页 ";
	}
	if(currentPage<totalPage){
		tempStr += "<a href=\"planeManage.jsp\" onClick=\"goPage("+(currentPage+1)+","+psize+")\">下一页&nbsp</a>";
		tempStr += "<a href=\"planeManage.jsp\" onClick=\"goPage("+(totalPage)+","+psize+")\">尾页</a>";
	}else{
		tempStr += "下一页 ";
		tempStr += "尾页";
	}
	
	document.getElementById("pager fr").innerHTML=tempStr;
}