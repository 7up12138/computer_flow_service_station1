/*
 *
 * login-register modal
 * Autor: Creative Tim
 * Web-autor: creative.tim
 * Web script: #
 * 
 */
function showRegisterForm(){
    $('.loginBox').fadeOut('fast',function(){
        $('.registerBox').fadeIn('fast');
        $('.login-footer').fadeOut('fast',function(){
            $('.register-footer').fadeIn('fast');
        });
        $('.modal-title').html('Register with');
    }); 
    $('.error').removeClass('alert alert-danger').html('');
       
}
function showLoginForm(){
    $('#loginModal .registerBox').fadeOut('fast',function(){
        $('.loginBox').fadeIn('fast');
        $('.register-footer').fadeOut('fast',function(){
            $('.login-footer').fadeIn('fast');    
        });
        
        $('.modal-title').html('Login with');
    });       
     $('.error').removeClass('alert alert-danger').html(''); 
}

function openLoginModal(){
    showLoginForm();
    setTimeout(function(){
        $('#loginModal').modal('show');    
    }, 230);
    
}
function openRegisterModal(){
    showRegisterForm();
    setTimeout(function(){
        $('#loginModal').modal('show');    
    }, 230);
    
}

function loginAjax(){
    /*   Remove this comments when moving to server
    $.post( "/login", function( data ) {
            if(data == 1){
                window.location.replace("/home");            
            } else {
                 shakeModal(); 
            }
        });
    */

/*   Simulate error message from the server   */
	shakeModal();
	checklogin();
}

//登陆验证密码

function shakeModal(){
   // $('#loginModal.modal-dialog').addClass('shake');
            //$('.error').addClass('alert alert-danger').html("Invalid email/password combination");
             //$('input[type="password"]').val('');
		var password=$("#password").val();
	   if(!password){
		 
				 $("#error").text("不能为空");
		         $("#form").attr("onsubmit","return false");
		         return;
			 }
						
	if(password){
				        
		$("#error").text("");
		 return;
					 }
			 }
			
//登录验证邮箱

function checklogin(){
	
			var email=$("#email").val();
	var myreg = /^([\.a-zA-Z0-9_-])+@([a-zA-Z0-9_-])+(\.[a-zA-Z0-9_-])+/; 
		//if(email.indexOf("@")<0&&email.indexOf(".")<0)
			if(!email){
				$("#box").text("邮箱号不为空");
			$("#form").attr("onsubmit","return false");
			return;
			}
			if(!myreg.test(email))
		{
			
			$("#box").text("邮箱号不合法");
			$("#form").attr("onsubmit","return false");
			return;
		}
	if(email.indexOf("@")>0&&email.indexOf(".")>0){
			
			$("#box").text("");
			return;
		}

            // setTimeout( function(){ 
              //  $('#loginModal .modal-dialog').removeClass('shake'); 
   // }, 1000 ); 
}

   