<!DOCTYPE html>
<html lang="en">

<head> 
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<!-- Primary Meta Tags -->
<title>Outlay-Expenditure rises to income</title>
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Favicon -->
<link rel="apple-touch-icon" sizes="120x120" href="assets/img/favicon/apple-touch-icon.png">
<link rel="icon" type="image/png" sizes="32x32" href="assets/img/favicon/favicon-32x32.png">
<link rel="icon" type="image/png" sizes="16x16" href="assets/img/favicon/favicon-16x16.png">
<link rel="manifest" href="assets/img/favicon/site.webmanifest">
<link rel="mask-icon" href="assets/img/favicon/safari-pinned-tab.svg" color="#ffffff">
<meta name="msapplication-TileColor" content="#ffffff">
<meta name="theme-color" content="#ffffff">

<!-- Fontawesome -->
<link type="text/css" href="vendor/@fortawesome/fontawesome-free/css/all.min.css" rel="stylesheet">

<!-- Notyf -->
<link type="text/css" href="vendor/notyf/notyf.min.css" rel="stylesheet">

<!-- Volt CSS -->
<link type="text/css" href="css/volt.css" rel="stylesheet">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
 

    <script src= 

    "https://cdnjs.cloudflare.com/ajax/libs/ 

     popper.js/1.12.9/umd/popper.min.js"> 

    </script> 

<script>

//Document is ready 

$(document).ready(function () {  

  
//Validate Username 

 $('#name').hide();     

 let usernameError = true; 

 $('#user_name').keyup(function () { 

     validateUsername(); 

 }); 

   

 function validateUsername() { 

   let usernameValue = $('#user_name').val(); 

   if (usernameValue.length == '') { 

   $('#name').show(); 

       usernameError = false; 

       return false; 

   }  

   else if(!/^[a-zA-Z]*$/g.test(document.myform.user_name.value)) { 

       $('#name').show(); 

       $('#name').html 

(" User name should not contain numbers"); 

       usernameError = false; 

       return false; 

   }  

   else { 

       $('#name').hide(); 

   } 

 } 



// Validate Email 

 const email =  

        document.getElementById('email'); 

    email.addEventListener('blur', ()=>{ 

       let regex = 
/^([_\-\.0-9a-zA-Z]+)@([_\-\.0-9a-zA-Z]+)\.([a-zA-Z]){2,7}$/; 

       let s = email.value; 

       if(regex.test(s)){ 

          email.classList.remove( 

                'is-invalid'); 

          emailError = true; 

        } 

        else{ 

            email.classList.add( 

                  'is-invalid'); 

            emailError = false; 

        } 

    })
   

 $('#phone').hide();     

 let phoneError = true; 

 $('#mobile_number').keyup(function () { 

     validatephonenumber(); 

 }); 

   

 function validatephonenumber() { 

   let numberValue = $('#mobile_number').val(); 
   var reg=/^[0-9]*[.]?[0-9]*$/;
  
   if (numberValue.length == ''||numberValue.length<10||numberValue.length>10) { 

   $('#phone').show(); 

       phoneError = false; 

       return false; 

   }  

   else if(reg.test(numberValue)) { 
	   $('#phone').hide(); 

   }  

   else { 

       $('#phone').show(); 

       $('#phone').html 

(" Enter proper Phone number"); 

       phoneError = false; 

       return false; 
      
   } 

 } 
// Validate Password 

 $('#password').hide(); 

 let passwordError = true; 

 $('#passwordfield').keyup(function () { 

     validatePassword(); 

 }); 

 function validatePassword() { 
	var reg=/^(?=.*[A-Za-z])(?=.*\d)(?=.*[@$!%*#?&])[A-Za-z\d@$!%*#?&]{8,}$/
     let passwrdValue =  

         $('#passwordfield').val(); 

     if (passwrdValue.length == '') { 

         $('#password').show(); 

         passwordError = false; 

         return false; 

     }  

     else if (!reg.test(passwrdValue)) { 

         $('#password').show(); 

         $('#password').html 

("Minimum 8 character and atleast one letter and one special character"); 

         $('#password').css("color", "red"); 

         passwordError = false; 

         return false; 

     } else { 

         $('#password').hide(); 

     } 

 } 

       
//Validate Confirm Password 

 $('#confirmpassword').hide(); 

 let confirmPasswordError = true; 

 $('#confirm_password').keyup(function () { 

     validateConfirmPasswrd(); 

 }); 

 function validateConfirmPasswrd() { 

     let confirmPasswordValue =  

         $('#confirm_password').val(); 

     let passwrdValue =  

         $('#passwordfield').val(); 

     if (passwrdValue != confirmPasswordValue) { 

         $('#confirmpassword').show(); 

         $('#confirmpassword').html( 

             "**Password didn't Match"); 

         $('#confirmpassword').css( 

             "color", "red"); 

         confirmPasswordError = false; 

         return false; 

     } else { 

         $('#confirmpassword').hide(); 

     } 

 } 

   
//Submitt button 

 $('#submitbtn').click(function () { 

     validateUsername(); 

     validatePassword(); 

     validateConfirmPasswrd(); 

     validateEmail(); 

     if ((usernameError == true) &&  

         (passwordError == true) &&  

         (confirmPasswordError == true) &&  

         (emailError == true)) { 

         return true; 

     } else { 

         return false; 

     } 

 }); 
}); 
	
</script>



</head>

<body class="bg-soft">
    <main>
        <!-- Section -->
        <section class="vh-lg-100 d-flex align-items-center" style="margin-bottom: 100px; margin-top: 100px;">
            <div class="container">
                    <div class="col-12 d-flex align-items-center justify-content-center">
                        <div class="signin-inner my-3 my-lg-0 bg-white shadow-soft border rounded border-light p-4 p-lg-5 w-100 fmxw-500 vh-101">
                            <div class="text-center text-md-center mb-4 mt-md-0">
                                <h1 class="mb-0 h3">Create an account</h1>
                            </div>
                            <form action="Register" method ="post" name=myform>
                                <!-- Form -->
                                <div class="form-group mb-4">
                                    <label for="user_name">Name</label>
                                    <div class="input-group">
                                        <span class="input-group-text" id="basic-addon3"><span class="fas fa-user-circle"></span></span>
                                        <input type="text" class="form-control" placeholder="Your Name" id="user_name" name = "username" autofocus required>
                                        
                                    </div>  
                                     <h6 id="name" style="color: red;" > 

                   							 User name should not contain numbers

             							 </h6>
                                </div>

                             <!--    <div class="form-group mb-4">
                                    <label for="email">Email ID</label>
                                    <div class="input-group">
                                        <span class="input-group-text" id="basic-addon3"><span class="fas fa-envelope"></span></span>
                                        <input type="email" class="form-control" placeholder="example@company.com" id="email_id" name= "emailid" autofocus required>
                                        
                                    </div>  
                                     <h6 class="is-invalid" id="email" style="color: red;" > 
                   							 Enter proper email id
             							 </h6>
                                </div> -->
                 <div class="form-group mb-4"> 

              <label for="user"> 

                    Email:  

              </label> 

              <input type="email" name="emailid"

                id="email"  

                class="form-control"placeholder="example@company.com" autofocus required> 

              <h6 style="color:red;" id="emailvalid" class="form-text 

                text-muted invalid-feedback"> 

                    Your email must be a valid email 

              </h6> 

          </div>

                                <div class="form-group mb-4">
                                    <label for="mobile_number">Mobile Number</label>
                                    <div class="input-group">
                                        <span class="input-group-text" id="basic-addon3"><span class="fa fa-mobile"></span></span>
                                        <input type="text" class="form-control" placeholder="987xxxx789" id="mobile_number"  name = "phone" autofocus required>
                                        
                                    </div>  
                                     <h6 id="phone" style="color: red;" > 

                   							 Enter proper Phone number

             							 </h6>
                                </div>
                                <!-- End of Form -->
                                <div class="form-group">
                                    <!-- Form -->
                                    <div class="form-group mb-4">
                                        <label for="password">Password</label>
                                        <div class="input-group">
                                            <span class="input-group-text" id="basic-addon4"><span class="fas fa-unlock-alt"></span></span>
                                            <input type="password" placeholder="Password" class="form-control" id="passwordfield" name= "password" required>
                                             
                                        </div>
                                        <h6 id="password" style="color: red;" > 

                   							 	Atleast 6 characters with on special character

             							 </h6>  
                                    </div>
                                    <!-- End of Form -->
                                    <!-- Form -->
                                    <div class="form-group mb-4">
                                        <label for="confirm_password">Confirm Password</label>
                                        <div class="input-group">
                                            <span class="input-group-text" id="basic-addon5"><span class="fas fa-unlock-alt"></span></span>
                                            <input type="password" placeholder="Confirm_Password" class="form-control" id="confirm_password" name= "confirm_password"  required>
                                            
                                        </div> 
                                         <h6 id="confirmpassword" style="color: red;" > 

                   							 	Password and confirm password are not same

             							 </h6> 
                                    </div>

                                    <div class="form-group mb-4">
                                        <label for="address">Address</label>
                                        <div class="input-group">
                                            <span class="input-group-text" id="basic-addon5"><span class="fas fa-address-card"></span></span>
                                            <input type="text" placeholder="Address" class="form-control" id="address" name ="address" required>
                                        </div>  
                                    </div>
                                </div>
                                <button type="submit" class="btn btn-block btn-primary" value="Submit"  id="submitbtn"" >Sign in</button>
                            </form>
                            
                            <div class="d-flex justify-content-center align-items-center mt-4">
                                <span class="font-weight-normal">
                                    Already have an account?
                                    <a href="sign-in.jsp" class="font-weight-bold">Login here</a>
                                </span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </main>

    <!-- Core -->
<script src="../../vendor/popper.js/dist/umd/popper.min.js"></script>
<script src="../../vendor/bootstrap/dist/js/bootstrap.min.js"></script>

<!-- Vendor JS -->
<script src="../../vendor/onscreen/dist/on-screen.umd.min.js"></script>

<!-- Slider -->
<script src="../../vendor/nouislider/distribute/nouislider.min.js"></script>

<!-- Jarallax -->
<script src="../../vendor/jarallax/dist/jarallax.min.js"></script>

<!-- Smooth scroll -->
<script src="../../vendor/smooth-scroll/dist/smooth-scroll.polyfills.min.js"></script>

<!-- Count up -->
<script src="../../vendor/countup.js/dist/countUp.umd.js"></script>

<!-- Notyf -->
<script src="../../vendor/notyf/notyf.min.js"></script>

<!-- Charts -->
<script src="../../vendor/chartist/dist/chartist.min.js"></script>
<script src="../../vendor/chartist-plugin-tooltips/dist/chartist-plugin-tooltip.min.js"></script>

<!-- Datepicker -->
<script src="../../vendor/vanillajs-datepicker/dist/js/datepicker.min.js"></script>

<!-- Simplebar -->
<script src="../../vendor/simplebar/dist/simplebar.min.js"></script>

<!-- Github buttons -->
<script async defer src="https://buttons.github.io/buttons.js"></script>

<!-- Volt JS -->
<script src="../../assets/js/volt.js"></script>

    
</body>

</html>
