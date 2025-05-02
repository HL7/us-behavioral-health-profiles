This table serves as a crosswalk between USCDI+ behavioral health data elements and their corresponding proposed FHIR profiles. The table maps the +BH data classes and elements, such as allergies, clinical notes, and patient demographics, to FHIR profiles, showing how each USCDI+ BH element aligns with FHIR's data standards. This alignment facilitates the standardized exchange of health information across different systems, ensuring consistency and interoperability in managing and sharing healthcare data.

<style type="text/css">
.tg  {border-collapse:collapse;border-spacing:0;}
.tg td{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  overflow:hidden;padding:10px 5px;word-break:normal;}
.tg th{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  font-weight:normal;overflow:hidden;padding:10px 5px;word-break:normal;}
.tg .tg-1wig{font-weight:bold;text-align:left;vertical-align:top}
.tg .tg-uxzt{color:#242424;text-align:left;vertical-align:bottom}
.tg .tg-6rn5{background-color:#FFF;color:#467886;text-align:left;vertical-align:top}
.tg .tg-w98d{background-color:#156082;color:#FFF;font-weight:bold;text-align:left;vertical-align:top}
.tg .tg-ktyi{background-color:#FFF;text-align:left;vertical-align:top}
.tg .tg-zzem{color:#467886;text-align:left;vertical-align:top}
.tg .tg-0lax{text-align:left;vertical-align:top}
.tg .tg-yk8o{color:#467886;text-align:left;text-decoration:underline;vertical-align:top}
.tg .tg-7zrl{text-align:left;vertical-align:bottom}
</style>
<table class="tg"> <thead>
  <tr>
     <th class="tg-w98d">USCDI+ BH <br> Data Class</th>
     <th class="tg-w98d"><span style="color:white;background-color:#156082">USCDI+ BH </span><br><span style="color:white;background-color:#156082"> Data Element</span></th>
     <th class="tg-w98d"><span style="color:white;background-color:#156082">Proposed FHIR Profile</span></th>
     <th class="tg-w98d"><span style="background-color:#156082">Proposed FHIR Data Element</span></th>
  </tr></thead>
<tbody>
  <!-- <tr>
      <td class="tg-ktyi">Adverse Event</td>
      <td class="tg-1wig">Adverse Event</td>
     <td class="tg-zzem"><a href="https://www.hl7.org/fhir/adverseevent.html">Adverse Event -Base FHIR</a></td>
     <td class="tg-ktyi">n/a</td>
  </tr> -->
  <tr>
     <td class="tg-0lax">Allergies and Intolerances</td>
     <td class="tg-1wig">Reaction</td>
     <td class="tg-zzem"><a href="http://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-allergyintolerance.html">US Core AllergyIntolerance Profile</a></td>
     <td class="tg-ktyi">allergyIntolerance.reaction.manifestation</td>
  </tr>
  <tr>
     <td class="tg-0lax">Allergies and Intolerances</td>
     <td class="tg-1wig">Substance (Medication)</td>
     <td class="tg-zzem"><a href="http://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-allergyintolerance.html">US Core AllergyIntolerance Profile</a></td>
     <td class="tg-ktyi">allergyIntolerance.code</td>
  </tr>
  <tr>
     <td class="tg-0lax">Allergies and Intolerances</td>
     <td class="tg-1wig">Substance (Non-Medication)</td>
     <td class="tg-zzem"><a href="http://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-allergyintolerance.html">US Core AllergyIntolerance Profile</a></td>
     <td class="tg-ktyi">allergyIntolerance.code</td>
  </tr>
  <tr>
     <td class="tg-0lax">Care Team Member(s)</td>
     <td class="tg-1wig">Care Team Member Role</td>
     <td class="tg-zzem"><a href="http://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-careteam.html">US Core Care Team Profile</a></td>
     <td class="tg-0lax">careTeam.participant.role</td>
  </tr>
  <tr>
     <td class="tg-0lax">Care Team Member(s)</td>
     <td class="tg-1wig">Care Team Member Telecom</td>
     <td class="tg-zzem"><a href="http://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-practitioner.html">US Core Care Practitioner Profile</a></td>
     <td class="tg-ktyi">practitioner.telecom</td>
  </tr>
  <tr>
     <td class="tg-0lax">Care Team Member(s)</td>
     <td class="tg-1wig">Care Team Member Identifier</td>
     <td class="tg-zzem"><a href="http://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-practitioner.html">US Core Care Practitioner Profile</a></td>
     <td class="tg-ktyi">practitioner.identifier</td>
  </tr>
  <tr>
     <td class="tg-0lax">Clinical Notes</td>
     <td class="tg-1wig">Mental Health Consultation Note</td>
     <td class="tg-zzem"><a href="https://build.fhir.org/ig/HL7/us-behavioral-health-profiles/StructureDefinition-mental-health-clinical-notes.html">US Behavioral Health Mental Health Clinical Notes Profile</a></td>
     <td class="tg-0lax">documentReference.type</td>
  </tr>
  <tr>
     <td class="tg-0lax">Clinical Notes</td>
     <td class="tg-1wig">Mental Health Discharge Summary Note</td>
     <td class="tg-zzem"><a href="https://build.fhir.org/ig/HL7/us-behavioral-health-profiles/StructureDefinition-mental-health-clinical-notes.html">US Behavioral Health Mental Health Clinical Notes Profile</a></td>
     <td class="tg-0lax">documentReference.type</td>
  </tr>
  <tr>
     <td class="tg-0lax">Clinical Notes</td>
     <td class="tg-1wig">Mental Health History &amp; Physical</td>
     <td class="tg-zzem"><a href="https://build.fhir.org/ig/HL7/us-behavioral-health-profiles/StructureDefinition-mental-health-clinical-notes.html">US Behavioral Health Mental Health Clinical Notes Profile</a></td>
     <td class="tg-0lax">documentReference.type</td>
  </tr>
  <tr>
     <td class="tg-0lax">Clinical Notes</td>
     <td class="tg-1wig">Mental Health Procedure Note</td>
     <td class="tg-zzem"><a href="https://build.fhir.org/ig/HL7/us-behavioral-health-profiles/StructureDefinition-mental-health-clinical-notes.html">US Behavioral Health Mental Health Clinical Notes Profile</a></td>
     <td class="tg-0lax">documentReference.type</td>
  </tr>
  <tr>
     <td class="tg-0lax">Clinical Notes</td>
     <td class="tg-1wig">Mental Health Progress Note</td>
     <td class="tg-zzem"><a href="https://build.fhir.org/ig/HL7/us-behavioral-health-profiles/StructureDefinition-mental-health-clinical-notes.html">US Behavioral Health Mental Health Clinical Notes Profile</a></td>
     <td class="tg-0lax">documentReference.type</td>
  </tr>
  <tr>
     <td class="tg-0lax">Clinical Tests</td>
     <td class="tg-1wig">Clinical Test</td>
     <td class="tg-zzem"><a href="http://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-observation-clinical-result.html">US Core Observation Clinical Result Profile</a></td>
     <td class="tg-0lax">observation.code</td>
  </tr>
  <tr>
     <td class="tg-0lax">Clinical Tests</td>
     <td class="tg-1wig">Clinical Test Result/Report</td>
     <td class="tg-zzem"><a href="http://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-observation-clinical-result.html">US Core Observation Clinical Result Profile</a></td>
     <td class="tg-0lax">observation.value</td>
  </tr>
  <tr>
     <td class="tg-0lax">Consent</td>
     <td class="tg-1wig">Consent</td>
     <td class="tg-zzem"><a href="https://build.fhir.org/ig/HL7/fhir-sdoh-clinicalcare/StructureDefinition-SDOHCC-Consent.html">SDOH Clinical Care Consent Profile</a></td>
     <td class="tg-yk8o">n/a</td>
  </tr>
  <tr>
     <td class="tg-0lax">Diagnostic Imaging</td>
     <td class="tg-1wig">Diagnostic Imaging Report</td>
     <td class="tg-zzem"><a href="http://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-diagnosticreport-note.html"> US Core DiagnosticReport Profile for Report and Note Exchange</a></td>
     <td class="tg-0lax">diagnosticReport.result</td>
  </tr>
  <tr>
     <td class="tg-0lax">Diagnostic Imaging</td>
     <td class="tg-1wig">Diagnostic Imaging Test</td>
     <td class="tg-zzem"><a href="http://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-diagnosticreport-note.html">US Core Diagnostic Report</a></td>
     <td class="tg-0lax">diagnosticReport.code</td>
  </tr>
  <tr>
     <td class="tg-0lax">Encounter Information</td>
     <td class="tg-1wig">Diagnosis Rank</td>
     <td class="tg-zzem"><a href="http://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-encounter.html">US Core Encounter Profile</a></td>
     <td class="tg-0lax">encounter.diagnosis.rank</td>
  </tr>
  <tr>
     <td class="tg-0lax">Encounter Information</td>
     <td class="tg-1wig">Encounter Diagnosis</td>
     <td class="tg-zzem"><a href="http://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-encounter.html">US Core Encounter Profile</a></td>
     <td class="tg-0lax">encounter.diagnosis </td>
  </tr>
  <tr>
     <td class="tg-0lax">Encounter Information</td>
     <td class="tg-1wig">Encounter Disposition</td>
     <td class="tg-zzem"><a href="http://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-encounter.html">US Core Encounter Profile</a></td>
     <td class="tg-0lax">encounter.hospitalization.dischargeDisposition</td>
  </tr>
  <tr>
     <td class="tg-0lax">Encounter Information</td>
     <td class="tg-1wig">Encounter Location</td>
     <td class="tg-zzem"><a href="http://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-encounter.html">US Core Encounter Profile</a></td>
     <td class="tg-0lax">encounter.location</td>
  </tr>
  <tr>
     <td class="tg-0lax">Encounter Information</td>
     <td class="tg-1wig">Encounter Time</td>
     <td class="tg-zzem"><a href="http://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-encounter.html">US Core Encounter Profile</a></td>
     <td class="tg-0lax">encounter.period</td>
  </tr>
  <tr>
     <td class="tg-0lax">Encounter Information</td>
     <td class="tg-1wig">Encounter Type</td>
     <td class="tg-zzem"><a href="http://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-encounter.html">US Core Encounter Profile</a></td>
     <td class="tg-0lax">encounter.type</td>
  </tr>
  <tr>
     <td class="tg-0lax">Facility Information</td>
     <td class="tg-1wig">Facility Type</td>
     <td class="tg-6rn5"><a href="http://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-location.html">US Core Location Profile</a></td>
     <td class="tg-ktyi">location.type</td>
  </tr>
  <tr>
     <td class="tg-0lax">Family Health History</td>
     <td class="tg-1wig">Family Health History</td>
     <td class="tg-zzem"><a href="https://build.fhir.org/ig/HL7/us-behavioral-health-profiles/StructureDefinition-mental-health-clinical-notes.html">US Behavioral Health Mental Health Clinical Notes Profile</a></td>
     <td class="tg-ktyi">n/a</td>
  </tr>
  <tr>
     <td class="tg-0lax">Federal/State Grants Reporting Requirements</td>
     <td class="tg-1wig">Grant Number</td>
     <td class="tg-zzem"><a href="https://build.fhir.org/ig/HL7/us-behavioral-health-profiles/StructureDefinition-bh-grant-info.html">US Behavioral Health Grant Information Observation Profile</a></td>
     <td class="tg-0lax">observation.code</td>
  </tr>
  <tr>
     <td class="tg-0lax">Federal/State Grants Reporting Requirements</td>
     <td class="tg-1wig">Grant Program ID</td>
     <td class="tg-zzem"><a href="https://build.fhir.org/ig/HL7/us-behavioral-health-profiles/StructureDefinition-bh-grant-info.html">US Behavioral Health Grant Information Observation Profile</a></td>
     <td class="tg-7zrl">observation.extension</td>
  </tr>
  <tr>
     <td class="tg-0lax">Federal/State Grants Reporting Requirements</td>
     <td class="tg-1wig">Grant/Funding Type</td>
     <td class="tg-zzem"><a href="https://build.fhir.org/ig/HL7/us-behavioral-health-profiles/StructureDefinition-bh-grant-info.html">US Behavioral Health Grant Information Observation Profile</a></td>
     <td class="tg-7zrl">observation.category</td>
  </tr>
  <tr>
     <td class="tg-0lax">Goals and Preferences</td>
     <td class="tg-1wig">Care Experience Preference</td>
     <td class="tg-zzem"><a href="http://hl7.org/fhir/us/core/STU7/StructureDefinition-us-core-care-experience-preference.html">US Core Care Experience Preference Profile (STU7)</a></td>
     <td class="tg-yk8o">n/a</td>
  </tr>
  <tr>
     <td class="tg-0lax">Goals and Preferences</td>
     <td class="tg-1wig">Patient Goals</td>
     <td class="tg-zzem"><a href="http://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-goal.html">US Core Goal Profile</a></td>
     <td class="tg-0lax">goal.description</td>
  </tr>
  <tr>
     <td class="tg-0lax">Goals and Preferences</td>
     <td class="tg-1wig">SDOH Goals</td>
     <td class="tg-zzem"><a href="http://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-goal.html">US Core Goal Profile</a></td>
     <td class="tg-0lax">goal.description</td>
  </tr>
  <tr>
     <td class="tg-0lax">Goals and Preferences</td>
     <td class="tg-1wig">Treatment Intervention Preference</td>
     <td class="tg-zzem"><a href="http://hl7.org/fhir/us/core/STU7/StructureDefinition-us-core-treatment-intervention-preference.html">US Core Treatment Intervention Preference Profile (STU7)</a></td>
     <td class="tg-yk8o">n/a</td>
  </tr>
  <tr>
     <td class="tg-0lax">Health Insurance Information</td>
     <td class="tg-1wig">Plan Name</td>
     <td class="tg-zzem"><a href="http://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-coverage.html">US Core Coverage Profile</a></td>
     <td class="tg-0lax">coverage.payor.name</td>
  </tr>
  <tr>
     <td class="tg-0lax">Health Insurance Information</td>
     <td class="tg-1wig">Coverage Status</td>
     <td class="tg-zzem"><a href="http://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-coverage.html">US Core Coverage Profile</a></td>
     <td class="tg-0lax">coverage.status</td>
  </tr>
  <tr>
     <td class="tg-0lax">Health Insurance Information</td>
     <td class="tg-1wig">Coverage Type</td>
     <td class="tg-zzem"><a href="http://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-coverage.html">US Core Coverage Profile</a></td>
     <td class="tg-0lax">coverage.type</td>
  </tr>
  <tr>
     <td class="tg-0lax">Health Insurance Information</td>
     <td class="tg-1wig">Group Identifier</td>
     <td class="tg-zzem"><a href="http://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-coverage.html">US Core Coverage Profile</a></td>
     <td class="tg-0lax">coverage.class:group</td>
  </tr>
  <tr>
     <td class="tg-0lax">Health Insurance Information</td>
     <td class="tg-1wig">Member Identifier</td>
     <td class="tg-zzem"><a href="http://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-coverage.html">US Core Coverage Profile</a></td>
     <td class="tg-0lax">coverage.memberID</td>
  </tr>
  <tr>
     <td class="tg-0lax">Health Insurance Information</td>
     <td class="tg-1wig">Payer Identifier</td>
     <td class="tg-zzem"><a href="http://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-coverage.html">US Core Coverage Profile</a></td>
     <td class="tg-0lax">coverage.payor.identifier</td>
  </tr>
  <tr>
     <td class="tg-0lax">Health Insurance Information</td>
     <td class="tg-1wig">Relationship to Subscriber</td>
     <td class="tg-zzem"><a href="http://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-coverage.html">US Core Coverage Profile</a></td>
     <td class="tg-0lax">coverage.relationship</td>
  </tr>
  <tr>
     <td class="tg-0lax">Health Insurance Information</td>
     <td class="tg-1wig">Subscriber Identifier</td>
     <td class="tg-zzem"><a href="http://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-coverage.html">US Core Coverage Profile</a></td>
     <td class="tg-0lax">coverage.subscriberID</td>
  </tr>
  <tr>
     <td class="tg-0lax">Health Status Assessments</td>
     <td class="tg-1wig">Depression Assessment</td>
     <td class="tg-0lax"><a href="http://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-questionnaireresponse.html"> US Core QuestionnaireResponse Profile</a><br><a href="http://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-observation-screening-assessment.html">US Core Observation Screening Assessment Profile</a></td>
     <td class="tg-0lax">n/a</td>
  </tr>
  <tr>
     <td class="tg-0lax">Health Status Assessments</td>
     <td class="tg-1wig">Mental/Cognitive Status</td>
     <td class="tg-0lax"><a href="http://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-questionnaireresponse.html">US Core Questionnaire Response</a><br><a href="http://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-observation-screening-assessment.html">US Core Observation Screening Assessment Profile</a></td>
     <td class="tg-0lax">n/a</td>
  </tr>
  <tr>
     <td class="tg-0lax">Health Status Assessments</td>
     <td class="tg-1wig">Anxiety Assessment</td>
     <td class="tg-0lax"><a href="http://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-questionnaireresponse.html">US Core Questionnaire Response</a><br><a href="http://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-observation-screening-assessment.html">US Core Observation Screening Assessment Profile</a></td>
     <td class="tg-0lax">n/a</td>
  </tr>
  <tr>
     <td class="tg-0lax">Health Status Assessments</td>
     <td class="tg-1wig">Alcohol Use</td>
     <td class="tg-0lax"><a href="http://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-questionnaireresponse.html">US Core Questionnaire Response</a><br><a href="http://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-observation-screening-assessment.html">US Core Observation Screening Assessment Profile</a></td>
     <td class="tg-0lax">n/a</td>
  </tr>
  <tr>
     <td class="tg-0lax">Health Status Assessments</td>
     <td class="tg-1wig">Disability Status</td>
     <td class="tg-0lax"><a href="http://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-questionnaireresponse.html">US Core Questionnaire Response</a><br><a href="http://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-observation-screening-assessment.html">US Core Observation Screening Assessment Profile</a></td>
     <td class="tg-0lax">n/a</td>
  </tr>
  <tr>
     <td class="tg-0lax">Health Status Assessments</td>
     <td class="tg-1wig">Food Insecurity</td>
     <td class="tg-0lax"><a href="http://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-questionnaireresponse.html">US Core Questionnaire Response</a><br><a href="http://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-observation-screening-assessment.html">US Core Observation Screening Assessment Profile</a></td>
     <td class="tg-0lax">n/a</td>
  </tr>
  <tr>
     <td class="tg-0lax">Health Status Assessments</td>
     <td class="tg-1wig">Functional Status</td>
     <td class="tg-0lax"><a href="http://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-questionnaireresponse.html">US Core Questionnaire Response</a><br><a href="http://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-observation-screening-assessment.html">US Core Observation Screening Assessment Profile</a></td>
     <td class="tg-0lax">n/a</td>
  </tr>
  <tr>
     <td class="tg-0lax">Health Status Assessments</td>
     <td class="tg-1wig">Housing Instability</td>
     <td class="tg-0lax"><a href="http://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-questionnaireresponse.html">US Core Questionnaire Response</a><br><a href="http://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-observation-screening-assessment.html">US Core Observation Screening Assessment Profile</a></td>
     <td class="tg-0lax">n/a</td>
  </tr>
  <tr>
     <td class="tg-0lax">Health Status Assessments</td>
     <td class="tg-1wig">Pregnancy Status</td>
     <td class="tg-zzem"><a href="http://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-observation-pregnancystatus.html">US Core Observation Pregnancy Status Profile</a></td>
     <td class="tg-0lax">observation.value</td>
  </tr>
  <tr>
     <td class="tg-0lax">Health Status Assessments</td>
     <td class="tg-1wig">SDOH Assessment</td>
     <td class="tg-0lax"><a href="http://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-questionnaireresponse.html">US Core Questionnaire Response</a><br><a href="http://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-observation-screening-assessment.html">US Core Observation Screening Assessment Profile</a></td>
     <td class="tg-0lax">n/a</td>
  </tr>
  <tr>
     <td class="tg-0lax">Health Status Assessments</td>
     <td class="tg-1wig">Smoking Status</td>
     <td class="tg-zzem"><a href="http://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-smokingstatus.html">US Core Smoking Status Observation Profile</a></td>
     <td class="tg-0lax">observation.value</td>
  </tr>
  <tr>
     <td class="tg-0lax">Health Status Assessments</td>
     <td class="tg-1wig">Substance Use</td>
     <td class="tg-0lax"><a href="http://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-questionnaireresponse.html">US Core Questionnaire Response</a><br><a href="http://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-observation-screening-assessment.html">US Core Observation Screening Assessment Profile</a></td>
     <td class="tg-0lax">n/a</td>
  </tr>
  <tr>
     <td class="tg-0lax">Health Status Assessments</td>
     <td class="tg-1wig">Transportation Insecurity</td>
     <td class="tg-0lax"><a href="http://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-questionnaireresponse.html">US Core Questionnaire Response</a><br><a href="http://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-observation-screening-assessment.html">US Core Observation Screening Assessment Profile</a></td>
     <td class="tg-0lax">n/a</td>
  </tr>
  <tr>
     <td class="tg-0lax">Health Status Assessments</td>
     <td class="tg-1wig">Suicide Risk Assessment</td>
     <td class="tg-0lax"><a href="http://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-questionnaireresponse.html">US Core Questionnaire Response</a><br><a href="http://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-observation-screening-assessment.html">US Core Observation Screening Assessment Profile</a></td>
     <td class="tg-0lax">n/a</td>
  </tr>
  <tr>
     <td class="tg-0lax">Health Status Assessments</td>
     <td class="tg-1wig">Interpersonal Violence</td>
     <td class="tg-0lax"><a href="http://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-questionnaireresponse.html">US Core Questionnaire Response</a><br><a href="http://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-observation-screening-assessment.html">US Core Observation Screening Assessment Profile</a></td>
     <td class="tg-0lax">n/a</td>
  </tr>
  <tr>
     <td class="tg-0lax">Health Status Assessments</td>
     <td class="tg-1wig">Mental Health Status Screen</td>
     <td class="tg-0lax"><a href="http://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-questionnaireresponse.html">US Core Questionnaire Response</a><br><a href="http://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-observation-screening-assessment.html">US Core Observation Screening Assessment Profile</a></td>
     <td class="tg-0lax">n/a</td>
  </tr>
  <tr>
     <td class="tg-0lax">Health Status Assessments</td>
     <td class="tg-1wig">Mental Trauma and PTSD Assessment</td>
     <td class="tg-0lax"><a href="http://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-questionnaireresponse.html">US Core Questionnaire Response</a><br><a href="http://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-observation-screening-assessment.html">US Core Observation Screening Assessment Profile</a></td>
     <td class="tg-0lax">n/a</td>
  </tr>
  <tr>
     <td class="tg-0lax">Immunizations</td>
     <td class="tg-1wig">Immunizations</td>
     <td class="tg-zzem"><a href="http://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-immunization.html">US Core Immunization Profile</a></td>
     <td class="tg-0lax">immunization.vaccineCode</td>
  </tr>
  <tr>
     <td class="tg-0lax">Laboratory</td>
     <td class="tg-1wig">Tests</td>
     <td class="tg-zzem"><a href="http://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-observation-clinical-result.html">US Core Observation Clinical Result Profile</a></td>
     <td class="tg-0lax">observation.code</td>
  </tr>
  <tr>
     <td class="tg-0lax">Laboratory</td>
     <td class="tg-1wig">Values/Results</td>
     <td class="tg-zzem"><a href="http://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-observation-lab.html">US Core Laboratory Result Observation Profile</a></td>
     <td class="tg-0lax">observation.value</td>
  </tr>
  <tr>
     <td class="tg-0lax">Medications</td>
     <td class="tg-1wig">Discharge Medications</td>
     <td class="tg-zzem"><a href="https://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-medicationrequest.html">US Core Medication Request Profile</a></td>
     <td class="tg-0lax">medicationRequest.category:us-core</td>
  </tr>
  <tr>
     <td class="tg-0lax">Medications</td>
     <td class="tg-1wig">Dose</td>
     <td class="tg-zzem"><a href="https://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-medicationrequest.html">US Core Medication Request Profile</a></td>
     <td class="tg-uxzt">medicationRequest.dose</td>
  </tr>
  <tr>
     <td class="tg-0lax">Medications</td>
     <td class="tg-1wig">Dose Unit of Measure</td>
     <td class="tg-zzem"><a href="https://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-medicationrequest.html">US Core Medication Request Profile</a></td>
     <td class="tg-uxzt">medicationRequest.dose</td>
  </tr>
  <tr>
     <td class="tg-0lax">Medications</td>
     <td class="tg-1wig">Medications</td>
     <td class="tg-zzem"><a href="https://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-medication.html">US Core Medication Profile</a></td>
     <td class="tg-0lax">medication.code</td>
  </tr>
  <tr>
     <td class="tg-0lax">Medications</td>
     <td class="tg-1wig">Medication Adherence</td>
     <td class="tg-zzem"><a href="http://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-medicationrequest.html">US Core Medication Request Profile</a></td>
     <td class="tg-0lax">medicationRequest.medicationAdherence</td>
  </tr>
  <tr>
     <td class="tg-0lax">Medications</td>
     <td class="tg-1wig">Medication Instructions</td>
     <td class="tg-zzem"><a href="http://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-medicationrequest.html">US Core Medication Request Profile</a></td>
     <td class="tg-0lax">medicationRequest. dosageInstructions</td>
  </tr>
  <tr>
     <td class="tg-0lax">Medications</td>
     <td class="tg-1wig">Medication Quantity</td>
     <td class="tg-zzem"><a href="http://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-medicationrequest.html">US Core Medication Request Profile</a></td>
     <td class="tg-0lax">medicationRequest.dispense Request</td>
  </tr>
  <tr>
     <td class="tg-0lax">Medications</td>
     <td class="tg-1wig">Medications Dispensed</td>
     <td class="tg-zzem"><a href="http://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-medicationdispense.html">US Core Medication Dispense Profile</a></td>
     <td class="tg-0lax">medicationDispense.</td>
  </tr>
  <!-- <tr>
     <td class="tg-0lax">Patient Demographics</td>
     <td class="tg-1wig">Name to Use</td>
     <td class="tg-zzem"><a href="http://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-patient.html">US Core Patient Profile</a></td>
     <td class="tg-0lax">patient.name.use</td>
  </tr> -->
  <tr>
     <td class="tg-0lax">Patient Demographics</td>
     <td class="tg-1wig">Current Address</td>
     <td class="tg-zzem"><a href="http://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-patient.html">US Core Patient</a></td>
     <td class="tg-0lax">patient.address</td>
  </tr>
  <tr>
     <td class="tg-0lax">Patient Demographics</td>
     <td class="tg-1wig">Date of Birth</td>
     <td class="tg-zzem"><a href="http://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-patient.html">US Core Patient</a></td>
     <td class="tg-0lax">patient.birthDate</td>
  </tr>
  <tr>
     <td class="tg-0lax">Patient Demographics</td>
     <td class="tg-1wig">Email Address</td>
     <td class="tg-zzem"><a href="http://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-patient.html">US Core Patient</a></td>
     <td class="tg-0lax">patient.telecom</td>
  </tr>
  <tr>
     <td class="tg-0lax">Patient Demographics</td>
     <td class="tg-1wig">Ethnicity</td>
     <td class="tg-zzem"><a href="http://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-patient.html">US Core Patient</a></td>
     <td class="tg-0lax">patient.ethnicity</td>
  </tr>
  <tr>
     <td class="tg-0lax">Patient Demographics</td>
     <td class="tg-1wig">First Name</td>
     <td class="tg-zzem"><a href="http://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-patient.html">US Core Patient</a></td>
     <td class="tg-0lax">patient.name.given</td>
  </tr>
  <!-- <tr>
     <td class="tg-0lax">Patient Demographics</td>
     <td class="tg-1wig">Gender Identity</td>
     <td class="tg-zzem"><a href="http://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-patient.html">US Core Patient</a></td>
     <td class="tg-0lax">patient.genderIdentity</td>
  </tr> -->
  <tr>
     <td class="tg-0lax">Patient Demographics</td>
     <td class="tg-1wig">Last Name</td>
     <td class="tg-zzem"><a href="http://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-patient.html">US Core Patient</a></td>
     <td class="tg-0lax">patient.name.family</td>
  </tr>
  <tr>
     <td class="tg-0lax">Patient Demographics</td>
     <td class="tg-1wig">Name Suffix</td>
     <td class="tg-zzem"><a href="http://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-patient.html">US Core Patient</a></td>
     <td class="tg-0lax">patient.name.suffix</td>
  </tr>
  <tr>
     <td class="tg-0lax">Patient Demographics</td>
     <td class="tg-1wig">Phone Number</td>
     <td class="tg-zzem"><a href="http://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-patient.html">US Core Patient</a></td>
     <td class="tg-0lax">patient.telecom</td>
  </tr>
  <tr>
     <td class="tg-0lax">Patient Demographics</td>
     <td class="tg-1wig">Preferred Language</td>
     <td class="tg-zzem"><a href="http://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-patient.html">US Core Patient</a></td>
     <td class="tg-0lax">patient.communication.language</td>
  </tr>
  <tr>
     <td class="tg-0lax">Patient Demographics</td>
     <td class="tg-1wig">Race</td>
     <td class="tg-zzem"><a href="http://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-patient.html">US Core Patient</a></td>
     <td class="tg-0lax">patient.race</td>
  </tr>
  <tr>
     <td class="tg-0lax">Patient Demographics</td>
     <td class="tg-1wig">Related Person's Name</td>
     <td class="tg-zzem"><a href="http://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-relatedperson.html">US Core RelatedPerson Profile</a></td>
     <td class="tg-0lax">relatedPerson.name</td>
  </tr>
  <tr>
     <td class="tg-0lax">Patient Demographics</td>
     <td class="tg-1wig">Relationship Type</td>
     <td class="tg-zzem"><a href="http://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-relatedperson.html">US Core RelatedPerson Profile</a></td>
     <td class="tg-0lax">relatedPerson.relationship</td>
  </tr>
  <tr>
     <td class="tg-0lax">Patient Demographics</td>
     <td class="tg-1wig">Sex</td>
     <td class="tg-zzem"><a href="http://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-patient.html">US Core Patient</a></td>
     <td class="tg-0lax">patient.sex</td>
  </tr>
  <!-- <tr>
     <td class="tg-0lax">Patient Demographics</td>
     <td class="tg-1wig">Sexual Orientation</td>
     <td class="tg-zzem"><a href="http://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-observation-sexual-orientation.html">US Core Observation Sexual Orientation Profile</a></td>
     <td class="tg-0lax">observation.value</td>
  </tr> -->
  <tr>
     <td class="tg-0lax">Patient Demographics</td>
     <td class="tg-1wig">Tribal Affiliation</td>
     <td class="tg-zzem"><a href="http://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-patient.html">US Core Patient</a></td>
     <td class="tg-0lax">patient.tribalAffiliation</td>
  </tr>
  <tr>
     <td class="tg-0lax">Patient Demographics</td>
     <td class="tg-1wig">Date of Death</td>
     <td class="tg-zzem"><a href="http://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-patient.html">US Core Patient</a></td>
     <td class="tg-0lax">patient.deceased</td>
  </tr>
  <tr>
     <td class="tg-0lax">Patient Demographics</td>
     <td class="tg-1wig">Identifier</td>
     <td class="tg-zzem"><a href="http://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-patient.html">US Core Patient</a></td>
     <td class="tg-0lax">patient.identifier</td>
  </tr>
  <!-- <tr>
     <td class="tg-0lax">Patient Demographics  </td>
     <td class="tg-1wig">Pronouns</td>
     <td class="tg-zzem"><a href="http://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-patient.html">US Core Patient</a></td>
     <td class="tg-ktyi">n/a</td>
  </tr> -->
  <tr>
     <td class="tg-0lax">Patient Summary and Plan</td>
     <td class="tg-1wig">Assessment and Plan of Treatment</td>
     <td class="tg-zzem"><a href="http://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-documentreference.html">US Core DocumentReference Profile</a></td>
     <td class="tg-0lax">n/a</td>
  </tr>
  <tr>
     <td class="tg-0lax">Problems</td>
     <td class="tg-1wig">Problems/Conditions</td>
     <td class="tg-zzem"><a href="http://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-condition-encounter-diagnosis.html">US Core Condition Encounter Diagnosis Profile</a><a href="http://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-condition-problems-health-concerns.html">US Core Condition Problems and Health Concerns Profile</a></td>
     <td class="tg-0lax">condition.code</td>
  </tr>
  <tr>
     <td class="tg-0lax">Problems</td>
     <td class="tg-1wig">SDOH Problems/Health Concerns</td>
     <td class="tg-zzem"><a href="http://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-condition-encounter-diagnosis.html">US Core Condition Encounter Diagnosis Profile</a><a href="http://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-condition-problems-health-concerns.html">US Core Condition Problems and Health Concerns Profile</a></td>
     <td class="tg-0lax">condition.code</td>
  </tr>
  <tr>
     <td class="tg-0lax">Problems</td>
     <td class="tg-1wig">Date of Diagnosis</td>
     <td class="tg-zzem"><a href="http://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-condition-encounter-diagnosis.html">US Core Condition Encounter Diagnosis Profile</a><a href="http://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-condition-problems-health-concerns.html">US Core Condition Problems and Health Concerns Profile</a></td>
     <td class="tg-0lax">n/a</td>
  </tr>
  <tr>
     <td class="tg-0lax">Problems</td>
     <td class="tg-1wig">Date of Onset</td>
     <td class="tg-zzem"><a href="http://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-condition-encounter-diagnosis.html">US Core Condition Encounter Diagnosis Profile</a><a href="http://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-condition-problems-health-concerns.html">US Core Condition Problems and Health Concerns Profile</a></td>
     <td class="tg-0lax">condition.onset</td>
  </tr>
  <tr>
     <td class="tg-0lax">Problems</td>
     <td class="tg-1wig">Date of Resolution</td>
     <td class="tg-zzem"><a href="http://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-condition-problems-health-concerns.html">US Core Condition Problems and Health Concerns Profile</a></td>
     <td class="tg-0lax">condition.abatement</td>
  </tr>
  <tr>
     <td class="tg-0lax">Procedures</td>
     <td class="tg-1wig">Harm Reduction Activities</td>
     <td class="tg-zzem"><a href="http://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-condition-encounter-diagnosis.html">US Core Condition Encounter Diagnosis Profile</a><a href="http://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-condition-problems-health-concerns.html">US Core Condition Problems and Health Concerns Profile</a></td>
     <td class="tg-0lax">procedure.code</td>
  </tr>
  <tr>
     <td class="tg-0lax">Procedures</td>
     <td class="tg-1wig">Performance Time</td>
     <td class="tg-zzem"><a href="http://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-procedure.html">US Core Procedures Profile</a></td>
     <td class="tg-0lax">procedure.performed</td>
  </tr>
  <tr>
     <td class="tg-0lax">Procedures</td>
     <td class="tg-1wig">Procedures</td>
     <td class="tg-zzem"><a href="http://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-procedure.html">US Core Procedures Profile</a></td>
     <td class="tg-0lax">procedure.code</td>
  </tr>
  <tr>
     <td class="tg-0lax">Procedures</td>
     <td class="tg-1wig">Reason for Referral</td>
     <td class="tg-zzem"><a href="http://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-procedure.html">US Core Procedures Profile</a></td>
     <td class="tg-ktyi">serviceRequest.reasonReference</td>
  </tr>
  <tr>
     <td class="tg-0lax">Procedures</td>
     <td class="tg-1wig">SDOH Interventions</td>
     <td class="tg-6rn5"><a href="http://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-servicerequest.html">US Core Service Request Profile</a></td>
     <td class="tg-ktyi">serviceRequest.code</td>
  </tr>
  <tr>
     <td class="tg-0lax">Procedures</td>
     <td class="tg-1wig">Peer Coaching or Mentoring</td>
     <td class="tg-6rn5"><a href="http://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-servicerequest.html">US Core Service Request Profile</a></td>
     <td class="tg-ktyi">serviceRequest.code</td>
  </tr>
  <tr>
     <td class="tg-0lax">Procedures</td>
     <td class="tg-1wig">Recovery Planning</td>
     <td class="tg-zzem"><a href="http://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-procedure.html">US Core Procedures Profile</a></td>
     <td class="tg-0lax">procedure.code</td>
  </tr>
  <tr>
     <td class="tg-0lax">Vital Signs</td>
     <td class="tg-1wig">Body Height</td>
     <td class="tg-zzem"><a href="http://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-body-height.html">US Core Body Height</a></td>
     <td class="tg-0lax">observation.code</td>
  </tr>
  <tr>
     <td class="tg-0lax">Vital Signs</td>
     <td class="tg-1wig">Body Temperature</td>
     <td class="tg-zzem"><a href="http://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-body-temperature.html">US Core Body Temperature</a></td>
     <td class="tg-0lax">observation.code</td>
  </tr>
  <tr>
     <td class="tg-0lax">Vital Signs</td>
     <td class="tg-1wig">Body Weight</td>
     <td class="tg-zzem"><a href="http://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-body-weight.html">US Core Body Weight</a></td>
     <td class="tg-0lax">observation.code</td>
  </tr>
  <tr>
     <td class="tg-0lax">Vital Signs</td>
     <td class="tg-1wig">Diastolic Blood Pressure</td>
     <td class="tg-zzem"><a href="http://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-blood-pressure.html">US Core Blood Pressure Profile</a></td>
     <td class="tg-0lax">observation.code</td>
  </tr>
  <tr>
     <td class="tg-0lax">Vital Signs</td>
     <td class="tg-1wig">Heart Rate</td>
     <td class="tg-zzem"><a href="http://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-heart-rate.html">US Core Heart Rate</a></td>
     <td class="tg-0lax">observation.code</td>
  </tr>
  <tr>
     <td class="tg-0lax">Vital Signs</td>
     <td class="tg-1wig">Pulse Oximetry</td>
     <td class="tg-zzem"><a href="http://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-pulse-oximetry.html">US Core Pulse Oximetry</a></td>
     <td class="tg-0lax">observation.code</td>
  </tr>
  <tr>
     <td class="tg-0lax">Vital Signs</td>
     <td class="tg-1wig">Respiratory Rate</td>
     <td class="tg-zzem"><a href="http://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-respiratory-rate.html">US Core Respiratory Rate</a></td>
     <td class="tg-0lax">observation.code</td>
  </tr>
  <tr>
     <td class="tg-0lax">Vital Signs</td>
     <td class="tg-1wig">Systolic Blood Pressure</td>
     <td class="tg-zzem"><a href="http://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-blood-pressure.html">US Core Blood Pressure Profile</a></td>
     <td class="tg-0lax">observation.code</td>
  </tr>
  <tr>
     <td class="tg-0lax">Vital Signs</td>
     <td class="tg-1wig">Average Blood Pressure</td>
     <td class="tg-zzem"><a href="https://www.hl7.org/fhir/us/core/StructureDefinition-us-core-average-blood-pressure.html">US Core Average Blood Pressure (STU7)</a></td>
     <td class="tg-0lax">observation.code</td>
  </tr>
  <!-- <tr>
     <td class="tg-0lax">Work Information</td>
     <td class="tg-1wig">Farmworker Status</td>
     <td class="tg-zzem"><a href="http://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-observation-occupation.html">US Core Observation Occupation Profile</a></td>
     <td class="tg-0lax">observation.code</td>
  </tr> -->
  <tr>
     <td class="tg-0lax">Work Information</td>
     <td class="tg-1wig">Veteran Status</td>
     <td class="tg-zzem"><a href="http://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-patient.html">US Core Patient</a></td>
     <td class="tg-zzem">extension</td>
  </tr>
</tbody></table>