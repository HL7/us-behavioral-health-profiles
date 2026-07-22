---
topic: bh_to_fhir_examples
---

# {{page-title}}

This table provides a correlation between USCDI+ behavioral health data elements and their corresponding FHIR elements, illustrating how each data element is represented in the BH FHIR implementation guide. It includes specific examples and narratives for each matched representation, demonstrating how they are applied in practical scenarios, such as documenting allergies, health assessments, clinical notes, and patient demographics. This ensures that healthcare data is accurately represented and easily interoperable across different health information systems.

<table class="tg"> <thead>
  <tr>
     <th class="tg-w98d">USCDI+ BH <br> Data Class</th>
     <th class="tg-w98d"><span style="color:white;background-color:#156082">USCDI+ BH </span><br><span style="color:white;background-color:#156082"> Data Element</span></th>
     <th class="tg-w98d"><span style="color:white;background-color:#156082">FHIR Example</span></th>
     <th class="tg-w98d"><span style="font-weight:700;color:white;background-color:#156082">FHIR Narrative</span></th>
  </tr></thead>
<tbody>
  <!-- <tr>
     <td class="tg-ktyi">Adverse Event</td>
     <td class="tg-1wig">Adverse Event</td>
     <td class="tg-zzem">{{pagelink:example-fall-adverse-event-example-1}}</td>
     <td class="tg-0lax">Example of patient adverse fall event</td>
  </tr> -->
  <tr>
     <td class="tg-0lax">Allergies and Intolerances</td>
     <td class="tg-1wig">Reaction</td>
         <td class="tg-zzem">{{pagelink:example-peanut-allergy-example-1}}<br>{{pagelink:example-penicillin-allergy-example-1}}</td>
     <td class="tg-0lax">Examples of allergic response to peanuts and penicillin</td>
  </tr>
  <tr>
     <td class="tg-0lax">Allergies and Intolerances</td>
     <td class="tg-1wig">Substance (Medication)</td>
     <td class="tg-zzem">{{pagelink:example-penicillin-allergy-example-1}}</td>
     <td class="tg-0lax">Example of patient documented penicillin allergy</td>
  </tr>
  <tr>
     <td class="tg-0lax">Allergies and Intolerances</td>
     <td class="tg-1wig">Substance (Non-Medication)</td>
     <td class="tg-zzem">{{pagelink:example-peanut-allergy-example-1}}</td>
     <td class="tg-0lax">Example of patient documented peanut allergy</td>
  </tr>
  <tr>
     <td class="tg-0lax">Care Team Member(s)</td>
     <td class="tg-1wig">Care Team Member Role</td>
     <td class="tg-zzem">{{pagelink:example-bh-care-team-example-1}}</td>
     <td class="tg-0lax">Example of a mental health counselor as part of the care team</td>
  </tr>
  <tr>
     <td class="tg-0lax">Care Team Member(s)</td>
     <td class="tg-1wig">Care Team Member Telecom</td>
         <td class="tg-zzem">{{pagelink:example-ed-physician-example-1}}<br>{{pagelink:example-pcp-provider-example-1}}<br>{{pagelink:example-mental-health-provider-example-1}}</td>
     <td class="tg-0lax">Examples of a patient's emergency room provider, Primary care provider and mental health provider telecom</td>
  </tr>
  <tr>
     <td class="tg-0lax">Care Team Member(s)</td>
     <td class="tg-1wig">Care Team Member Identifier</td>
         <td class="tg-zzem">{{pagelink:example-ed-physician-example-1}}<br>{{pagelink:example-pcp-provider-example-1}}<br>{{pagelink:example-mental-health-provider-example-1}}</td>
     <td class="tg-0lax">Examples of a patient's emergency room provider, Primary care provider and mental health provider identifiers</td>
  </tr>
  <tr>
     <td class="tg-0lax">Clinical Notes</td>
     <td class="tg-1wig">Mental Health Consultation Note</td>
     <td class="tg-zzem">{{pagelink:example-mental-health-consult-note-example-1}}</td>
     <td class="tg-0lax">Example of a mental health consult note. Clinical details of note content are encoded (base64)</td>
  </tr>
  <tr>
     <td class="tg-0lax">Clinical Notes</td>
     <td class="tg-1wig">Mental Health Discharge Summary Note</td>
     <td class="tg-zzem">{{pagelink:example-mental-health-discharge-summary-example-1}}</td>
     <td class="tg-0lax">Example of a mental health discharge summary note. Clinical details of note content are encoded (base64)</td>
  </tr>
  <tr>
     <td class="tg-0lax">Clinical Notes</td>
     <td class="tg-1wig">Mental Health History &amp; Physical</td>
         <td class="tg-zzem">{{pagelink:example-mental-health-hx-physical-example-1}}</td>
     <td class="tg-0lax">Example of a mental health history and physical note. Clinical details of note content are encoded (base64)</td>
  </tr>
  <tr>
     <td class="tg-0lax">Clinical Notes</td>
     <td class="tg-1wig">Mental Health Procedure Note</td>
     <td class="tg-zzem">{{pagelink:example-mental-health-procedure-example-1}}</td>
     <td class="tg-0lax">Example of a mental health procedure note. Clinical details of note content are encoded (base64)</td>
  </tr>
  <tr>
     <td class="tg-0lax">Clinical Notes</td>
     <td class="tg-1wig">Mental Health Progress Note</td>
     <td class="tg-zzem">{{pagelink:example-mental-health-progress-example-1}}</td>
     <td class="tg-0lax">Example of a mental health progress note. Clinical details of note content are encoded (base64)</td>
  </tr>
  <tr>
     <td class="tg-0lax">Clinical Tests</td>
     <td class="tg-1wig">Clinical Test</td>
     <td class="tg-zzem">{{pagelink:example-hemoglobin-a1c-example-1}}</td>
     <td class="tg-ycr8">Example of laboratory test - Hemoglobin A1C</td>
  </tr>
  <tr>
     <td class="tg-0lax">Clinical Tests</td>
     <td class="tg-1wig">Clinical Test Result/Report</td>
     <td class="tg-zzem">{{pagelink:example-hemoglobin-a1c-example-1}}</td>
     <td class="tg-ycr8">Example of laboratory test result - elevated value</td>
  </tr>
  <tr>
     <td class="tg-0lax">Consent</td>
     <td class="tg-1wig">Consent</td>
     <td class="tg-zzem">{{pagelink:example-SDOHCC-ConsentInformationDisclosure-example-1}}</td>
     <td class="tg-ycr8">Example of a consent for information disclosure. Information is encoded (base64)</td>
  </tr>
  <tr>
     <td class="tg-0lax">Diagnostic Imaging</td>
     <td class="tg-1wig">Diagnostic Imaging Report</td>
     <td class="tg-zzem">{{pagelink:example-ekg-impression-report-example-1}}</td>
     <td class="tg-0lax">Example of EKG impression report</td>
  </tr>
  <tr>
     <td class="tg-0lax">Diagnostic Imaging</td>
     <td class="tg-1wig">Diagnostic Imaging Test</td>
     <td class="tg-zzem">{{pagelink:example-ekg-impression-report-example-1}}</td>
     <td class="tg-0lax">Example of EKG test report</td>
  </tr>
  <tr>
     <td class="tg-0lax">Encounter Information</td>
     <td class="tg-1wig">Diagnosis Rank</td>
     <td class="tg-zzem">{{pagelink:example-discharge-encounter-example-3}}</td>
     <td class="tg-ktyi">Example of the ranking of diagnosis in the discharge encounter </td>
  </tr>
  <tr>
     <td class="tg-0lax">Encounter Information</td>
     <td class="tg-1wig">Encounter Diagnosis</td>
     <td class="tg-zzem">{{pagelink:example-discharge-encounter-example-3}}</td>
     <td class="tg-ktyi">Example of encounter diagnosis</td>
  </tr>
  <tr>
     <td class="tg-0lax">Encounter Information</td>
     <td class="tg-1wig">Encounter Disposition</td>
     <td class="tg-zzem">{{pagelink:example-discharge-encounter-example-3}}</td>
     <td class="tg-ktyi">Example of encounter disposition</td>
  </tr>
  <tr>
     <td class="tg-0lax">Encounter Information</td>
     <td class="tg-1wig">Encounter Location</td>
     <td class="tg-zzem">{{pagelink:example-discharge-encounter-example-3}}</td>
     <td class="tg-ktyi">Example of encounter location</td>
  </tr>
  <tr>
     <td class="tg-0lax">Encounter Information</td>
     <td class="tg-1wig">Encounter Time</td>
      <td class="tg-zzem">{{pagelink:example-discharge-encounter-example-3}}</td>
     <td class="tg-ktyi">Example of encounter time</td>
  </tr>
  <tr>
     <td class="tg-0lax">Encounter Information</td>
     <td class="tg-1wig">Encounter Type</td>
     <td class="tg-zzem">{{pagelink:example-discharge-encounter-example-3}}</td>
     <td class="tg-ktyi">Example of encounter type such as observation or ambulatory</td>
  </tr>
  <tr>
     <td class="tg-0lax">Facility Information</td>
     <td class="tg-1wig">Facility Type</td>
     <td class="tg-zzem">{{pagelink:example-obs-location-example-1}}<br>{{pagelink:example-ed-location-example-1}}</td>
     <td class="tg-0lax">Examples of facility locations</td>
  </tr>
  <tr>
     <td class="tg-0lax">Family Health History</td>
     <td class="tg-1wig">Family Health History</td>
     <td class="tg-zzem">{{pagelink:example-mental-health-hx-physical-example-1}}</td>
     <td class="tg-ycr8">Example of clinical note that contains family health history. Clinical details of note content are encoded (base64)</td>
  </tr>
  <tr>
     <td class="tg-0lax">Federal/State Grants Reporting Requirements</td>
     <td class="tg-1wig">Grant Number</td>
     <td class="tg-zzem">{{pagelink:example-bh-grant-info-observation-example-1}}</td>
     <td class="tg-0lax">Example of a grant with a unique identifier </td>
  </tr>
  <tr>
     <td class="tg-0lax">Federal/State Grants Reporting Requirements</td>
     <td class="tg-1wig">Grant Program ID</td>
     <td class="tg-zzem">{{pagelink:example-bh-grant-info-observation-example-1}}</td>
     <td class="tg-0lax">Example of a grant program ID</td>
  </tr>
  <tr>
     <td class="tg-0lax">Federal/State Grants Reporting Requirements</td>
     <td class="tg-1wig">Grant/Funding Type</td>
     <td class="tg-zzem">{{pagelink:example-bh-grant-info-observation-example-1}}</td>
     <td class="tg-0lax">Example of an identified grant funding type </td>
  </tr>
  <tr>
     <td class="tg-0lax">Goals and Preferences</td>
     <td class="tg-1wig">Care Experience Preference</td>
     <td class="tg-zzem">{{pagelink:example-provider-preference-observation-example-2}}</td>
     <td class="tg-0lax">Example of a care experience preference for health professional</td>
  </tr>
  <tr>
     <td class="tg-0lax">Goals and Preferences</td>
     <td class="tg-1wig">Patient Goals</td>
     <td class="tg-zzem">{{pagelink:example-social-connection-example-1}}</td>
     <td class="tg-0lax">Example of a patient goal to improve toward adequate social participation</td>
  </tr>
  <tr>
     <td class="tg-0lax">Goals and Preferences</td>
     <td class="tg-1wig">SDOH Goals</td>
      <td class="tg-zzem">{{pagelink:example-food-insecurity-example-1}}<br>{{pagelink:example-housing-insecurity-example-1}}<br>{{pagelink:example-transportation-insecurity-example-1}}</td>
     <td class="tg-0lax">Examples of food, housing, and transportation SDOH goals</td>
  </tr>
  <tr>
     <td class="tg-0lax">Goals and Preferences</td>
     <td class="tg-1wig">Treatment Intervention Preference</td>
     <td class="tg-zzem">{{pagelink:example-no-morphine-preference-observation-example-1}}</td>
     <td class="tg-0lax">Example of a treatment intervention preference to avoid morphine based on past history of substance abuse</td>
  </tr>
  <tr>
     <td class="tg-0lax">Health Insurance Information</td>
     <td class="tg-1wig">Plan Name</td>
     <td class="tg-zzem">{{pagelink:example-medicaid-coverage-example-1}}</td>
     <td class="tg-0lax">Example of health insurance coverage name</td>
  </tr>
  <tr>
     <td class="tg-0lax">Health Insurance Information</td>
     <td class="tg-1wig">Coverage Status</td>
     <td class="tg-zzem">{{pagelink:example-medicaid-coverage-example-1}}</td>
     <td class="tg-0lax">Example of health insurance coverage status</td>
  </tr>
  <tr>
     <td class="tg-0lax">Health Insurance Information</td>
     <td class="tg-1wig">Coverage Type</td>
     <td class="tg-zzem">{{pagelink:example-medicaid-coverage-example-1}}</td>
     <td class="tg-0lax">Example of health insurance coverage type</td>
  </tr>
  <tr>
     <td class="tg-0lax">Health Insurance Information</td>
     <td class="tg-1wig">Group Identifier</td>
     <td class="tg-zzem">{{pagelink:example-medicaid-coverage-example-1}}</td>
     <td class="tg-0lax">Example of health insurance group identifier</td>
  </tr>
  <tr>
     <td class="tg-0lax">Health Insurance Information</td>
     <td class="tg-1wig">Member Identifier</td>
     <td class="tg-zzem">{{pagelink:example-medicaid-coverage-example-1}}</td>
     <td class="tg-0lax">Example of health insurance member identifier</td>
  </tr>
  <tr>
     <td class="tg-0lax">Health Insurance Information</td>
     <td class="tg-1wig">Payer Identifier</td>
     <td class="tg-zzem">{{pagelink:example-medicaid-coverage-example-1}}</td>
     <td class="tg-0lax">Example of health insurance payer identifier</td>
  </tr>
  <tr>
     <td class="tg-0lax">Health Insurance Information</td>
     <td class="tg-1wig">Relationship to Subscriber</td>
     <td class="tg-zzem">{{pagelink:example-medicaid-coverage-example-1}}</td>
     <td class="tg-0lax">Example of health insurance relationship to subscriber</td>
  </tr>
  <tr>
     <td class="tg-0lax">Health Insurance Information</td>
     <td class="tg-1wig">Subscriber Identifier</td>
     <td class="tg-zzem">{{pagelink:example-medicaid-coverage-example-1}}</td>
     <td class="tg-0lax">Example of health insurance subscriber ID</td>
  </tr>
  <tr>
     <td class="tg-0lax">Health Status Assessments</td>
     <td class="tg-1wig">Depression Assessment</td>
     <td class="tg-zzem">{{pagelink:example-phq-9-example-1}}</td>
     <td class="tg-ktyi">Example of a depression assessment/screening</td>
  </tr>
  <tr>
     <td class="tg-0lax">Health Status Assessments</td>
     <td class="tg-1wig">Mental/Cognitive Status</td>
     <td class="tg-zzem">{{pagelink:example-cognitive-status-observation-example-3}}</td>
     <td class="tg-ktyi">Example of a mental/cognitive health status assessment/screening</td>
  </tr>
  <tr>
     <td class="tg-0lax">Health Status Assessments</td>
     <td class="tg-1wig">Anxiety Assessment</td>
     <td class="tg-zzem">{{pagelink:example-anxiety-assessment-observation-example-1}}</td>
     <td class="tg-ktyi">Example of an anxiety assessment/screening</td>
  </tr>
  <tr>
     <td class="tg-0lax">Health Status Assessments</td>
     <td class="tg-1wig">Alcohol Use</td>
     <td class="tg-zzem">{{pagelink:example-alcohol-use-identification-test-1}}</td>
     <td class="tg-ktyi">Example of patient alcohol use status assessment/screening</td>
  </tr>
  <tr>
     <td class="tg-0lax">Health Status Assessments</td>
     <td class="tg-1wig">Disability Status</td>
     <td class="tg-zzem">{{pagelink:example-disability-status-observation-example-1}}</td>
     <td class="tg-ktyi">Example of disability status health status assessment/screening</td>
  </tr>
  <tr>
     <td class="tg-0lax">Health Status Assessments</td>
     <td class="tg-1wig">Food Insecurity</td>
     <td class="tg-zzem">{{pagelink:example-BHP-QuestionnaireResponsePRAPAREExample-1}}</td>
     <td class="tg-ktyi">Example of SDOH food assessment/screening</td>
  </tr>
  <tr>
     <td class="tg-0lax">Health Status Assessments</td>
     <td class="tg-1wig">Functional Status</td>
     <td class="tg-zzem">{{pagelink:example-barthel-index-functional-status-example-1}}</td>
     <td class="tg-ktyi">Example of functional health status assessment/screening</td>
  </tr>
  <tr>
     <td class="tg-0lax">Health Status Assessments</td>
     <td class="tg-1wig">Housing Instability</td>
     <td class="tg-zzem">{{pagelink:example-BHP-QuestionnaireResponsePRAPAREExample-1}}</td>
     <td class="tg-ktyi">Example of SDOH housing assessment/screening</td>
  </tr>
  <!-- <tr>
     <td class="tg-0lax">Health Status Assessments</td>
     <td class="tg-1wig">Pregnancy Status</td>
     <td class="tg-zzem">{{pagelink:example-pregnancy-status-example-1}}</td>
     <td class="tg-ktyi">Example of patient pregnancy status assessment/screening</td>
  </tr> -->
  <tr>
     <td class="tg-0lax">Health Status Assessments</td>
     <td class="tg-1wig">SDOH Assessment</td>
     <td class="tg-zzem">{{pagelink:example-BHP-QuestionnaireResponsePRAPAREExample-1}}</td>
     <td class="tg-ktyi">Example of SDOH health status assessment</td>
  </tr>
  <tr>
     <td class="tg-0lax">Health Status Assessments</td>
     <td class="tg-1wig">Smoking Status</td>
     <td class="tg-zzem">{{pagelink:example-non-smoker-example-1}}</td>
     <td class="tg-ktyi">Example of patient smoking status assessment/screening</td>
  </tr>
  <tr>
     <td class="tg-0lax">Health Status Assessments</td>
     <td class="tg-1wig">Substance Use</td>
     <td class="tg-zzem">{{pagelink:example-substance-abuse-condition-example-1}}</td>
     <td class="tg-ktyi">Example of substance use health status assessment</td>
  </tr>
  <tr>
     <td class="tg-0lax">Health Status Assessments</td>
     <td class="tg-1wig">Transportation Insecurity</td>
     <td class="tg-zzem">{{pagelink:example-BHP-QuestionnaireResponsePRAPAREExample-1}}</td>
     <td class="tg-ktyi">Example of SDOH transportation assessment/screening</td>
  </tr>
  <tr>
     <td class="tg-0lax">Health Status Assessments</td>
     <td class="tg-1wig">Suicide Risk Assessment</td>
     <td class="tg-zzem">{{pagelink:example-C-SSRS-example-1}}</td>
     <td class="tg-ktyi">Example of suicide risk assessment/screening</td>
  </tr>
  <tr>
     <td class="tg-0lax">Health Status Assessments</td>
     <td class="tg-1wig">Interpersonal Violence</td>
     <td class="tg-zzem">{{pagelink:example-hark-example-1}}</td>
     <td class="tg-ktyi">Example of Interpersonal Violence assessment/screening</td>
  </tr>
  <tr>
     <td class="tg-0lax">Health Status Assessments</td>
     <td class="tg-1wig">Mental Health Status Screen</td>
     <td class="tg-zzem">{{pagelink:example-cognitive-status-observation-example-3}}</td>
     <td class="tg-ktyi">Example of a behavioral health focused mental health status screening</td>
  </tr>
  <tr>
     <td class="tg-0lax">Health Status Assessments</td>
     <td class="tg-1wig">Mental Trauma and PTSD Assessment</td>
     <td class="tg-zzem">{{pagelink:example-ace-example-1}}</td>
     <td class="tg-ktyi">Example of a mental trauma or PTSD assessment/screening</td>
  </tr>
  <tr>
     <td class="tg-0lax">Immunizations</td>
     <td class="tg-1wig">Immunizations</td>
     <td class="tg-zzem">{{pagelink:example-flu-vaccine-example-1}}</td>
     <td class="tg-0lax">Example of patient flu vaccine (immunization)</td>
  </tr>
  <tr>
     <td class="tg-0lax">Laboratory</td>
     <td class="tg-1wig">Tests</td>
     <td class="tg-zzem">{{pagelink:example-hemoglobin-a1c-example-1}}</td>
     <td class="tg-0lax">Example of laboratory test - Hemoglobin A1C</td>
  </tr>
  <tr>
     <td class="tg-0lax">Laboratory</td>
     <td class="tg-1wig">Values/Results</td>
     <td class="tg-zzem">{{pagelink:example-hemoglobin-a1c-example-1}}</td>
     <td class="tg-0lax">Example of laboratory test result - elevated value </td>
  </tr>
  <tr>
     <td class="tg-0lax">Medications</td>
     <td class="tg-1wig">Discharge Medications</td>
      <td class="tg-zzem">{{pagelink:example-paroxetine-discharge-med-example-1}}<br>{{pagelink:example-metformin-discharge-med-example-1}}<br>{{pagelink:example-ativan-discharge-med-example-1}}</td>
     <td class="tg-0lax">Example of discharge medications to be continued at home</td>
  </tr>
  <tr>
     <td class="tg-0lax">Medications</td>
     <td class="tg-1wig">Dose</td>
     <td class="tg-zzem">{{pagelink:example-paroxetine-discharge-med-example-1}}</td>
     <td class="tg-0lax">Example of medication dose</td>
  </tr>
  <tr>
     <td class="tg-0lax">Medications</td>
     <td class="tg-1wig">Dose Unit of Measure</td>
     <td class="tg-zzem">{{pagelink:example-paroxetine-discharge-med-example-1}}</td>
     <td class="tg-0lax">Example of medication dose unit of measure</td>
  </tr>
  <tr>
     <td class="tg-0lax">Medications</td>
     <td class="tg-1wig">Medications</td>
     <td class="tg-zzem">{{pagelink:example-benzo-medication-example-1}}</td>
     <td class="tg-0lax">Example of benzodiazepine medication</td>
  </tr>
  <tr>
     <td class="tg-0lax">Medications</td>
     <td class="tg-1wig">Medication Adherence</td>
     <td class="tg-zzem">{{pagelink:example-paroxetine-discharge-med-example-1}}</td>
     <td class="tg-0lax">Example of medication adherence - not taking antidepressant</td>
  </tr>
  <tr>
     <td class="tg-0lax">Medications</td>
     <td class="tg-1wig">Medication Instructions</td>
     <td class="tg-zzem">{{pagelink:example-paroxetine-discharge-med-example-1}}<br>{{pagelink:example-benzo-order-example-1}}</td>
     <td class="tg-0lax">Example of medication instructions - paroxetine</td>
  </tr>
  <tr>
     <td class="tg-0lax">Medications</td>
     <td class="tg-1wig">Medication Quantity</td>
     <td class="tg-zzem">{{pagelink:example-paroxetine-discharge-med-example-1}}</td>
     <td class="tg-0lax">Example of medication quantity</td>
  </tr>
  <tr>
     <td class="tg-0lax">Medications</td>
     <td class="tg-1wig">Medications Dispensed</td>
     <td class="tg-zzem">{{pagelink:example-bupropion-dispense-example-1}}</td>
     <td class="tg-0lax">Example of dispensed medication - bupropion</td>
  </tr>
  <!-- <tr>
     <td class="tg-0lax">Patient Demographics</td>
     <td class="tg-1wig">Name to Use</td>
     <td class="tg-zzem">{{pagelink:example-bh-patient-example}}</td>
     <td class="tg-0lax">Example of patient preferred name</td>
  </tr> -->
  <tr>
     <td class="tg-0lax">Patient Demographics</td>
     <td class="tg-1wig">Current Address</td>
     <td class="tg-zzem">{{pagelink:example-bh-patient-example}}</td>
     <td class="tg-0lax">Example of patient address</td>
  </tr>
  <tr>
     <td class="tg-0lax">Patient Demographics</td>
     <td class="tg-1wig">Date of Birth</td>
     <td class="tg-zzem">{{pagelink:example-bh-patient-example}}</td>
     <td class="tg-0lax">Example of patient date of birth</td>
  </tr>
  <tr>
     <td class="tg-0lax">Patient Demographics</td>
     <td class="tg-1wig">Email Address</td>
     <td class="tg-zzem">{{pagelink:example-bh-patient-example}}</td>
     <td class="tg-0lax">Example of patient email address</td>
  </tr>
  <tr>
     <td class="tg-0lax">Patient Demographics</td>
     <td class="tg-1wig">Ethnicity</td>
     <td class="tg-zzem">{{pagelink:example-bh-patient-example}}</td>
     <td class="tg-0lax">Example of patient ethnicity</td>
  </tr>
  <tr>
     <td class="tg-0lax">Patient Demographics</td>
     <td class="tg-1wig">First Name</td>
     <td class="tg-zzem">{{pagelink:example-bh-patient-example}}</td>
     <td class="tg-0lax">Example of patient first name</td>
  </tr>
  <!-- <tr>
     <td class="tg-0lax">Patient Demographics</td>
     <td class="tg-1wig">Gender Identity</td>
     <td class="tg-zzem">{{pagelink:example-bh-patient-example}}</td>
     <td class="tg-0lax">Example of patient gender identify</td>
  </tr> -->
  <tr>
     <td class="tg-0lax">Patient Demographics</td>
     <td class="tg-1wig">Last Name</td>
     <td class="tg-zzem">{{pagelink:example-bh-patient-example}}</td>
     <td class="tg-0lax">Example of patient last name</td>
  </tr>
  <tr>
     <td class="tg-0lax">Patient Demographics</td>
     <td class="tg-1wig">Name Suffix</td>
     <td class="tg-zzem">{{pagelink:example-bh-patient-example}}</td>
     <td class="tg-0lax">Example of patient name suffix</td>
  </tr>
  <tr>
     <td class="tg-0lax">Patient Demographics</td>
     <td class="tg-1wig">Phone Number</td>
     <td class="tg-zzem">{{pagelink:example-bh-patient-example}}</td>
     <td class="tg-ktyi">Example of patient phone number</td>
  </tr>
  <tr>
     <td class="tg-0lax">Patient Demographics</td>
     <td class="tg-1wig">Preferred Language</td>
     <td class="tg-zzem">{{pagelink:example-bh-patient-example}}</td>
     <td class="tg-ktyi">Example of patient preferred language</td>
  </tr>
  <tr>
     <td class="tg-0lax">Patient Demographics</td>
     <td class="tg-1wig">Race</td>
     <td class="tg-zzem">{{pagelink:example-bh-patient-example}}</td>
     <td class="tg-0lax">Example of patient race</td>
  </tr>
  <tr>
     <td class="tg-0lax">Patient Demographics</td>
     <td class="tg-1wig">Related Person's Name</td>
     <td class="tg-zzem">{{pagelink:example-adult-child-relatedperson-example-1}}</td>
     <td class="tg-0lax">Example of patient related person's name</td>
  </tr>
  <tr>
     <td class="tg-0lax">Patient Demographics</td>
     <td class="tg-1wig">Relationship Type</td>
     <td class="tg-zzem">{{pagelink:example-adult-child-relatedperson-example-1}}</td>
     <td class="tg-0lax">Example of patient related person's relationship</td>
  </tr>
  <tr>
     <td class="tg-0lax">Patient Demographics</td>
     <td class="tg-1wig">Sex</td>
     <td class="tg-zzem">{{pagelink:example-bh-patient-example}}</td>
     <td class="tg-0lax">Example of patient sex </td>
  </tr>
  <!-- <tr>
     <td class="tg-0lax">Patient Demographics</td>
     <td class="tg-1wig">Sexual Orientation</td>
     <td class="tg-zzem">{{pagelink:example-sexual-orientation-example-1}}</td>
     <td class="tg-0lax">Example of patient sexual orientation</td>
  </tr> -->
  <tr>
     <td class="tg-0lax">Patient Demographics</td>
     <td class="tg-1wig">Tribal Affiliation</td>
     <td class="tg-zzem">{{pagelink:example-bh-patient-example}}</td>
     <td class="tg-0lax">Example of patient tribal affiliation</td>
  </tr>
  <tr>
     <td class="tg-0lax">Patient Demographics</td>
     <td class="tg-1wig">Date of Death</td>
     <td class="tg-zzem">{{pagelink:example-bh-patient-example}}</td>
     <td class="tg-0lax">Example of patient date of death</td>
  </tr>
  <tr>
     <td class="tg-0lax">Patient Demographics</td>
     <td class="tg-1wig">Identifier</td>
     <td class="tg-zzem">{{pagelink:example-bh-patient-example}}</td>
     <td class="tg-0lax">Example of patient patient identifier</td>
  </tr>
  <!-- <tr>
     <td class="tg-0lax">Patient Demographics  </td>
     <td class="tg-1wig">Pronouns</td>
     <td class="tg-zzem">{{pagelink:example-bh-patient-example}}</td>
     <td class="tg-0lax">Example of patient preferred pronouns</td>
  </tr> -->
  <tr>
     <td class="tg-0lax">Patient Summary and Plan</td>
     <td class="tg-1wig">Assessment and Plan of Treatment</td>
     <td class="tg-zzem">{{pagelink:example-mental-health-progress-example-1}}</td>
     <td class="tg-ycr8">Example of assessment and plan of treatment recorded within a note. Clinical details of note content are encoded (base64)</td>
  </tr>
  <tr>
     <td class="tg-0lax">Problems</td>
     <td class="tg-1wig">Problems/Conditions</td>
         <td class="tg-zzem">{{pagelink:example-panic-attack-condition-example-1}}<br> {{pagelink:example-chest-pain-condition-example-1}}<br> {{pagelink:example-grief-condition-example-1}}<br> {{pagelink:example-substance-abuse-condition-example-1}}<br> {{pagelink:example-diabetes-condition-example-1}}</td>
     <td class="tg-0lax">Examples of diagnosis</td>
  </tr>
  <tr>
     <td class="tg-0lax">Problems</td>
     <td class="tg-1wig">SDOH Problems/Health Concerns</td>
     <td class="tg-zzem">{{pagelink:example-substance-abuse-condition-example-1}}</td>
     <td class="tg-0lax">Example of patient history of substance abuse</td>
  </tr>
  <tr>
     <td class="tg-0lax">Problems</td>
     <td class="tg-1wig">Date of Diagnosis</td>
             <td class="tg-zzem">{{pagelink:example-panic-attack-condition-example-1}}<br> {{pagelink:example-chest-pain-condition-example-1}}<br> {{pagelink:example-grief-condition-example-1}}<br> {{pagelink:example-substance-abuse-condition-example-1}}<br> {{pagelink:example-diabetes-condition-example-1}}</td>
     <td class="tg-0lax">Example of diagnosis date</td>
  </tr>
  <tr>
     <td class="tg-0lax">Problems</td>
     <td class="tg-1wig">Date of Onset</td>
             <td class="tg-zzem">{{pagelink:example-panic-attack-condition-example-1}}<br> {{pagelink:example-chest-pain-condition-example-1}}<br> {{pagelink:example-grief-condition-example-1}}<br> {{pagelink:example-substance-abuse-condition-example-1}}<br> {{pagelink:example-diabetes-condition-example-1}}</td>
     <td class="tg-0lax">Example of diagnosis onset date</td>
  </tr>
  <tr>
     <td class="tg-0lax">Problems</td>
     <td class="tg-1wig">Date of Resolution</td>
             <td class="tg-zzem">{{pagelink:example-panic-attack-condition-example-1}}<br> {{pagelink:example-chest-pain-condition-example-1}}<br> {{pagelink:example-grief-condition-example-1}}<br> {{pagelink:example-substance-abuse-condition-example-1}}<br> {{pagelink:example-diabetes-condition-example-1}}</td>
     <td class="tg-0lax">Example of diagnosis resolution date</td>
  </tr>
  <tr>
     <td class="tg-0lax">Procedures</td>
     <td class="tg-1wig">Harm Reduction Activities</td>
     <td class="tg-zzem">{{pagelink:example-harm-reduction-example-1}}</td>
     <td class="tg-0lax">Example of patient harm reduction program</td>
  </tr>
  <tr>
     <td class="tg-0lax">Procedures</td>
     <td class="tg-1wig">Performance Time</td>
     <td class="tg-zzem">{{pagelink:example-alcohol-prevetion-education-example-1}}</td>
     <td class="tg-0lax">Example of a documented time when alcohol harm reduction information was provided</td>
  </tr>
  <tr>
     <td class="tg-0lax">Procedures</td>
     <td class="tg-1wig">Procedures</td>
     <td class="tg-zzem">{{pagelink:example-alcohol-prevetion-education-example-1}}</td>
     <td class="tg-0lax">Example of patient alcohol harm reduction education</td>
  </tr>
  <tr>
     <td class="tg-0lax">Procedures</td>
     <td class="tg-1wig">Reason for Referral</td>
     <td class="tg-zzem">{{pagelink:example-ServiceRequest-peer-mentoring-example-1}}</td>
     <td class="tg-0lax">Example of patient referral to a peer coaching program</td>
  </tr>
  <tr>
     <td class="tg-0lax">Procedures</td>
     <td class="tg-1wig">SDOH Interventions</td>
     <td class="tg-zzem">{{pagelink:example-ServiceRequest-peer-mentoring-example-1}}</td>
     <td class="tg-0lax">Example of social connection intervention</td>
  </tr>
  <tr>
     <td class="tg-0lax">Procedures</td>
     <td class="tg-1wig">Peer Coaching or Mentoring</td>
     <td class="tg-zzem">{{pagelink:example-ServiceRequest-peer-mentoring-example-1}}</td>
     <td class="tg-0lax">Example of a referral for peer support or mentoring</td>
  </tr>
  <tr>
     <td class="tg-0lax">Procedures</td>
     <td class="tg-1wig">Recovery Planning</td>
     <td class="tg-zzem">{{pagelink:example-alcohol-prevetion-education-example-1}}</td>
     <td class="tg-ktyi">Example of recovery planning services</td>
  </tr>
  <tr>
     <td class="tg-0lax">Vital Signs</td>
     <td class="tg-1wig">Body Height</td>
     <td class="tg-zzem">{{pagelink:example-height-example-1}}</td>
     <td class="tg-0lax">Example of body height</td>
  </tr>
  <tr>
     <td class="tg-0lax">Vital Signs</td>
     <td class="tg-1wig">Body Temperature</td>
     <td class="tg-zzem">{{pagelink:example-temperature-example-1}}</td>
     <td class="tg-0lax">Example of body temperature</td>
  </tr>
  <tr>
     <td class="tg-0lax">Vital Signs</td>
     <td class="tg-1wig">Body Weight</td>
     <td class="tg-zzem">{{pagelink:example-weight-example-1}}</td>
     <td class="tg-0lax">Example of body weight</td>
  </tr>
  <tr>
     <td class="tg-0lax">Vital Signs</td>
     <td class="tg-1wig">Diastolic Blood Pressure</td>
     <td class="tg-zzem">{{pagelink:example-blood-pressure-example-1}}</td>
     <td class="tg-0lax">Example of diastolic blood pressure</td>
  </tr>
  <tr>
     <td class="tg-0lax">Vital Signs</td>
     <td class="tg-1wig">Heart Rate</td>
     <td class="tg-zzem">{{pagelink:example-heart-rate-example-1}}</td>
     <td class="tg-0lax">Example of heart rate</td>
  </tr>
  <tr>
     <td class="tg-0lax">Vital Signs</td>
     <td class="tg-1wig">Pulse Oximetry</td>
     <td class="tg-zzem">{{pagelink:example-oxygen-saturation-example-1}}</td>
     <td class="tg-0lax">Example of pulse oximetry </td>
  </tr>
  <tr>
     <td class="tg-0lax">Vital Signs</td>
     <td class="tg-1wig">Respiratory Rate</td>
     <td class="tg-zzem">{{pagelink:example-respiratory-rate-example-1}}</td>
     <td class="tg-0lax">Example of respiratory rate</td>
  </tr>
  <tr>
     <td class="tg-0lax">Vital Signs</td>
     <td class="tg-1wig">Systolic Blood Pressure</td>
     <td class="tg-zzem">{{pagelink:example-blood-pressure-example-1}}</td>
     <td class="tg-0lax">Example of systolic blood pressure</td>
  </tr>
  <tr>
     <td class="tg-0lax">Vital Signs</td>
     <td class="tg-1wig">Average Blood Pressure</td>
     <td class="tg-zzem">{{pagelink:example-average-blood-pressure-example-1}}</td>
     <td class="tg-0lax">Example of average blood pressure</td>
  </tr>
  <!-- <tr>
     <td class="tg-0lax">Work Information</td>
     <td class="tg-1wig">Farmworker Status</td>
     <td class="tg-zzem">{{pagelink:example-usual-work-example-1}}</td>
     <td class="tg-7zrl">Example of patient usual occupation as a citrus farm worker</td>
  </tr> -->
  <tr>
     <td class="tg-0lax">Work Information</td>
     <td class="tg-1wig">Veteran Status</td>
     <td class="tg-zzem">{{pagelink:example-bh-patient-example}}</td>
     <td class="tg-0lax">Example of patient with a veteran status equals true</td>
  </tr>
</tbody></table>
