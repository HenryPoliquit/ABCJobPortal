function printError(elemId, hintMsg) {
    document.getElementById(elemId).innerHTML = hintMsg;
}

function validateForm(){  
const firstName = document.myForm.firstName.value;
const lastName = document.myForm.lastName.value;
const password = document.myForm.password.value;
const passwordConfirmation = document.myForm.passwordConfirmation.value;

var message1 = message2 = message3 = message4 = message5 = true;

if(firstName == "") {
	printError("message1", "Please enter your first name");
} else if(!isNaN(firstName)){
	printError("message1", "Please enter characters only")
} else {
	message1 = false;
}
	
if(lastName == "") {
	printError("message2", "Please enter your last name");
} else if(!isNaN(lastName)){
    printError("message2", "Please enter characters only");
} else {
	message2 = false;
}

var x=document.myForm.emailAddress.value;  
var atposition=x.indexOf("@");  
var dotposition=x.lastIndexOf(".");  

if (atposition<1 || dotposition<atposition+2 || dotposition+2>=x.length){ 
  	printError("message3", "Please enter a valid e-mail address with @ and .");
} else {
	message3 = false;
}  

if(password == "") {
	printError("message4", "Please enter a password");
} else {
	message4 = false;
}
  
if(passwordConfirmation == "") {
	printError("message5", "Please enter confirm your password");
} else {
	message5 = false;
}

if(password.length < 8) {
	printError("message4", "Please enter a password with minimum 8 characters");
} else {
	message4 = false;
}

if(password.length > 15) {
	printError("message4", "Please enter a password with maximum 15 characters");
} else {
	message4 = false;
}
	
if(password != passwordConfirmation){
	printError("message4", "Password must be the same");
	printError("message5", "Password must be the same");
} else {
	message4 = false;
	message5 = false;
}

if((message1 || message2 || message3 || message4 || message5) == true) {
    return false;
}

}

function checkCode() {
	
if(document.codeCheck.verification.value == "") {
	document.getElementById("message7").innerHTML = "Code is required"
	return false;
}

if(document.codeCheck.verification.value.length < 6) {
	document.getElementById("message7").innerHTML = "Enter 6-digit code";
	return false;
	}

if(document.codeCheck.verification.value.length > 6) {
	document.getElementById("message7").innerHTML = "Enter 6-digit code";
	return false;
	} 
}

function login() {
	const password = document.getElementById('password').value;
	var x = document.getElementById('emailAddress').value;  
	var atposition = x.indexOf("@");  
	var dotposition = x.lastIndexOf(".");
	  
	var error1 = error2 = true;
	
	if (atposition<1 || dotposition<atposition+2 || dotposition+2>=x.length){ 
  	printError("error1", "Please enter a valid e-mail address with @ and .");
	} else if(password.length < 8) {
	printError("error2", "Please enter a password with minimum 8 characters");
	} else if(password.length > 15) {
	printError("error2", "Please enter a password with maximum 15 characters");
	} else {
	error1 = false;
	error2 = false;
	}
	
	if((error1 || error2) == true) {
    return false;
	}
} 

function forgotPassword(){
	var x = document.getElementById('floatingInput').value;  
	var atposition = x.indexOf("@");  
	var dotposition = x.lastIndexOf(".");
	var error1 = true;
	if (atposition<1 || dotposition<atposition+2 || dotposition+2>=x.length){ 
  	printError("error1", "Please enter a valid e-mail address with @ and .");
	} else {
	error1 = false;
	}
	
	if(error1 == true) {
		return false;
	}
}

function resetPassword() {
	var password = document.getElementById('password').value;
	var passwordConfirmation = document.getElementById('passwordConfirm').value;
	
	var error3 = error4 = true;
	
	if(password == "" && passwordConfirmation == "") {
		printError("error3", "Please enter password");
		printError("error4", "Please enter password");
	} else if(password.length < 8) {
	printError("error3", "Please enter a password with minimum 8 characters");
	} else if(password.length > 15) {
	printError("error3", "Please enter a password with maximum 15 characters");
	} else if(password != passwordConfirmation) {
		printError("error3", "Passwords must match");
		printError("error4", "Passwords must match");
	} else {
		error3 = false;
		error4 = false;
	}
	
	if((error3 || error4) == true){
		return false;
	}
}
