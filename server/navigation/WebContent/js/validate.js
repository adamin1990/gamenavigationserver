/***************************liyinpeng************************/
/**
 * 楠岃瘉鏄惁涓虹┖
 * 鏄�	return true;
 * 鍚�	return false;
 * @param obj
 * @returns {Boolean}
 */
function isBlank(obj) {
	if (obj.value.replace(/^\s+|\s+$/g,"") == "") {
		return true;
    } else {
        return false;
    }
}

/**
 * 楠岃瘉鏄惁鍙寘鍚暟瀛�
 * 鏄�return true;
 * 鍚�return false;
 * @param obj
 * @returns {Boolean}
 */
function isNumber(obj) {
	var reg = /^[0-9]+$/;
    if(reg.test(obj.value)) {
    	return true;
    } else {
    	return false;
    }
}

/**
 * 楠岃瘉鏄惁涓哄弻绮惧害鏁板�
 * 鏄�return true;
 * 鍚�return false;
 * @param obj
 * @returns {Boolean}
 */
function isDouble(obj) {
	var reg = /^[0-9]+(\.[0-9]+)?$/;
	if(reg.test(obj.value)) {
		return true;
	} else {
		return false;
	}
}

/**
 * 楠岃瘉鏄惁鍙寘鍚瓧姣嶅拰鏁板瓧
 * 鏄�return true;
 * 鍚�return false;
 * @param obj
 * @returns {Boolean}
 */
function isStrOrNum(obj) {
	var strNumReg=/^[0-9a-zA-Z]*$/;
	if(strNumReg.test(obj.value)) {
		return true;
	} else {
		return false;
	}
}

/**
 * 楠岃瘉鏄惁涓哄浘鐗�
 * 鏄�	return true;
 * 鍚�	return false;
 * @param obj
 * @returns {Boolean}
 */
function isImage(obj) {
	var imagefile = obj.value;
	var ext = imagefile.substring(imagefile.length-3).toLowerCase();
	if (ext == "jpg" || ext == "gif" || ext == "bmp" || ext == "png"||ext=="peg") {
		return true;
	}
	return false;
}

/**
 * 楠岃瘉瀛楃鏄惁瓒呰繃鏈�ぇ闀垮害闄愬埗
 * 鏄�return ture;
 * 鍚�return false;
 * @param obj
 * @param maxLength
 * @returns {Boolean}
 */
function isTooLongString(obj, maxLength) {
	obj.value = obj.value.replace(/(^\s*)|(\s*$)/g, "");
	var newvalue = obj.value.replace(/[^\x00-\xff]/g, "**");
	var leng = newvalue.length;
	if(leng > maxLength) {
		return true;
	} else {
		return false;
	}
}
