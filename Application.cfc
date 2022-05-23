<!-- Set the value of MyDatabase to be the name you published the database under -->
<cfcomponent output="false">
    <cfset this.name = 'cfrestdemo' />
	<cfset this.restsettings.cflocation = './'>
	<cfset this.restsettings.skipcfcwitherror = true>


	 
    <!---OnApplicationStart() method--->
	<cffunction name="onApplicationStart" returntype="boolean" >
		<cfset Application.jwtKey = "asRTG%%!123"> 	
		<cfset restInitApplication(getDirectoryFromPath(getCurrentTemplatePath()) & 'restapi','controller')>				
		<cfreturn true />
	</cffunction>
    <!---onRequestStart() method--->
	<cffunction name="onRequestStart" returntype="boolean">		
		<cfif isDefined("URL.reload") AND URL.reload EQ "r3l0ad">
			<cflock  timeout="10" throwontimeout="No" type="Exclusive" scope="Application">
				<cfset onApplicationStart()>
			</cflock>
			<cfhtmlhead  text="<script language=""Javascript"">alert('Application was refreshed.');</script>">
		</cfif>
	</cffunction>	
		 	
</cfcomponent>
