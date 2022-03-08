<!--- 
https://www.raymondcamden.com/2009/01/01/Ask-a-Jedi-cflogout-session-variables-and-the-back-button
--->
<!doctype html>
<html lang="en">
	<head>
		<cfinclude template="common.cfm" >
		<title> Home</title>	
	</head>
		<body>
        <cfif IsDefined("url.msg")>
        	<div id="messageBox" style="color:red"><cfoutput>#url.msg#</cfoutput> </div>
        </cfif>
				
										<div id="login">
											<h3 class="text-center text-white pt-5">Login form</h3>
											<div class="container">
												<div id="login-row" class="row justify-content-center align-items-center">
													<div id="login-column" class="col-md-6">
														<div id="login-box" class="col-md-12">
                                                       <a href="login.cfm" class="btn btn-lg btn-info">Login</a>	
														<a href="register.cfm" class="btn btn-lg btn-success">Register</a>	
														
														</div>
													</div>
												</div>
											</div>
										</div> <!---Login form--->
		</body>
</html>