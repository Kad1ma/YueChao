function a() {
	

		var oNav = document.getElementById('mydiv2');
		var aH3 = oNav.getElementsByTagName('h3');

/*		for(var i=0; i<aH3.length; i++){
			aH3[i].onclick = function(){
				var oUl = next(this);
				oUl.style.display = (oUl.style.display == 'block' ? 'none' : 'block');
			};
		}
*/
		
		oNav.onclick = function(e){
			var obj = e ? e.target : event.srcElement;
			if(obj.tagName == 'H3'){
				var oUl = next(next(obj));
				oUl.style.display = (oUl.style.display == 'block' ? 'none' : 'block');
			}
		};

		

		function next(elem){
			do{
				elem = elem.nextSibling;
			}while(elem && elem.nodeType != 1)
			return elem;

		}
}
