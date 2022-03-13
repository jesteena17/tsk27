<cfif session.stLoggedInUser.loggedin EQ false >
<cflocation URL="logout.cfm">
</cfif>
<!Doctype html>
<html lang="en">
	<head>
		<cfinclude template="common.cfm" >
		<link href="css/style.css" rel="stylesheet"/>
	</head>
  	<body>
		<cfoutput>
			<div id="logout">	
				<div class="container text-right pt-5">
					<div id="login-row" class="row justify-content-center align-items-center">
						<div id="login-column" class="col-md-12">
							<div id="login-box" class="col-md-12">
							<form class="form-signout">
									<!---<cfdump var="#session.loggedin#" >--->
									<span class="text-center text-info">&nbsp;You are in! 
										#session.stLoggedInUser.username#
									</span>
									<!---<button class="btn btn-lg btn-danger btn-block" type="button" id="logoutbutton"><a href="login.cfm">Logout</button></a>--->
									<a href="logout.cfm" id="logoutButton" class="btn btn-sm btn-danger">Logout</a>
								</form> 
							</div>
						</div>
					</div>
				</div>
			</div> 
    	</cfoutput>
	</body>
</html>