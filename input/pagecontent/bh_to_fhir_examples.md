This table provides a correlation between USCDI+ behavioral health data elements and their corresponding FHIR elements, illustrating how each data element is represented in the BH FHIR implementation guide. It includes specific examples and narratives for each matched representation, demonstrating how they are applied in practical scenarios, such as documenting allergies, health assessments, clinical notes, and patient demographics. This ensures that healthcare data is accurately represented and easily interoperable across different health information systems.

<style type="text/css">
.tg  {border-collapse:collapse;border-spacing:0;}
.tg td{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  overflow:hidden;padding:10px 5px;word-break:normal;}
.tg th{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  font-weight:normal;overflow:hidden;padding:10px 5px;word-break:normal;}
.tg .tg-6rn5{background-color:#FFF;color:#467886;text-align:left;vertical-align:top}
.tg .tg-w98d{background-color:#156082;color:#FFF;font-weight:bold;text-align:left;vertical-align:top}
.tg .tg-icjd{background-color:#156082;color:#ffffff;font-weight:bold;text-align:left;vertical-align:top}
.tg .tg-6n7w{color:#000000;font-weight:bold;text-align:left;vertical-align:top}
.tg .tg-zzem{color:#467886;text-align:left;vertical-align:top}
.tg .tg-0lax{text-align:left;vertical-align:top}
.tg .tg-ktyi{background-color:#FFF;text-align:left;vertical-align:top}
.tg .tg-yk8o{color:#467886;text-align:left;text-decoration:underline;vertical-align:top}
.tg .tg-7zrl{text-align:left;vertical-align:bottom}
</style>
<table class="tg"><thead>
  <tr>
    <th class="tg-w98d">USCDI+ BH <br> Data Class</th>
    <th class="tg-icjd"><span style="background-color:#156082">USCDI+ BH </span><br><span style="background-color:#156082"> Data Element</span></th>
    <th class="tg-w98d"><span style="color:white;background-color:#156082">FHIR Example</span></th>
    <th class="tg-w98d"><span style="font-weight:700;color:white;background-color:#156082">FHIR Narrative</span></th>
  </tr></thead>
<tbody>
  <tr>
    <td class="tg-6rn5">Adverse Event</td>
    <td class="tg-6n7w">Adverse Event</td>
    <td class="tg-zzem"><a href="AdverseEvent-fall-adverse-event-example-1.html">fall-adverse-event-example</a></td>
    <td class="tg-0lax">Example of patient adverse fall event</td>
  </tr>
  <tr>
    <td class="tg-zzem">Allergies and Intolerances</td>
    <td class="tg-6n7w">Reaction</td>
    <td class="tg-zzem"><a href="AllergyIntolerance-peanut-allergy-example-1.html">peanut-allergy-example</a><br><a href="AllergyIntolerance-peanut-allergy-example-1.html"> penicillin-allergy-example</a></td>
    <td class="tg-0lax">Examples of allergic response to peanuts and penciliin</td>
  </tr>
  <tr>
    <td class="tg-zzem">Allergies and Intolerances</td>
    <td class="tg-6n7w">Substance (Medication)</td>
    <td class="tg-zzem"><a href="AllergyIntolerance-penicillin-allergy-example-1.html">penicillin-allergy-example</a></td>
    <td class="tg-0lax">Example of patient documented peanut allergy</td>
  </tr>
  <tr>
    <td class="tg-0lax">Allergies and Intolerances</td>
    <td class="tg-6n7w">Substance (Non-Medication)</td>
    <td class="tg-zzem"><a href="AllergyIntolerance-peanut-allergy-example-1.html">peanut-allergy-example</a></td>
    <td class="tg-0lax">Example of patient documented penicillin allergy</td>
  </tr>
  <tr>
    <td class="tg-0lax">Care Team Member(s)</td>
    <td class="tg-6n7w">Care Team Member Role</td>
    <td class="tg-zzem"><a href="CareTeam-bh-care-team-example-1.html">care-team-example</a></td>
    <td class="tg-0lax">Example of a mental health counselor as part of the care team</td>
  </tr>
  <tr>
    <td class="tg-0lax">Care Team Member(s)</td>
    <td class="tg-6n7w">Care Team Member Telecom</td>
    <td class="tg-zzem"><a href="Practitioner-ed-physician-example-1.html">physician-example	</a><br><a href="Practitioner-ed-physician-example-1.html"> pcp-provider-example	</a><br><a href="Practitioner-ed-physician-example-1.html"> mental-health-provider-example</a></td>
    <td class="tg-0lax">Examples of a patient's emergency room provider, Primary care provider and mental health provider telecom</td>
  </tr>
  <tr>
    <td class="tg-0lax">Care Team Member(s)</td>
    <td class="tg-6n7w">Care Team Member Identifier</td>
    <td class="tg-zzem"><a href="Practitioner-ed-physician-example-1.html">physician-example	</a><br><a href="Practitioner-ed-physician-example-1.html"> pcp-provider-example	</a><br><a href="Practitioner-ed-physician-example-1.html"> mental-health-provider-example</a></td>
    <td class="tg-0lax">Examples of a patient's emeergency room provider, Primary care provider and mental health provider identifiers</td>
  </tr>
  <tr>
    <td class="tg-0lax">Clinical Notes</td>
    <td class="tg-6n7w">Mental Health Consultation Note</td>
    <td class="tg-zzem"><a href="DocumentReference-mental-health-consult-note-example-1.html">mental-health-consult-note-example</a></td>
    <td class="tg-0lax">Example of a mental health consult note. Clinical details of note content are encoded (base64)</td>
  </tr>
  <tr>
    <td class="tg-0lax">Clinical Notes</td>
    <td class="tg-6n7w">Mental Health Discharge Summary Note</td>
    <td class="tg-zzem"><a href="DocumentReference-mental-health-discharge-summary-example-1.html">mental-health-discharge-note-example</a></td>
    <td class="tg-0lax">Example of a mental health discharge summary note. Clinical details of note content are encoded (base64)</td>
  </tr>
  <tr>
    <td class="tg-0lax">Clinical Notes</td>
    <td class="tg-6n7w">Mental Health History &amp; Physical</td>
    <td class="tg-zzem"><a href="DocumentReference-mental-health-hx-physical-example-1.html">mental-health-physical-note-example</a></td>
    <td class="tg-0lax">Example of a mental health history and physical note. Clinical details of note content are encoded (base64)</td>
  </tr>
  <tr>
    <td class="tg-0lax">Clinical Notes</td>
    <td class="tg-6n7w">Mental Health Procedure Note</td>
    <td class="tg-zzem"><a href="DocumentReference-mental-health-procedure-example-1.html">mental-health-procedure-note-example</a></td>
    <td class="tg-0lax">Example of a mental health procedure note. Clinical details of note content are encoded (base64)</td>
  </tr>
  <tr>
    <td class="tg-0lax">Clinical Notes</td>
    <td class="tg-6n7w">Mental Health Progress Note</td>
    <td class="tg-zzem"><a href="DocumentReference-mental-health-progress-example-1.html">mental-health-progress-note-example</a></td>
    <td class="tg-0lax">Example of a mental health progress note. Clinical details of note content are encoded (base64)</td>
  </tr>
  <tr>
    <td class="tg-0lax">Clinical Tests</td>
    <td class="tg-6n7w">Clinical Test</td>
    <td class="tg-zzem"><a href="Observation-ekg-observation-example-1.html">ekg-obs-example</a></td>
    <td class="tg-0lax">Example of electocardiagram test</td>
  </tr>
  <tr>
    <td class="tg-0lax">Clinical Tests</td>
    <td class="tg-6n7w">Clinical Test Result/Report</td>
    <td class="tg-zzem"><a href="Observation-ekg-observation-example-1.html">ekg-obs-example</a></td>
    <td class="tg-0lax">Example of electocardiagram with normal sinus rthym</td>
  </tr>
  <tr>
    <td class="tg-0lax">Consent</td>
    <td class="tg-6n7w">Consent</td>
    <td class="tg-zzem"><a href="Consent-SDOHCC-ConsentInformationDisclosure-example-1.html">consent-disclosure-example</a></td>
    <td class="tg-0lax">Example of a consent for information disclosure</td>
  </tr>
  <tr>
    <td class="tg-0lax">Diagnostic Imaging</td>
    <td class="tg-6n7w">Diagnostic Imaging Report</td>
    <td class="tg-zzem"><a href="DiagnosticReport-ekg-impression-report-example-1.html">ekg-impression-report-example</a></td>
    <td class="tg-0lax">Example of EKG impression report</td>
  </tr>
  <tr>
    <td class="tg-0lax">Diagnostic Imaging</td>
    <td class="tg-6n7w">Diagnostic Imaging Test</td>
    <td class="tg-zzem"><a href="DiagnosticReport-ekg-impression-report-example-1.html">ekg-impression-report-example</a></td>
    <td class="tg-0lax">Example of EKG test report</td>
  </tr>
  <tr>
    <td class="tg-0lax">Encounter Information</td>
    <td class="tg-6n7w">Diagnosis Rank</td>
    <td class="tg-zzem"><a href="Encounter-discharge-encounter-example-3.html">discharge-encounter-example</a></td>
    <td class="tg-ktyi">Example of the ranking of diagnosis in the discharge encounter </td>
  </tr>
  <tr>
    <td class="tg-0lax">Encounter Information</td>
    <td class="tg-6n7w">Encounter Diagnosis</td>
    <td class="tg-zzem"><a href="Encounter-discharge-encounter-example-3.html">discharge-encounter-example</a></td>
    <td class="tg-ktyi">Example of encounter diagnosis</td>
  </tr>
  <tr>
    <td class="tg-0lax">Encounter Information</td>
    <td class="tg-6n7w">Encounter Disposition</td>
    <td class="tg-zzem"><a href="Encounter-discharge-encounter-example-3.html">discharge-encounter-example</a></td>
    <td class="tg-ktyi">Example of encounter disposition</td>
  </tr>
  <tr>
    <td class="tg-0lax">Encounter Information</td>
    <td class="tg-6n7w">Encounter Location</td>
    <td class="tg-zzem"><a href="Encounter-discharge-encounter-example-3.html">discharge-encounter-example</a></td>
    <td class="tg-ktyi">Example of encounter location</td>
  </tr>
  <tr>
    <td class="tg-0lax">Encounter Information</td>
    <td class="tg-6n7w">Encounter Time</td>
    <td class="tg-yk8o">discharge-encounter-example<br> pcp-encounter-example</td>
    <td class="tg-ktyi">Example of encounter time</td>
  </tr>
  <tr>
    <td class="tg-0lax">Encounter Information</td>
    <td class="tg-6n7w">Encounter Type</td>
    <td class="tg-yk8o">discharge-encounter-example<br> pcp-encounter-example</td>
    <td class="tg-ktyi">Example of encoutner type such as observation, or ambulatory</td>
  </tr>
  <tr>
    <td class="tg-0lax">Facility Information</td>
    <td class="tg-6n7w">Facility Type</td>
    <td class="tg-zzem"><a href="Location-ed-location-example-1.html">obs-location-example</a><br><a href="Location-ed-location-example-1.html"> ed-location-example</a></td>
    <td class="tg-0lax">Examples of facility locations</td>
  </tr>
  <tr>
    <td class="tg-0lax">Family Health History</td>
    <td class="tg-6n7w">Family Health History</td>
    <td class="tg-zzem"><a href="DocumentReference-mental-health-progress-example-1.html">mental-health-progress-note-example</a></td>
    <td class="tg-0lax">Example of clinical note that contains family health history</td>
  </tr>
  <tr>
    <td class="tg-0lax">Federal/State Grants Reporting Requirements</td>
    <td class="tg-6n7w">Grant Number</td>
    <td class="tg-zzem"><a href="Observation-bh-grant-info-observation-example-1.html">bh-grant-info-obs-example</a></td>
    <td class="tg-0lax">Example of a grant with a unique identifier </td>
  </tr>
  <tr>
    <td class="tg-0lax">Federal/State Grants Reporting Requirements</td>
    <td class="tg-6n7w">Grant Program ID</td>
    <td class="tg-zzem"><a href="Observation-bh-grant-info-observation-example-1.html">bh-grant-info-obs-example</a></td>
    <td class="tg-0lax">Example of a grant program ID</td>
  </tr>
  <tr>
    <td class="tg-0lax">Federal/State Grants Reporting Requirements</td>
    <td class="tg-6n7w">Grant/Funding Type</td>
    <td class="tg-zzem"><a href="Observation-bh-grant-info-observation-example-1.html">bh-grant-info-obs-example</a></td>
    <td class="tg-0lax">Example of an identified grant funding type </td>
  </tr>
  <tr>
    <td class="tg-0lax">Goals and Preferences</td>
    <td class="tg-6n7w">Care Experience Preference</td>
    <td class="tg-zzem"><a href="Observation-provider-preference-observation-example-2.html">provider-preference-obs-example</a></td>
    <td class="tg-0lax">Example of a care experience preference for female providers</td>
  </tr>
  <tr>
    <td class="tg-0lax">Goals and Preferences</td>
    <td class="tg-6n7w">Patient Goals</td>
    <td class="tg-zzem"><a href="Goal-social-connection-example-1.html">sdoh-referral-example</a></td>
    <td class="tg-0lax">Example of an improving patient goal improve toward adequate social participation</td>
  </tr>
  <tr>
    <td class="tg-0lax">Goals and Preferences</td>
    <td class="tg-6n7w">SDOH Goals</td>
    <td class="tg-zzem"><a href="Goal-food-insecurity-example-1.html">food-insecurity-example</a><br><a href="Goal-food-insecurity-example-1.html"> housing-insecurity-example</a><br><a href="Goal-food-insecurity-example-1.html"> transportation-insecurity-example</a></td>
    <td class="tg-0lax">Examples of food, housing, and transportation SDOH goals</td>
  </tr>
  <tr>
    <td class="tg-0lax">Goals and Preferences</td>
    <td class="tg-6n7w">Treatment Intervention Preference</td>
    <td class="tg-zzem"><a href="Observation-no-morphine-preference-observation-example-1.html">no-morphine-preference-obs-example</a></td>
    <td class="tg-0lax">Example of a treatment intervention preference to avoid morphine based on past history of substance abuse.</td>
  </tr>
  <tr>
    <td class="tg-0lax">Health Insurance Information</td>
    <td class="tg-6n7w">Plan Name</td>
    <td class="tg-zzem"><a href="Coverage-medicare-coverage-example-1.html">medicare-coverage-example</a></td>
    <td class="tg-0lax">Example of health insurance coverage name</td>
  </tr>
  <tr>
    <td class="tg-0lax">Health Insurance Information</td>
    <td class="tg-6n7w">Coverage Status</td>
    <td class="tg-zzem"><a href="Coverage-medicare-coverage-example-1.html">medicare-coverage-example</a></td>
    <td class="tg-0lax">Example of health insurance coverage status</td>
  </tr>
  <tr>
    <td class="tg-0lax">Health Insurance Information</td>
    <td class="tg-6n7w">Coverage Type</td>
    <td class="tg-zzem"><a href="Coverage-medicare-coverage-example-1.html">medicare-coverage-example</a></td>
    <td class="tg-0lax">Example of health insurance coverage type</td>
  </tr>
  <tr>
    <td class="tg-0lax">Health Insurance Information</td>
    <td class="tg-6n7w">Group Identifier</td>
    <td class="tg-zzem"><a href="Coverage-medicare-coverage-example-1.html">medicare-coverage-example</a></td>
    <td class="tg-0lax">Example of health insurance group identifier</td>
  </tr>
  <tr>
    <td class="tg-0lax">Health Insurance Information</td>
    <td class="tg-6n7w">Member Identifier</td>
    <td class="tg-zzem"><a href="Coverage-medicare-coverage-example-1.html">medicare-coverage-example</a></td>
    <td class="tg-0lax">Example of health insurance member identifier</td>
  </tr>
  <tr>
    <td class="tg-0lax">Health Insurance Information</td>
    <td class="tg-6n7w">Payer Identifier</td>
    <td class="tg-zzem"><a href="Coverage-medicare-coverage-example-1.html">medicare-coverage-example</a></td>
    <td class="tg-0lax">Example of health insurance payer identifier</td>
  </tr>
  <tr>
    <td class="tg-0lax">Health Insurance Information</td>
    <td class="tg-6n7w">Relationship to Subscriber</td>
    <td class="tg-zzem"><a href="Coverage-medicare-coverage-example-1.html">medicare-coverage-example</a></td>
    <td class="tg-0lax">Example of health insurance relationship to subscriber</td>
  </tr>
  <tr>
    <td class="tg-0lax">Health Insurance Information</td>
    <td class="tg-6n7w">Subscriber Identifier</td>
    <td class="tg-zzem"><a href="Coverage-medicare-coverage-example-1.html">medicare-coverage-example</a></td>
    <td class="tg-0lax">Example of health insurance subscriber ID</td>
  </tr>
  <tr>
    <td class="tg-0lax">Health Status Assessments</td>
    <td class="tg-6n7w">Depression Assessment</td>
    <td class="tg-zzem"><a href="QuestionnaireResponse-phq-9-example-1.html">phq-9-example</a></td>
    <td class="tg-ktyi">Example of a depression assessment/screening</td>
  </tr>
  <tr>
    <td class="tg-0lax">Health Status Assessments</td>
    <td class="tg-6n7w">Mental/Cognitive Status</td>
    <td class="tg-zzem"><a href="Observation-cognitive-status-observation-example-3.html">cognitive-status-obs-example</a></td>
    <td class="tg-ktyi">Example of a mental/cognitive health status assessment/screening</td>
  </tr>
  <tr>
    <td class="tg-0lax">Health Status Assessments</td>
    <td class="tg-6n7w">Anxiety Assesment</td>
    <td class="tg-zzem"><a href="Observation-anxiety-assessment-observation-example-1.html">anxiety-assessment-obs-example</a></td>
    <td class="tg-ktyi">Example of an anxiety assessment/screening</td>
  </tr>
  <tr>
    <td class="tg-0lax">Health Status Assessments</td>
    <td class="tg-6n7w">Alcohol Use</td>
    <td class="tg-zzem"><a href="QuestionnaireResponse-alcohol-use-identification-test-1.html">alcohol-use-id-example</a></td>
    <td class="tg-ktyi">Example of patient alcohol abuse health status assessment/screening</td>
  </tr>
  <tr>
    <td class="tg-0lax">Health Status Assessments</td>
    <td class="tg-6n7w">Disability Status</td>
    <td class="tg-zzem"><a href="Observation-disability-status-observation-example-1.html">disability-status-obs-example</a></td>
    <td class="tg-ktyi">Example of disability status health status assessment/screening</td>
  </tr>
  <tr>
    <td class="tg-0lax">Health Status Assessments</td>
    <td class="tg-6n7w">Food Insecurity</td>
    <td class="tg-zzem"><a href="QuestionnaireResponse-BHP-QuestionnaireResponsePRAPAREExample-1.html">prapare-questionnaireresponse-example</a></td>
    <td class="tg-ktyi">Example of SDOH food assessment/screening</td>
  </tr>
  <tr>
    <td class="tg-0lax">Health Status Assessments</td>
    <td class="tg-6n7w">Functional Status</td>
    <td class="tg-zzem"><a href="Observation-barthel-index-functional-status-example-1.html">barthel-index-example</a></td>
    <td class="tg-ktyi">Example of functional health status assessment/screening</td>
  </tr>
  <tr>
    <td class="tg-0lax">Health Status Assessments</td>
    <td class="tg-6n7w">Housing Instability</td>
    <td class="tg-zzem"><a href="QuestionnaireResponse-BHP-QuestionnaireResponsePRAPAREExample-1.html">prapare-questionnaireresponse-example</a></td>
    <td class="tg-ktyi">Example of SDOH housing assessment/screening</td>
  </tr>
  <tr>
    <td class="tg-0lax">Health Status Assessments</td>
    <td class="tg-6n7w">Pregnancy Status</td>
    <td class="tg-zzem"><a href="Observation-pregnancy-status-example-1.html">pregnancy-example</a></td>
    <td class="tg-ktyi">Example of patient pregnancy status</td>
  </tr>
  <tr>
    <td class="tg-0lax">Health Status Assessments</td>
    <td class="tg-6n7w">SDOH Assessment</td>
    <td class="tg-zzem"><a href="QuestionnaireResponse-BHP-QuestionnaireResponsePRAPAREExample-1.html">prapare-questionnaireresponse-example</a></td>
    <td class="tg-ktyi">Example of SDOH health status assessment</td>
  </tr>
  <tr>
    <td class="tg-0lax">Health Status Assessments</td>
    <td class="tg-6n7w">Smoking Status</td>
    <td class="tg-zzem"><a href="Observation-non-smoker-example-1.html">non-smoker-example</a></td>
    <td class="tg-ktyi">Example of patient smoking status</td>
  </tr>
  <tr>
    <td class="tg-0lax">Health Status Assessments</td>
    <td class="tg-6n7w">Substance Use</td>
    <td class="tg-zzem"><a href="Condition-substance-abuse-condition-example-1.html">substance-abuse-condition-example</a></td>
    <td class="tg-ktyi">Example of substance use health status assessment</td>
  </tr>
  <tr>
    <td class="tg-0lax">Health Status Assessments</td>
    <td class="tg-6n7w">Transportation Insecurity</td>
    <td class="tg-zzem"><a href="QuestionnaireResponse-BHP-QuestionnaireResponsePRAPAREExample-1.html">prapare-questionnaireresponse-example</a></td>
    <td class="tg-ktyi">Example of SDOH transportation assessment/screening</td>
  </tr>
  <tr>
    <td class="tg-0lax">Health Status Assessments</td>
    <td class="tg-6n7w">Suicide Risk Assessment</td>
    <td class="tg-zzem"><a href="QuestionnaireResponse-C-SSRS-example-1.html">c-sses-9-example</a></td>
    <td class="tg-ktyi">Example of suicide risk assessment/screening</td>
  </tr>
  <tr>
    <td class="tg-0lax">Health Status Assessments</td>
    <td class="tg-6n7w">Interpersonal Violence</td>
    <td class="tg-zzem"><a href="QuestionnaireResponse-hark-example-1.html">hark-example</a></td>
    <td class="tg-ktyi">Example of Interpersonal Violence assessment/screening</td>
  </tr>
  <tr>
    <td class="tg-0lax">Health Status Assessments</td>
    <td class="tg-6n7w">Mental Health Status Screen</td>
    <td class="tg-zzem"><a href="Observation-cognitive-status-observation-example-3.html">cognitive-status-obs-example</a></td>
    <td class="tg-ktyi">Example of a behavioral health focused mental health status screening</td>
  </tr>
  <tr>
    <td class="tg-0lax">Health Status Assessments</td>
    <td class="tg-6n7w">Mental Trauma and PTSD Assessment</td>
    <td class="tg-zzem"><a href="QuestionnaireResponse-ace-example-1.html">ace-example</a></td>
    <td class="tg-ktyi">Example of a mental trauma or PTSD assessment/screening</td>
  </tr>
  <tr>
    <td class="tg-0lax">Immunizations</td>
    <td class="tg-6n7w">Immunizations</td>
    <td class="tg-zzem"><a href="Immunization-flu-vaccine-example-1.html">flu-vaccine-example</a></td>
    <td class="tg-0lax">Example of patient flu vaccine (immunization)</td>
  </tr>
  <tr>
    <td class="tg-0lax">Laboratory</td>
    <td class="tg-6n7w">Tests</td>
    <td class="tg-zzem"><a href="Observation-ekg-observation-example-1.html">ekg-obs-example</a></td>
    <td class="tg-0lax">Example of laboratory test - Hemogobin A1C</td>
  </tr>
  <tr>
    <td class="tg-0lax">Laboratory</td>
    <td class="tg-6n7w">Values/Results</td>
    <td class="tg-zzem"><a href="Observation-ekg-observation-example-1.html">ekg-obs-example</a></td>
    <td class="tg-0lax">Example of laboratory test result - elevated value </td>
  </tr>
  <tr>
    <td class="tg-0lax">Medications</td>
    <td class="tg-6n7w">Discharge Medications</td>
    <td class="tg-zzem"><a href="MedicationRequest-paroxetine-discharge-med-example-1.html"><span style="color:#467886">paroxetine-discharge-example</span></a><br><a href="MedicationRequest-paroxetine-discharge-med-example-1.html"><span style="color:#467886"> metformin-discharge-example</span></a><br><a href="MedicationRequest-paroxetine-discharge-med-example-1.html"><span style="color:#467886"> ativan-discharge-example</span></a></td>
    <td class="tg-0lax">Example of discharge medications to be continued at home</td>
  </tr>
  <tr>
    <td class="tg-0lax">Medications</td>
    <td class="tg-6n7w">Dose</td>
    <td class="tg-zzem"><a href="MedicationRequest-paroxetine-discharge-med-example-1.html">paroxetine-discharge-example</a></td>
    <td class="tg-0lax">Example of medication dose</td>
  </tr>
  <tr>
    <td class="tg-0lax">Medications</td>
    <td class="tg-6n7w">Dose Unit of Measure</td>
    <td class="tg-zzem"><a href="MedicationRequest-paroxetine-discharge-med-example-1.html">paroxetine-discharge-example</a></td>
    <td class="tg-0lax">Example of medication dose unit of measure</td>
  </tr>
  <tr>
    <td class="tg-0lax">Medications</td>
    <td class="tg-6n7w">Medications</td>
    <td class="tg-zzem"><a href="Medication-benzo-medication-example-1.html">benzo-medication-example</a></td>
    <td class="tg-0lax">Example of benzodiazepine medication</td>
  </tr>
  <tr>
    <td class="tg-0lax">Medications</td>
    <td class="tg-6n7w">Medication Adherence</td>
    <td class="tg-zzem"><a href="MedicationRequest-paroxetine-discharge-med-example-1.html">paroxetine-discharge-med-example</a></td>
    <td class="tg-0lax">Example of medication adherence - not taking antidepressant</td>
  </tr>
  <tr>
    <td class="tg-0lax">Medications</td>
    <td class="tg-6n7w">Medication Instructions</td>
    <td class="tg-zzem"><a href="MedicationRequest-paroxetine-discharge-med-example-1.html">paroxetine-discharge-example</a></td>
    <td class="tg-0lax">Example of medication instructions - paroxetine</td>
  </tr>
  <tr>
    <td class="tg-0lax">Medications</td>
    <td class="tg-6n7w">Medication Quantity</td>
    <td class="tg-zzem"><a href="MedicationRequest-paroxetine-discharge-med-example-1.html">paroxetine-discharge-example</a></td>
    <td class="tg-0lax">Example of medication quantity</td>
  </tr>
  <tr>
    <td class="tg-0lax">Medications</td>
    <td class="tg-6n7w">Medications Dispensed</td>
    <td class="tg-zzem"><a href="MedicationDispense-bupropion-dispense-example-1.html">bupropion-dispense-example</a></td>
    <td class="tg-0lax">Example of dispensed medication - bupropion</td>
  </tr>
  <tr>
    <td class="tg-0lax">Patient Demographics</td>
    <td class="tg-6n7w">Name to Use</td>
    <td class="tg-zzem"><a href="Patient-bh-patient-example.html">patient-example</a></td>
    <td class="tg-0lax">Example of patient preferred name</td>
  </tr>
  <tr>
    <td class="tg-0lax">Patient Demographics</td>
    <td class="tg-6n7w">Current Address</td>
    <td class="tg-zzem"><a href="Patient-bh-patient-example.html">patient-example</a></td>
    <td class="tg-0lax">Example of patient address</td>
  </tr>
  <tr>
    <td class="tg-0lax">Patient Demographics</td>
    <td class="tg-6n7w">Date of Birth</td>
    <td class="tg-zzem"><a href="Patient-bh-patient-example.html">patient-example</a></td>
    <td class="tg-0lax">Example of patient date of birth</td>
  </tr>
  <tr>
    <td class="tg-0lax">Patient Demographics</td>
    <td class="tg-6n7w">Email Address</td>
    <td class="tg-zzem"><a href="Patient-bh-patient-example.html">patient-example</a></td>
    <td class="tg-0lax">Example of patient email address</td>
  </tr>
  <tr>
    <td class="tg-0lax">Patient Demographics</td>
    <td class="tg-6n7w">Ethnicity</td>
    <td class="tg-zzem"><a href="Patient-bh-patient-example.html">patient-example</a></td>
    <td class="tg-0lax">Example of patient ethnicity</td>
  </tr>
  <tr>
    <td class="tg-0lax">Patient Demographics</td>
    <td class="tg-6n7w">First Name</td>
    <td class="tg-zzem"><a href="Patient-bh-patient-example.html">patient-example</a></td>
    <td class="tg-0lax">Example of patient first name</td>
  </tr>
  <tr>
    <td class="tg-0lax">Patient Demographics</td>
    <td class="tg-6n7w">Gender Identity</td>
    <td class="tg-zzem"><a href="Patient-bh-patient-example.html">patient-example</a></td>
    <td class="tg-0lax">Example of patient gender identify</td>
  </tr>
  <tr>
    <td class="tg-0lax">Patient Demographics</td>
    <td class="tg-6n7w">Last Name</td>
    <td class="tg-zzem"><a href="Patient-bh-patient-example.html">patient-example</a></td>
    <td class="tg-0lax">Example of patient last name</td>
  </tr>
  <tr>
    <td class="tg-0lax">Patient Demographics</td>
    <td class="tg-6n7w">Name Suffix</td>
    <td class="tg-zzem"><a href="Patient-bh-patient-example.html">patient-example</a></td>
    <td class="tg-0lax">Example of patient name suffix</td>
  </tr>
  <tr>
    <td class="tg-0lax">Patient Demographics</td>
    <td class="tg-6n7w">Phone Number</td>
    <td class="tg-zzem"><a href="Patient-bh-patient-example.html">patient-example</a></td>
    <td class="tg-ktyi">Example of patient phone number</td>
  </tr>
  <tr>
    <td class="tg-0lax">Patient Demographics</td>
    <td class="tg-6n7w">Preferred Language</td>
    <td class="tg-zzem"><a href="Patient-bh-patient-example.html">patient-example</a></td>
    <td class="tg-ktyi">Example of patient preferred language</td>
  </tr>
  <tr>
    <td class="tg-0lax">Patient Demographics</td>
    <td class="tg-6n7w">Race</td>
    <td class="tg-zzem"><a href="Patient-bh-patient-example.html">patient-example</a></td>
    <td class="tg-0lax">Example of patient race</td>
  </tr>
  <tr>
    <td class="tg-0lax">Patient Demographics</td>
    <td class="tg-6n7w">Related Person's Name</td>
    <td class="tg-zzem"><a href="RelatedPerson-adult-child-relatedperson-example-1.html">adult-child-relatedperson-example</a></td>
    <td class="tg-0lax">Example of patient related person's name</td>
  </tr>
  <tr>
    <td class="tg-0lax">Patient Demographics</td>
    <td class="tg-6n7w">Relationship Type</td>
    <td class="tg-zzem"><a href="RelatedPerson-adult-child-relatedperson-example-1.html">adult-child-relatedperson-example</a></td>
    <td class="tg-0lax">Example of patient related person's relationship</td>
  </tr>
  <tr>
    <td class="tg-0lax">Patient Demographics</td>
    <td class="tg-6n7w">Sex</td>
    <td class="tg-zzem"><a href="Patient-bh-patient-example.html">patient-example</a></td>
    <td class="tg-0lax">Example of patient sex </td>
  </tr>
  <tr>
    <td class="tg-0lax">Patient Demographics</td>
    <td class="tg-6n7w">Sexual Orientation</td>
    <td class="tg-zzem"><a href="Observation-sexual-orientation-example-1.html">sexual-orientation-example</a></td>
    <td class="tg-0lax">Example of patient sexual orienation</td>
  </tr>
  <tr>
    <td class="tg-0lax">Patient Demographics</td>
    <td class="tg-6n7w">Tribal Affiliation</td>
    <td class="tg-zzem"><a href="Patient-bh-patient-example.html">patient-example</a></td>
    <td class="tg-0lax">Example of patient tribal affiliation</td>
  </tr>
  <tr>
    <td class="tg-0lax">Patient Demographics</td>
    <td class="tg-6n7w">Date of Death</td>
    <td class="tg-zzem"><a href="Patient-bh-patient-example.html">patient-example</a></td>
    <td class="tg-0lax">Example of patient date of death</td>
  </tr>
  <tr>
    <td class="tg-0lax">Patient Demographics</td>
    <td class="tg-6n7w">Identifier</td>
    <td class="tg-zzem"><a href="Patient-bh-patient-example.html">patient-example</a></td>
    <td class="tg-0lax">Example of patient patient identifier</td>
  </tr>
  <tr>
    <td class="tg-0lax">Patient Demographics  </td>
    <td class="tg-6n7w">Pronoun</td>
    <td class="tg-zzem"><a href="Patient-bh-patient-example.html">patient-example</a></td>
    <td class="tg-0lax">Example of patient preferred pronouns</td>
  </tr>
  <tr>
    <td class="tg-0lax">Patient Summary and Plan</td>
    <td class="tg-6n7w">Assessment and Plan of Treatment</td>
    <td class="tg-zzem"><a href="DocumentReference-mental-health-progress-example-1.html">mental-health-progress-note-example</a></td>
    <td class="tg-0lax">Example of assessment and plan of treatment recorded within a note.</td>
  </tr>
  <tr>
    <td class="tg-0lax">Problems</td>
    <td class="tg-6n7w">Problems/Conditions</td>
    <td class="tg-yk8o">panic-attack-example<br> chest-pain-example<br> grief-example<br> substance-abuse-condition-example<br> diabetes-example</td>
    <td class="tg-0lax">Examples of diagnosis</td>
  </tr>
  <tr>
    <td class="tg-0lax">Problems</td>
    <td class="tg-6n7w">SDOH Problems/Health Concerns</td>
    <td class="tg-zzem"><a href="Condition-substance-abuse-condition-example-1.html">substance-abuse-condition-example</a></td>
    <td class="tg-0lax">Example of patient history of substance abuse</td>
  </tr>
  <tr>
    <td class="tg-0lax">Problems</td>
    <td class="tg-6n7w">Date of Diagnosis</td>
    <td class="tg-yk8o">panic-attack-example<br> chest-pain-example<br> grief-example<br> substance-abuse-condition-example<br> diabetes-example</td>
    <td class="tg-0lax">Example of diagnosis</td>
  </tr>
  <tr>
    <td class="tg-0lax">Problems</td>
    <td class="tg-6n7w">Date of Onset</td>
    <td class="tg-yk8o">panic-attack-example<br> chest-pain-example<br> grief-example<br> substance-abuse-condition-example<br> diabetes-example</td>
    <td class="tg-0lax">Example of diagnosis onset</td>
  </tr>
  <tr>
    <td class="tg-0lax">Problems</td>
    <td class="tg-6n7w">Date of Resolution</td>
    <td class="tg-yk8o">panic-attack-example<br> chest-pain-example<br> grief-example<br> substance-abuse-condition-example<br> diabetes-example</td>
    <td class="tg-0lax">Example of diagnosis resolution </td>
  </tr>
  <tr>
    <td class="tg-0lax">Procedures</td>
    <td class="tg-6n7w">Harm Reduction Activities</td>
    <td class="tg-zzem"><a href="Procedure-harm-reduction-example-1.html">harm-reduction-activities-example</a></td>
    <td class="tg-0lax">Example of patient harm reduction program</td>
  </tr>
  <tr>
    <td class="tg-0lax">Procedures</td>
    <td class="tg-6n7w">Performance Time</td>
    <td class="tg-zzem"><a href="Procedure-alcohol-prevetion-education-example-1.html">alcohol-prevention-edu-example</a></td>
    <td class="tg-0lax">Example of a documented time when alcohol prevention information was provided</td>
  </tr>
  <tr>
    <td class="tg-0lax">Procedures</td>
    <td class="tg-6n7w">Procedures</td>
    <td class="tg-zzem"><a href="Procedure-alcohol-prevetion-education-example-1.html">alcohol-prevention-edu-example</a></td>
    <td class="tg-0lax">Example of patient alcohol cessation education</td>
  </tr>
  <tr>
    <td class="tg-0lax">Procedures</td>
    <td class="tg-6n7w">Reason for Referral</td>
    <td class="tg-zzem"><a href="ServiceRequest-ServiceRequest-peer-mentoring-example-1.html">sdoh-referral-example</a></td>
    <td class="tg-0lax">Example of patient referral to a peer coaching program</td>
  </tr>
  <tr>
    <td class="tg-0lax">Procedures</td>
    <td class="tg-6n7w">SDOH Interventions</td>
    <td class="tg-zzem"><a href="ServiceRequest-ServiceRequest-peer-mentoring-example-1.html">sdoh-referral-example</a></td>
    <td class="tg-0lax">Example of social connection intervention</td>
  </tr>
  <tr>
    <td class="tg-0lax">Procedures</td>
    <td class="tg-6n7w">Peer Coaching or Mentoring</td>
    <td class="tg-zzem"><a href="ServiceRequest-ServiceRequest-peer-mentoring-example-1.html">sdoh-referral-example</a></td>
    <td class="tg-0lax">Example of a referral for peer support or mentoring</td>
  </tr>
  <tr>
    <td class="tg-0lax">Procedures</td>
    <td class="tg-6n7w">Recovery Planning</td>
    <td class="tg-zzem"><a href="Procedure-alcohol-prevetion-education-example-1.html">alcohol-prevetion-edu-example</a></td>
    <td class="tg-ktyi">Example of recovery planning services</td>
  </tr>
  <tr>
    <td class="tg-0lax">Vital Signs</td>
    <td class="tg-6n7w">Body Height</td>
    <td class="tg-zzem"><a href="Observation-height-example-1.html">height-example</a></td>
    <td class="tg-0lax">Example of body height</td>
  </tr>
  <tr>
    <td class="tg-0lax">Vital Signs</td>
    <td class="tg-6n7w">Body Temperature</td>
    <td class="tg-zzem"><a href="Observation-temperature-example-1.html">temperature-example</a></td>
    <td class="tg-0lax">Example of body temperature</td>
  </tr>
  <tr>
    <td class="tg-0lax">Vital Signs</td>
    <td class="tg-6n7w">Body Weight</td>
    <td class="tg-zzem"><a href="Observation-weight-example-1.html">weight-example</a></td>
    <td class="tg-0lax">Example of body weight</td>
  </tr>
  <tr>
    <td class="tg-0lax">Vital Signs</td>
    <td class="tg-6n7w">Diastolic Blood Pressure</td>
    <td class="tg-zzem"><a href="Observation-blood-pressure-example-1.html">blood-pressure-example</a></td>
    <td class="tg-0lax">Example of diastolic blood pressure</td>
  </tr>
  <tr>
    <td class="tg-0lax">Vital Signs</td>
    <td class="tg-6n7w">Heart Rate</td>
    <td class="tg-zzem"><a href="Observation-heart-rate-example-1.html">heart-rate-example</a></td>
    <td class="tg-0lax">Example of heart rate</td>
  </tr>
  <tr>
    <td class="tg-0lax">Vital Signs</td>
    <td class="tg-6n7w">Pulse Oximetry</td>
    <td class="tg-zzem"><a href="Observation-oxygen-saturation-example-1.html">oxygen-saturation-example</a></td>
    <td class="tg-0lax">Example of pulse oximetry </td>
  </tr>
  <tr>
    <td class="tg-0lax">Vital Signs</td>
    <td class="tg-6n7w">Respiratory Rate</td>
    <td class="tg-zzem"><a href="Observation-respiratory-rate-example-1.html">respiratory-rate-example</a></td>
    <td class="tg-0lax">Example of respiratory rate</td>
  </tr>
  <tr>
    <td class="tg-0lax">Vital Signs</td>
    <td class="tg-6n7w">Systolic Blood Pressure</td>
    <td class="tg-zzem"><a href="Observation-blood-pressure-example-1.html">blood-pressure-example</a></td>
    <td class="tg-0lax">Example of systolic blood pressure</td>
  </tr>
  <tr>
    <td class="tg-0lax">Vital Signs</td>
    <td class="tg-6n7w">Average Blood Pressure</td>
    <td class="tg-zzem"><a href="Observation-average-blood-pressure-example-1.html">average-bp-example</a></td>
    <td class="tg-0lax">Example of average blood pressure</td>
  </tr>
  <tr>
    <td class="tg-0lax">Work Information</td>
    <td class="tg-6n7w">Farmworker Status</td>
    <td class="tg-zzem"><a href="Observation-usual-work-example-1.html">history-of-occupation-example</a></td>
    <td class="tg-7zrl">Example of patient usual occupation as a citrus farm worker</td>
  </tr>
  <tr>
    <td class="tg-0lax">Work Information</td>
    <td class="tg-6n7w">Veteran Status</td>
    <td class="tg-zzem"><a href="Patient-bh-patient-example.html">patient-example</a></td>
    <td class="tg-0lax">Example of patient with a veteran status equals true</td>
  </tr>
</tbody></table>
