### Scope and Usage 

The USCDI+ Behavioral Health (BH) initiative is designed to facilitate the seamless integration and exchange of behavioral health data across various healthcare settings. By harmonizing and advancing a core list of standardized interoperable data elements, the initiative aims to capture comprehensive treatment data for adults with mental health and substance use disorders. This effort is aligned with the reporting requirements of the Substance Abuse and Mental Health Services Administration (SAMHSA) for Substance Use and Mental Health Block Grants, thus supporting funding, reporting, monitoring outcomes, and developing performance measures. 

## Behavioral Health Use Cases

## Cross walk table working draft
<style>
table, th, td 
{
  border: 1px solid Silver; 
  padding: 5px
}
th {
  background: Azure; 
}
</style>


|Adverse Event|https://www.hl7.org/fhir/adverseevent.html| |
|--------|-------------|---------|
|Element|Profile|Examples|
|Adverse Event|https://www.hl7.org/fhir/adverseevent.html|Fall, Self-Harm, Depressive Episode, Panic Attack|


|Allergies and Intolerances|http://hl7.org/fhir/us/core/StructureDefinition/us-core-allergyintolerance| |
|Element|Profile|Examples|Example Narrative
|--------|-------------|---------|
Reaction|US Core AllergyIntolerance|Anaphylaxis; Hives|Example BH patient, J.W. who has an anaphylaxis reaction to peanuts using US Core Allergy Intolerance Profile
Substance (Medication)|US Core AllergyIntolerance|Penicillin|Example of BH patient J.W. who is allergic to Penicillin using US Core Allergy Intolerance Profile
Substance (Non-Medication)|US Core AllergyIntolerance|Peanut|Example of BH patient J.W. 

Care Team Member(s)|http://hl7.org/fhir/us/core/StructureDefinition/us-core-careteam| |
Element|Profile|Examples|
|--------|-------------|---------|
Care Team Member Role|US Core Care Team Profile|Physician; primary care provider, licensed professional counselor, psychiatrist|Example of BH Care Team member who is a licensed BH provider
Care Team Member Telecom|US Core Care Team Profile|Xxx-XXx-XXX|
Care Team Member Identifier| |NPI; NCSBN ID|

Clinical Notes|US Core Mental Health Document Reference Profile| |
Element|Profile|Examples|
|--------|-------------|---------|
Mental Health Consultation Note|US Core Mental Health Document Reference Profile|Mental Health Consultation Note|
Mental Health Discharge Summary Note|US Core Mental Health Document Reference Profile|Mental Health Discharge Summary Note|
Mental Health History & Physical|US Core Mental Health Document Reference Profile|Patient History & Physical |
Mental Health Procedure Note|US Core Mental Health Document Reference Profile|Mental Health Procedure Note|
Mental Health Progress Note|US Core Mental Health Document Reference Profile|Mental Health Progress Note|

Clinical Tests|http://hl7.org/fhir/us/core/StructureDefinition/us-core-observation-lab| |
Element|Profile|Examples|
|--------|-------------|---------|
Clinical Test|StructureDefinition-us-core-observation-lab|EKG|
Clinical Test Result/Report|StructureDefinition-us-core-observation-lab|EKG Normal Sinus Rythm|

Consent|New| |
Element|Profile|Examples|
|--------|-------------|---------|
Consent|https://www.hl7.org/fhir/R4/consent.html| |

Diagnostic Imaging|US Core DiagnosticReport| |
Element|Profile|Examples|
|--------|-------------|---------|
Diagnostic Imaging Report|US Core Diagnostic Report|ev|
Diagnostic Imaging Test|US Core Diagnostic Report|2D- Echocardiogram, X-ray, MRI, CT|

Encounter Information|US Core Encounter Profile| |
Element|Profile|Examples|
|--------|-------------|---------|
Encounter Diagnosis|USCoreConditionEncounterDiagnosisProfile|Chest pain, Mild anxiety, depression, diabetes, Panic attach, History of Substance Use|
Diagnosis Rank| |Primary, secondary, tertiary|
Encounter Disposition|US Core Encounter Profile|Discharge home|
Encounter Location|US Core Encounter Profile|ED, PCP, LPC (highlight community health center example)|
Encounter Time|US Core Encounter Profile|Several XXXXXXX|
Encounter Type|US Core Encounter Profile|Emergency, Inpatient, Outpatient, BH?, Telehealth;|

Facility Information| ||
Element|Profile|Examples|
|--------|-------------|---------|
Facility Type| |Emergency department, Community health center, Community recreation center|

Family Health Information| ||
Element|Profile|Examples|
|--------|-------------|---------|
Family Health History| ||

Federal/State Grants Reporting Requirements|Grant Observation Profile| |
Element|Profile|Examples|
|--------|-------------|---------|
Grant Number|NEW Grant Observation Profle|SP083783-01|
Grant Program ID|NEW Grant Observation Profle|SP-23-004|
Grant/Funding Type|NEW Grant Observation Profle|Discretionary|

Goals and Preferences|US Core Care Profile (Multiple)| |
Element|Profile|Examples|
|--------|-------------|---------|
Care Experience Preference|US Core Care Experience Preference Profile|prefers female provider, prefers social interaction involving music/dance|
Patient Goals|US Core Goal Profile|Increase Social Engagement - attend groups; decrease alcohol intake; sleep through the night, improve eating habits|
SDOH Goals|US Core Goal Profile|Food Security, housing security, transportation security; increased social interaction|
Treatment Intervention Preference| |Does not want morphine; Does not want antidepressant|

Health Insurance Information|US Core Coverage Profile| |
Element|Profile|Examples|
|--------|-------------|---------|
Coverage Status|US Core Coverage Profile|Active|
Coverage Type|US Core Coverage Profile|Medicare|
Group Identifier|US Core Coverage Profile|XXXXXXX|
Member Identifier|US Core Coverage Profile|XXXXXXX|
Payer Identifier| |XXXXXXX|
Relationship to Subscriber|US Core Coverage Profile|Self|
Subscriber Identifier|US Core Coverage Profile|XXXXXXX|

Health Status Assessments|Multiple| |
Element|Profile|Examples|
|--------|-------------|---------|
Alcohol Use| |AUDIT; CAGE; MAST; CIWA-Ar|
Depression Assessment|US Core QuestionnaireResponse|PHQ9, Beck Depression Inventory (BDI)|
Disability Status|US Core Observation Screening Assessment Profile|Activities of Daily Living (ADL) Assessment; Instrumental Activities of Daily Living (IADL) Assessment|
Food Insecurity| |PRAPARE|
Functional Status|US Core Observation Screening Assessment Profile|Functional Capacity Evaluations (FCE)|
Housing Instability| |PRAPARE|
Mental/Cognitive Status|US Core Observation Screening Assessment Profile|Moderate depression, mild anxiety|
Pregnancy Status|US Core Pregnancy Status Profile|not pregnant|
SDOH Assessment| |PRAPARE|
Smoking Status|US Core Smoking Status Observation Profile|ASSIST|
Substance Use|US Core Condition Problems and Health Concerns Profile|CAGE-AID;  CRAFFT; ASSIST (World Health Org.)|
Transportation Insecurity| |PRAPARE|
Suicide Risk Assessment| |C-SSRS|
Interpersonal Violence| |HARK; HITS( Hurt, Insult, Threaten, Scream); PVS (Partner Violence Screen)|
Mental Health Status Screen| |CUBS; PHQ-9; Mood Disorder Questionnaire(MDQ);  General Health Questionnaire-12(GHQ); GADS|
Mental Trauma and PTSD Assessment| |Adverse Childhood Experiences (ACES); Post Traumatic Disorder Checklist (PCL)  |

Immunizations|US Core Immunization Profile| |
Element|Profile|Examples|
|--------|-------------|---------|
Immunizations|US Core Immunization Profile|Flu vaccine|

Laboratory|Multiple| |
Element|Profile|Examples|
|--------|-------------|---------|
Tests|US Core Observation Clinical Result Profile|HbA1c, CBC, BMP|
Values/Results|US Core Laboratory Result Observation Profile|HbA1c: 6.9%; CBC, BMP within normal limits|

Medications| ||
Element|Profile|Examples|
|--------|-------------|---------|
Discharge Medications|Dispense?|Metformin, Ativan, Paroxetine, Bupropion|
Dose| |Metformin 2000mg daily;|
| |Ativan 0.5mg Q8h PRN; Paroxetine 10mg daily, Bupropion 200mg every morning,|
Dose Unit of Measure| |Milligram (mg)|
Medications| |Metformin 2000mg daily; Unknown anti-depressant|
Medication Adherence| |Not taken as directed|
Medication Instructions| |Ativan 0.5mg PO one-time; Ativan 0.5mg Q8h PO PRN; Paroxetine 10mg PO QD; Bupropion 200mg QAM|
Medication Quantity| |# of doses/ pills|
Medications Dispensed| |Response to this goes beyond simple Yes/ No. https://www.hl7.org/fhir/medicationdispense-definitions.html#MedicationDispense.|

Patient Demographics|US Core Patient (Multiple)| |
Element|Profile|Examples|
|--------|-------------|---------|
Current Address|US Core Patient|123 Main Street, Florida, Xxzip|
Date of Birth|US Core Patient|MM-DD-YYYY|
Email Address|US Core Patient|XXX@gmail.com|
Ethnicity|US Core Patient|Not Hispanic or Latino|
First Name|US Core Patient|Jennifer|
Gender Identity|US Core Patient|Identifies as male|
Last Name|US Core Patient|Wolff|
Name Suffix|US Core Patient|Jr.|
Phone Number|US Core Patient|Xxx-XXx-XXX|
Preferred Language|US Core Patient|English|
Race|US Core Patient|African American|
Related Person's Name|US Core RelatedPerson Profile| |
Relationship Type|US Core RelatedPerson Profile|Adult child|
Sex|US Core Patient|Female|
Sexual Orientation|US Core Observation Sexual Orientation Profile|Bisexual|
Tribal Affiliation|US Core Patient|None|
Date of Death| |MM-DD-YYYY|
Identifier| ||
Pronoun|US Core Patient|He/Him|
Name to Use|US Core Patient|James|

Patient Summary and Plan| ||
Element|Profile|Examples|
|--------|-------------|---------|
Assement and Plan of Treatment| |ED treatment plan; PCP treatment plan; LPC treatment plan|
Problems|US Core Condition| |
Element|Profile|Examples|
Problems/Conditions|US Core Condition|Type 2 diabetes, Moderate Depression, anxiety|
SDOH Problems/Health Concerns|US Core Condition|Food Insecurity, Housing Insecurity, Transportation Insecurity; Social Isolation; challenge accessing care|
Date of Diagnosis| |MM-DD-YYYY|
Date of Onset| |MM-DD-YYYY|
Date of Resolution| |MM-DD-YYYY|

Procedures|US Core Procedures| |
Element|Profile|Examples|
|--------|-------------|---------|
Performance Time|US Core Procedures|For CBT, EKG, blood draw|
Procedures|US Core Procedures|Referral to LPC, Case Manager, community center, |
Reason for Referral|US Core Procedures|Depression; Diabetes management|
SDOH Interventions|US Core Service Request or Procedure|Education, bus tokens, community-based meal service; appointment scheduling|
Procedures|Harm Reduction Activities|US Core Procedure Profile|

Recovery Support Services|US Core Procedures| |
Element|Profile|Examples|
|--------|-------------|---------|
Peer Coaching or Mentoring| |Peer support group|
Recovery Planning| |Medications, CBT, support group,  community recreation center|

Vital Signs|Multiple| |
Element|Profile|Examples|
|--------|-------------|---------|
Body Height|US Core Body Height|5'8"|
Body Temperature|US Core Body Temperature|98.6|
Body Weight|US Core Body Weight|180lbs|
Diastolic Blood Pressure|US Core Diastolic Blood Pressure|92|
Heart Rate|US Core Heart Rate|110|
Pulse Oximetry|US Core Pulse Oximetry|97|
Respiratory Rate|US Core Respiratory Rate|22|
Systolic Blood Pressure|US Core Systolic Blood Pressure|157|
Average Blood Pressure| |Derived from averaging multiple values (both systolic and diastolic)|

Work Information|Multiple| |
Element|Profile|Examples|
|--------|-------------|---------|
Farmworker Status|OccupationalData|former  farmworker - citrus farm|

