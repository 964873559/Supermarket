
// (function () {
// 	setInterval(fixed,10);
// })();

function fixed () {
	var nav = document.getElementById('nav');
	var obj = document.getElementById('query-nav');
	var top = nav.getBoundingClientRect().top; 
	var bottom = nav.getBoundingClientRect().bottom; //元素顶端到可见区域距离
	if (top<0) {
		obj.style.position = 'fixed';
	};
	if(bottom>=0) {
		obj.style.position = 'relative';
	};
}
var int = setInterval(fixed,10);