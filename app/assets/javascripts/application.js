// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .

$( document ).ready(function() {
	
	$("#signForm").hide();

    $("#appear").click(function(){
        $("#signForm").show();
    });

    
});

$(document).ready(function(){
  $("form#loginForm").submit(function() { // loginForm is submitted
    var username = $('#inputEmail').val(); // get username
    var password = $('#inputPassword').val(); // get password
    //alert(username +" "+ password);
    var HeaderEP = "Empy Spaces";
    var FailLogIn = "LogIn Failed";
    var successfulLogIN = "Success!";
    var alertMsg = "Please enter your email and password";
    var incorrect = "The email and password are incorrect";
    var correct = "You have successfully logged in";

   $.ajax({
		url: "http://localhost:3000/login",
		method: "GET",
		dataType: "JSON",
		data: { email: $("#inputEmail").val(), password: $("#inputPassword").val() },
		success: function(data) {
			if(data.status == "correct") {
				$("#loginForm").hide();
				$('#myModal').find('h4.modal-title').html('<span>'+successfulLogIN+'</span>'); 
            	$('#myModal').find('p').html('<span>'+correct+'</span>');   
            	$('#myModal').modal();	
			}
			else {
				$('#myModal').find('h4.modal-title').html('<span>'+FailLogIn+'</span>'); 
            	$('#myModal').find('p').html('<span>'+incorrect+'</span>');   
            	$('#myModal').modal();
			}
		}
	});
  });
});


