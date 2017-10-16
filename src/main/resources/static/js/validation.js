var PasswordValidation = (function () {
  
  var obj = {};
	function PasswordValidation() {
	}
	
	PasswordValidation.prototype.setIds = function(passwordId, confirmPasswordId) {
      obj.passwordId = passwordId;
      obj.confirmPasswordId = confirmPasswordId;
	  document.getElementById(passwordId).onchange = validatePassword;
      document.getElementById(confirmPasswordId).onchange = validatePassword;
	}
	
	var validatePassword = function () {
		var pass2=document.getElementById(obj.passwordId).value;
		var pass1=document.getElementById(obj.confirmPasswordId).value;
		if(pass1!=pass2)
		document.getElementById(obj.confirmPasswordId).setCustomValidity("Passwords do not match");
		else
		document.getElementById(obj.confirmPasswordId).setCustomValidity('');
	}
	
	return PasswordValidation;
})();