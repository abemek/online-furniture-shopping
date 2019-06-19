$(function() {

	$('#login').click(  function (){

		var username = $('#username').val();
		var password = $('#password').val();
		var User = {username: username, password: password};

		$.ajax({
			url: 'login',
			data : {
				mlogin: JSON.stringify(User)
			},
			error: function() {
				myFunction();
				window.location = '/login';
			},
			dataType: 'json',
			success: function(data) {
				if(data.status=='ok'){
					window.location = '/products?type=Couch';
				}else{
					myFunction();
					window.location = '/login';
				}



			},
			type: 'POST'
		});


	});

	$('#register').click(  function (){

		var username = $('#username').val();
		var password = $('#password').val();
		var password1 = $('#password1').val();
		if(password===password1 ) {

			var User = {username: username, password: password};

			$.ajax({
				url: 'register',
				data: {
					mregister: JSON.stringify(User)
				},
				error: function () {
					//myFunction();
					window.location = '/register';
				},
				dataType: 'json',
				success: function (data) {
					if (data.status == 'ok') {
						window.location = '/login';
					} else {

						window.location = '/register';
					}


				},
				type: 'POST'
			});
		}else{
			myFunction1();
		}


	});

	$('#mregister').click(mredirect);
	function mredirect() {
		window.location = '/register';
	}

	function myFunction() {
		var x = document.getElementById("snackbar");
		x.className = "show";
		setTimeout(function(){ x.className = x.className.replace("show", ""); }, 3000);
	}
	function myFunction1() {
		var x = document.getElementById("snackbar");
		x.className = "show";
		x.innerHTML="Both Password Should match"
		setTimeout(function(){ x.className = x.className.replace("show", ""); }, 3000);
	}

})



/*window.onload=chargement;

function chargement() {
	//alert("EZO KOTA2");
	var btnlogin=document.getElementById("login");
	btnlogin.onclick=login;

}
function login() {
	//alert("@@@@@@@@@");
	var username = document.getElementById("username").value;
	var password = document.getElementById("password").value;

	alert("EKOTI "+username+"--->"+password);
}*/

