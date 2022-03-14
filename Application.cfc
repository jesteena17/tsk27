<cfcomponent output="false">  
	<cfset this.name = "emplogin">
	<cfset this.sessionManagement = true />
	<cfset this.sessionTimeout = createTimespan(0,0,30,0) />
	<cfset this.applicationtTimeout=createTimespan(0,2,0,0)/>
	<cfset this.datasource="mysqldsn"/>
	<cffunction name="onApplicationStart" returntype="boolean" >
		<cfreturn true />
	</cffunction>
	<cffunction name="onRequestStart" returntype="boolean" >
		<cfreturn true />
	</cffunction>
	<!--- Runs when your session starts --->
	<cffunction name="onSessionStart" returnType="void" output="false">
	<cfset session.stLoggedInUser.loggedin = false>
	</cffunction>
</cfcomponent>