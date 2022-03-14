<cfcomponent>
    <cffunction name="checkLogin" access="remote" returnType="string" returnformat="plain" output="false">
        <cfargument name="username" required="true">
        <cfargument name="password" required="true">
        <cfset var isUserLoggedIn = "">
            <cfquery  name="validateUser"  result="tmpResult">
                SELECT * FROM t27 WHERE username=<cfqueryparam value="#arguments.username#" cfsqltype="cf_sql_varchar" maxlength="255"> 
                AND password=<cfqueryparam value="#arguments.password#" cfsqltype="cf_sql_varchar" maxlength="4000">
            </cfquery>
            <cfif validateUser.RecordCount EQ 1>      
             <cfset session.stLoggedInUser = {'loggedin'=true,'username' = validateUser.username, 'userID' = validateUser.id} />     
                <cfset isUserLoggedIn = true>
            <cfelse>
                <cfset isUserLoggedIn = false>
            </cfif>
        <cfreturn isUserLoggedIn>    
    </cffunction>   
    <cffunction name="registerUser" access="remote" returnType="numeric" returnformat="plain" output="false">
            <cfargument name="username" required="true">
            <cfargument name="password" required="true">
            <cfset var getNumberOfRecords = 0>
            <cfquery  name="addUser"  result="tmpResult">
                insert into t27(username,password) values(<cfqueryparam value="#arguments.username#" cfsqltype="cf_sql_varchar" maxlength="255"> ,
                <cfqueryparam value="#arguments.password#" cfsqltype="cf_sql_varchar" maxlength="4000">)
            </cfquery>           
            <cfset getNumberOfRecords = listLen(#tmpResult.generated_key#)>    
        <cfreturn getNumberOfRecords>    
    </cffunction>  
</cfcomponent>


		