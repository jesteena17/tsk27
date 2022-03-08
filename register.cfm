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
							<!---Login form--->
					<cfset errormsg="">
					<cfif structKeyExists(form,"submitButton") and cgi.request_method is "post">
									<cfinvoke component="cf_validate" method="registerUser" returnvariable="result">
										<cfinvokeargument name="username" value="#form.username#"/> 
										<cfinvokeargument name="password" value="#form.password#"/> 
								</cfinvoke>
							<cfif result GTE 1>
												
									<cfset errormsg="Registering success,kindly login">
											
											<cflocation url="index.cfm?msg=#errormsg#" addtoken="no"> 
								
							<cfelse>
									<cfset errormsg="Error in Registering">
									
									<cflocation url="register.cfm" addtoken="No">
							</cfif>
					</cfif>
										<div id="login">
											<h3 class="text-center text-white pt-5">Reg form</h3>
											<div class="container">
												<div id="login-row" class="row justify-content-center align-items-center">
													<div id="login-column" class="col-md-6">
														<div id="login-box" class="col-md-12">
															<form id="login-form" class="form" action="" method="post">
																<h3 class="text-center text-info">&nbsp;Please Sign-up</h3>
																<div class="form-group">
																	<label for="username" class="text-info">username:</label><br>
																	<input type="text" name="username" id="username" placeholder="Employee_id"  class="form-control">
																</div>
																<div class="form-group">
																	<label for="password" class="text-info">password:</label><br>
																	<input type="password" name="password" id="password" class="form-control"  placeholder="Employee name" >
																</div>
																<div class="form-group">
																<input type="submit" name="submitButton" id="submitButton" class="btn btn-info btn-md enableOnInput" value="Register" >
																<!-- <input type="submit" name="submitButton" id="submitButton" class="btn btn-info btn-md enableOnInput" onclick="_fnSubmitViaAjax(event)" value="Login" disabled> -->
																	<!---<button class="btn btn-lg btn-primary btn-block" type="button" id="loginbutton">Login</button>--->	
																</div>
															</form>
															<div id="messageBox" style="color:red"><cfoutput>#errormsg#</cfoutput> </div>
														</div>
													</div>
												</div>
											</div>
										</div> <!---Login form--->
		</body>
</html>