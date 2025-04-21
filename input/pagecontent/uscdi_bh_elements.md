### USCDI+ BH Elements

The table provides a comprehensive list of the USCDI+ Behavioral Health elements used to model this implementation guide. The table includes various data classes such as clinical notes, encounter information, health status assessments, and vital signs. Each data element includes specific descriptions that outline the type of data captured, its purpose, and examples where applicable, contributing to a structured approach to managing and sharing health information.

<style type="text/css">
.tg  {border-collapse:collapse;border-spacing:0;}
.tg td{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  overflow:hidden;padding:10px 5px;word-break:normal;}
.tg th{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  font-weight:normal;overflow:hidden;padding:10px 5px;word-break:normal;}
.tg .tg-1wig{font-weight:bold;text-align:left;vertical-align:top}
.tg .tg-w98d{background-color:#156082;color:#FFF;font-weight:bold;text-align:left;vertical-align:top}
.tg .tg-ktyi{background-color:#FFF;text-align:left;vertical-align:top}
.tg .tg-0lax{text-align:left;vertical-align:top}
</style>
<table class="tg"><thead>
  <tr>
    <th class="tg-w98d">USCDI+ BH <br> Data Class</th>
    <th class="tg-w98d"><span style="color:white;background-color:#156082">USCDI+ BH </span><br><span style="color:white;background-color:#156082"> Data Element</span></th>
    <th class="tg-w98d"><span style="color:white;background-color:#156082">USCDI+ BH Data Element Description</span></th>
  </tr></thead>
<tbody>
  <!-- <tr>
    <td class="tg-ktyi">Adverse Event</td>
    <td class="tg-1wig">Adverse Event</td>
    <td class="tg-0lax">An event that may be related to unintended effects on a patient or research participant.</td>
  </tr> -->
  <tr>
    <td class="tg-0lax">Allergies and Intolerances</td>
    <td class="tg-1wig">Reaction</td>
    <td class="tg-0lax">Harmful or undesired physiologic response following exposure to a pharmacologic agent or class of agents.</td>
  </tr>
  <tr>
    <td class="tg-0lax">Allergies and Intolerances</td>
    <td class="tg-1wig">Substance (Medication)</td>
    <td class="tg-0lax">Pharmacologic agent believed to cause a harmful or undesired physiologic response following exposure.</td>
  </tr>
  <tr>
    <td class="tg-0lax">Allergies and Intolerances</td>
    <td class="tg-1wig">Substance (Non-Medication)</td>
    <td class="tg-0lax">Non-pharmacologic agent believed to cause a harmful or undesired physiologic response following exposure.<br> Examples include but are not limited to latex, eggs, pollen, and peanuts.</td>
  </tr>
  <tr>
    <td class="tg-0lax">Care Team Member(s)</td>
    <td class="tg-1wig">Care Team Member Role</td>
    <td class="tg-0lax">Responsibility of an individual within the care team. Examples include but are not limited to primary care physician and caregiver.</td>
  </tr>
  <tr>
    <td class="tg-0lax">Care Team Member(s)</td>
    <td class="tg-1wig">Care Team Member Telecom</td>
    <td class="tg-0lax">Phone or email contact information for a care team member.</td>
  </tr>
  <tr>
    <td class="tg-0lax">Care Team Member(s)</td>
    <td class="tg-1wig">Care Team Member Identifier</td>
    <td class="tg-0lax">Sequence of characters used to uniquely refer to a member of the care team. Examples include but are not limited to National Provider Identifier (NPI) and National Council of State Boards of Nursing Identifier (NCSBN ID).</td>
  </tr>
  <tr>
    <td class="tg-0lax">Clinical Notes</td>
    <td class="tg-1wig">Mental Health Consultation Note</td>
    <td class="tg-0lax">Response to request from a mental health clinician for an opinion, advice, or service from another clinician. Examples include but are not limited to notes from psychiatrists, social workers, pediatricians, and school counselors.</td>
  </tr>
  <tr>
    <td class="tg-0lax">Clinical Notes</td>
    <td class="tg-1wig">Mental Health Discharge Summary Note</td>
    <td class="tg-0lax">Synopsis of a patient’s admission and mental health course in a hospital or post-acute care setting.<br> Usage note: Must contain admission and discharge dates and locations, discharge instructions, and reason(s) for hospitalization.</td>
  </tr>
  <tr>
    <td class="tg-0lax">Clinical Notes</td>
    <td class="tg-1wig">Mental Health History &amp; Physical</td>
    <td class="tg-0lax">Summary of current and past mental health conditions and observations used to inform an episode of care. Examples include but are not limited to psychiatric hospital admissions, Medication-Assisted Treatment or substance Use Treatment, and other procedures.</td>
  </tr>
  <tr>
    <td class="tg-0lax">Clinical Notes</td>
    <td class="tg-1wig">Mental Health Procedure Note</td>
    <td class="tg-0lax">Synopsis of non-operative mental health procedure. Examples include but are not limited to notes for an initial assessment, ADHD interventions, or group therapy.<br> </td>
  </tr>
  <tr>
    <td class="tg-0lax">Clinical Notes</td>
    <td class="tg-1wig">Mental Health Progress Note</td>
    <td class="tg-0lax">Summary of a patient’s mental health interval status during an encounter.<br> Examples include but are not limited to hospitalization, outpatient visit, and treatment with a post-acute care provider, or other healthcare encounter.</td>
  </tr>
  <tr>
    <td class="tg-0lax">Clinical Tests</td>
    <td class="tg-1wig">Clinical Test</td>
    <td class="tg-0lax">Non-imaging or non-laboratory test.<br> Examples include but are not limited to electrocardiogram (ECG), visual acuity exam, macular exam, and graded exercise testing (GXT).</td>
  </tr>
  <tr>
    <td class="tg-0lax">Clinical Tests</td>
    <td class="tg-1wig">Clinical Test Result/Report</td>
    <td class="tg-0lax">Findings of clinical tests.</td>
  </tr>
  <tr>
    <td class="tg-0lax">Consent</td>
    <td class="tg-1wig">Consent</td>
    <td class="tg-ktyi">Consent related to the release of information to non-HIPAA covered organizations</td>
  </tr>
  <tr>
    <td class="tg-0lax">Diagnostic Imaging</td>
    <td class="tg-1wig">Diagnostic Imaging Report</td>
    <td class="tg-0lax">Interpreted results of imaging tests.<br> Usage Note: Includes both structured and unstructured (narrative) components.</td>
  </tr>
  <tr>
    <td class="tg-0lax">Diagnostic Imaging</td>
    <td class="tg-1wig">Diagnostic Imaging Test</td>
    <td class="tg-0lax">Tests that generate visual images and require interpretation by qualified professionals.<br> Examples include but are not limited to radiographic, photographic, and video images.</td>
  </tr>
  <tr>
    <td class="tg-0lax">Encounter Information</td>
    <td class="tg-1wig">Diagnosis Rank</td>
    <td class="tg-0lax">Ranking of the diagnosis relevent to the encounter</td>
  </tr>
  <tr>
    <td class="tg-0lax">Encounter Information</td>
    <td class="tg-1wig">Encounter Diagnosis</td>
    <td class="tg-0lax">Coded diagnoses associated with an episode of care.</td>
  </tr>
  <tr>
    <td class="tg-0lax">Encounter Information</td>
    <td class="tg-1wig">Encounter Disposition</td>
    <td class="tg-0lax">Place or setting to which the patient left a hospital or encounter.</td>
  </tr>
  <tr>
    <td class="tg-0lax">Encounter Information</td>
    <td class="tg-1wig">Encounter Location</td>
    <td class="tg-0lax">Place where a patient’s care is delivered.</td>
  </tr>
  <tr>
    <td class="tg-0lax">Encounter Information</td>
    <td class="tg-1wig">Encounter Time</td>
    <td class="tg-0lax">Date/times related to an encounter.<br> Examples include but are not limited to scheduled appointment time, check in time, and start and stop times.</td>
  </tr>
  <tr>
    <td class="tg-0lax">Encounter Information</td>
    <td class="tg-1wig">Encounter Type</td>
    <td class="tg-0lax">Category of health care service. Examples include but are not limited to office visit, telephone assessment, and home visit.</td>
  </tr>
  <tr>
    <td class="tg-0lax">Facility Information</td>
    <td class="tg-1wig">Facility Type</td>
    <td class="tg-0lax">Category describing available services or resources. Examples include but are not limited to laboratory, pharmacy, hospital, ambulatory providers, long-term and post-acute care, and pharmacy.</td>
  </tr>
  <tr>
    <td class="tg-0lax">Family Health History</td>
    <td class="tg-1wig">Family Health History</td>
    <td class="tg-0lax">Family Health History is an element of patient health data capturing relevant coded health data of a patient's family.</td>
  </tr>
  <tr>
    <td class="tg-0lax">Federal/State Grants Reporting Requirements</td>
    <td class="tg-1wig">Grant Number</td>
    <td class="tg-0lax">A unique identifier for a grant.</td>
  </tr>
  <tr>
    <td class="tg-0lax">Federal/State Grants Reporting Requirements</td>
    <td class="tg-1wig">Grant Program ID</td>
    <td class="tg-0lax">The grant program identifier provides more granular detail about the funded program.</td>
  </tr>
  <tr>
    <td class="tg-0lax">Federal/State Grants Reporting Requirements</td>
    <td class="tg-1wig">Grant/Funding Type</td>
    <td class="tg-0lax">The specific program or project funded by a grant/fund.</td>
  </tr>
  <tr>
    <td class="tg-0lax">Goals and Preferences</td>
    <td class="tg-1wig">Care Experience Preference</td>
    <td class="tg-0lax">Person's goals, preferences, and priorities for overall experiences during their care and treatment.<br> Examples include but are not limited to religious beliefs, dislikes and fears, and thoughts and feelings to be shared.</td>
  </tr>
  <tr>
    <td class="tg-0lax">Goals and Preferences</td>
    <td class="tg-1wig">Patient Goals</td>
    <td class="tg-0lax">Desired outcomes of patient’s care.</td>
  </tr>
  <tr>
    <td class="tg-0lax">Goals and Preferences</td>
    <td class="tg-1wig">SDOH Goals</td>
    <td class="tg-0lax">Desired future states for an identified Social Determinants of Health-related health concern, condition, or diagnosis. Examples include but are not limited to food security, transportation security, and ability to access health care.</td>
  </tr>
  <tr>
    <td class="tg-0lax">Goals and Preferences</td>
    <td class="tg-1wig">Treatment Intervention Preference</td>
    <td class="tg-0lax">Person's goals, preferences, and priorities for care and treatment in case that person is unable to make medical decisions because of a serious illness or injury.</td>
  </tr>
  <tr>
    <td class="tg-0lax">Health Insurance Information</td>
    <td class="tg-1wig">Plan Name</td>
    <td class="tg-0lax">Name of the health plan benefit offering assigned to the Plan Identifier.</td>
  </tr>
  <tr>
    <td class="tg-0lax">Health Insurance Information</td>
    <td class="tg-1wig">Coverage Status</td>
    <td class="tg-0lax">Presence or absence of health care insurance.</td>
  </tr>
  <tr>
    <td class="tg-0lax">Health Insurance Information</td>
    <td class="tg-1wig">Coverage Type</td>
    <td class="tg-0lax">Category of health care payers, insurance products, or benefits.<br> Examples include but are not limited to Medicaid, commercial, HMO, Medicare Part D, and dental.</td>
  </tr>
  <tr>
    <td class="tg-0lax">Health Insurance Information</td>
    <td class="tg-1wig">Group Identifier</td>
    <td class="tg-0lax">Sequence of characters used to uniquely refer to a specific health insurance plan.</td>
  </tr>
  <tr>
    <td class="tg-0lax">Health Insurance Information</td>
    <td class="tg-1wig">Member Identifier</td>
    <td class="tg-0lax">Sequence of characters used to uniquely refer to an individual with respect to their insurance.</td>
  </tr>
  <tr>
    <td class="tg-0lax">Health Insurance Information</td>
    <td class="tg-1wig">Payer Identifier</td>
    <td class="tg-0lax">Sequence of characters used to uniquely refer to an insurance payer.</td>
  </tr>
  <tr>
    <td class="tg-0lax">Health Insurance Information</td>
    <td class="tg-1wig">Relationship to Subscriber</td>
    <td class="tg-0lax">Relationship of a patient to the primary insured person.</td>
  </tr>
  <tr>
    <td class="tg-0lax">Health Insurance Information</td>
    <td class="tg-1wig">Subscriber Identifier</td>
    <td class="tg-0lax">Sequence of characters used to uniquely refer to the individual that selects insurance benefits.</td>
  </tr>
  <tr>
    <td class="tg-0lax">Health Status Assessments</td>
    <td class="tg-1wig">Depression Assessment</td>
    <td class="tg-ktyi">Assessment or screening to determine the presence, severity, and impact of depressive symptoms on a patient’s mood, behavior, and overall quality of life. Examples include but are not limited to the Patient Health Questionnaire-9 (PHQ-9) for evaluating depression severity and the Beck Depression Inventory (BDI) for assessing depressive symptomatology.</td>
  </tr>
  <tr>
    <td class="tg-0lax">Health Status Assessments</td>
    <td class="tg-1wig">Mental/Cognitive Status</td>
    <td class="tg-0lax">Assessment or screening for the presence of a mental or behavioral problem. Examples include but are not limited to alertness, orientation, comprehension, concentration, and immediate memory for simple commands.</td>
  </tr>
  <tr>
    <td class="tg-0lax">Health Status Assessments</td>
    <td class="tg-1wig">Anxiety Assesment</td>
    <td class="tg-ktyi">Assessment or screening to identify the presence, frequency, and severity of anxiety-related symptoms and their impact on daily functioning.  Examples include but are not limited to the Generalized Anxiety Disorder 7-item (GAD-7) scale and the Beck Anxiety Inventory (BAI).</td>
  </tr>
  <tr>
    <td class="tg-0lax">Health Status Assessments</td>
    <td class="tg-1wig">Alcohol Use</td>
    <td class="tg-0lax">Evaluation of a patient's consumption of alcohol. Examples include but are not limited to history of alcohol use, alcohol use disorder identification test and alcohol intake assessment.</td>
  </tr>
  <tr>
    <td class="tg-0lax">Health Status Assessments</td>
    <td class="tg-1wig">Disability Status</td>
    <td class="tg-0lax">Assessments of a patient’s physical, cognitive, intellectual, or psychiatric disabilities.<br> Examples include but are not limited to- vision, hearing, memory, and activities of daily living.</td>
  </tr>
  <tr>
    <td class="tg-0lax">Health Status Assessments</td>
    <td class="tg-1wig">Food Insecurity</td>
    <td class="tg-0lax">Uncertain, limited, or unstable access to food that is: adequate in quantity and in nutritional quality; culturally acceptable; safe and acquired in socially acceptable ways.</td>
  </tr>
  <tr>
    <td class="tg-0lax">Health Status Assessments</td>
    <td class="tg-1wig">Functional Status</td>
    <td class="tg-0lax">Assessment of a person’s ability to perform activities of daily living and activities across other situations and settings.<br> Examples include but are not limited to bathing, ambulation, and preparing a light meal.</td>
  </tr>
  <tr>
    <td class="tg-0lax">Health Status Assessments</td>
    <td class="tg-1wig">Housing Instability</td>
    <td class="tg-0lax">Currently consistently housed but experiencing any of the following circumstances in the last 12 months: behind on rent or mortgage, 3 or more relocations, housing cost burden, homelessness, or risk of eviction.<br> </td>
  </tr>
  <tr>
    <td class="tg-0lax">Health Status Assessments</td>
    <td class="tg-1wig">Pregnancy Status</td>
    <td class="tg-0lax">State or condition of being pregnant or intent to become pregnant.<br> Examples include but are not limited to pregnant, not pregnant, and unknown.</td>
  </tr>
  <tr>
    <td class="tg-0lax">Health Status Assessments</td>
    <td class="tg-1wig">SDOH Assessment</td>
    <td class="tg-0lax">Screening questionnaire-based, structured evaluation for a Social Determinants of Health- related risk.<br> Examples include but are not limited to food, housing, and transportation security.</td>
  </tr>
  <tr>
    <td class="tg-0lax">Health Status Assessments</td>
    <td class="tg-1wig">Smoking Status</td>
    <td class="tg-0lax">Assessment of a patient’s smoking behaviors. Examples include but are not limited to pack- years and current use.</td>
  </tr>
  <tr>
    <td class="tg-0lax">Health Status Assessments</td>
    <td class="tg-1wig">Substance Use</td>
    <td class="tg-0lax">Evaluation of a patient's reported use of drugs or other substances for non-medical purposes or in excess of a valid prescription. Examples include but are not limited to substance use disorder score, and substance use knowledge assessment.</td>
  </tr>
  <tr>
    <td class="tg-0lax">Health Status Assessments</td>
    <td class="tg-1wig">Transportation Insecurity</td>
    <td class="tg-0lax">A condition in which one is regularly unable to move from place to place in a safe and timely manner because one lacks the material, economic or social resources necessary for transportation.</td>
  </tr>
  <tr>
    <td class="tg-0lax">Health Status Assessments</td>
    <td class="tg-1wig">Suicide Risk Assessment</td>
    <td class="tg-0lax">An evaluation to identify individuals that require further suicide safety assessment.</td>
  </tr>
  <tr>
    <td class="tg-0lax">Health Status Assessments</td>
    <td class="tg-1wig">Interpersonal Violence</td>
    <td class="tg-0lax">Violence between individuals, subdivided into family and intimate partner violence and community violence. </td>
  </tr>
  <tr>
    <td class="tg-0lax">Health Status Assessments</td>
    <td class="tg-1wig">Mental Health Status Screen</td>
    <td class="tg-0lax">An evaluation of an individual's mental well-being to identify signs of potential mental health disorders that indicate a need for a more comprehensive assessment.</td>
  </tr>
  <tr>
    <td class="tg-0lax">Health Status Assessments</td>
    <td class="tg-1wig">Mental Trauma and PTSD Assessment</td>
    <td class="tg-0lax">Evaluation of the presence of trauma history and the severity of PTSD symptoms.</td>
  </tr>
  <tr>
    <td class="tg-0lax">Immunizations</td>
    <td class="tg-1wig">Immunizations</td>
    <td class="tg-0lax">Vaccine product administered, planned, or reported.</td>
  </tr>
  <tr>
    <td class="tg-0lax">Laboratory</td>
    <td class="tg-1wig">Tests</td>
    <td class="tg-0lax">Analysis of specimens derived from humans which provide information for the diagnosis, prevention, treatment of disease, or assessment of health.</td>
  </tr>
  <tr>
    <td class="tg-0lax">Laboratory</td>
    <td class="tg-1wig">Values/Results</td>
    <td class="tg-0lax">Documented findings of a tested specimen including structured and unstructured components.</td>
  </tr>
  <tr>
    <td class="tg-0lax">Medications</td>
    <td class="tg-1wig">Discharge Medications</td>
    <td class="tg-0lax">Indication that a medication should be taken by or given to the patient after being discharged from an encounter.</td>
  </tr>
  <tr>
    <td class="tg-0lax">Medications</td>
    <td class="tg-1wig">Dose</td>
    <td class="tg-0lax">Amount of a medication for each administration.</td>
  </tr>
  <tr>
    <td class="tg-0lax">Medications</td>
    <td class="tg-1wig">Dose Unit of Measure</td>
    <td class="tg-0lax">Units of measure of a medication.<br> Examples include but are not limited to milligram (mg) and milliliter (mL).</td>
  </tr>
  <tr>
    <td class="tg-0lax">Medications</td>
    <td class="tg-1wig">Medications</td>
    <td class="tg-0lax">Pharmacologic agent used in the diagnosis, cure, mitigation, treatment, or prevention of disease.</td>
  </tr>
  <tr>
    <td class="tg-0lax">Medications</td>
    <td class="tg-1wig">Medication Adherence</td>
    <td class="tg-0lax">Statement of whether a medication has been consumed according to instructions.<br> Examples include but are not limited to taking as directed, taking less than directed, and not taking.</td>
  </tr>
  <tr>
    <td class="tg-0lax">Medications</td>
    <td class="tg-1wig">Medication Instructions</td>
    <td class="tg-0lax">Directions for administering or taking a medication.<br> Examples include but are not limited to prescription directions for taking a medication, and package instructions for over-the-counter medications.<br> Usage notes: May include route, quantity, timing/frequency, and special instructions (PRN, sliding scale, taper).</td>
  </tr>
  <tr>
    <td class="tg-0lax">Medications</td>
    <td class="tg-1wig">Medication Quantity</td>
    <td class="tg-0lax">The amount of medication, including the unit of measure, that is prescribed or dispensed.</td>
  </tr>
  <tr>
    <td class="tg-0lax">Medications</td>
    <td class="tg-1wig">Medications Dispensed</td>
    <td class="tg-0lax">Description/ list of medications supplied to a patient with the intention that it is subsequently consumed by the patient.</td>
  </tr>
  <!-- <tr>
    <td class="tg-0lax">Patient Demographics</td>
    <td class="tg-1wig">Name to Use</td>
    <td class="tg-0lax">Name that should be used when addressing or referencing a person.</td>
  </tr> -->
  <tr>
    <td class="tg-0lax">Patient Demographics</td>
    <td class="tg-1wig">Current Address</td>
    <td class="tg-0lax">Place where a person is located or may be contacted. Includes street name, number, city/town, state, and zip code.</td>
  </tr>
  <tr>
    <td class="tg-0lax">Patient Demographics</td>
    <td class="tg-1wig">Date of Birth</td>
    <td class="tg-0lax">Known or estimated year, month, and day of the patient's birth.</td>
  </tr>
  <tr>
    <td class="tg-0lax">Patient Demographics</td>
    <td class="tg-1wig">Email Address</td>
    <td class="tg-0lax">Unique identifier of an individual's email account that is used to send and receive email messages.</td>
  </tr>
  <tr>
    <td class="tg-0lax">Patient Demographics</td>
    <td class="tg-1wig">Ethnicity</td>
    <td class="tg-0lax">Patient's self-identification as Hispanic/ Latino or Non- Hispanic/ Non-Latino.</td>
  </tr>
  <tr>
    <td class="tg-0lax">Patient Demographics</td>
    <td class="tg-1wig">First Name</td>
    <td class="tg-0lax">A personal name used before a family name.</td>
  </tr>
  <!-- <tr>
    <td class="tg-0lax">Patient Demographics</td>
    <td class="tg-1wig">Gender Identity</td>
    <td class="tg-0lax">A person’s internal sense of being a man, woman, both, or neither.</td>
  </tr> -->
  <tr>
    <td class="tg-0lax">Patient Demographics</td>
    <td class="tg-1wig">Last Name</td>
    <td class="tg-0lax">Portion of one's personal name indicating familial or communal ties.</td>
  </tr>
  <tr>
    <td class="tg-0lax">Patient Demographics</td>
    <td class="tg-1wig">Name Suffix</td>
    <td class="tg-0lax">Name component following family name that may be used to describe a person's position in a family.</td>
  </tr>
  <tr>
    <td class="tg-0lax">Patient Demographics</td>
    <td class="tg-1wig">Phone Number</td>
    <td class="tg-0lax">Numbers and symbols to contact an individual when using a phone.</td>
  </tr>
  <tr>
    <td class="tg-0lax">Patient Demographics</td>
    <td class="tg-1wig">Preferred Language</td>
    <td class="tg-0lax">Documented language that the patient would like to use when discussing health care.</td>
  </tr>
  <tr>
    <td class="tg-0lax">Patient Demographics</td>
    <td class="tg-1wig">Race</td>
    <td class="tg-0lax">An individual’s response to the race question based upon self-identification.</td>
  </tr>
  <tr>
    <td class="tg-0lax">Patient Demographics</td>
    <td class="tg-1wig">Related Person's Name</td>
    <td class="tg-0lax">Name of a person with a legal or familial relationship to a patient.</td>
  </tr>
  <tr>
    <td class="tg-0lax">Patient Demographics</td>
    <td class="tg-1wig">Relationship Type</td>
    <td class="tg-0lax">Relationship of a person to a patient.<br> Examples include but are not limited to parent, next-of-kin, guardian, and custodian.</td>
  </tr>
  <tr>
    <td class="tg-0lax">Patient Demographics</td>
    <td class="tg-1wig">Sex</td>
    <td class="tg-0lax">Documentation of a specific instance of sex and/or gender information.</td>
  </tr>
  <!-- <tr>
    <td class="tg-0lax">Patient Demographics</td>
    <td class="tg-1wig">Sexual Orientation</td>
    <td class="tg-0lax">A person’s identification of their emotional, romantic, sexual, or affectional attraction to another person.</td>
  </tr> -->
  <tr>
    <td class="tg-0lax">Patient Demographics</td>
    <td class="tg-1wig">Tribal Affiliation</td>
    <td class="tg-0lax">Tribe or band with which an individual associates.</td>
  </tr>
  <tr>
    <td class="tg-0lax">Patient Demographics</td>
    <td class="tg-1wig">Date of Death</td>
    <td class="tg-0lax">Known or estimated year, month, and day of the patient's death.</td>
  </tr>
  <tr>
    <td class="tg-0lax">Patient Demographics</td>
    <td class="tg-1wig">Identifier</td>
    <td class="tg-0lax">An identifier for the patient.</td>
  </tr>
  <!-- <tr>
    <td class="tg-0lax">Patient Demographics  </td>
    <td class="tg-1wig">Pronouns</td>
    <td class="tg-0lax">Words that can replace a person’s name when addressing or referring to a person</td>
  </tr> -->
  <tr>
    <td class="tg-0lax">Patient Summary and Plan</td>
    <td class="tg-1wig">Assessment and Plan of Treatment</td>
    <td class="tg-0lax">Health professional’s conclusions and working assumptions that will guide treatment of the patient.</td>
  </tr>
  <tr>
    <td class="tg-0lax">Problems</td>
    <td class="tg-1wig">Problems/Conditions</td>
    <td class="tg-0lax">Condition, diagnosis, or reason for seeking medical attention.</td>
  </tr>
  <tr>
    <td class="tg-0lax">Problems</td>
    <td class="tg-1wig">SDOH Problems/Health Concerns</td>
    <td class="tg-0lax">Social Determinants of Health-related health concerns, conditions, or diagnoses.<br> Examples include but are not limited to homelessness and food insecurity.</td>
  </tr>
  <tr>
    <td class="tg-0lax">Problems</td>
    <td class="tg-1wig">Date of Diagnosis</td>
    <td class="tg-0lax">Date of first determination by a qualified professional of the presence of a problem or condition affecting a patient.</td>
  </tr>
  <tr>
    <td class="tg-0lax">Problems</td>
    <td class="tg-1wig">Date of Onset</td>
    <td class="tg-0lax">Date when a problem/ condition started.</td>
  </tr>
  <tr>
    <td class="tg-0lax">Problems</td>
    <td class="tg-1wig">Date of Resolution</td>
    <td class="tg-0lax">Date of subsiding or termination of a symptom, problem or condition.</td>
  </tr>
  <tr>
    <td class="tg-0lax">Procedures</td>
    <td class="tg-1wig">Harm Reduction Activities</td>
    <td class="tg-ktyi">Intervention tools or resources given to a patient to reduce harm, prevent overdose, and connect to health/social services. Examples include naloxone distribution, cyber bulling  support, and education on prevention, treatment, and support services.</td>
  </tr>
  <tr>
    <td class="tg-0lax">Procedures</td>
    <td class="tg-1wig">Performance Time</td>
    <td class="tg-0lax">Time and/or date a procedure is performed</td>
  </tr>
  <tr>
    <td class="tg-0lax">Procedures</td>
    <td class="tg-1wig">Procedures</td>
    <td class="tg-0lax">Activity performed for or on a patient as part of the provision of care.</td>
  </tr>
  <tr>
    <td class="tg-0lax">Procedures</td>
    <td class="tg-1wig">Reason for Referral</td>
    <td class="tg-0lax">Explanation or justification for a referral or consultation.</td>
  </tr>
  <tr>
    <td class="tg-0lax">Procedures</td>
    <td class="tg-1wig">SDOH Interventions</td>
    <td class="tg-0lax">Actions or services to address an identified Social Determinants of Health-related health concern, condition, or diagnosis.<br> Examples include but are not limited to education about food pantry program and referral to non- emergency medical transportation program.</td>
  </tr>
  <tr>
    <td class="tg-0lax">Procedures</td>
    <td class="tg-1wig">Peer Coaching or Mentoring</td>
    <td class="tg-0lax">A one-on-one relationship in which a peer leader with more recovery experience than the person served encourages, motivates, and supports a peer who is seeking to establish or strengthen his or her recovery.</td>
  </tr>
  <tr>
    <td class="tg-0lax">Procedures</td>
    <td class="tg-1wig">Recovery Planning</td>
    <td class="tg-0lax">A personalized client-centered approach to empower clients to take an active role on their journey towards recovery.</td>
  </tr>
  <tr>
    <td class="tg-0lax">Vital Signs</td>
    <td class="tg-1wig">Body Height</td>
    <td class="tg-0lax">The vertical measurement of an individual's stature from the feet to the top of the head when standing upright.</td>
  </tr>
  <tr>
    <td class="tg-0lax">Vital Signs</td>
    <td class="tg-1wig">Body Temperature</td>
    <td class="tg-0lax">Temperature is a measure of the patient's ability to generate and get rid of heat.</td>
  </tr>
  <tr>
    <td class="tg-0lax">Vital Signs</td>
    <td class="tg-1wig">Body Weight</td>
    <td class="tg-0lax">The measurement of weight without heavy items located on the person.</td>
  </tr>
  <tr>
    <td class="tg-0lax">Vital Signs</td>
    <td class="tg-1wig">Diastolic Blood Pressure</td>
    <td class="tg-0lax">Diastolic blood pressure, the bottom number, measures the force the heart exerts on the walls of the arteries in between beats.</td>
  </tr>
  <tr>
    <td class="tg-0lax">Vital Signs</td>
    <td class="tg-1wig">Heart Rate</td>
    <td class="tg-0lax">Number of times the heart beats each minute.</td>
  </tr>
  <tr>
    <td class="tg-0lax">Vital Signs</td>
    <td class="tg-1wig">Pulse Oximetry</td>
    <td class="tg-0lax">Pulse oximetry is a test used to measure the oxygen level (oxygen saturation) of the blood.</td>
  </tr>
  <tr>
    <td class="tg-0lax">Vital Signs</td>
    <td class="tg-1wig">Respiratory Rate</td>
    <td class="tg-0lax">The respiration rate is the number of breaths a person takes per minute.</td>
  </tr>
  <tr>
    <td class="tg-0lax">Vital Signs</td>
    <td class="tg-1wig">Systolic Blood Pressure</td>
    <td class="tg-0lax">Systolic blood pressure, the top number, measures the force the heart exerts on the walls of the arteries each time it beats.</td>
  </tr>
  <tr>
    <td class="tg-0lax">Vital Signs</td>
    <td class="tg-1wig">Average Blood Pressure</td>
    <td class="tg-0lax">Arithmetic average of systolic and diastolic components of two of more blood pressure readings in a specified time period or according to a specified algorithm or protocol.<br> Examples include but are not limited to 3-day morning and evening home monitoring, clinical encounter repeat average, and 24-hour ambulatory measurement.</td>
  </tr>
  <!-- <tr>
    <td class="tg-0lax">Work Information</td>
    <td class="tg-1wig">Farmworker Status</td>
    <td class="tg-0lax">Data element capturing seasonal or migrant farm work status.</td>
  </tr> -->
  <tr>
    <td class="tg-0lax">Work Information</td>
    <td class="tg-1wig">Veteran Status</td>
    <td class="tg-0lax">Military service in the armed forces of the United States or other nations, including the length and branch of service, the military occupation, the location and type of duty (e.g., in the United States or abroad with combat, combat support, or noncombat duties), and any ongoing illness, injury, limitation, or disability that began during military service (Institute of Medicine, Capturing Social and Behavioral Domains in Electronic Health Records, Phase 2, p. 297 (2014)).</td>
  </tr>
</tbody></table>