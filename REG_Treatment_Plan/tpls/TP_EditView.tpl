{*
/*********************************************************************************
 * SugarCRM Community Edition is a customer relationship management program developed by
 * SugarCRM, Inc. Copyright (C) 2004-2012 SugarCRM Inc.
 * 
 * This program is free software; you can redistribute it and/or modify it under
 * the terms of the GNU Affero General Public License version 3 as published by the
 * Free Software Foundation with the addition of the following permission added
 * to Section 15 as permitted in Section 7(a): FOR ANY PART OF THE COVERED WORK
 * IN WHICH THE COPYRIGHT IS OWNED BY SUGARCRM, SUGARCRM DISCLAIMS THE WARRANTY
 * OF NON INFRINGEMENT OF THIRD PARTY RIGHTS.
 * 
 * This program is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
 * FOR A PARTICULAR PURPOSE.  See the GNU Affero General Public License for more
 * details.
 * 
 * You should have received a copy of the GNU Affero General Public License along with
 * this program; if not, see http://www.gnu.org/licenses or write to the Free
 * Software Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA
 * 02110-1301 USA.
 * 
 * You can contact SugarCRM, Inc. headquarters at 10050 North Wolfe Road,
 * SW2-130, Cupertino, CA 95014, USA. or at email address contact@sugarcrm.com.
 * 
 * The interactive user interfaces in modified source and object code versions
 * of this program must display Appropriate Legal Notices, as required under
 * Section 5 of the GNU Affero General Public License version 3.
 * 
 * In accordance with Section 7(b) of the GNU Affero General Public License version 3,
 * these Appropriate Legal Notices must retain the display of the "Powered by
 * SugarCRM" logo. If the display of the logo is not reasonably feasible for
 * technical reasons, the Appropriate Legal Notices must display the words
 * "Powered by SugarCRM".
 ********************************************************************************/

*}
<script>
    {literal}
    $(document).ready(function(){
	    $("ul.clickMenu").each(function(index, node){
	        $(node).sugarActionMenu();
	    });
    });


function copyToClipboard () {
    var appendTxt="";
    var date_value = document.getElementById("date_last_modified").value;
	var today="";
    if(date_value==""){
     today = new Date();
	var dd = today.getDate();
	var mm = today.getMonth()+1; //January is 0!
	var yyyy = today.getFullYear();
	if(dd<10){dd='0'+dd;} if(mm<10){mm='0'+mm;} today = mm+'/'+dd+'/'+yyyy;
	}
	else{
	today = date_value;
	}
	
	var name = document.getElementById('patient_name').value;
	var diff = document.getElementsByName('uts_not_collected_c')[0].value;
	var type="Prescription Refill";
	if(diff!= "NotApplicableInPrescription"){
	type="Patient Encounter";
	}
    //appendTxt =appendTxt +type +" of " + name + " on "+ today + "\r\n";
	appendTxt =appendTxt +type + " Date: "+ today + "\r\n";
	var summary = document.getElementById('summary').value;
	if(summary==""){
	summary= "Information Not Available"
	}
	appendTxt =appendTxt + "Encounter Summary: " +summary+"\r\n";
	
    var history = document.getElementById('history_c').value;
	if(history==""){
	history= "Information Not Available"
	}
	appendTxt =appendTxt + "Notes: " +history+"\r\n";
	
	/*var assessment = document.getElementById('assessment_summary_c').value;
	if(assessment==""){
	assessment= "Information Not Available"
	}
	appendTxt =appendTxt + "Assessment and plan include: " +assessment+"\r\n";
	*/
	
	var daysdispensed = document.getElementById('pills_bottle_disp_c').value;
	if(daysdispensed==""){
	daysdispensed= "Information Not Available"
	}
	appendTxt =appendTxt + "Days of refill dispensed: " +daysdispensed+"\r\n";
	
	
		
	var nextRx = document.getElementById('next_rx_refill_due_c').value;
	if(nextRx==""){
	nextRx= "Information Not Available"
	}
	appendTxt =appendTxt + "Next Rx refill: " +nextRx+"\r\n";

	var lastUTS = document.getElementById('last_uts_c').value;
	if(lastUTS==""){
	lastUTS= "Information Not Available"
	}
	appendTxt =appendTxt + "Date of last UTS: " +lastUTS+"\r\n";

	var nextUTS = document.getElementById('next_uts_due_c').value;
	if(nextUTS==""){
	nextUTS= "Information Not Available"
	}
	appendTxt =appendTxt + "Next UTS: " +nextUTS+"\r\n";

	var lastPCP = document.getElementById('last_pcp_visit_c').value;
	if(lastPCP==""){
	lastPCP= "Information Not Available"
	}
	appendTxt =appendTxt + "Last PCP visit: " +lastPCP+"\r\n";
	
	var nextPCP = document.getElementById('next_pcp_visit_c').value;
	if(nextPCP==""){
	nextPCP= "Information Not Available"
	}
	appendTxt =appendTxt + "Next PCP visit: " +nextPCP+"\r\n";

	var lastNCMVisit = document.getElementById('last_pain_nurse_visit_c').value;
	if(lastNCMVisit==""){
	lastNCMVisit= "Information Not Available"
	}
	appendTxt =appendTxt + "Last NCM Visit: " +lastNCMVisit+"\r\n";
	
	var lastNCMContact = document.getElementById('last_nurse_phone_contact_c').value;
	if(lastNCMContact==""){
	lastNCMContact= "Information Not Available"
	}
	appendTxt =appendTxt + "Last NCM Contact: " +lastNCMContact+"\r\n";

	var nextNCM = document.getElementById('nxt_appt_pain_c').value;
	if(nextNCM==""){
	nextNCM= "Information Not Available"
	}
	appendTxt =appendTxt + "Next NCM Visit: " +nextNCM+"\r\n";
	
	var lastPMP = document.getElementById('last_pmp_review_done_c').value;
	if(lastPMP==""){
	lastPMP= "Information Not Available"
	}
	appendTxt =appendTxt + "Last PMP review: " +lastPMP+"\r\n";
	
	var nextPMP = document.getElementById('next_pmp_review_due_c').value;
	if(nextPMP==""){
	nextPMP= "Information Not Available"
	}
	
	var combine = document.getElementById('next_appt_other_c').value;
	if(combine==""){
	appendTxt =appendTxt + "Next PMP visit: " +nextPMP+"\r\n";
	}
	else{
	appendTxt =appendTxt + "Next PMP visit: " +nextPMP+"\r\n";
      var values_of = combine.split('#');
	  for (var i=0;i<values_of.length;i++){
	  var values_indi = values_of[i].split(',');
	  var selectedtext=document.getElementById(values_indi[0]).text;
	  var date_value=values_indi[1];
	  if(i==0)
	  appendTxt=appendTxt + "Next Appointment for " + selectedtext + ": " +date_value+"\r\n" ;
	  else
	  appendTxt=appendTxt + "Next Appointment for " + selectedtext + ": " +date_value+"\r\n" ;
	 }
	}

	 appendTxt=appendTxt+"\r\n"+"Safety Review "+"\r\n";
	 appendTxt=appendTxt +"Pulmonary Problems (O2DEP, OSA, COPD): "	
	if( document.getElementById('med_safety_pulm_prob_c').checked)
	{
	 appendTxt=appendTxt +"YES"+"\r\n";	
	} else {
	 appendTxt=appendTxt +"NO"+"\r\n";		
	}
	 appendTxt=appendTxt +"Taking Sedative Meds: "		
	if( document.getElementById('med_safety_sedatives_c').checked)
	{
	 appendTxt=appendTxt +"YES"+"\r\n";	
	} else {
	 appendTxt=appendTxt +"NO"+"\r\n";		
	}
	 appendTxt=appendTxt +"(>50) MEDD: "		
	if( document.getElementById('med_safety_high_medd_c').checked)
	{
	 appendTxt=appendTxt +"YES"+"\r\n";	
	} else {
	 appendTxt=appendTxt +"NO"+"\r\n";		
	}

	var risklevel = document.getElementById('risklvl_c').value;
	if(risklevel==""){
	risklevel= "Information Not Available"
	}
	appendTxt =appendTxt + "Risk Level: " +risklevel+"\r\n";
	
	
	appendTxt=appendTxt+"\r\n"+"Contract "+"\r\n";
	
	appendTxt=appendTxt +"Aberrant behavior noted: ";	
	if( document.getElementById('aberrant_behavior_noted_c').checked)
	{
	 appendTxt=appendTxt +"YES"+"\r\n";	
	} else {
	 appendTxt=appendTxt +"NO"+"\r\n";		
	}
	appendTxt=appendTxt +"Patient confirms taking medications as prescribed: ";	
	if( document.getElementById('pt_confirms_taking_c').checked)
	{
	 appendTxt=appendTxt +"YES"+"\r\n";	
	} else {
	 appendTxt=appendTxt +"NO"+"\r\n";		
	}
	appendTxt=appendTxt +"Patient confirms storing medications safely: ";
	if( document.getElementById('pt_confirms_storing_c').checked)
	{
	 appendTxt=appendTxt +"YES"+"\r\n";	
	} else {
	 appendTxt=appendTxt +"NO"+"\r\n";		
	}
	
	if(document.getElementById('narcotic_contract_in_chart_c').checked){
	var signeddate = document.getElementById('narcotic_contract_sign_c').value;
	if(signeddate==""){
	signeddate= "Information Not Available"
	}	
	appendTxt=appendTxt +"Controlled substance agreement signed: "+signeddate;
	}
	
	if (window.clipboardData) // Internet Explorer
    {  
        window.clipboardData.setData("Text", appendTxt);
		alert ("Text Copied to Clipboard");
    }
    else
	{
		alert ("Operation only supported in Internet Explorer!")
	}
	
	}
	
    {/literal}	
</script>


<div class="clear"></div>
<form action="index.php" method="POST" name="{$form_name}" id="{$form_id}" {$enctype}>
<table style="border-color: rgb( 100, 100, 255); border-style: solid none none none ; border-collapse:collapse; margin-top: 0;vertical-align: top;" width="100%" cellpadding="0" cellspacing="0" border="0" class="edit view panelContainer">

<tr >

<td style="width:50%;border-color: rgb( 100, 100, 255); border-style: solid solid solid none; border-width: 2px; margin-top: 0;vertical-align: top;" colspan="3" >
<table style="width:100%;border-color: rgb( 100, 100, 255); border-style:  none none solid none; border-width: 2px; margin-top: 0;vertical-align: top;">
<tr >
<td  width="66.6%" >Treatment Plan Name <input type="text"  tabindex="04" name="name" id="name" size="22" maxlength="255" value="" title=""  onblur="set_session(this.id,this.value);">
</td>
<td  style="width:33.3%;">
ORT Sum   <input tabindex="08"  type="text" id="ort_sum_c" name="ort_sum_c" title=""  size="5" />
</td>

</tr>
</table >
<table >
<tr>
<td width:100% colspan="3" scope="col">Notes<br>
<textarea autofocus  tabindex="12" name="clinical_notes_c" id="clinical_notes_c" rows="10" cols="100" maxlength="2000" ></textarea>
</td>
</tr>
</table >


<table style="width:100%;border-color: rgb( 100, 100, 255); border-style: solid none none none; border-width: 2px; margin-top: 0;vertical-align: top;">
<tr ><td ><h3>Risk Monitoring</h3></td><td><h3>Risk Level</h3></td></tr>

<tr>
<tr><td>
<br>
<input type="hidden" name="med_safety_pulm_prob_c" value="0">
<input type="checkbox" tabindex="80" id="med_safety_pulm_prob_c" name="med_safety_pulm_prob_c" value="1" title=""   >&nbsp; Pulmonary Problems (O<sub>2</sub>DEP, OSA, COPD)
</td><td  style="width:33.3%;">
<select name='risklvl_c'  id='risklvl_c' >
<option label="0-LOW" value="0" selected="selected">0-LOW</option>
<option label="1-LOW" value="1">1-LOW</option>
<option label="2-LOW" value="2">2-LOW</option>
<option label="3-LOW" value="3">3-LOW</option>
<option label="4-MEDIUM" value="4">4-MEDIUM</option>
<option label="5-MEDIUM" value="5">5-MEDIUM</option>
<option label="6-MEDIUM" value="6">6-MEDIUM</option>
<option label="7-HIGH" value="7">7-HIGH</option>
<option label="8-HIGH" value="8">8-HIGH</option>
<option label="9-HIGH" value="9">9-HIGH</option>
</select>
</td></tr>

<tr><td>
<img src= "" height="1" width ="1" alt="" vspace="2"/><br/>
<input type="hidden" name="med_safety_sedatives_c" value="0">
<input type="checkbox" tabindex="84" id="med_safety_sedatives_c" name="med_safety_sedatives_c" value="1" title=""   > &nbsp;Taking Sedative Meds
</td></tr>

<tr><td>
<img src= "" height="1" width ="1" alt="" vspace="4"/><br/>
<input type="hidden" name="med_safety_high_medd_c" value="0">
<input type="checkbox" tabindex="88" id="med_safety_high_medd_c" name="med_safety_high_medd_c"  value="1" title=""   > &nbsp;(>50) MEDD
</td></tr>

</tr>
</table >

<table style="width:100%;border-color: rgb( 100, 100, 255); border-style: solid none none none; border-width: 2px; margin-top: 0;vertical-align: top;">
<tr ><td colspan='3'><h3>Prescription Misuse Risk Assessment (Frequency)</h3></td></tr>


<tr>
<td>


<input type="textbox" tabindex="80" id="csp_pcp_visit_freq_c" name="csp_pcp_visit_freq_c" size="2" title=""   > <span style="text-align:bottom;">PCP visits (weeks)</span>
</td><td>


<input type="textbox" tabindex="80" id="csp_tel_contact_freq_c" name="csp_tel_contact_freq_c" size="2" title=""   > <span style="text-align:bottom;">Phone Contacts</span>
</td>
<td>


<input type="textbox" tabindex="80" id="csp_pill_ct_freq_c" name="csp_pill_ct_freq_c" size="2" title=""   > <span style="text-align:bottom;">Pill Counts</span>
</td></tr>


<tr>
<td>


<input type="textbox" tabindex="80" id="csp_ncm_visit_freq_c" name="csp_ncm_visit_freq_c" size="2" title=""   >  <span style="text-align:bottom;">NCM visits (F2F)</span
</td><td>


<input type="textbox" tabindex="80" id="csp_rand_telcontact_freq_c" name="csp_rand_telcontact_freq_c" size="2" title=""   > <span style="text-align:bottom;">Random phone contacts</span>
</td>
<td>


<input type="textbox" tabindex="80" id="csp_rand_pill_ct_freq_c" name="csp_rand_pill_ct_freq_c" size="2" title=""   >  <span style="text-align:bottom;">Random Pill Counts</span>
</td></tr>



<tr>
<td>

<input type="textbox" tabindex="80" id="csp_rand_call_visit_freq_c" name="csp_rand_call_visit_freq_c" size="2" title=""   > <span style="text-align:bottom;">NCM Callback Visit (F2F)</span>
</td><td>

<input type="textbox" tabindex="80" id="csp_uts_freq_c" name="csp_uts_freq_c" size="2" title=""   > <span style="text-align:bottom;">UTS</span>
</td>
<td>


<input type="textbox" tabindex="80" id="csp_rand_uts_freq_c" name="csp_rand_uts_freq_c" size="2" title=""   > <span style="text-align:bottom;">Random UTS</span>
</td></tr>

</tr>
</table >


<table style="width:100%;border-color: rgb( 100, 100, 255); border-style: solid none solid none; border-collapse:collapse;border-width: 2px; margin-top: 0;vertical-align: top;">
<tr ><td colspan='3'><h3>Clinical Team Contacts</h3></td></tr>
<tr>
<td style="border-color: rgb( 100, 100, 255); border-style: none none none none; border-width: 1px; margin-top: 0;vertical-align: top;">
<h5>Providers</h5>
</td>

<td colspan='2' style="border-color: rgb( 100, 100, 255); border-style: none none none none; border-width: 1px; margin-top: 0;vertical-align: top;">
<h5>Pharmacy</h5>
</td>
</tr>


<tr>
<td>


<input type="textbox" tabindex="80" id="pcp_name_c" name="pcp_name_c" size="10" title=""   >  <span style="text-align:bottom;">PCP MD Name</span
</td>
<td style="border-color: rgb( 100, 100, 255); border-style: solid none none solid; border-width: 2px; margin-top: 0;vertical-align: top;">


<input type="textbox" tabindex="80" id="pharmacy_name_c" name="pharmacy_name_c" size="10" title=""   > <span style="text-align:bottom;">Name</span>
</td>
<td style="border-color: rgb( 100, 100, 255); border-style: solid none none none; border-width: 2px; margin-top: 0;vertical-align: top;">


<input type="textbox" tabindex="80" id="pharmacy_pracloc_c" name="pharmacy_pracloc_c" size="10" title=""   >  <span style="text-align:bottom;">Location</span>
</td></tr>



<tr>
<td>

<input type="textbox" tabindex="80" id="pcp_pracloc_c" name="pcp_pracloc_c" size="10" title=""   > <span style="text-align:bottom;">Practice Location</span>
</td><td style="border-color: rgb( 100, 100, 255); border-style: none none none solid; border-width: 2px; margin-top: 0;vertical-align: top;">

<input type="textbox" tabindex="80" id="pharmacy_phone_c" name="pharmacy_phone_c" size="10" title=""   > <span style="text-align:bottom;">Phone</span>
</td>
<td>

<select name="pharmacy_commrel_c" id="pharmacy_commrel_c">
<option label="No" value="No">No</option>
<option label="Yes" value="Yes" selected="selected">Yes</option>
</select> <span style="text-align:bottom;">Comm. Release</span>
</td></tr>

</tr>
</table >



<br><br>
{{sugar_button module="$module" id="SAVE" view="$view" form_id="$form_id" location="HEADER" appendTo="header_buttons"}}
{{sugar_action_menu buttons=$header_buttons class="fancymenu" flat=true}}
<span id="copy_text_div"><input type="button" id="copy-button" onclick="copyToClipboard()" title="Copy information to Logician." value="Copy"></input>
<textarea id="clipboard_textarea" style="display:none"></textarea>	
</div></td>

<td style="width:50%;border-color: rgb( 100, 100, 255); border-style: solid none solid solid;border-width: 2px; margin-top: 0;vertical-align: top;">
<table style="width:100%;border-collapse:collapse;">

<tr>
<td style="width:33.3%;border-color: rgb( 100, 100, 255); border-style: none none solid none;border-width: 2px;margin-top: 0;vertical-align: top;text-align:center" colspan='3'>
<h3 style="margin-top: 5px;">Substance Abuse Treatment</h3>
</td>
</tr>
<tr>
<td style="width:33.3%;border-color: rgb( 100, 100, 255); border-style: none solid solid none;border-width: 2px;margin-top: 0;vertical-align: top;text-align:center">
<h5>History</h5>
</td>
<td style="width:33.3%;border-color: rgb( 100, 100, 255); border-style: none solid solid none;border-width: 2px;margin-top: 0;vertical-align: top;text-align:center">
<h5>Referral</h5>
</td>
<td style="width:33.3%;border-color: rgb( 100, 100, 255); border-style: none solid solid none;border-width: 2px;margin-top: 0;vertical-align: top;text-align:center">
<h5>Self Help</h5>
</td>
</tr>
<tr>
<td style="width:33.3%;border-color: rgb( 100, 100, 255); border-style: none solid none none;border-width: 2px;margin-top: 0;vertical-align: top;" >
<br/>&nbsp;History Reviewed<br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<select name="sa_hist_review_c" id="sa_hist_review_c">
<option label="No" value="No">No</option>
<option label="Yes" value="Yes" selected="selected">Yes</option>
</select>
</td> 
<td style="width:33.3%;border-color: rgb( 100, 100, 255); border-style: none solid none none;border-width: 2px;margin-top: 0;margin-left: 5px;vertical-align: top;">
<br/>&nbsp;Referral Needed<br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<select name="rs_referral_needed_c" id="rs_referral_needed_c">
<option label="No" value="No">No</option>
<option label="Yes" value="Yes" selected="selected">Yes</option>
</select>
</td><td style="width:33.3%;border-color: rgb( 100, 100, 255); border-style: none solid none none;border-width: 2px;margin-top: 0;margin-left: 5px;vertical-align: top;">
<br/>
&nbsp;SH Review Status<br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<select name="selfhelp_prgm_reviewed_statu_c" id="selfhelp_prgm_reviewed_statu_c">
<option label="No" value="No">No</option>
<option label="Yes" value="Yes" selected="selected">Yes</option>
</select>


</td>
</tr>
<tr>
<td style="width:33.3%;border-color: rgb( 100, 100, 255); border-style: none solid none none;border-width: 2px;margin-top: 0;vertical-align: top;""><br>
&nbsp;Review Date<br/>
<span class="dateTime"><pre style="margin-top:0; margin-bottom:0;">
<input class="date_input" tabindex="28" autocomplete="off" type="text" name="sa_hist_review_date_c"  id="sa_hist_review_date_c" value="" title=""  size="11" maxlength="10">&thinsp;<img src="themes/Sugar5/images/jscalendar.gif?v=GogGz9QEok1-e0Ft6rexxQ" alt="Enter Date" style="position:relative;  top:6px" border="0" id="sa_hist_review_date_c_trigger">&nbsp;&nbsp;</pre>
</span>
{literal}
<script type="text/javascript">
Calendar.setup ({
inputField : "sa_hist_review_date_c",
ifFormat : "%m/%d/%Y %I:%M%P",
daFormat : "%m/%d/%Y %I:%M%P",
button : "sa_hist_review_date_c_trigger",
singleClick : true,
dateStr : "",
startWeekday: 0,
step : 1,
weekNumbers:false
}
);
</script>
{/literal}
<br/>
</td>
<td style="width:33.3%;border-color: rgb( 100, 100, 255); border-style: none solid none none;border-width: 2px;margin-top: 0;vertical-align: top;"><br/>
&nbsp;Referral Made<br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<select name="sa_tx_ref_made_c" id="sa_tx_ref_made_c">
<option label="No" value="No">No</option>
<option label="Yes" value="Yes" selected="selected">Yes</option>
</select>
<br/></td>

<td style="width:33.3%;border-color: rgb( 100, 100, 255); border-style: none solid none none;border-width: 2px;margin-top: 0;vertical-align: top;"><br/>
&nbsp;Engagement<br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<select name="selfhelp_prgm_engement_c" id="selfhelp_prgm_engement_c">
<option label="No" value="No">No</option>
<option label="Yes" value="Yes" selected="selected">Yes</option>
</select>
<br/>
</td>
</tr>
<tr><td style="width:33.3%;border-color: rgb( 100, 100, 255); border-style: solid solid solid none;border-width: 2px;margin-top: 0;vertical-align: top;text-align:center"><h5>Current</h5>
</td>
<td style="width:33.3%;border-color: rgb( 100, 100, 255); border-style: none solid none none;border-width: 2px;margin-top: 0;vertical-align: top;"><br/>
&nbsp;Referral Date <span class="dateTime"><pre style="margin-top:0; margin-bottom:0;">
<input class="date_input" tabindex="44" autocomplete="off" type="text" name="rs_referral_date_made_c" id="rs_referral_date_made_c"  value="" title=""  size="11" maxlength="10">&thinsp;<img src="themes/Sugar5/images/jscalendar.gif?v=GogGz9QEok1-e0Ft6rexxQ" alt="Enter Date" style="position:relative; top:6px" border="0" id="rs_referral_date_made_c_trigger"> </pre></span>
{literal}
<script type="text/javascript">
Calendar.setup ({
inputField : "rs_referral_date_made_c",
ifFormat : "%m/%d/%Y %I:%M%P",
daFormat : "%m/%d/%Y %I:%M%P",
button : "rs_referral_date_made_c_trigger",
singleClick : true,
dateStr : "",
startWeekday: 0,
step : 1,
weekNumbers:false
}
);
</script>
{/literal}
</td>

<td style="width:33.3%;border-color: rgb( 100, 100, 255); border-style: none solid none none;border-width: 2px;margin-top: 0;vertical-align: top;"><br/>
&nbsp;Sponsor<br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<select name="selfhelp_prgm_sponosr_c" id="selfhelp_prgm_sponosr_c">
<option label="No" value="No">No</option>
<option label="Yes" value="Yes" selected="selected">Yes</option>
</select>


</td></tr>

<tr>
<td  style="width:33.3%;border-color: rgb( 100, 100, 255); border-style: none solid none none;border-width: 2px;margin-top: 0;vertical-align: top;">
<br/>&nbsp;Program Status <br>
<select name="sa_tx_status" id="sa_tx_status">
<option label="Yes" value="Y">Yes</option>
<option label="No" value="N">No</option>
<option label="Encouraged" value="E">Encouraged</option>
<option label="Discussed" value="D">Discussed</option>
<option label="Engaged" value="G">Engaged</option>
<option label="Not Applicable" value="X">Not Applicable</option>
</select>

</td>
<td style="width:33.3%;border-color: rgb( 100, 100, 255); border-style: none solid none none;border-width: 2px;margin-top: 0;vertical-align: top;">
<br/>&nbsp;Referred To (Name)<br/>
<input type='textbox' id='sa_tx_ref_to_name_c' name ='sa_tx_ref_to_name_c'/>
</td>

<td style="width:33.3%;border-color: rgb( 100, 100, 255); border-style: none solid none none;border-width: 2px;margin-top: 0;vertical-align: top;" rowspan='3'>

<br/>&nbsp;Program Notes
<textarea  tabindex="12" name="clinical_notes_c" id="clinical_notes_c" rows="12" cols="18" maxlength="2000"></textarea>

</td>

</tr>
<tr>



<td style="width:33.3%;border-color: rgb( 100, 100, 255); border-style: none solid none none;border-width: 2px;margin-top: 0;vertical-align: top;">
<br/>&nbsp;Clinical Name<br/>
<input type='textbox' id='sa_tx_clinician_name_c' name ='sa_tx_clinician_name_c'/>
</td>

<td style="width:33.3%;border-color: rgb( 100, 100, 255); border-style: none solid none none;border-width: 2px;margin-top: 0;vertical-align: top;">
<br/>&nbsp;Referral Notes
<textarea tabindex="12" name="sa_tx_ref_notes_c" id="sa_tx_ref_notes_c" rows="4" cols="20" maxlength="2000"></textarea>

</td>




</tr>

<tr>

<td style="width:33.3%;border-color: rgb( 100, 100, 255); border-style: none solid none none;border-width: 2px;margin-top: 0;vertical-align: top;">
<br/>
&nbsp;Communication<br/>&nbsp;Release Signed<select name="sa_tx_comm_rel_c" id="sa_tx_comm_rel_c">
<option label="Yes" value="Y">Yes</option>
<option label="No" value="N">No</option>
<option label="Unknown" value="U">Unknown</option>
<option label="Not Applicable" value="X">Not Applicable</option>
</select>
</td>



<td style="width:33.3%;border-color: rgb( 100, 100, 255); border-style: none solid none none;border-width: 2px;margin-top: 0;vertical-align: top;">
<br/>&nbsp;Referral Phone No.<br/><br/>
<input type='textbox' id='sa_tx_ref_phone_c' name ='sa_tx_ref_phone_c'/>
</td>

</tr>







</table>
<table style="width:100%;border-color: rgb( 100, 100, 255); border-style: solid none none none; border-width: 2px; margin-top: 0;vertical-align: top;">
<tr>
<td><h3><span style="text-align:centre;" >Contract</span></h3></td>
</tr>

<tr><td>
<br>
<input type="hidden" name="aberrant_behavior_noted_c" value="0">
<input type="checkbox" tabindex="72" id="aberrant_behavior_noted_c" name="aberrant_behavior_noted_c" value="1" title=""   > &nbsp;Aberrant Behavior Noted
</td></tr>

<tr><td>
<img src= "" height="1" width ="1" alt="" vspace="2"/><br/>
<img src= "" height="1" width ="1" alt="" vspace="2"/><br/>
<input type="hidden" name="confirms_taking_c" value="0">
<input type="checkbox" tabindex="74" id="confirms_taking_c" name="confirms_taking_c" value="1" title=""   > &nbsp;Patient confirms taking medications as prescribed
</td></tr>

<tr><td>
<img src= "" height="1" width ="1" alt="" vspace="2"/><br/>
<input type="hidden" name="confirms_storing_c" value="0"><input type="checkbox" tabindex="76" id="confirms_storing_c" name="confirms_storing_c"  value="1" title=""   > &nbsp;Patient confirms storing medications safely
</td></tr>

<tr><td>
<input type="hidden" name="narcotic_contract_in_chart_c" value="0"><input type="checkbox" tabindex="78" id="narcotic_contract_in_chart_c" name="narcotic_contract_in_chart_c" value="1" title=""   > <span> &nbsp;Controlled Substance Agreement signed on </span><span class="dateTime"> <input tabindex="79" class="date_input" autocomplete="off" type="text" name="cs_agrrent_signed_c" id="cs_agrrent_signed_c"   value="" title=""  size="10" maxlength="10">
<img src="themes/Sugar5/images/jscalendar.gif?v=GogGz9QEok1-e0Ft6rexxQ" alt="Enter Date" style="position:relative; top:6px" border="0" id="cs_agrrent_signed_c_trigger">
</span>
{literal}
<script type="text/javascript">
Calendar.setup ({
inputField : "cs_agrrent_signed_c",
ifFormat : "%m/%d/%Y %I:%M%P",
daFormat : "%m/%d/%Y %I:%M%P",
button : "cs_agrrent_signed_c_trigger",
singleClick : true,
dateStr : "",
startWeekday: 0,
step : 1,
weekNumbers:false
}
);
</script>
{/literal}
</td></tr>

</table>


</td></tr>

<tr>
<td class="buttons">
<input type="hidden" name="module" value="{$module}">
{if isset($smarty.request.isDuplicate) && $smarty.request.isDuplicate eq "true"}
<input type="hidden" name="record" value="">
<input type="hidden" name="duplicateSave" value="true">
<input type="hidden" name="duplicateId" value="{$fields.id.value}">
{else}
<input type="hidden" name="record" value="{$fields.id.value}">
{/if}
<input type="hidden" name="isDuplicate" value="false">
<input type="hidden" name="action">
<input type="hidden" name="return_module" value="{$smarty.request.return_module}">
<input type="hidden" name="return_action" value="{$smarty.request.return_action}">
<input type="hidden" name="return_id" value="{$smarty.request.return_id}">
<input type="hidden" name="module_tab"> 
<input type="hidden" name="contact_role">
{if (!empty($smarty.request.return_module) || !empty($smarty.request.relate_to)) && !(isset($smarty.request.isDuplicate) && $smarty.request.isDuplicate eq "true")}
<input type="hidden" name="relate_to" value="{if $smarty.request.return_relationship}{$smarty.request.return_relationship}{elseif $smarty.request.relate_to && empty($smarty.request.from_dcmenu)}{$smarty.request.relate_to}{elseif empty($isDCForm) && empty($smarty.request.from_dcmenu)}{$smarty.request.return_module}{/if}">
<input type="hidden" name="relate_id" value="{$smarty.request.return_id}">
{/if}
<input type="hidden" name="offset" value="{$offset}">
{assign var='place' value="_HEADER"} <!-- to be used for id for buttons with custom code in def files-->
{{if isset($form.hidden)}}
{{foreach from=$form.hidden item=field}}
{{$field}}   
{{/foreach}}
{{/if}}
{{if empty($form.button_location) || $form.button_location == 'top'}}
{{if !empty($form) && !empty($form.buttons)}}
   {{foreach from=$form.buttons key=val item=button}}
      {{sugar_button module="$module" id="$button" form_id="$form_id" view="$view" appendTo="header_buttons" location="HEADER"}}
   {{/foreach}}
{{else}}
{{sugar_button module="$module" id="SAVE" view="$view" form_id="$form_id" location="HEADER" appendTo="header_buttons"}}
{{sugar_button module="$module" id="CANCEL" view="$view" form_id="$form_id" location="HEADER" appendTo="header_buttons"}}
{{/if}}
{{if empty($form.hideAudit) || !$form.hideAudit}}
{{sugar_button module="$module" id="Audit" view="$view" form_id="$form_id" appendTo="header_buttons"}}
{{/if}}
{{/if}}

</td>
<td align='right'>{{$ADMIN_EDIT}}
{{if $panelCount == 0}}
    {{* Render tag for VCR control if SHOW_VCR_CONTROL is true *}}
	{{if $SHOW_VCR_CONTROL}}
		{$PAGINATION}
	{{/if}}
{{/if}}
</td>
</tr>
</table>

<span id='tabcounterJS'><script>SUGAR.TabFields=new Array();//this will be used to track tabindexes for references</script></span>

<div id="{{$form_name}}_tabs"
{{if $useTabs}}
class="yui-navset"
{{/if}}
>
    {{if $useTabs}}
    {* Generate the Tab headers *}
    {{counter name="tabCount" start=-1 print=false assign="tabCount"}}
    <ul class="yui-nav">
    {{foreach name=section from=$sectionPanels key=label item=panel}}
        {{counter name="tabCount" print=false}}
        {{capture name=label_upper assign=label_upper}}{{$label|upper}}{{/capture}}
        {{if (isset($tabDefs[$label_upper].newTab) && $tabDefs[$label_upper].newTab == true)}}
        <li class="selected"><a id="tab{{$tabCount}}" href="javascript:void({{$tabCount}})"><em>{sugar_translate label='{{$label}}' module='{{$module}}'}</em></a></li>
        {{/if}}
    {{/foreach}}
    </ul>
    {{/if}}
    <div {{if $useTabs}}class="yui-content"{{/if}}>

{{assign var='tabIndexVal' value=0}}
{{* Loop through all top level panels first *}}
{{counter name="panelCount" start=-1 print=false assign="panelCount"}}
{{counter name="tabCount" start=-1 print=false assign="tabCount"}}
{{foreach name=section from=$sectionPanels key=label item=panel}}
{{counter name="panelCount" print=false}}
{{capture name=label_upper assign=label_upper}}{{$label|upper}}{{/capture}}
  {{if (isset($tabDefs[$label_upper].newTab) && $tabDefs[$label_upper].newTab == true)}}
    {{counter name="tabCount" print=false}}
    {{if $tabCount != 0}}</div>{{/if}}
    <div id='tabcontent{{$tabCount}}'>
  {{/if}}

{{* Print out the table data *}}
{{if $label == 'DEFAULT'}}
  <div id="detailpanel_{{$smarty.foreach.section.iteration}}" >
{{else}}
  <div id="detailpanel_{{$smarty.foreach.section.iteration}}" class="{$def.templateMeta.panelClass|default:'edit view edit508'}">
{{/if}}

{counter name="panelFieldCount" start=0 print=false assign="panelFieldCount"}
{{* Check to see if the panel variable is an array, if not, we'll attempt an include with type param php *}}
{{* See function.sugar_include.php *}}
{{if !is_array($panel)}}
    {sugar_include type='php' file='{{$panel}}'}
{{else}}

{{* Only show header if it is not default or an int value *}}
{{if !empty($label) && !is_int($label) && $label != 'DEFAULT' && $showSectionPanelsTitles && (!isset($tabDefs[$label_upper].newTab) || (isset($tabDefs[$label_upper].newTab) && $tabDefs[$label_upper].newTab == false)) && $view != "QuickCreate"}}
<h4>&nbsp;&nbsp;
  <a href="javascript:void(0)" class="collapseLink" onclick="collapsePanel({{$smarty.foreach.section.iteration}});">
  <img border="0" id="detailpanel_{{$smarty.foreach.section.iteration}}_img_hide" src="{sugar_getimagepath file="basic_search.gif"}"></a>
  <a href="javascript:void(0)" class="expandLink" onclick="expandPanel({{$smarty.foreach.section.iteration}});">
  <img border="0" id="detailpanel_{{$smarty.foreach.section.iteration}}_img_show" src="{sugar_getimagepath file="advanced_search.gif"}"></a>
  {sugar_translate label='{{$label}}' module='{{$module}}'}
  {{if ( isset($tabDefs[$label_upper].panelDefault) && $tabDefs[$label_upper].panelDefault == "collapsed" && isset($tabDefs[$label_upper].newTab) && $tabDefs[$label_upper].newTab == false) }}
    {{assign var='panelState' value=$tabDefs[$label_upper].panelDefault}}
  {{else}}
    {{assign var='panelState' value="expanded"}}
  {{/if}}
  {{if isset($panelState) && $panelState == 'collapsed'}}
    <script>
      document.getElementById('detailpanel_{{$smarty.foreach.section.iteration}}').className += ' collapsed';
    </script>
    {{else}}
    <script>
      document.getElementById('detailpanel_{{$smarty.foreach.section.iteration}}').className += ' expanded';
    </script>
  {{/if}}
</h4>
 {{/if}}

<input type='hidden' name='reg_treatment_plan_reg_patientreg_patient_ida' id='reg_treatment_plan_reg_patientreg_patient_ida' >
<input type='hidden' name='date_last_modified' id='date_last_modified' >
<input  type="hidden" name="pt_active_c" value="0">
<input  type="hidden" name="pt_active_date_c" >
{{if !empty($label) && !is_int($label) && $label != 'DEFAULT' && $showSectionPanelsTitles && (!isset($tabDefs[$label_upper].newTab) || (isset($tabDefs[$label_upper].newTab) && $tabDefs[$label_upper].newTab == false)) && $view != "QuickCreate"}}
<script type="text/javascript">SUGAR.util.doWhen("typeof initPanel == 'function'", function() {ldelim} initPanel({{$smarty.foreach.section.iteration}}, '{{$panelState}}'); {rdelim}); </script>
{{/if}}

{{/if}}

</div>
{if $panelFieldCount == 0}


{/if}
{{/foreach}}
</div></div>
<script language="javascript">
    var _form_id = '{$form_id}';
    {literal}
    SUGAR.util.doWhen(function(){
        _form_id = (_form_id == '') ? 'EditView' : _form_id;
        return document.getElementById(_form_id) != null;
    }, SUGAR.themes.actionMenu);
    {/literal}
</script>

</form>
{{if $externalJSFile}}
{sugar_include include=$externalJSFile}
{{/if}}

{$set_focus_block}

{{if isset($scriptBlocks)}}
<!-- Begin Meta-Data Javascript -->
{{$scriptBlocks}}
<!-- End Meta-Data Javascript -->
{{/if}}
<script>SUGAR.util.doWhen("document.getElementById('EditView') != null",
        function(){ldelim}SUGAR.util.buildAccessKeyLabels();{rdelim});
</script>
{{if $useTabs}}
{sugar_getscript file="cache/include/javascript/sugar_grp_yui_widgets.js"}
<script type="text/javascript">
var {{$form_name}}_tabs = new YAHOO.widget.TabView("{{$form_name}}_tabs");
{{$form_name}}_tabs.selectTab(0);
</script>
{{/if}}
<script type="text/javascript">
YAHOO.util.Event.onContentReady("{{$form_name}}",
    function () {ldelim} initEditView(document.forms.{{$form_name}}) {rdelim});
//window.setTimeout(, 100);
{{if $module == "Users"}}
window.onbeforeunload = function () {ldelim} return disableOnUnloadEditView(); {rdelim};
{{else}}
window.onbeforeunload = function () {ldelim} return onUnloadEditView(); {rdelim};
{{/if}}
// bug 55468 -- IE is too aggressive with onUnload event
if ($.browser.msie) {ldelim}
$(document).ready(function() {ldelim}
    $(".collapseLink,.expandLink").click(function (e) {ldelim} e.preventDefault(); {rdelim});
  {rdelim});
{rdelim}
</script>
