https://github.com/nafeestechversant/cf28tasks/pull/18


Status Update : 18-03-2022
Working on : ColdFusion Tasks
Task   : Task 7-10(done using session) Review Comments(completed)
ETA    : 18-03-2022
To Do  : Learning ColdFusion
Blocker: Learning ColdFusion


Status Update : 22-03-2022
Working on :  Address Book 
Task   : Login, Registration, Logout(completed), Contact Page(Inprogress - 10%)
ETA    : 31-03-2022
To Do  : Contact Page, Learning ColdFusion
Blocker: Learning ColdFusion



    <cfparam name="form.cont_title" default=""  type="string">
                                    <cfparam name="form.cont_firstname" default=""  type="string">
                                    <cfparam name="form.cont_lastname" default=""  type="string">
                                    <cfparam name="form.cont_gender" default=""  type="string">
                                    <cfparam name="form.cont_dob" default=""  type="date">
                                    <cfparam name="form.cont_photo" default=""  type="string">
                                    <cfparam name="form.cont_addr" default=""  type="string">
                                    <cfparam name="form.cont_street" default=""  type="string">
                                    <cfparam name="form.cont_pin" default=""  type="integer">
                                    <cfparam name="form.cont_email" default=""  type="string">
                                    <cfparam name="form.cont_phone" default=""  type="integer">
									
									
									cnt-delete
									
									
									<cfset variables.theSheet = SpreadsheetNew("ContactData")>
<cfset SpreadsheetAddRows(variables.theSheet,variables.getContactLists)>
<cfset variables.theDir=GetDirectoryFromPath(GetCurrentTemplatePath()) >
<cfset variables.theFile=variables.theDir & "Contacts.xls" >
<cfspreadsheet action="write" filename="#theFile#" name="theSheet" sheetname="Contacts" overwrite=true> 



 <cfif variables.getContactId.contact_image EQ ''>
                                        <img class="no-img" src="img/RAY.jpg" width="75%" alt="...">
                                    <cfelse>  
                                        <img class="no-img" src="img/contact-img/#variables.getContactId.contact_image#" width="100%" height="50%" alt="...">                                     
                                    </cfif> 
									
									
									<!--<img class="no-img" src="img/contact-img/#variables.getContactId.contact_image#" width="100%" height="50%" alt="...">-->
									
									
									cfinoke arugent									
									using session
									variable from form
									
									
									order desc