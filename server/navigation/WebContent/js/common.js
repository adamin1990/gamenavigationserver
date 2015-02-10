/*****************************************************************
****                        ªª“≥¥¶¿Ì                         *****
*****************************************************************/
function topage(whichPage){
	objform=document.forms[0];
    objform.page.value = whichPage;
    objform.submit();
}
function skip(obj){
	var num = obj.value;
	topage(num); 
}