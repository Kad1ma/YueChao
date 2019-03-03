
function goPage(pno,psize){
	var itable = document.getElementById("tags-browser"); 
	var num = itable.rows.length-1; //��������
	var totalPage = 0; //��ҳ��
	var pageSize = psize;  //ÿҳ��ʾ������
	
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
	var tempStr = "��" + num +"����¼ ��" + totalPage +"ҳ ��ǰ��" + currentPage + "ҳ";
	if(currentPage>1){
		tempStr += "<a href=\"planeManage.jsp\" onClick=\"goPage("+(1)+","+psize+")\">&nbsp��ҳ&nbsp</a>";
		tempStr += "<a href=\"planeManage.jsp\" onClick=\"goPage("+(currentPage-1)+","+psize+")\">&nbsp��һҳ&nbsp</a>";
	}else{
		tempStr += " ��ҳ ";
		tempStr += "��һҳ ";
	}
	if(currentPage<totalPage){
		tempStr += "<a href=\"planeManage.jsp\" onClick=\"goPage("+(currentPage+1)+","+psize+")\">��һҳ&nbsp</a>";
		tempStr += "<a href=\"planeManage.jsp\" onClick=\"goPage("+(totalPage)+","+psize+")\">βҳ</a>";
	}else{
		tempStr += "��һҳ ";
		tempStr += "βҳ";
	}
	
	document.getElementById("pager fr").innerHTML=tempStr;
}