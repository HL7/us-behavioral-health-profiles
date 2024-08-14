### Scope and Usage 

The USCDI+ Behavioral Health (BH) initiative is designed to facilitate the seamless integration and exchange of behavioral health data across various healthcare settings. By harmonizing and advancing a core list of standardized interoperable data elements, the initiative aims to capture comprehensive treatment data for adults with mental health and substance use disorders. This effort is aligned with the reporting requirements of the Substance Abuse and Mental Health Services Administration (SAMHSA) for Substance Use and Mental Health Block Grants, thus supporting funding, reporting, monitoring outcomes, and developing performance measures. 

## Behavioral Health Use Cases

## Cross walk table working draft


<style type="text/css">
.tg  {border-collapse:collapse;border-spacing:0;}
.tg td{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  overflow:hidden;padding:10px 5px;word-break:normal;}
.tg th{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  font-weight:normal;overflow:hidden;padding:10px 5px;word-break:normal;}
.tg .tg-0lax{text-align:left;vertical-align:top}
</style>
<table class="tg"><thead>
  <tr>
    <th class="tg-0lax"><span style="font-weight:700;text-decoration:none;color:white;background-color:#156082">USCDI+&nbsp;&nbsp;&nbsp;BH </span><br><span style="font-weight:700;text-decoration:none;color:white;background-color:#156082">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Data Class</span></th>
    <th class="tg-0lax"><span style="font-weight:700;text-decoration:none;color:white;background-color:#156082">USCDI + BH </span><br><span style="font-weight:700;text-decoration:none;color:white;background-color:#156082">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Data Element</span></th>
    <th class="tg-0lax"><span style="font-weight:700;text-decoration:none;color:white;background-color:#156082">USCDI+ BH Data Element Description</span></th>
    <th class="tg-0lax"><span style="font-weight:700;text-decoration:none;color:white;background-color:#CAEDFB">Column1</span></th>
    <th class="tg-0lax"><span style="font-weight:700;text-decoration:none;color:white;background-color:#156082">Proposed FHIR profile</span></th>
    <th class="tg-0lax">Suggested FHIR data element <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(if applicable)</th>
    <th class="tg-0lax"><span style="font-weight:700;text-decoration:none;color:white;background-color:#156082">Behavioral Health FHIR</span>  <span style="font-weight:700;text-decoration:none;color:white;background-color:#156082">Example</span></th>
    <th class="tg-0lax"><span style="font-weight:700;text-decoration:none;color:white;background-color:#156082">Example description</span></th>
    <th class="tg-0lax"><span style="font-weight:700;text-decoration:none;color:white;background-color:#156082">User Story Narrative/RWE</span></th>
  </tr>
</thead>
<tbody>
  <tr>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext;background-color:white">Adverse&nbsp;&nbsp;&nbsp;Event</span></td>
    <td class="tg-0lax"><span style="font-weight:700;text-decoration:none;color:windowtext">Adverse Event</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">An event that may be related to unintended effects on a&nbsp;&nbsp;&nbsp;patient or research participant.</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"><a href="https://www.hl7.org/fhir/adverseevent.html">Adverse Event -Base FHIR</a></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:underline;color:#467886">n/a</span></td>
    <td class="tg-0lax"><a href="https://build.fhir.org/ig/HL7/us-behavioral-health-profiles/AdverseEvent-fall-adverse-event-example-1.html">fall-adverse-event-example</a></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext">Example of a fall adverse event</span> </td>
    <td class="tg-0lax"></td>
  </tr>
  <tr>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"><span style="font-weight:700;text-decoration:none;color:windowtext;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"> </td>
    <td class="tg-0lax"> </td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"><span style="font-weight:700;text-decoration:none;color:windowtext;background-color:#CAEDFB"> </span></td>
  </tr>
  <tr>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext">Allergies and Intolerances</span></td>
    <td class="tg-0lax"><span style="font-weight:700;text-decoration:none;color:windowtext">Reaction</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">Harmful or undesired physiologic response&nbsp;&nbsp;&nbsp;following exposure to a pharmacologic agent or class of agents.</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"><a href="https://www.hl7.org/fhir/adverseevent.html"><span style="text-decoration:none;color:black">US Core AllergyIntolerance&nbsp;&nbsp;&nbsp;Profile</span></a></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black;background-color:white">allergyIntolerance.reaction.manifestation</span></td>
    <td class="tg-0lax"><a href="https://build.fhir.org/ig/HL7/us-behavioral-health-profiles/AllergyIntolerance-peanut-allergy-example-1.html">peanut-allergy-example-1</a><br><a href="https://build.fhir.org/ig/HL7/us-behavioral-health-profiles/AllergyIntolerance-peanut-allergy-example-1.html">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;penicillin-allergy-example-1</a></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext">Examples of allergic&nbsp;&nbsp;&nbsp;response to peanuts and penciliin</span></td>
    <td class="tg-0lax"></td>
  </tr>
  <tr>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext">Allergies and Intolerances</span></td>
    <td class="tg-0lax"><span style="font-weight:700;text-decoration:none;color:windowtext">Substance (Medication)</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">Pharmacologic agent believed to cause a harmful&nbsp;&nbsp;&nbsp;or undesired physiologic response following exposure.</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"><a href="https://www.hl7.org/fhir/adverseevent.html"><span style="text-decoration:none;color:black">US Core AllergyIntolerance&nbsp;&nbsp;&nbsp;Profile</span></a></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black;background-color:white">allergyIntolerance.code</span></td>
    <td class="tg-0lax"><a href="https://build.fhir.org/ig/HL7/us-behavioral-health-profiles/AllergyIntolerance-peanut-allergy-example-1.html">peanut-allergy-example-1</a><br><a href="https://build.fhir.org/ig/HL7/us-behavioral-health-profiles/AllergyIntolerance-peanut-allergy-example-1.html">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;penicillin-allergy-example-1</a></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext">Example of allergy to&nbsp;&nbsp;&nbsp;penicillin</span></td>
    <td class="tg-0lax"></td>
  </tr>
  <tr>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext">Allergies and Intolerances</span></td>
    <td class="tg-0lax"><span style="font-weight:700;text-decoration:none;color:windowtext">Substance (Non-Medication)</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">Non-pharmacologic agent believed to cause a&nbsp;&nbsp;&nbsp;harmful or undesired physiologic response following exposure.</span><br><span style="font-weight:400;text-decoration:none;color:black">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Examples include but are not limited to latex, eggs, pollen, and peanuts.</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"><a href="https://www.hl7.org/fhir/adverseevent.html"><span style="text-decoration:none;color:black">US Core AllergyIntolerance&nbsp;&nbsp;&nbsp;Profile</span></a></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black;background-color:white">allergyIntolerance.code</span></td>
    <td class="tg-0lax"><a href="https://build.fhir.org/ig/HL7/us-behavioral-health-profiles/AllergyIntolerance-peanut-allergy-example-1.html">peanut-allergy-example-1</a><br><a href="https://build.fhir.org/ig/HL7/us-behavioral-health-profiles/AllergyIntolerance-peanut-allergy-example-1.html">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;penicillin-allergy-example-1</a></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext">Example of allergy to&nbsp;&nbsp;&nbsp;peanuts</span></td>
    <td class="tg-0lax"></td>
  </tr>
  <tr>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"><span style="font-weight:700;text-decoration:none;color:windowtext;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"> </td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"><span style="font-weight:700;text-decoration:none;color:windowtext;background-color:#CAEDFB"> </span></td>
  </tr>
  <tr>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext">Care Team Member(s)</span></td>
    <td class="tg-0lax"><span style="font-weight:700;text-decoration:none;color:windowtext">Care Team Member Role</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">Responsibility of an individual within the care&nbsp;&nbsp;&nbsp;team. Examples include but are not limited to primary care physician and&nbsp;&nbsp;&nbsp;caregiver.</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"><a href="https://www.hl7.org/fhir/adverseevent.html"><span style="text-decoration:none;color:black">US Core Care Team Profile</span></a></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">careTeam.participant.role</span></td>
    <td class="tg-0lax"><a href="https://build.fhir.org/ig/HL7/us-behavioral-health-profiles/CareTeam-bh-care-team-example-1.html">Care Team Example</a></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext">Example of a mental&nbsp;&nbsp;&nbsp;health counselor as part of the care team</span></td>
    <td class="tg-0lax"></td>
  </tr>
  <tr>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext">Care Team Member(s)</span></td>
    <td class="tg-0lax"><span style="font-weight:700;text-decoration:none;color:windowtext">Care Team Member Telecom</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">Phone or email contact information for a care&nbsp;&nbsp;&nbsp;team member.</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">US Core Care Practitioner Profile</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black;background-color:white">practitioner.telecom</span></td>
    <td class="tg-0lax"><a href="https://build.fhir.org/ig/HL7/us-behavioral-health-profiles/Practitioner-ed-physician-example-1.html">ed-physician-example	</a><br><a href="https://build.fhir.org/ig/HL7/us-behavioral-health-profiles/Practitioner-ed-physician-example-1.html">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;pcp-provider-example	</a><br><a href="https://build.fhir.org/ig/HL7/us-behavioral-health-profiles/Practitioner-ed-physician-example-1.html">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;mental-health-provider-examplee</a></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext">Examples of a patient's&nbsp;&nbsp;&nbsp;emeergency room provider, Primary care provider and mental health provider&nbsp;&nbsp;&nbsp;telecom</span></td>
    <td class="tg-0lax"></td>
  </tr>
  <tr>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext">Care Team Member(s)</span></td>
    <td class="tg-0lax"><span style="font-weight:700;text-decoration:none;color:windowtext">Care Team Member Identifier</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">Sequence of characters used to uniquely refer&nbsp;&nbsp;&nbsp;to a member of the care team. Examples include but are not limited to&nbsp;&nbsp;&nbsp;National Provider Identifier (NPI) and National Council of State Boards of&nbsp;&nbsp;&nbsp;Nursing Identifier (NCSBN ID).</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">US Core Care Practitioner Profile</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black;background-color:white">practitioner.identifier</span></td>
    <td class="tg-0lax"><a href="https://build.fhir.org/ig/HL7/us-behavioral-health-profiles/Practitioner-ed-physician-example-1.html">ed-physician-example	</a><br><a href="https://build.fhir.org/ig/HL7/us-behavioral-health-profiles/Practitioner-ed-physician-example-1.html">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;pcp-provider-example	</a><br><a href="https://build.fhir.org/ig/HL7/us-behavioral-health-profiles/Practitioner-ed-physician-example-1.html">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;mental-health-provider-examplee</a></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext">Examples of a patient's&nbsp;&nbsp;&nbsp;emeergency room provider, Primary care provider and mental health provider&nbsp;&nbsp;&nbsp;identifiers</span></td>
    <td class="tg-0lax"></td>
  </tr>
  <tr>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"><span style="font-weight:700;text-decoration:none;color:windowtext;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"> </td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"><span style="font-weight:700;text-decoration:none;color:windowtext;background-color:#CAEDFB"> </span></td>
  </tr>
  <tr>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext">Clinical Notes</span></td>
    <td class="tg-0lax"><span style="font-weight:700;text-decoration:none;color:windowtext">Mental Health Consultation Note</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">Response to request from a mental health&nbsp;&nbsp;&nbsp;clinician for an opinion, advice, or service from another clinician.</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"><span style="font-weight:700;text-decoration:none;color:black">US Behavioral Health Mental Health&nbsp;&nbsp;&nbsp;Clinical Notes Profile</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">documentReference.type</span></td>
    <td class="tg-0lax"><a href="https://build.fhir.org/ig/HL7/us-behavioral-health-profiles/DocumentReference-mental-health-consult-note-example-1.html">mental-health-consult-note-example</a></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">Example of a mental health consult note. </span>Clinical&nbsp;&nbsp;&nbsp;details of note content are encoded (base64)</td>
    <td class="tg-0lax"></td>
  </tr>
  <tr>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext">Clinical Notes</span></td>
    <td class="tg-0lax"><span style="font-weight:700;text-decoration:none;color:windowtext">Mental Health Discharge Summary Note</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">Synopsis of a patient’s admission and mental&nbsp;&nbsp;&nbsp;health course in a hospital or post-acute care setting.</span><br><span style="font-weight:400;text-decoration:none;color:black">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Usage note: Must contain admission and discharge dates and locations,&nbsp;&nbsp;&nbsp;discharge instructions, and reason(s) for hospitalization.</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"><span style="font-weight:700;text-decoration:none;color:black">US Behavioral Health Mental Health&nbsp;&nbsp;&nbsp;Clinical Notes Profile</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">documentReference.type</span></td>
    <td class="tg-0lax"><a href="https://build.fhir.org/ig/HL7/us-behavioral-health-profiles/DocumentReference-mental-health-discharge-summary-example-1.html">mental-health-discharge-summary-example</a></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">Example of a mental health discharge summary note. </span>Clinical details of note content are encoded (base64)</td>
    <td class="tg-0lax"></td>
  </tr>
  <tr>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext">Clinical Notes</span></td>
    <td class="tg-0lax"><span style="font-weight:700;text-decoration:none;color:windowtext">Mental Health History &amp; Physical</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">Summary of current and past mental health&nbsp;&nbsp;&nbsp;conditions and observations used to inform an episode of care. Examples&nbsp;&nbsp;&nbsp;include but are not limited to admissions, surgeries, and other procedures.</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"><span style="font-weight:700;text-decoration:none;color:black">US Behavioral Health Mental Health&nbsp;&nbsp;&nbsp;Clinical Notes Profile</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">documentReference.type</span></td>
    <td class="tg-0lax"><a href="https://build.fhir.org/ig/HL7/us-behavioral-health-profiles/DocumentReference-mental-health-hx-physical-example-1.html">mental-health-hx-physical-example</a></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">Example of a mental health history and physical note.&nbsp;&nbsp;&nbsp;Clinical details of note content are encoded (base64)</span></td>
    <td class="tg-0lax"></td>
  </tr>
  <tr>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext">Clinical Notes</span></td>
    <td class="tg-0lax"><span style="font-weight:700;text-decoration:none;color:windowtext">Mental Health Procedure Note</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">Synopsis of non-operative mental health&nbsp;&nbsp;&nbsp;procedure.</span><br><span style="font-weight:400;text-decoration:none;color:black">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"><span style="font-weight:700;text-decoration:none;color:black">US Behavioral Health Mental Health&nbsp;&nbsp;&nbsp;Clinical Notes Profile</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">documentReference.type</span></td>
    <td class="tg-0lax"><a href="https://build.fhir.org/ig/HL7/us-behavioral-health-profiles/DocumentReference-mental-health-procedure-example-1.html">mental-health-procedure-example</a></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext">Example of a mental&nbsp;&nbsp;&nbsp;health procedure note. Clinical details of note content are encoded (base64)</span></td>
    <td class="tg-0lax"></td>
  </tr>
  <tr>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext">Clinical Notes</span></td>
    <td class="tg-0lax"><span style="font-weight:700;text-decoration:none;color:windowtext">Mental Health Progress Note</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">Summary of a patient’s mental health interval&nbsp;&nbsp;&nbsp;status during an encounter.</span><br><span style="font-weight:400;text-decoration:none;color:black">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Examples include but are not limited to hospitalization, outpatient visit,&nbsp;&nbsp;&nbsp;and treatment with a post-acute care provider, or other healthcare encounter.</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"><span style="font-weight:700;text-decoration:none;color:black">US Behavioral Health Mental Health&nbsp;&nbsp;&nbsp;Clinical Notes Profile</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">documentReference.type</span></td>
    <td class="tg-0lax"><a href="https://build.fhir.org/ig/HL7/us-behavioral-health-profiles/DocumentReference-mental-health-progress-example-1.html">mental-health-progress-example</a></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext">Example of a mental&nbsp;&nbsp;&nbsp;health progress note. Clinical details of note content are encoded (base64)</span></td>
    <td class="tg-0lax"></td>
  </tr>
  <tr>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"><span style="font-weight:700;text-decoration:none;color:windowtext;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"><span style="font-weight:700;text-decoration:none;color:black;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"> </td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"><span style="font-weight:700;text-decoration:none;color:windowtext;background-color:#CAEDFB"> </span></td>
  </tr>
  <tr>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext">Clinical Tests</span></td>
    <td class="tg-0lax"><span style="font-weight:700;text-decoration:none;color:windowtext">Clinical Test</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">Non-imaging or non-laboratory test.</span><br><span style="font-weight:400;text-decoration:none;color:black">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Examples include but are not limited to electrocardiogram (ECG), visual&nbsp;&nbsp;&nbsp;acuity exam, macular exam, and graded exercise testing (GXT).</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">US Core Observation Clinical Result&nbsp;&nbsp;&nbsp;Profile</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">observation.code</span></td>
    <td class="tg-0lax"><a href="https://build.fhir.org/ig/HL7/us-behavioral-health-profiles/Observation-ekg-observation-example-1.html">ekg-observation-example</a></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext">Example of&nbsp;&nbsp;&nbsp;electocardiagram test</span></td>
    <td class="tg-0lax"></td>
  </tr>
  <tr>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext">Clinical Tests</span></td>
    <td class="tg-0lax"><span style="font-weight:700;text-decoration:none;color:windowtext">Clinical Test Result/Report</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">Findings of clinical tests.</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">US Core Observation Clinical Result&nbsp;&nbsp;&nbsp;Profile</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">observation.value</span></td>
    <td class="tg-0lax"><a href="https://build.fhir.org/ig/HL7/us-behavioral-health-profiles/Observation-ekg-observation-example-1.html">ekg-observation-example</a></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext">Example of&nbsp;&nbsp;&nbsp;electocardiagram with normal sinus rthym</span></td>
    <td class="tg-0lax"></td>
  </tr>
  <tr>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"><span style="font-weight:700;text-decoration:none;color:windowtext;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"> </td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"><span style="font-weight:700;text-decoration:none;color:windowtext;background-color:#CAEDFB"> </span></td>
  </tr>
  <tr>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext">Consent</span></td>
    <td class="tg-0lax"><span style="font-weight:700;text-decoration:none;color:windowtext">Consent</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext;background-color:yellow">Consent&nbsp;&nbsp;&nbsp;related to the release of information to non-HIPAA covered organizations</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"><a href="https://build.fhir.org/ig/HL7/fhir-sdoh-clinicalcare/StructureDefinition-SDOHCC-Consent.html">SDOH Clinical Care Consent Profile</a></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:underline;color:#467886">n/a</span></td>
    <td class="tg-0lax"><a href="https://build.fhir.org/ig/HL7/us-behavioral-health-profiles/Consent-SDOHCC-ConsentInformationDisclosure-example-1.html">SDOHCC-ConsentInformationDisclosure-example</a></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext">Example of a consent&nbsp;&nbsp;&nbsp;for information disclosure</span></td>
    <td class="tg-0lax"></td>
  </tr>
  <tr>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"><span style="font-weight:700;text-decoration:none;color:windowtext;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"> </td>
    <td class="tg-0lax"> </td>
    <td class="tg-0lax"> </td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"><span style="font-weight:700;text-decoration:none;color:windowtext;background-color:#CAEDFB"> </span></td>
  </tr>
  <tr>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext">Diagnostic Imaging</span></td>
    <td class="tg-0lax"><span style="font-weight:700;text-decoration:none;color:windowtext">Diagnostic Imaging Report</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">Interpreted results of imaging tests.</span><br><span style="font-weight:400;text-decoration:none;color:black">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Usage Note: Includes both structured and unstructured (narrative)&nbsp;&nbsp;&nbsp;components.</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">US Core Diagnostic Report</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">diagnosticReport.result</span></td>
    <td class="tg-0lax"><a href="https://build.fhir.org/ig/HL7/us-behavioral-health-profiles/DiagnosticReport-ekg-impression-report-example-1.html">ekg-impression-report-example</a></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext">Example of EKG&nbsp;&nbsp;&nbsp;impression report</span></td>
    <td class="tg-0lax"></td>
  </tr>
  <tr>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext">Diagnostic Imaging</span></td>
    <td class="tg-0lax"><span style="font-weight:700;text-decoration:none;color:windowtext">Diagnostic Imaging Test</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">Tests that generate visual images and require&nbsp;&nbsp;&nbsp;interpretation by qualified professionals.</span><br><span style="font-weight:400;text-decoration:none;color:black">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Examples include but are not limited to radiographic, photographic, and&nbsp;&nbsp;&nbsp;video images.</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">US Core Diagnostic Report</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">diagnosticReport.code</span></td>
    <td class="tg-0lax"><a href="https://build.fhir.org/ig/HL7/us-behavioral-health-profiles/DiagnosticReport-ekg-impression-report-example-1.html">ekg-impression-report-example</a></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext">Example of EKG test&nbsp;&nbsp;&nbsp;report</span></td>
    <td class="tg-0lax"></td>
  </tr>
  <tr>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"><span style="font-weight:700;text-decoration:none;color:windowtext;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"> </td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"><span style="font-weight:700;text-decoration:none;color:windowtext;background-color:#CAEDFB"> </span></td>
  </tr>
  <tr>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext">Encounter Information</span></td>
    <td class="tg-0lax"><span style="font-weight:700;text-decoration:none;color:windowtext">Diagnosis Rank</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">Ranking of the diagnosis relevent to the&nbsp;&nbsp;&nbsp;encounter</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">US Core Encounter Profile</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">encounter.diagnosis.rank</span></td>
    <td class="tg-0lax"><a href="https://build.fhir.org/ig/HL7/us-behavioral-health-profiles/Encounter-discharge-encounter-example-3.html">discharge-encounter-example</a></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext;background-color:yellow">Example of the ranking of diagnosis in the discharge&nbsp;&nbsp;&nbsp;encounter.</span> </td>
    <td class="tg-0lax"></td>
  </tr>
  <tr>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext">Encounter Information</span></td>
    <td class="tg-0lax"><span style="font-weight:700;text-decoration:none;color:windowtext">Encounter Diagnosis</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">Coded diagnoses associated with an episode of&nbsp;&nbsp;&nbsp;care.</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">US Core Encounter Profile</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">encounter.diagnosis</span> </td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:underline;color:#467886">discharge-encounter-example</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext;background-color:yellow">Example of encounter diagnosis</span></td>
    <td class="tg-0lax"></td>
  </tr>
  <tr>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext">Encounter Information</span></td>
    <td class="tg-0lax"><span style="font-weight:700;text-decoration:none;color:windowtext">Encounter Disposition</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">Place or setting to which the patient left a&nbsp;&nbsp;&nbsp;hospital or encounter.</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">US Core Encounter Profile</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">encounter.hospitalization.dischargeDisposition</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:underline;color:#467886">discharge-encounter-example</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext;background-color:yellow">Example of encounter disposition</span></td>
    <td class="tg-0lax"></td>
  </tr>
  <tr>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext">Encounter Information</span></td>
    <td class="tg-0lax"><span style="font-weight:700;text-decoration:none;color:windowtext">Encounter Location</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">Place where a patient’s care is delivered.</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">US Core Encounter Profile</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">encounter.location</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:underline;color:#467886">discharge-encounter-example</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext;background-color:yellow">Example of encounter location</span></td>
    <td class="tg-0lax"></td>
  </tr>
  <tr>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext">Encounter Information</span></td>
    <td class="tg-0lax"><span style="font-weight:700;text-decoration:none;color:windowtext">Encounter Time</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">Date/times related to an encounter.</span><br><span style="font-weight:400;text-decoration:none;color:black">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Examples include but are not limited to scheduled appointment time, check&nbsp;&nbsp;&nbsp;in time, and start and stop times.</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">US Core Encounter Profile</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">encounter.period</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:underline;color:#467886">discharge-encounter-example</span><br><span style="font-weight:400;text-decoration:underline;color:#467886">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;pcp-encounter-example</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext;background-color:yellow">Example of encoutner time</span></td>
    <td class="tg-0lax"></td>
  </tr>
  <tr>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext">Encounter Information</span></td>
    <td class="tg-0lax"><span style="font-weight:700;text-decoration:none;color:windowtext">Encounter Type</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">Category of health care service. Examples&nbsp;&nbsp;&nbsp;include but are not limited to office visit, telephone assessment, and home&nbsp;&nbsp;&nbsp;visit.</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">US Core Encounter Profile</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">encounter.type</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:underline;color:#467886">discharge-encounter-example</span><br><span style="font-weight:400;text-decoration:underline;color:#467886">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;pcp-encounter-example</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext;background-color:yellow">Example of encoutner type</span></td>
    <td class="tg-0lax"></td>
  </tr>
  <tr>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"><span style="font-weight:700;text-decoration:none;color:windowtext;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"> </td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"><span style="font-weight:700;text-decoration:none;color:windowtext;background-color:#CAEDFB"> </span></td>
  </tr>
  <tr>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext">Facility Information</span></td>
    <td class="tg-0lax"><span style="font-weight:700;text-decoration:none;color:windowtext">Facility Type</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">Category describing available services or&nbsp;&nbsp;&nbsp;resources. Examples include but are not limited to laboratory, pharmacy,&nbsp;&nbsp;&nbsp;hospital, ambulatory providers, long-term and post-acute care, and pharmacy.</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black;background-color:white">US&nbsp;&nbsp;&nbsp;Core Location Profile</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black;background-color:white">location.type</span></td>
    <td class="tg-0lax"><a href="https://build.fhir.org/ig/HL7/us-behavioral-health-profiles/Location-ed-location-example-1.html">obs-location-example</a><br><a href="https://build.fhir.org/ig/HL7/us-behavioral-health-profiles/Location-ed-location-example-1.html">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ed-location-example</a></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext">Examples of facility&nbsp;&nbsp;&nbsp;locations</span></td>
    <td class="tg-0lax"></td>
  </tr>
  <tr>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"><span style="font-weight:700;text-decoration:none;color:windowtext;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"> </td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black;background-color:#CAEDFB"> </span></td>
  </tr>
  <tr>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext">Family Health History</span></td>
    <td class="tg-0lax"><span style="font-weight:700;text-decoration:none;color:windowtext">Family Health History</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">Family Health History is an element of patient&nbsp;&nbsp;&nbsp;health data capturing relevant coded health data of a patient's family.</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"><span style="font-weight:700;text-decoration:none;color:black">US Behavioral Health Mental Health&nbsp;&nbsp;&nbsp;Clinical Notes Profile</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black;background-color:white">n/a</span></td>
    <td class="tg-0lax"><a href="https://build.fhir.org/ig/HL7/us-behavioral-health-profiles/DocumentReference-mental-health-progress-example-1.html">mental-health-progress-example</a></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext">Example of clinical&nbsp;&nbsp;&nbsp;note that contains family health history</span></td>
    <td class="tg-0lax"></td>
  </tr>
  <tr>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"><span style="font-weight:700;text-decoration:none;color:windowtext;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"> </td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"><span style="font-weight:700;text-decoration:none;color:windowtext;background-color:#CAEDFB"> </span></td>
  </tr>
  <tr>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext">Federal/State Grants Reporting Requirements</span></td>
    <td class="tg-0lax"><span style="font-weight:700;text-decoration:none;color:windowtext">Grant Number</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">A unique identifier for a grant.</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"><span style="font-weight:700;text-decoration:none;color:black">US Behavioral Health Grant Information&nbsp;&nbsp;&nbsp;Observation Profle</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">observation.code</span></td>
    <td class="tg-0lax"><a href="https://build.fhir.org/ig/HL7/us-behavioral-health-profiles/Observation-bh-grant-info-observation-example-1.html">bh-grant-info-observation-example</a></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext">Example of a grant with&nbsp;&nbsp;&nbsp;a unique identifier</span> </td>
    <td class="tg-0lax"></td>
  </tr>
  <tr>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext">Federal/State Grants Reporting Requirements</span></td>
    <td class="tg-0lax"><span style="font-weight:700;text-decoration:none;color:windowtext">Grant Program ID</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">The grant program identifier provides more&nbsp;&nbsp;&nbsp;granular detail about the funded program.</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"><span style="font-weight:700;text-decoration:none;color:black">US Behavioral Health Grant Information&nbsp;&nbsp;&nbsp;Observation Profle</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">observation.extension</span></td>
    <td class="tg-0lax"><a href="https://build.fhir.org/ig/HL7/us-behavioral-health-profiles/Observation-bh-grant-info-observation-example-1.html">bh-grant-info-observation-example</a></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext">Example of a grant&nbsp;&nbsp;&nbsp;program ID</span></td>
    <td class="tg-0lax"></td>
  </tr>
  <tr>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext">Federal/State Grants Reporting Requirements</span></td>
    <td class="tg-0lax"><span style="font-weight:700;text-decoration:none;color:windowtext">Grant/Funding Type</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">The specific program or project funded by a&nbsp;&nbsp;&nbsp;grant/fund.</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"><span style="font-weight:700;text-decoration:none;color:black">US Behavioral Health Grant Information&nbsp;&nbsp;&nbsp;Observation Profle</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">observation.category</span></td>
    <td class="tg-0lax"><a href="https://build.fhir.org/ig/HL7/us-behavioral-health-profiles/Observation-bh-grant-info-observation-example-1.html">bh-grant-info-observation-example</a></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext">Example of an&nbsp;&nbsp;&nbsp;identified grant funding type</span> </td>
    <td class="tg-0lax"></td>
  </tr>
  <tr>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"><span style="font-weight:700;text-decoration:none;color:windowtext;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"><span style="font-weight:700;text-decoration:none;color:black;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"><span style="font-weight:700;text-decoration:none;color:black;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"> </td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"><span style="font-weight:700;text-decoration:none;color:windowtext;background-color:#CAEDFB"> </span></td>
  </tr>
  <tr>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext">Goals and Preferences</span></td>
    <td class="tg-0lax"><span style="font-weight:700;text-decoration:none;color:windowtext">Care Experience Preference</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">Person's goals, preferences, and priorities for&nbsp;&nbsp;&nbsp;overall experiences during their care and treatment.</span><br><span style="font-weight:400;text-decoration:none;color:black">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Examples include but are not limited to religious beliefs, dislikes and&nbsp;&nbsp;&nbsp;fears, and thoughts and feelings to be shared.</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">US Core Care Experience Preference Profile</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:underline;color:#467886">n/a</span></td>
    <td class="tg-0lax"><a href="https://build.fhir.org/ig/HL7/us-behavioral-health-profiles/Observation-provider-preference-observation-example-2.html">provider-preference-observation-example</a></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext">Example of a care&nbsp;&nbsp;&nbsp;experience preference for female providers</span></td>
    <td class="tg-0lax"></td>
  </tr>
  <tr>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext">Goals and Preferences</span></td>
    <td class="tg-0lax"><span style="font-weight:700;text-decoration:none;color:windowtext">Patient Goals</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">Desired outcomes of patient’s care.</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">US Core Goal Profile</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">goal.description</span></td>
    <td class="tg-0lax"><a href="https://build.fhir.org/ig/HL7/us-behavioral-health-profiles/Goal-social-connection-example-1.html">social-connection-example-1</a></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext">Example of an improving&nbsp;&nbsp;&nbsp;patient goal improve toward adequate social participation</span></td>
    <td class="tg-0lax"></td>
  </tr>
  <tr>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext">Goals and Preferences</span></td>
    <td class="tg-0lax"><span style="font-weight:700;text-decoration:none;color:windowtext">SDOH Goals</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">Desired future states for an identified Social&nbsp;&nbsp;&nbsp;Determinants of Health-related health concern, condition, or diagnosis.&nbsp;&nbsp;&nbsp;Examples include but are not limited to food security, transportation&nbsp;&nbsp;&nbsp;security, and ability to access health care.</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">US Core Goal Profile</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">goal.description</span></td>
    <td class="tg-0lax"><a href="https://build.fhir.org/ig/HL7/us-behavioral-health-profiles/Goal-food-insecurity-example-1.html">food-insecurity-example</a><br><a href="https://build.fhir.org/ig/HL7/us-behavioral-health-profiles/Goal-food-insecurity-example-1.html">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;housing-insecurity-example</a><br><a href="https://build.fhir.org/ig/HL7/us-behavioral-health-profiles/Goal-food-insecurity-example-1.html">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;transportation-insecurity-example</a></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext">Examples of food,&nbsp;&nbsp;&nbsp;housing, and transportation SDOH goals</span></td>
    <td class="tg-0lax"></td>
  </tr>
  <tr>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext">Goals and Preferences</span></td>
    <td class="tg-0lax"><span style="font-weight:700;text-decoration:none;color:windowtext">Treatment Intervention Preference</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">Person's goals, preferences, and priorities for&nbsp;&nbsp;&nbsp;care and treatment in case that person is unable to make medical decisions&nbsp;&nbsp;&nbsp;because of a serious illness or injury.</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">US Core Treatment&nbsp;&nbsp;&nbsp;Intervention Preference Profile</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:underline;color:#467886">n/a</span></td>
    <td class="tg-0lax"><a href="https://build.fhir.org/ig/HL7/us-behavioral-health-profiles/Observation-no-morphine-preference-observation-example-1.html">no-morphine-preference-observation-example</a></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext">Example of a treatment&nbsp;&nbsp;&nbsp;intervention preference to avoid morphine based on past history of substance&nbsp;&nbsp;&nbsp;abuse.</span></td>
    <td class="tg-0lax"></td>
  </tr>
  <tr>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"><span style="font-weight:700;text-decoration:none;color:windowtext;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"> </td>
    <td class="tg-0lax"> </td>
    <td class="tg-0lax"> </td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"><span style="font-weight:700;text-decoration:none;color:windowtext;background-color:#CAEDFB"> </span></td>
  </tr>
  <tr>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext">Health Insurance Information</span></td>
    <td class="tg-0lax"><span style="font-weight:700;text-decoration:none;color:windowtext">Plan Category</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext;background-color:yellow"> </span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">US Core Coverage Profile</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">n/a</span></td>
    <td class="tg-0lax"><a href="https://build.fhir.org/ig/HL7/us-behavioral-health-profiles/Coverage-medicare-coverage-example-1.html">medicare-coverage-example</a></td>
    <td class="tg-0lax"> </td>
    <td class="tg-0lax"></td>
  </tr>
  <tr>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext">Health Insurance Information</span></td>
    <td class="tg-0lax"><span style="font-weight:700;text-decoration:none;color:windowtext">Plan Name</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext;background-color:yellow"> </span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">US Core Coverage Profile</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext">coverage.payor.name</span></td>
    <td class="tg-0lax"><a href="https://build.fhir.org/ig/HL7/us-behavioral-health-profiles/Coverage-medicare-coverage-example-1.html">medicare-coverage-example</a></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext">Example of health insurance coverage name</span></td>
    <td class="tg-0lax"></td>
  </tr>
  <tr>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext">Health Insurance Information</span></td>
    <td class="tg-0lax"><span style="font-weight:700;text-decoration:none;color:windowtext">Coverage Status</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">Presence or absence of health care insurance.</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">US Core Coverage Profile</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext">coverage.status</span></td>
    <td class="tg-0lax"><a href="https://build.fhir.org/ig/HL7/us-behavioral-health-profiles/Coverage-medicare-coverage-example-1.html">medicare-coverage-example</a></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext">Example of health&nbsp;&nbsp;&nbsp;insurance coverage status</span></td>
    <td class="tg-0lax"></td>
  </tr>
  <tr>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext">Health Insurance Information</span></td>
    <td class="tg-0lax"><span style="font-weight:700;text-decoration:none;color:windowtext">Coverage Type</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">Category of health care payers, insurance&nbsp;&nbsp;&nbsp;products, or benefits.</span><br><span style="font-weight:400;text-decoration:none;color:black">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Examples include but are not limited to Medicaid, commercial, HMO, Medicare&nbsp;&nbsp;&nbsp;Part D, and dental.</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">US Core Coverage Profile</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext">coverage.type</span></td>
    <td class="tg-0lax"><a href="https://build.fhir.org/ig/HL7/us-behavioral-health-profiles/Coverage-medicare-coverage-example-1.html">medicare-coverage-example</a></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext">Example of health&nbsp;&nbsp;&nbsp;insurance coverage type</span></td>
    <td class="tg-0lax"></td>
  </tr>
  <tr>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext">Health Insurance Information</span></td>
    <td class="tg-0lax"><span style="font-weight:700;text-decoration:none;color:windowtext">Group Identifier</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">Sequence of characters used to uniquely refer&nbsp;&nbsp;&nbsp;to a specific health insurance plan.</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">US Core Coverage Profile</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext">coverage.class:group</span></td>
    <td class="tg-0lax"><a href="https://build.fhir.org/ig/HL7/us-behavioral-health-profiles/Coverage-medicare-coverage-example-1.html">medicare-coverage-example</a></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext">Example of health&nbsp;&nbsp;&nbsp;insurance group identifier</span></td>
    <td class="tg-0lax"></td>
  </tr>
  <tr>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext">Health Insurance Information</span></td>
    <td class="tg-0lax"><span style="font-weight:700;text-decoration:none;color:windowtext">Member Identifier</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">Sequence of characters used to uniquely refer&nbsp;&nbsp;&nbsp;to an individual with respect to their insurance.</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">US Core Coverage Profile</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext">coverage.memberID</span></td>
    <td class="tg-0lax"><a href="https://build.fhir.org/ig/HL7/us-behavioral-health-profiles/Coverage-medicare-coverage-example-1.html">medicare-coverage-example</a></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext">Example of health&nbsp;&nbsp;&nbsp;insurance member identifier</span></td>
    <td class="tg-0lax"></td>
  </tr>
  <tr>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext">Health Insurance Information</span></td>
    <td class="tg-0lax"><span style="font-weight:700;text-decoration:none;color:windowtext">Payer Identifier</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">Sequence of characters used to uniquely&nbsp;&nbsp;&nbsp;refer to an insurance payer.</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">US Core Coverage Profile</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext">coverage.payor.identifier</span></td>
    <td class="tg-0lax"><a href="https://build.fhir.org/ig/HL7/us-behavioral-health-profiles/Coverage-medicare-coverage-example-1.html">medicare-coverage-example</a></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext">Example of health&nbsp;&nbsp;&nbsp;insurance payer identifier</span></td>
    <td class="tg-0lax"></td>
  </tr>
  <tr>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext">Health Insurance Information</span></td>
    <td class="tg-0lax"><span style="font-weight:700;text-decoration:none;color:windowtext">Relationship to Subscriber</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">Relationship of a patient to the primary&nbsp;&nbsp;&nbsp;insured person.</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">US Core Coverage Profile</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext">coverage.relationship</span></td>
    <td class="tg-0lax"><a href="https://build.fhir.org/ig/HL7/us-behavioral-health-profiles/Coverage-medicare-coverage-example-1.html">medicare-coverage-example</a></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext">Example of health&nbsp;&nbsp;&nbsp;insurance relationship to subscriber</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext"> </span></td>
  </tr>
  <tr>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext">Health Insurance Information</span></td>
    <td class="tg-0lax"><span style="font-weight:700;text-decoration:none;color:windowtext">Subscriber Identifier</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">Sequence of characters used to uniquely refer&nbsp;&nbsp;&nbsp;to the individual that selects insurance benefits.</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">US Core Coverage Profile</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext">coverage.subscriberID</span></td>
    <td class="tg-0lax"><a href="https://build.fhir.org/ig/HL7/us-behavioral-health-profiles/Coverage-medicare-coverage-example-1.html">medicare-coverage-example</a></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext">Example of health&nbsp;&nbsp;&nbsp;insurance subscriber ID</span></td>
    <td class="tg-0lax"></td>
  </tr>
  <tr>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"><span style="font-weight:700;text-decoration:none;color:windowtext;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"> </td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"><span style="font-weight:700;text-decoration:none;color:windowtext;background-color:#CAEDFB"> </span></td>
  </tr>
  <tr>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext">Health Status Assessments</span></td>
    <td class="tg-0lax"><span style="font-weight:700;text-decoration:none;color:windowtext">Depression Assessment</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext;background-color:yellow"> </span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">US Core QuestionnaireResponse</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">n/a</span></td>
    <td class="tg-0lax"><a href="https://build.fhir.org/ig/HL7/us-behavioral-health-profiles/QuestionnaireResponse-phq-9-example-1.html">phq-9-example</a></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext;background-color:white">Example of a depression assessment/screening - PHQ-9</span></td>
    <td class="tg-0lax"></td>
  </tr>
  <tr>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext">Health Status Assessments</span></td>
    <td class="tg-0lax"><span style="font-weight:700;text-decoration:none;color:windowtext">Mental/Cognitive Status</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">Assessment or screening for the presence of a&nbsp;&nbsp;&nbsp;mental or behavioral problem. Examples include but are not limited to&nbsp;&nbsp;&nbsp;alertness, orientation, comprehension, concentration, and immediate memory&nbsp;&nbsp;&nbsp;for simple commands.</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">US Core Observation Screening Assessment&nbsp;&nbsp;&nbsp;Profile</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">n/a</span></td>
    <td class="tg-0lax"><a href="https://build.fhir.org/ig/HL7/us-behavioral-health-profiles/Observation-cognitive-status-observation-example-3.html">cognitive-status-observation-example</a></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext;background-color:white">Example of a mental/cognitive health status&nbsp;&nbsp;&nbsp;assessment</span></td>
    <td class="tg-0lax"></td>
  </tr>
  <tr>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext">Health Status Assessments</span></td>
    <td class="tg-0lax"><span style="font-weight:700;text-decoration:none;color:windowtext">Anxiety Assesment</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext;background-color:yellow"> </span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">US Core Observation Screening Assessment&nbsp;&nbsp;&nbsp;Profile</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">n/a</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:underline;color:#467886">anxiety-assessment-observation-example-1</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext;background-color:white">Example of an anxiety assessment/screening</span></td>
    <td class="tg-0lax"></td>
  </tr>
  <tr>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext">Health Status Assessments</span></td>
    <td class="tg-0lax"><span style="font-weight:700;text-decoration:none;color:windowtext">Alcohol Use</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">Evaluation of a patient's consumption of&nbsp;&nbsp;&nbsp;alcohol. Examples include but are not limited to history of alcohol use,&nbsp;&nbsp;&nbsp;alcohol use disorder identification test and alcohol intake assessment.</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">US Core Observation Screening Assessment&nbsp;&nbsp;&nbsp;Profile</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">n/a</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black;background-color:yellow">are we missing an example of&nbsp;&nbsp;&nbsp;alcohol assessment? AUDIT-c</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext;background-color:white">Example of alchol abuse health status assessment</span></td>
    <td class="tg-0lax"></td>
  </tr>
  <tr>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext">Health Status Assessments</span></td>
    <td class="tg-0lax"><span style="font-weight:700;text-decoration:none;color:windowtext">Disability Status</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">Assessments of a patient’s physical, cognitive,&nbsp;&nbsp;&nbsp;intellectual, or psychiatric disabilities.</span><br><span style="font-weight:400;text-decoration:none;color:black">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Examples include but are not limited to- vision, hearing, memory, and&nbsp;&nbsp;&nbsp;activities of daily living.</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">US Core Observation Screening Assessment&nbsp;&nbsp;&nbsp;Profile</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">n/a</span></td>
    <td class="tg-0lax"><a href="https://build.fhir.org/ig/HL7/us-behavioral-health-profiles/Observation-disability-status-observation-example-1.html">disability-status-observation-example-1</a></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext;background-color:white">Example of disability status healh status assessment</span></td>
    <td class="tg-0lax"></td>
  </tr>
  <tr>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext">Health Status Assessments</span></td>
    <td class="tg-0lax"><span style="font-weight:700;text-decoration:none;color:windowtext">Food Insecurity</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">Uncertain, limited, or unstable access to food&nbsp;&nbsp;&nbsp;that is: adequate in quantity and in nutritional quality; culturally&nbsp;&nbsp;&nbsp;acceptable; safe and acquired in socially acceptable ways.</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">US Core Observation Screening Assessment&nbsp;&nbsp;&nbsp;Profile</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">n/a</span></td>
    <td class="tg-0lax"><a href="https://build.fhir.org/ig/HL7/us-behavioral-health-profiles/QuestionnaireResponse-BHP-QuestionnaireResponsePRAPAREExample-1.html">PRAPARE-QuestionnaireResponse-Example-1</a></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext;background-color:white">Example of SDOH food assessment/screening</span></td>
    <td class="tg-0lax"></td>
  </tr>
  <tr>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext">Health Status Assessments</span></td>
    <td class="tg-0lax"><span style="font-weight:700;text-decoration:none;color:windowtext">Functional Status</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">Assessment of a person’s ability to perform&nbsp;&nbsp;&nbsp;activities of daily living and activities across other situations and&nbsp;&nbsp;&nbsp;settings.</span><br><span style="font-weight:400;text-decoration:none;color:black">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Examples include but are not limited to bathing, ambulation, and preparing&nbsp;&nbsp;&nbsp;a light meal.</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">US Core Observation Screening Assessment&nbsp;&nbsp;&nbsp;Profile</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">n/a</span></td>
    <td class="tg-0lax"><a href="https://build.fhir.org/ig/HL7/us-behavioral-health-profiles/Observation-barthel-index-functional-status-example-1.html">barthel-index-functional-status-example</a></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext;background-color:white">Example of functional helath status&nbsp;&nbsp;&nbsp;assessment/screening</span></td>
    <td class="tg-0lax"></td>
  </tr>
  <tr>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext">Health Status Assessments</span></td>
    <td class="tg-0lax"><span style="font-weight:700;text-decoration:none;color:windowtext">Housing Instability</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">Currently consistently housed but experiencing&nbsp;&nbsp;&nbsp;any of the following circumstances in the last 12 months: behind on rent or&nbsp;&nbsp;&nbsp;mortgage, 3 or more relocations, housing cost burden, homelessness, or risk&nbsp;&nbsp;&nbsp;of eviction.</span><br><span style="font-weight:400;text-decoration:none;color:black">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">US Core Observation Screening Assessment&nbsp;&nbsp;&nbsp;Profile</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">n/a</span></td>
    <td class="tg-0lax"><a href="https://build.fhir.org/ig/HL7/us-behavioral-health-profiles/QuestionnaireResponse-BHP-QuestionnaireResponsePRAPAREExample-1.html">PRAPARE-QuestionnaireResponse-Example-1</a></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext;background-color:white">Example of SDOH housing assessment/screening</span></td>
    <td class="tg-0lax"></td>
  </tr>
  <tr>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext">Health Status Assessments</span></td>
    <td class="tg-0lax"><span style="font-weight:700;text-decoration:none;color:windowtext">Pregnancy Status</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">State or condition of being pregnant or intent&nbsp;&nbsp;&nbsp;to become pregnant.</span><br><span style="font-weight:400;text-decoration:none;color:black">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Examples include but are not limited to pregnant, not pregnant, and&nbsp;&nbsp;&nbsp;unknown.</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">US Core Pregnancy Status Profile</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">observation.value</span></td>
    <td class="tg-0lax"><a href="https://build.fhir.org/ig/HL7/us-behavioral-health-profiles/Observation-pregnancy-status-example-1.html">pregnancy-status-example</a></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext;background-color:white">Example of pregnancy status health status assessment</span></td>
    <td class="tg-0lax"></td>
  </tr>
  <tr>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext">Health Status Assessments</span></td>
    <td class="tg-0lax"><span style="font-weight:700;text-decoration:none;color:windowtext">SDOH Assessment</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">Screening questionnaire-based, structured&nbsp;&nbsp;&nbsp;evaluation for a Social Determinants of Health- related risk.</span><br><span style="font-weight:400;text-decoration:none;color:black">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Examples include but are not limited to food, housing, and transportation&nbsp;&nbsp;&nbsp;security.</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">US Core Observation Screening Assessment&nbsp;&nbsp;&nbsp;Profile</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">n/a</span></td>
    <td class="tg-0lax"><a href="https://build.fhir.org/ig/HL7/us-behavioral-health-profiles/QuestionnaireResponse-BHP-QuestionnaireResponsePRAPAREExample-1.html">PRAPARE-QuestionnaireResponse-Example-1</a></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext;background-color:white">Example of SDOH health status assessment</span></td>
    <td class="tg-0lax"></td>
  </tr>
  <tr>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext">Health Status Assessments</span></td>
    <td class="tg-0lax"><span style="font-weight:700;text-decoration:none;color:windowtext">Smoking Status</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">Assessment of a patient’s smoking behaviors.&nbsp;&nbsp;&nbsp;Examples include but are not limited to pack- years and current use.</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">US Core Smoking Status Observation Profile</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">observation.value</span></td>
    <td class="tg-0lax"><a href="https://build.fhir.org/ig/HL7/us-behavioral-health-profiles/Observation-non-smoker-example-1.html">non-smoker-example</a></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext;background-color:white">Example of smoking health status assessment</span> </td>
    <td class="tg-0lax"></td>
  </tr>
  <tr>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext">Health Status Assessments</span></td>
    <td class="tg-0lax"><span style="font-weight:700;text-decoration:none;color:windowtext">Substance Use</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">Evaluation of a patient's reported use of drugs&nbsp;&nbsp;&nbsp;or other substances for non-medical purposes or in excess of a valid&nbsp;&nbsp;&nbsp;prescription. Examples include but are not limited to substance use disorder&nbsp;&nbsp;&nbsp;score, and substance use knowledge assessment.</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">US Core Condition Problems and Health&nbsp;&nbsp;&nbsp;Concerns Profile</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">n/a</span></td>
    <td class="tg-0lax"><a href="https://build.fhir.org/ig/HL7/us-behavioral-health-profiles/Condition-substance-abuse-condition-example-1.html">substance-abuse-condition-example</a></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext;background-color:white">Example of substance use health status assessment</span></td>
    <td class="tg-0lax"></td>
  </tr>
  <tr>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext">Health Status Assessments</span></td>
    <td class="tg-0lax"><span style="font-weight:700;text-decoration:none;color:windowtext">Transportation Insecurity</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">A condition in which one is regularly&nbsp;&nbsp;&nbsp;unable to move from place to place in a safe and timely manner because one&nbsp;&nbsp;&nbsp;lacks the material, economic or social resources necessary for&nbsp;&nbsp;&nbsp;transportation.</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">US Core Observation Screening Assessment&nbsp;&nbsp;&nbsp;Profile</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">n/a</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:underline;color:#467886">PRAPARE-QuestionnaireResponse-Example-1</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext;background-color:white">Example of SDOH transportation assessment/screening</span></td>
    <td class="tg-0lax"></td>
  </tr>
  <tr>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext">Health Status Assessments</span></td>
    <td class="tg-0lax"><span style="font-weight:700;text-decoration:none;color:windowtext">Suicide Risk Assessment</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">An evaluation to identify individuals that&nbsp;&nbsp;&nbsp;require further suicide safety assessment.</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">US Core Observation Screening Assessment&nbsp;&nbsp;&nbsp;Profile</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">n/a</span></td>
    <td class="tg-0lax"><a href="https://build.fhir.org/ig/HL7/us-behavioral-health-profiles/QuestionnaireResponse-C-SSRS-example-1.html">c-sses-9-example</a></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext;background-color:white">Example of Suicide Risk assessment/screening</span></td>
    <td class="tg-0lax"></td>
  </tr>
  <tr>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext">Health Status Assessments</span></td>
    <td class="tg-0lax"><span style="font-weight:700;text-decoration:none;color:windowtext">Interpersonal Violence</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">Violence between individuals, subdivided into&nbsp;&nbsp;&nbsp;family and intimate partner violence and community violence.</span> </td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">US Core Observation Screening Assessment&nbsp;&nbsp;&nbsp;Profile</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">n/a</span></td>
    <td class="tg-0lax"><a href="https://build.fhir.org/ig/HL7/us-behavioral-health-profiles/QuestionnaireResponse-hark-example-1.html">hark-example</a></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext;background-color:white">Example of Interpersonal Violence&nbsp;&nbsp;&nbsp;assessment/screening</span></td>
    <td class="tg-0lax"></td>
  </tr>
  <tr>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext">Health Status Assessments</span></td>
    <td class="tg-0lax"><span style="font-weight:700;text-decoration:none;color:windowtext">Mental Health Status Screen</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">An evaluation of an individual's mental&nbsp;&nbsp;&nbsp;well-being to identify signs of potential mental health disorders that&nbsp;&nbsp;&nbsp;indicate a need for a more comprehensive assessment.</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">US Core Observation Screening Assessment&nbsp;&nbsp;&nbsp;Profile</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">n/a</span></td>
    <td class="tg-0lax"><a href="https://build.fhir.org/ig/HL7/us-behavioral-health-profiles/Observation-cognitive-status-observation-example-3.html">cognitive-status-observation-example</a></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext;background-color:white">Example of a behavioral health focused mental health&nbsp;&nbsp;&nbsp;status screening</span></td>
    <td class="tg-0lax"></td>
  </tr>
  <tr>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext">Health Status Assessments</span></td>
    <td class="tg-0lax"><span style="font-weight:700;text-decoration:none;color:windowtext">Mental Trauma and PTSD Assessment</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">Evaluation of the presence of trauma history&nbsp;&nbsp;&nbsp;and the severity of PTSD symptoms.</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">US Core Observation Screening Assessment&nbsp;&nbsp;&nbsp;Profile</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">n/a</span></td>
    <td class="tg-0lax"><a href="https://build.fhir.org/ig/HL7/us-behavioral-health-profiles/QuestionnaireResponse-ace-example-1.html">ace-example</a></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext;background-color:white">Example of a mental trauma or PTSD&nbsp;&nbsp;&nbsp;assessment/screening</span></td>
    <td class="tg-0lax"></td>
  </tr>
  <tr>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"><span style="font-weight:700;text-decoration:none;color:windowtext;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"> </td>
    <td class="tg-0lax"> </td>
    <td class="tg-0lax"> </td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"><span style="font-weight:700;text-decoration:none;color:windowtext;background-color:#CAEDFB"> </span></td>
  </tr>
  <tr>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext">Immunizations</span></td>
    <td class="tg-0lax"><span style="font-weight:700;text-decoration:none;color:windowtext">Immunizations</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">Vaccine product administered, planned, or&nbsp;&nbsp;&nbsp;reported.</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">US Core Immunization Profile</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">immunization.vaccineCode</span></td>
    <td class="tg-0lax"><a href="https://build.fhir.org/ig/HL7/us-behavioral-health-profiles/Immunization-flu-vaccine-example-1.html">flu-vaccine-example - US Behavioral Health Profiles&nbsp;&nbsp;&nbsp;Implementation Guide v0.1.0 (fhir.org)</a></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext">Example of immunization&nbsp;&nbsp;&nbsp;- flu</span></td>
    <td class="tg-0lax"></td>
  </tr>
  <tr>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"><span style="font-weight:700;text-decoration:none;color:windowtext;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"> </td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"><span style="font-weight:700;text-decoration:none;color:windowtext;background-color:#CAEDFB"> </span></td>
  </tr>
  <tr>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext">Laboratory</span></td>
    <td class="tg-0lax"><span style="font-weight:700;text-decoration:none;color:windowtext">Tests</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">Analysis of specimens derived from humans which&nbsp;&nbsp;&nbsp;provide information for the diagnosis, prevention, treatment of disease, or&nbsp;&nbsp;&nbsp;assessment of health.</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">US Core Observation Clinical Result&nbsp;&nbsp;&nbsp;Profile</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">observation.code</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black;background-color:yellow">missing lab result example</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext">Example of laboratory&nbsp;&nbsp;&nbsp;test</span></td>
    <td class="tg-0lax"></td>
  </tr>
  <tr>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext">Laboratory</span></td>
    <td class="tg-0lax"><span style="font-weight:700;text-decoration:none;color:windowtext">Values/Results</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">Documented findings of a tested specimen&nbsp;&nbsp;&nbsp;including structured and unstructured components.</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">US Core Laboratory Result Observation&nbsp;&nbsp;&nbsp;Profile</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">observation.value</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black;background-color:yellow">missing lab result example</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext">Example of laboratory&nbsp;&nbsp;&nbsp;test result</span></td>
    <td class="tg-0lax"></td>
  </tr>
  <tr>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"><span style="font-weight:700;text-decoration:none;color:windowtext;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"> </td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"><span style="font-weight:700;text-decoration:none;color:windowtext;background-color:#CAEDFB"> </span></td>
  </tr>
  <tr>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext">Medications</span></td>
    <td class="tg-0lax"><span style="font-weight:700;text-decoration:none;color:windowtext">Discharge Medications</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">Indication that a medication should be taken by&nbsp;&nbsp;&nbsp;or given to the patient after being discharged from an encounter.</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">US Core Medication Request Profile</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black"> </span></td>
    <td class="tg-0lax"><a href="https://build.fhir.org/ig/HL7/us-behavioral-health-profiles/MedicationRequest-paroxetine-discharge-med-example-1.html">paroxetine-discharge-med-example - US Behavioral&nbsp;&nbsp;&nbsp;Health Profiles Implementation Guide v0.1.0 (fhir.org)</a></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext"> </span></td>
    <td class="tg-0lax"></td>
  </tr>
  <tr>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext">Medications</span></td>
    <td class="tg-0lax"><span style="font-weight:700;text-decoration:none;color:windowtext">Dose</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">Amount of a medication for each administration.</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">US Core Medication Request Profile</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black"> </span></td>
    <td class="tg-0lax"><a href="https://build.fhir.org/ig/HL7/us-behavioral-health-profiles/MedicationRequest-paroxetine-discharge-med-example-1.html">paroxetine-discharge-med-example - US Behavioral&nbsp;&nbsp;&nbsp;Health Profiles Implementation Guide v0.1.0 (fhir.org)</a></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext"> </span></td>
    <td class="tg-0lax"></td>
  </tr>
  <tr>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext">Medications</span></td>
    <td class="tg-0lax"><span style="font-weight:700;text-decoration:none;color:windowtext">Dose Unit of Measure</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">Units of measure of a medication.</span><br><span style="font-weight:400;text-decoration:none;color:black">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Examples include but are not limited to milligram (mg) and milliliter (mL).</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">US Core Medication Request Profile</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black"> </span></td>
    <td class="tg-0lax"><a href="https://build.fhir.org/ig/HL7/us-behavioral-health-profiles/MedicationRequest-paroxetine-discharge-med-example-1.html">paroxetine-discharge-med-example - US Behavioral&nbsp;&nbsp;&nbsp;Health Profiles Implementation Guide v0.1.0 (fhir.org)</a></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext"> </span></td>
    <td class="tg-0lax"></td>
  </tr>
  <tr>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext">Medications</span></td>
    <td class="tg-0lax"><span style="font-weight:700;text-decoration:none;color:windowtext">Medications</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">Pharmacologic agent used in the diagnosis,&nbsp;&nbsp;&nbsp;cure, mitigation, treatment, or prevention of disease.</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">US Core Medication Request Profile</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black"> </span></td>
    <td class="tg-0lax"><a href="https://build.fhir.org/ig/HL7/us-behavioral-health-profiles/MedicationRequest-paroxetine-discharge-med-example-1.html">paroxetine-discharge-med-example - US Behavioral&nbsp;&nbsp;&nbsp;Health Profiles Implementation Guide v0.1.0 (fhir.org)</a></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext"> </span></td>
    <td class="tg-0lax"></td>
  </tr>
  <tr>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext">Medications</span></td>
    <td class="tg-0lax"><span style="font-weight:700;text-decoration:none;color:windowtext">Medication Adherence</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">Statement of whether a medication has been&nbsp;&nbsp;&nbsp;consumed according to instructions.</span><br><span style="font-weight:400;text-decoration:none;color:black">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Examples include but are not limited to taking as directed, taking less&nbsp;&nbsp;&nbsp;than directed, and not taking.</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">US Core Medication Request Profile</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black"> </span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black;background-color:yellow">need to add to a medication example</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext"> </span></td>
    <td class="tg-0lax"></td>
  </tr>
  <tr>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext">Medications</span></td>
    <td class="tg-0lax"><span style="font-weight:700;text-decoration:none;color:windowtext">Medication Instructions</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">Directions for administering or taking a&nbsp;&nbsp;&nbsp;medication.</span><br><span style="font-weight:400;text-decoration:none;color:black">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Examples include but are not limited to prescription directions for taking&nbsp;&nbsp;&nbsp;a medication, and package instructions for over-the-counter&nbsp;&nbsp;&nbsp;medications.</span><br><span style="font-weight:400;text-decoration:none;color:black">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Usage notes: May include route, quantity, timing/frequency, and special&nbsp;&nbsp;&nbsp;instructions (PRN, sliding scale, taper).</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">US Core Medication Request Profile</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black"> </span></td>
    <td class="tg-0lax"><a href="https://build.fhir.org/ig/HL7/us-behavioral-health-profiles/MedicationDispense-bupropion-dispense-example-1.html">https://build.fhir.org/ig/HL7/us-behavioral-health-profiles/MedicationDispense-bupropion-dispense-example-1.html</a></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext"> </span></td>
    <td class="tg-0lax"></td>
  </tr>
  <tr>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext">Medications</span></td>
    <td class="tg-0lax"><span style="font-weight:700;text-decoration:none;color:windowtext">Medication Quantity</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">The amount of medication, including the&nbsp;&nbsp;&nbsp;unit of measure, that is prescribed or dispensed.</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">US Core Medication Request Profile</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black"> </span></td>
    <td class="tg-0lax"><a href="https://build.fhir.org/ig/HL7/us-behavioral-health-profiles/MedicationDispense-bupropion-dispense-example-1.html">https://build.fhir.org/ig/HL7/us-behavioral-health-profiles/MedicationDispense-bupropion-dispense-example-1.html</a></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext"> </span></td>
    <td class="tg-0lax"></td>
  </tr>
  <tr>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext">Medications</span></td>
    <td class="tg-0lax"><span style="font-weight:700;text-decoration:none;color:windowtext">Medications Dispensed</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">Description/ list of medications supplied&nbsp;&nbsp;&nbsp;to a patient with the intention that it is subsequently consumed by the&nbsp;&nbsp;&nbsp;patient.</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">US Core Medication Dispense Profile</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black"> </span></td>
    <td class="tg-0lax"><a href="https://build.fhir.org/ig/HL7/us-behavioral-health-profiles/MedicationDispense-bupropion-dispense-example-1.html">https://build.fhir.org/ig/HL7/us-behavioral-health-profiles/MedicationDispense-bupropion-dispense-example-1.html</a></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext"> </span></td>
    <td class="tg-0lax"></td>
  </tr>
  <tr>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"><span style="font-weight:700;text-decoration:none;color:windowtext;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"> </td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"><span style="font-weight:700;text-decoration:none;color:windowtext;background-color:#CAEDFB"> </span></td>
  </tr>
  <tr>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext">Patient Demographics</span></td>
    <td class="tg-0lax"><span style="font-weight:700;text-decoration:none;color:windowtext">Name to Use</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext">Name that should be used when addressing&nbsp;&nbsp;&nbsp;or referencing a person.</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">US Core Patient</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">patient.name.use</span></td>
    <td class="tg-0lax"><a href="https://build.fhir.org/ig/HL7/us-behavioral-health-profiles/Patient-bh-patient-example.html">James Wolff - Patient</a></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext">Example of patient with&nbsp;&nbsp;&nbsp;a preferred name of James</span></td>
    <td class="tg-0lax"></td>
  </tr>
  <tr>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext">Patient Demographics</span></td>
    <td class="tg-0lax"><span style="font-weight:700;text-decoration:none;color:windowtext">Current Address</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">Place where a person is located or may be&nbsp;&nbsp;&nbsp;contacted. Includes street name, number, city/town, state, and zip code.</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">US Core Patient</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">patient.address</span></td>
    <td class="tg-0lax"><a href="https://build.fhir.org/ig/HL7/us-behavioral-health-profiles/Patient-bh-patient-example.html">James Wolff - Patient</a></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext">Example of patient&nbsp;&nbsp;&nbsp;address</span></td>
    <td class="tg-0lax"></td>
  </tr>
  <tr>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext">Patient Demographics</span></td>
    <td class="tg-0lax"><span style="font-weight:700;text-decoration:none;color:windowtext">Date of Birth</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">Known or estimated year, month, and day of the&nbsp;&nbsp;&nbsp;patient's birth.</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">US Core Patient</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">patient.birthDate</span></td>
    <td class="tg-0lax"><a href="https://build.fhir.org/ig/HL7/us-behavioral-health-profiles/Patient-bh-patient-example.html">James Wolff - Patient</a></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext">Example of date of&nbsp;&nbsp;&nbsp;birth</span></td>
    <td class="tg-0lax"></td>
  </tr>
  <tr>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext">Patient Demographics</span></td>
    <td class="tg-0lax"><span style="font-weight:700;text-decoration:none;color:windowtext">Email Address</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">Unique identifier of an individual's email&nbsp;&nbsp;&nbsp;account that is used to send and receive email messages.</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">US Core Patient</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black"> </span></td>
    <td class="tg-0lax"><a href="https://build.fhir.org/ig/HL7/us-behavioral-health-profiles/Patient-bh-patient-example.html">James Wolff - Patient</a></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext">Example of address</span></td>
    <td class="tg-0lax"></td>
  </tr>
  <tr>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext">Patient Demographics</span></td>
    <td class="tg-0lax"><span style="font-weight:700;text-decoration:none;color:windowtext">Ethnicity</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">Patient's self-identification as Hispanic/&nbsp;&nbsp;&nbsp;Latino or Non- Hispanic/ Non-Latino.</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">US Core Patient</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">patient.ethnicity</span></td>
    <td class="tg-0lax"><a href="https://build.fhir.org/ig/HL7/us-behavioral-health-profiles/Patient-bh-patient-example.html">James Wolff - Patient</a></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext">Example of ethnicity</span></td>
    <td class="tg-0lax"></td>
  </tr>
  <tr>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext">Patient Demographics</span></td>
    <td class="tg-0lax"><span style="font-weight:700;text-decoration:none;color:windowtext">First Name</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">A personal name used before a family name.</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">US Core Patient</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">patient.name.given</span></td>
    <td class="tg-0lax"><a href="https://build.fhir.org/ig/HL7/us-behavioral-health-profiles/Patient-bh-patient-example.html">James Wolff - Patient</a></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext">Example of first name,&nbsp;&nbsp;&nbsp;born Jennifer</span></td>
    <td class="tg-0lax"></td>
  </tr>
  <tr>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext">Patient Demographics</span></td>
    <td class="tg-0lax"><span style="font-weight:700;text-decoration:none;color:windowtext">Gender Identity</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">A person’s internal sense of being a man,&nbsp;&nbsp;&nbsp;woman, both, or neither.</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">US Core Patient</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">patient.genderIdentity</span></td>
    <td class="tg-0lax"><a href="https://build.fhir.org/ig/HL7/us-behavioral-health-profiles/Patient-bh-patient-example.html">James Wolff - Patient</a></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext">Example of gender&nbsp;&nbsp;&nbsp;identify of ...</span></td>
    <td class="tg-0lax"></td>
  </tr>
  <tr>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext">Patient Demographics</span></td>
    <td class="tg-0lax"><span style="font-weight:700;text-decoration:none;color:windowtext">Last Name</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">Portion of one's personal name indicating&nbsp;&nbsp;&nbsp;familial or communal ties.</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">US Core Patient</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">patient.name.family</span></td>
    <td class="tg-0lax"><a href="https://build.fhir.org/ig/HL7/us-behavioral-health-profiles/Patient-bh-patient-example.html">James Wolff - Patient</a></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext">Example of last name</span></td>
    <td class="tg-0lax"></td>
  </tr>
  <tr>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext">Patient Demographics</span></td>
    <td class="tg-0lax"><span style="font-weight:700;text-decoration:none;color:windowtext">Name Suffix</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">Name component following family name that may&nbsp;&nbsp;&nbsp;be used to describe a person's position in a family.</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">US Core Patient</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">patient.name.suffix</span></td>
    <td class="tg-0lax"><a href="https://build.fhir.org/ig/HL7/us-behavioral-health-profiles/Patient-bh-patient-example.html">James Wolff - Patient</a></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext">Example of name suffix</span></td>
    <td class="tg-0lax"></td>
  </tr>
  <tr>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext">Patient Demographics</span></td>
    <td class="tg-0lax"><span style="font-weight:700;text-decoration:none;color:windowtext">Phone Number</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">Numbers and symbols to contact an individual&nbsp;&nbsp;&nbsp;when using a phone.</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">US Core Patient</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">patient.telecom</span></td>
    <td class="tg-0lax"><a href="https://build.fhir.org/ig/HL7/us-behavioral-health-profiles/Patient-bh-patient-example.html">James Wolff - Patient</a></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext;background-color:white">Example of prhone number</span></td>
    <td class="tg-0lax"></td>
  </tr>
  <tr>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext">Patient Demographics</span></td>
    <td class="tg-0lax"><span style="font-weight:700;text-decoration:none;color:windowtext">Preferred Language</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">Documented language that the patient would like&nbsp;&nbsp;&nbsp;to use when discussing health care.</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">US Core Patient</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">patient.communication.language</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:underline;color:#467886">James&nbsp;&nbsp;&nbsp;Wolff - Patient</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext;background-color:yellow">Example of preferred language - English</span></td>
    <td class="tg-0lax"></td>
  </tr>
  <tr>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext">Patient Demographics</span></td>
    <td class="tg-0lax"><span style="font-weight:700;text-decoration:none;color:windowtext">Race</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">An individual’s response to the race question&nbsp;&nbsp;&nbsp;based upon self-identification.</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">US Core Patient</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">patient.race</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:underline;color:#467886">James&nbsp;&nbsp;&nbsp;Wolff - Patient</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext">Example of race</span></td>
    <td class="tg-0lax"></td>
  </tr>
  <tr>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext">Patient Demographics</span></td>
    <td class="tg-0lax"><span style="font-weight:700;text-decoration:none;color:windowtext">Related Person's Name</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">Name of a person with a legal or familial&nbsp;&nbsp;&nbsp;relationship to a patient.</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">US Core RelatedPerson Profile</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">relatedPerson.name</span></td>
    <td class="tg-0lax"><a href="https://build.fhir.org/ig/HL7/us-behavioral-health-profiles/RelatedPerson-adult-child-relatedperson-example-1.html">adult-child-relatedperson-example</a></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext">Example of related&nbsp;&nbsp;&nbsp;person's name</span></td>
    <td class="tg-0lax"></td>
  </tr>
  <tr>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext">Patient Demographics</span></td>
    <td class="tg-0lax"><span style="font-weight:700;text-decoration:none;color:windowtext">Relationship Type</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">Relationship of a person to a patient.</span><br><span style="font-weight:400;text-decoration:none;color:black">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Examples include but are not limited to parent, next-of-kin, guardian, and&nbsp;&nbsp;&nbsp;custodian.</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">US Core RelatedPerson Profile</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">relatedPerson.relationship</span></td>
    <td class="tg-0lax"><a href="https://build.fhir.org/ig/HL7/us-behavioral-health-profiles/RelatedPerson-adult-child-relatedperson-example-1.html">adult-child-relatedperson-example</a></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext">Example of related&nbsp;&nbsp;&nbsp;person's relationship of adult child</span></td>
    <td class="tg-0lax"></td>
  </tr>
  <tr>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext">Patient Demographics</span></td>
    <td class="tg-0lax"><span style="font-weight:700;text-decoration:none;color:windowtext">Sex</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">Documentation of a specific instance of sex&nbsp;&nbsp;&nbsp;and/or gender information.</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">US Core Patient</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">patient.sex</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:underline;color:#467886">James&nbsp;&nbsp;&nbsp;Wolff - Patient</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext">Example of sex</span> </td>
    <td class="tg-0lax"></td>
  </tr>
  <tr>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext">Patient Demographics</span></td>
    <td class="tg-0lax"><span style="font-weight:700;text-decoration:none;color:windowtext">Sexual Orientation</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">A person’s identification of their emotional,&nbsp;&nbsp;&nbsp;romantic, sexual, or affectional attraction to another person.</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">US Core Observation Sexual Orientation&nbsp;&nbsp;&nbsp;Profile</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">observation.value</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:underline;color:#467886">sexual-orientation-example-1</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext">Example of sexual&nbsp;&nbsp;&nbsp;orienation - bisexual</span></td>
    <td class="tg-0lax"></td>
  </tr>
  <tr>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext">Patient Demographics</span></td>
    <td class="tg-0lax"><span style="font-weight:700;text-decoration:none;color:windowtext">Tribal Affiliation</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">Tribe or band with which an individual&nbsp;&nbsp;&nbsp;associates.</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">US Core Patient</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">patient.tribalAffiliation</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:underline;color:#467886">James&nbsp;&nbsp;&nbsp;Wolff - Patient</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext">Example of tribal&nbsp;&nbsp;&nbsp;affiliation</span></td>
    <td class="tg-0lax"></td>
  </tr>
  <tr>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext">Patient Demographics</span></td>
    <td class="tg-0lax"><span style="font-weight:700;text-decoration:none;color:windowtext">Date of Death</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">Known or estimated year, month, and day of the&nbsp;&nbsp;&nbsp;patient's death.</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">US Core Patient</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">patient.deceased</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:underline;color:#467886">James&nbsp;&nbsp;&nbsp;Wolff - Patient</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext">Example of not dead</span></td>
    <td class="tg-0lax"></td>
  </tr>
  <tr>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext">Patient Demographics</span></td>
    <td class="tg-0lax"><span style="font-weight:700;text-decoration:none;color:windowtext">Identifier</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">An identifier for the patient.</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">US Core Patient</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">patient.identifier</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:underline;color:#467886">James Wolff - Patient</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext">Example of patient&nbsp;&nbsp;&nbsp;identifier</span></td>
    <td class="tg-0lax"></td>
  </tr>
  <tr>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext">Patient Demographics</span>  </td>
    <td class="tg-0lax"><span style="font-weight:700;text-decoration:none;color:windowtext">Pronoun</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">Words that can replace&nbsp;&nbsp;&nbsp;a person’s name when addressing or referring to a person</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">US Core Patient</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black;background-color:yellow">patient.name.use</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:underline;color:#467886">James Wolff - Patient</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext">Example of preferred&nbsp;&nbsp;&nbsp;pronouns</span></td>
    <td class="tg-0lax"></td>
  </tr>
  <tr>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"><span style="font-weight:700;text-decoration:none;color:windowtext;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"> </td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"><span style="font-weight:700;text-decoration:none;color:windowtext;background-color:#CAEDFB"> </span></td>
  </tr>
  <tr>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext">Patient Summary and Plan</span></td>
    <td class="tg-0lax"><span style="font-weight:700;text-decoration:none;color:windowtext">Assessment and Plan of Treatment</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">Health professional’s conclusions and&nbsp;&nbsp;&nbsp;working assumptions that will guide treatment of the patient.</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">US Core Document Reference</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">n/a</span></td>
    <td class="tg-0lax"><a href="https://build.fhir.org/ig/HL7/us-behavioral-health-profiles/DocumentReference-mental-health-progress-example-1.html">mental-health-progress-example</a></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext">Example of assessment&nbsp;&nbsp;&nbsp;and plan of treatment recorded within a note.</span></td>
    <td class="tg-0lax"></td>
  </tr>
  <tr>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"><span style="font-weight:700;text-decoration:none;color:windowtext;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"> </td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"><span style="font-weight:700;text-decoration:none;color:windowtext;background-color:#CAEDFB"> </span></td>
  </tr>
  <tr>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext">Problems</span></td>
    <td class="tg-0lax"><span style="font-weight:700;text-decoration:none;color:windowtext">Problems/Conditions</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">Condition, diagnosis, or reason for seeking&nbsp;&nbsp;&nbsp;medical attention.</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">US Core Condition Problems and Health&nbsp;&nbsp;&nbsp;Concerns Profile</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">condition.code</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:underline;color:#467886">panic-attack-condition-example</span><br><span style="font-weight:400;text-decoration:underline;color:#467886">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;chest-pain-condition-example</span><br><span style="font-weight:400;text-decoration:underline;color:#467886">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;grief-condition-example</span><br><span style="font-weight:400;text-decoration:underline;color:#467886">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;substance-abuse-condition-example</span><br><span style="font-weight:400;text-decoration:underline;color:#467886">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;diabetes-condition-example</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext">Examples of diagnosis</span></td>
    <td class="tg-0lax"></td>
  </tr>
  <tr>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext">Problems</span></td>
    <td class="tg-0lax"><span style="font-weight:700;text-decoration:none;color:windowtext">SDOH Problems/Health Concerns</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">Social Determinants of Health-related health&nbsp;&nbsp;&nbsp;concerns, conditions, or diagnoses.</span><br><span style="font-weight:400;text-decoration:none;color:black">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Examples include but are not limited to homelessness and food insecurity.</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">US Core Condition Problems and Health&nbsp;&nbsp;&nbsp;Concerns Profile</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">condition.code</span></td>
    <td class="tg-0lax"><a href="https://build.fhir.org/ig/HL7/us-behavioral-health-profiles/Condition-substance-abuse-condition-example-1.html">substance-abuse-condition-example</a></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext">Example of an SDOH&nbsp;&nbsp;&nbsp;health concern</span>  <span style="font-weight:400;text-decoration:none;color:windowtext">-</span>  <span style="font-weight:400;text-decoration:none;color:windowtext">history of substance abuse</span></td>
    <td class="tg-0lax"></td>
  </tr>
  <tr>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext">Problems</span></td>
    <td class="tg-0lax"><span style="font-weight:700;text-decoration:none;color:windowtext">Date of Diagnosis</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">Date of first determination by a qualified&nbsp;&nbsp;&nbsp;professional of the presence of a problem or condition affecting a patient.</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">US Core Condition Problems and Health&nbsp;&nbsp;&nbsp;Concerns Profile</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">condition.onset</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:underline;color:#467886">panic-attack-condition-example</span><br><span style="font-weight:400;text-decoration:underline;color:#467886">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;chest-pain-condition-example</span><br><span style="font-weight:400;text-decoration:underline;color:#467886">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;grief-condition-example</span><br><span style="font-weight:400;text-decoration:underline;color:#467886">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;substance-abuse-condition-example</span><br><span style="font-weight:400;text-decoration:underline;color:#467886">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;diabetes-condition-example</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext">Example of diagnosis</span></td>
    <td class="tg-0lax"></td>
  </tr>
  <tr>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext">Problems</span></td>
    <td class="tg-0lax"><span style="font-weight:700;text-decoration:none;color:windowtext">Date of Onset</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">Date when a problem/ condition started.</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">US Core Condition Problems and Health&nbsp;&nbsp;&nbsp;Concerns Profile</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">condition.onset</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:underline;color:#467886">panic-attack-condition-example</span><br><span style="font-weight:400;text-decoration:underline;color:#467886">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;chest-pain-condition-example</span><br><span style="font-weight:400;text-decoration:underline;color:#467886">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;grief-condition-example</span><br><span style="font-weight:400;text-decoration:underline;color:#467886">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;substance-abuse-condition-example</span><br><span style="font-weight:400;text-decoration:underline;color:#467886">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;diabetes-condition-example</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext">Example of diagnosis&nbsp;&nbsp;&nbsp;onset</span></td>
    <td class="tg-0lax"></td>
  </tr>
  <tr>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext">Problems</span></td>
    <td class="tg-0lax"><span style="font-weight:700;text-decoration:none;color:windowtext">Date of Resolution</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">Date of subsiding or termination of a symptom,&nbsp;&nbsp;&nbsp;problem or condition.</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">US Core Condition Problems and Health&nbsp;&nbsp;&nbsp;Concerns Profile</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">condition.abatement</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:underline;color:#467886">panic-attack-condition-example</span><br><span style="font-weight:400;text-decoration:underline;color:#467886">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;chest-pain-condition-example</span><br><span style="font-weight:400;text-decoration:underline;color:#467886">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;grief-condition-example</span><br><span style="font-weight:400;text-decoration:underline;color:#467886">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;substance-abuse-condition-example</span><br><span style="font-weight:400;text-decoration:underline;color:#467886">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;diabetes-condition-example</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext">Example of diagnosis&nbsp;&nbsp;&nbsp;resolution - resolve chest pain</span> </td>
    <td class="tg-0lax"></td>
  </tr>
  <tr>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"><span style="font-weight:700;text-decoration:none;color:windowtext;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"> </td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"><span style="font-weight:700;text-decoration:none;color:windowtext;background-color:#CAEDFB"> </span></td>
  </tr>
  <tr>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext">Procedures</span></td>
    <td class="tg-0lax"><span style="font-weight:700;text-decoration:none;color:windowtext">Harm Reduction Activities</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext;background-color:yellow"> </span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">US Core Procedures</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">procedure.code</span></td>
    <td class="tg-0lax"><a href="https://build.fhir.org/ig/HL7/us-behavioral-health-profiles/Procedure-harm-reduction-example-1.html">harm-reduction-activities-example</a></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext">Example of harm&nbsp;&nbsp;&nbsp;reduction activities</span></td>
    <td class="tg-0lax"></td>
  </tr>
  <tr>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext">Procedures</span></td>
    <td class="tg-0lax"><span style="font-weight:700;text-decoration:none;color:windowtext">Performance Time</span></td>
    <td class="tg-0lax"> <span style="font-weight:400;text-decoration:none;color:black">Time&nbsp;&nbsp;&nbsp;and/or date a procedure is performed</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">US Core Procedures</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">procedure.performed</span></td>
    <td class="tg-0lax"><a href="https://build.fhir.org/ig/HL7/us-behavioral-health-profiles/Procedure-alcohol-prevetion-education-example-1.html">alcohol-prevetion-education-example</a></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext">Example of a documented&nbsp;&nbsp;&nbsp;time when alcohol prevention information was provided</span></td>
    <td class="tg-0lax"></td>
  </tr>
  <tr>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext">Procedures</span></td>
    <td class="tg-0lax"><span style="font-weight:700;text-decoration:none;color:windowtext">Procedures</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">Activity performed for or on a patient as part&nbsp;&nbsp;&nbsp;of the provision of care.</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">US Core Procedures</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">procedure.code</span></td>
    <td class="tg-0lax"><a href="https://build.fhir.org/ig/HL7/us-behavioral-health-profiles/Procedure-alcohol-prevetion-education-example-1.html">alcohol-prevetion-education-example</a></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext">Example of a provision&nbsp;&nbsp;&nbsp;of alcohol prevention education</span> </td>
    <td class="tg-0lax"></td>
  </tr>
  <tr>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext">Procedures</span></td>
    <td class="tg-0lax"><span style="font-weight:700;text-decoration:none;color:windowtext">Reason for Referral</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">Explanation or justification for a referral or&nbsp;&nbsp;&nbsp;consultation.</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">US Core Procedures</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black;background-color:white">serviceRequest.reasonReference</span></td>
    <td class="tg-0lax"><a href="https://build.fhir.org/ig/HL7/us-behavioral-health-profiles/ServiceRequest-ServiceRequest-peer-mentoring-example-1.html">Social Connection SDOH Referral</a></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext">Example of a referral&nbsp;&nbsp;&nbsp;for peer support with reason of depression</span></td>
    <td class="tg-0lax"></td>
  </tr>
  <tr>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext">Procedures</span></td>
    <td class="tg-0lax"><span style="font-weight:700;text-decoration:none;color:windowtext">SDOH Interventions</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">Actions or services to address an identified&nbsp;&nbsp;&nbsp;Social Determinants of Health-related health concern, condition, or&nbsp;&nbsp;&nbsp;diagnosis.</span><br><span style="font-weight:400;text-decoration:none;color:black">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Examples include but are not limited to education about food pantry program&nbsp;&nbsp;&nbsp;and referral to non- emergency medical transportation program.</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black;background-color:white">US&nbsp;&nbsp;&nbsp;Core Service Request</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black;background-color:white">serviceRequest.code</span></td>
    <td class="tg-0lax"><a href="https://build.fhir.org/ig/HL7/us-behavioral-health-profiles/ServiceRequest-ServiceRequest-peer-mentoring-example-1.html">Social Connection SDOH Referral</a></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext">Example of social&nbsp;&nbsp;&nbsp;connection intervention</span></td>
    <td class="tg-0lax"></td>
  </tr>
  <tr>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext">Procedures</span></td>
    <td class="tg-0lax"><span style="font-weight:700;text-decoration:none;color:windowtext">Peer Coaching or Mentoring</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">A one-on-one relationship in which a peer&nbsp;&nbsp;&nbsp;leader with more recovery experience than the person served encourages,&nbsp;&nbsp;&nbsp;motivates, and supports a peer who is seeking to establish or strengthen his&nbsp;&nbsp;&nbsp;or her recovery.</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black;background-color:white">US&nbsp;&nbsp;&nbsp;Core Service Request</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black;background-color:white">serviceRequest.code</span></td>
    <td class="tg-0lax"><a href="https://build.fhir.org/ig/HL7/us-behavioral-health-profiles/ServiceRequest-ServiceRequest-peer-mentoring-example-1.html">Social Connection SDOH Referral</a></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext">Example of a referral&nbsp;&nbsp;&nbsp;for peer support or mentoring</span></td>
    <td class="tg-0lax"></td>
  </tr>
  <tr>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext">Procedures</span></td>
    <td class="tg-0lax"><span style="font-weight:700;text-decoration:none;color:windowtext">Recovery Planning</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">A personalized client-centered approach to&nbsp;&nbsp;&nbsp;empower clients to take an active role on their journey towards recovery.</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">US Core Procedures</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">procedure.code</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black;background-color:yellow">track as procedure</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext;background-color:white">Example of recovery planning services</span></td>
    <td class="tg-0lax"></td>
  </tr>
  <tr>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"><span style="font-weight:700;text-decoration:none;color:windowtext;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"> </td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"><span style="font-weight:700;text-decoration:none;color:windowtext;background-color:#CAEDFB"> </span></td>
  </tr>
  <tr>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext">Vital Signs</span></td>
    <td class="tg-0lax"><span style="font-weight:700;text-decoration:none;color:windowtext">Body Height</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">The vertical measurement of an individual's&nbsp;&nbsp;&nbsp;stature from the feet to the top of the head when standing upright.</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">US Core Body Height</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">observation.code</span></td>
    <td class="tg-0lax"><a href="https://build.fhir.org/ig/HL7/us-behavioral-health-profiles/Observation-height-example-1.html">height-example</a></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext">Example of body height</span></td>
    <td class="tg-0lax"></td>
  </tr>
  <tr>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext">Vital Signs</span></td>
    <td class="tg-0lax"><span style="font-weight:700;text-decoration:none;color:windowtext">Body Temperature</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">Temperature is a measure of the patient's&nbsp;&nbsp;&nbsp;ability to generate and get rid of heat.</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">US Core Body Temperature</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">observation.code</span></td>
    <td class="tg-0lax"><a href="https://build.fhir.org/ig/HL7/us-behavioral-health-profiles/Observation-temperature-example-1.html">temperature-example</a></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext">Example of body&nbsp;&nbsp;&nbsp;temperature</span></td>
    <td class="tg-0lax"></td>
  </tr>
  <tr>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext">Vital Signs</span></td>
    <td class="tg-0lax"><span style="font-weight:700;text-decoration:none;color:windowtext">Body Weight</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">The measurement of weight without heavy items&nbsp;&nbsp;&nbsp;located on the person.</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">US Core Body Weight</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">observation.code</span></td>
    <td class="tg-0lax"><a href="https://build.fhir.org/ig/HL7/us-behavioral-health-profiles/Observation-weight-example-1.html">weight-example</a></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext">Example of body weight</span></td>
    <td class="tg-0lax"></td>
  </tr>
  <tr>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext">Vital Signs</span></td>
    <td class="tg-0lax"><span style="font-weight:700;text-decoration:none;color:windowtext">Diastolic Blood Pressure</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">Diastolic blood pressure, the bottom number,&nbsp;&nbsp;&nbsp;measures the force the heart exerts on the walls of the arteries in between&nbsp;&nbsp;&nbsp;beats.</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">US Core Diastolic Blood Pressure</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">observation.code</span></td>
    <td class="tg-0lax"><a href="https://build.fhir.org/ig/HL7/us-behavioral-health-profiles/Observation-blood-pressure-example-1.html">blood-pressure-example</a></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext">Example of diastolic&nbsp;&nbsp;&nbsp;blood pressure</span></td>
    <td class="tg-0lax"></td>
  </tr>
  <tr>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext">Vital Signs</span></td>
    <td class="tg-0lax"><span style="font-weight:700;text-decoration:none;color:windowtext">Heart Rate</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">Number of times the heart beats each minute.</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">US Core Heart Rate</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">observation.code</span></td>
    <td class="tg-0lax"><a href="https://build.fhir.org/ig/HL7/us-behavioral-health-profiles/Observation-heart-rate-example-1.html">heart-rate-example</a></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext">Example of heart rate</span></td>
    <td class="tg-0lax"></td>
  </tr>
  <tr>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext">Vital Signs</span></td>
    <td class="tg-0lax"><span style="font-weight:700;text-decoration:none;color:windowtext">Pulse Oximetry</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">Pulse oximetry is a test used to measure the&nbsp;&nbsp;&nbsp;oxygen level (oxygen saturation) of the blood.</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">US Core Pulse Oximetry</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">observation.code</span></td>
    <td class="tg-0lax"><a href="https://build.fhir.org/ig/HL7/us-behavioral-health-profiles/Observation-oxygen-saturation-example-1.html">oxygen-saturation-example</a></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext">Example of pulse&nbsp;&nbsp;&nbsp;oximetry</span> </td>
    <td class="tg-0lax"></td>
  </tr>
  <tr>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext">Vital Signs</span></td>
    <td class="tg-0lax"><span style="font-weight:700;text-decoration:none;color:windowtext">Respiratory Rate</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">The respiration rate is the number of breaths a&nbsp;&nbsp;&nbsp;person takes per minute.</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">US Core Respiratory Rate</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">observation.code</span></td>
    <td class="tg-0lax"><a href="https://build.fhir.org/ig/HL7/us-behavioral-health-profiles/Observation-respiratory-rate-example-1.html">respiratory-rate-example</a></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext">Example of respiratory&nbsp;&nbsp;&nbsp;rate</span></td>
    <td class="tg-0lax"></td>
  </tr>
  <tr>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext">Vital Signs</span></td>
    <td class="tg-0lax"><span style="font-weight:700;text-decoration:none;color:windowtext">Systolic Blood Pressure</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">Systolic blood pressure, the top number,&nbsp;&nbsp;&nbsp;measures the force the heart exerts on the walls of the arteries each time it&nbsp;&nbsp;&nbsp;beats.</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">US Core Systolic Blood Pressure</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">observation.code</span></td>
    <td class="tg-0lax"><a href="https://build.fhir.org/ig/HL7/us-behavioral-health-profiles/Observation-blood-pressure-example-1.html">blood-pressure-example</a></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext">Example of systolic&nbsp;&nbsp;&nbsp;blood pressure</span></td>
    <td class="tg-0lax"></td>
  </tr>
  <tr>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext">Vital Signs</span></td>
    <td class="tg-0lax"><span style="font-weight:700;text-decoration:none;color:windowtext">Average Blood Pressure</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">Arithmetic average of systolic and diastolic&nbsp;&nbsp;&nbsp;components of two of more blood pressure readings in a specified time period&nbsp;&nbsp;&nbsp;or according to a specified algorithm or protocol.</span><br><span style="font-weight:400;text-decoration:none;color:black">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Examples include but are not limited to 3-day morning and evening home monitoring,&nbsp;&nbsp;&nbsp;clinical encounter repeat average, and 24-hour ambulatory measurement.</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">US Core Average Blood Pressure (v7)</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">observation.code</span></td>
    <td class="tg-0lax"><a href="https://build.fhir.org/ig/HL7/us-behavioral-health-profiles/Observation-average-blood-pressure-example-1.html">average-blood-pressure-example</a></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext">Example of average&nbsp;&nbsp;&nbsp;blood pressure</span></td>
    <td class="tg-0lax"></td>
  </tr>
  <tr>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"><span style="font-weight:700;text-decoration:none;color:windowtext;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"> </td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"><span style="font-weight:700;text-decoration:none;color:windowtext;background-color:#CAEDFB"> </span></td>
  </tr>
  <tr>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext">Work Information</span></td>
    <td class="tg-0lax"><span style="font-weight:700;text-decoration:none;color:windowtext">Farmworker Status</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">Data element capturing seasonal or migrant farm&nbsp;&nbsp;&nbsp;work status.</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">US Core Occupation Observation</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">observation.code</span></td>
    <td class="tg-0lax"><a href="https://build.fhir.org/ig/HL7/us-behavioral-health-profiles/Observation-usual-work-example-1.html">history-of-occupation-example</a></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext">Example of migrant&nbsp;&nbsp;&nbsp;farm/citrus farmer</span></td>
    <td class="tg-0lax"></td>
  </tr>
  <tr>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext">Work Information</span></td>
    <td class="tg-0lax"><span style="font-weight:700;text-decoration:none;color:windowtext">Veteran Status</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">Military service in the armed forces of the&nbsp;&nbsp;&nbsp;United States or other nations, including the length and branch of service,&nbsp;&nbsp;&nbsp;the military occupation, the location and type of duty (e.g., in the United&nbsp;&nbsp;&nbsp;States or abroad with combat, combat support, or noncombat duties), and any&nbsp;&nbsp;&nbsp;ongoing illness, injury, limitation, or disability that began during military&nbsp;&nbsp;&nbsp;service (Institute of Medicine, Capturing Social and Behavioral Domains in&nbsp;&nbsp;&nbsp;Electronic Health Records, Phase 2, p. 297 (2014)).</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black;background-color:#CAEDFB"> </span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:black">US Core&nbsp;&nbsp;&nbsp;Patient</span></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:#467886">extension</span></td>
    <td class="tg-0lax"><a href="https://build.fhir.org/ig/HL7/us-behavioral-health-profiles/Patient-bh-patient-example.html">James Wolff - Patient</a></td>
    <td class="tg-0lax"><span style="font-weight:400;text-decoration:none;color:windowtext">Example of patient with&nbsp;&nbsp;&nbsp;a veteran status equals true</span></td>
    <td class="tg-0lax"></td>
  </tr>
</tbody></table>




