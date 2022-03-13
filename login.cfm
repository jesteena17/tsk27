<!--- 
https://www.raymondcamden.com/2009/01/01/Ask-a-Jedi-cflogout-session-variables-and-the-back-button
--->
<!doctype html>
<html lang="en">
	<head>
		<cfinclude template="common.cfm" >
		<title> Login</title>	
	</head>
	<body>
		<cfoutput>
			<cfset errormsg="">
			<cfif structKeyExists(form,"submitButton") and cgi.request_method is "post">
				<cfinvoke component="cf_validate" method="checkLogin" returnvariable="result">
						<cfinvokeargument name="username" value="#form.username#"/> 
						<cfinvokeargument name="password" value="#form.password#"/> 
				</cfinvoke>
				<cfif result EQ 1>
						<cflocation url="cf_welcome.cfm" addtoken="no"> 
				<cfelse>
						<cfset errormsg="invalid username or password">
						<cfset StructDelete(Session, "stLoggedInUser")/>
						<cfset  StructClear(Session) />
						
				</cfif>
			</cfif>
			<div id="login">
				<h3 class="text-center text-white pt-5">Login </h3>
				<div class="container">
					<div id="login-row" class="row justify-content-center align-items-center">
						<div id="login-column" class="col-md-6">
							<div class="err text-center">#errormsg# </div>
							<div id="login-box" class="col-md-12">
								<form id="login-form" class="form" action="" method="post">
									<h3 class="text-center text-info">&nbsp;Please Sign-in</h3>
									<div class="form-group">
										<label for="username" class="text-info">Username:</label><br>
										<input type="text"  required name="username" id="username" placeholder="Employee_id"  class="form-control">
									</div>
									<div class="form-group">
										<label for="password" class="text-info">Password:</label><br>
										<input type="password" required name="password" id="password" class="form-control"  placeholder="Employee name"  >
									</div>
									<div class="form-group">
									<input type="submit" name="submitButton" id="submitButton" class="btn btn-info btn-md" value="Login" >
									</div>
								</form>
								
							</div>
						</div>
					</div>
				</div>
			</div> 
		</cfoutput>
	</body>
</html>