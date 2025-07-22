### Introduction 

The United States Core Data for Interoperability (USCDI) Plus Behavioral Health (BH) dataset (also referred to as USCDI+ BH) aims to enhance the exchange and interoperability of behavioral health information across healthcare systems in the United States. Building on the USCDI foundation, this dataset addresses the unique needs and challenges associated with behavioral health data. It is designed to facilitate behavioral health integration with other healthcare services, support better clinical decision-making, and improve patient outcomes.

### Background 

Behavioral health, encompassing both acute and chronic mental health and substance use disorders, is a critical component of overall health and well-being. The increasing prevalence of these disorders necessitates robust information technology (IT) systems to support efficient and effective care. However, the fragmentation of behavioral health information has historically hindered the ability of healthcare providers to deliver comprehensive, coordinated care. In addition, behavioral health providers often lag in adopting health IT due to factors such as ineligibility for incentive programs and the complexity of documenting behavioral health encounters. These factors and others complicate the sharing of behavioral health data, impeding care coordination and integration of behavioral health with other health settings. 

The USCDI+ BH dataset seeks to address this fragmentation by establishing, harmonizing, and advancing a core list of standardized, interoperable data elements to capture treatment data for adults, adolescents, and children with mental health and substance use disorders. The dataset development involved collaboration with diverse stakeholders, including behavioral health clinicians, patient advocacy groups, healthcare IT developers, and policymakers. This collaborative approach aimed to address the needs and priorities of all stakeholders while aligning with existing standards and certain regulations, where possible. 

### Scope and Usage 

The USCDI+ Behavioral Health (BH) initiative is designed to facilitate the seamless integration and exchange of behavioral health data across various healthcare settings, including hospitals, outpatient clinics, behavioral health centers, substance use treatment facilities, integrated care settings, telehealth platforms, and Certified Community Behavioral Health Clinics (CCBHCs).

### Overview of Implementation Guide 

This BH FHIR implementation guide will use the profiles outlined in the [US Core Implementation Guide](https://www.hl7.org/fhir/us/core/uscdi.html). Where necessary, custom profiles are used to address needs specific to BH care.  The developers will follow the [Cross Group Projects WG's variance request process](https://confluence.hl7.org/display/CGP/US+Core+Variance+Request+Process) and provide the US Realm Steering Committee with an approved rationale for deviation in the implementation guide where applicable. 

It is recommended to review sections [How to Read This Implementation Guide](index.html#how-to-read-this-implementation-guide) and [Limitations and Challenges](index.html#limitations-and-challenges) below before exploring. 

### Audience

This informational IG is intended to illustrate the use of FHIR standards to exchange USCDI+ BH elements.  The IG maximizes existing FHIR standards and provides newly developed FHIR profiles and elements to address data requirements specific to BH. The IG is intended for a technical audience working with behavioral health data using the USCDI+ framework. The IG authors seek feedback on the usefulness of the user story, the completeness of the crosswalk to FHIR elements, applicable behavioral health specific terminology, and the usability of the example FHIR references for each data element. 

Researchers, quality improvement staff, and policymakers can also benefit from a basic understanding of how this guide presents BH data elements to support data collection and analysis.  

Standardizing behavioral health data through this IG aims to improve data exchange and interoperability in the behavioral health ecosystem, ultimately contributing to improved patient care and outcomes.

Discussions on the use of this IG take place regularly on the BHIT calls. Implementers are invited to participate in the discussions and the testing activities. Readers who wish to make a comment or suggestion regarding the IG are encouraged to submit them through [GitHub Issue submission page](https://github.com/HL7/us-behavioral-health-profiles/issues) for this IG.

### How to Read This Implementation Guide 

The Implementation Guide contains multiple sections to help readers use the IG, including a description of the IG’s intended audience, scope, and guidance for implementing USCDI+BH elements using FHIR standards. The table below lists major sections of the IG and relevant audiences for each section. 

<style type="text/css">
.tg  {border-collapse:collapse;border-spacing:0;}
.tg td{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  overflow:hidden;padding:10px 5px;word-break:normal;}
.tg th{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  font-weight:normal;overflow:hidden;padding:10px 5px;word-break:normal;}
.tg .tg-cly1{text-align:left;vertical-align:middle}
.tg .tg-yd0e{color:#467886;text-align:left;vertical-align:middle}
.tg .tg-uozz{color:#F00;text-align:left;vertical-align:middle}
.tg .tg-fapl{color:#F00;text-align:left;vertical-align:middle}
.tg .tg-xf3r{background-color:#BFBFBF;font-weight:bold;text-align:left;vertical-align:middle}
</style>
<table class="tg"><thead>
  <tr>
    <th class="tg-xf3r">Section</th>
    <th class="tg-xf3r">Resource</th>
    <th class="tg-xf3r">Description</th>
    <th class="tg-xf3r">Audience</th>
  </tr></thead>
<tbody>
  <tr>
    <td class="tg-yd0e">User Story</td>
    <td class="tg-uozz"><a href="summary_story.html">Summary</a></td>
    <td class="tg-cly1">A summary of the behavioral health user story that informed the development of this implementation guide</td>
    <td class="tg-cly1">General and Introductory</td>
  </tr>
  <tr>
    <td class="tg-yd0e">User Story</td>
    <td class="tg-uozz"><a href="quick_facts.html">Quick Facts</a></td>
    <td class="tg-cly1">A list of key points from the behavioral health user story that informed the development of this implementation guide</td>
    <td class="tg-cly1">General and Introductory</td>
  </tr>
  <tr>
    <td class="tg-yd0e">User Story</td>
    <td class="tg-uozz"><a href="full_story.html">Full Care Story</a></td>
    <td class="tg-cly1">The complete behavioral health user care story used in the development of this implementation guide</td>
    <td class="tg-cly1">General</td>
  </tr>
  <tr>
    <td class="tg-cly1">Background</td>
    <td class="tg-uozz"><a href="uscdi_bh_elements.html">USCDI+ BH Elements</a></td>
    <td class="tg-cly1">A list of USCDI+ Behavioral Health elements used in the implementation guide, covering data classes like <!--adverse events, -->clinical notes and vital signs. Each element includes descriptions, purposes, and examples, supporting structured health information management and sharing</td>
    <td class="tg-cly1">Technical</td>
  </tr>
    <tr>
    <td class="tg-cly1">Technical Artifacts</td>
    <td class="tg-fapl"><a href="bh_to_fhir_examples.html">USCDI+ BH to FHIR Examples</a></td>
    <td class="tg-cly1">This table links USCDI+ behavioral health data elements to their corresponding FHIR elements, with examples and narratives showing their practical application. It ensures accurate and interoperable healthcare data across systems</td>
    <td class="tg-cly1">Technical</td>
  </tr>
    <tr>
    <td class="tg-cly1">Technical Artifacts</td>
    <td class="tg-uozz"><a href="bh_to_fhir_profiles.html">USCDI+ BH to Suggestive FHIR Profiles</a></td>
    <td class="tg-cly1">Draft proposals for profiles supporting USCDI + Behavioral Health Data Elements</td>
    <td class="tg-cly1">Detailed Technical</td>
  </tr>
    <tr>
    <td class="tg-cly1">Technical Artifacts</td>
    <td class="tg-fapl"><a href="artifacts.html">FHIR Artifacts</a></td>
    <td class="tg-cly1">An index of the FHIR artifacts included in this implementation guide</td>
    <td class="tg-cly1">Detailed Technical</td>
  </tr>
  <tr>
    <td class="tg-cly1">Specification</td>
    <td class="tg-uozz"><a href="downloads.html">Downloads</a></td>
    <td class="tg-cly1">Downloads</td>
    <td class="tg-cly1">Detailed Technical</td>
  </tr>
</tbody></table>

### Limitations and Challenges 

This section outlines the limitations and challenges encountered when developing this Implementation Guide. It highlights topics like the complexities in standardizing health assessments across various clinical practices and the use of specific resources like DocumentReference in FHIR to manage different types of clinical documents. By acknowledging these challenges, the IG aims to provide users with a clear understanding of the decisions made, the potential constraints implementers they may encounter, and the collective work to be done to standardize Behavioral Health data. 

- The <b>health status assessments</b> included in this Implementation Guide (IG) were chosen based on their availability in widely recognized clinical coding standards, such as LOINC and SNOMED. We acknowledge that the assessments presented here are not the only ones applicable within their respective categories, nor may they be the most commonly used in the field. This limitation reflects the inherent challenges in standardizing health assessments across diverse clinical practices. 
- Many prominent <b>health status assessments</b> are proprietary and licensed material, this will be a challenge in further development. 
- In the <b>FHIR examples</b> provided in this IG, the DocumentReference resource is utilized to supply metadata about various documents, enabling their discovery and management within a system. These resources employ the Attachment datatype, which stores the content type and a base64 encoded representation of the binary content. The types of documents that can be represented this way include but aren’t limited to: 
  - PDF documents 
  - Scanned paper and digital records of faxes 
  - Clinical notes in various forms 
  - Image, video, and audio files (e.g., JPEG, GIF, MP4, MP3) 
  - Non-standard formats (e.g., CSV, RTF, WORD) 
- It’s important to note that these FHIR examples are annotated in the FHIR narrative, of the technical artifacts sections, as “...<u>encoded (base64)</u>”. 

### Privacy and Security Considerations

Implementers **SHOULD** be familiar with and adhere primarily to any security and privacy guidelines defined below:
* [Security & Privacy module](http://hl7.org/fhir/R4/secpriv-module.html)
* [Security Principles](http://hl7.org/fhir/R4/security.html)
* [Implementer's Checklist](http://hl7.org/fhir/R4/safety.html)

Issues or concerns regarding privacy, security, and safety should use the [Health IT Feedback and Inquiry Portal](https://inquiry.healthit.gov/support/plugins/servlet/desk/portal/2) to submit feedback or inquiries.

### Dependencies on Other IGs

<style type="text/css">
.tg  {border-collapse:collapse;border-spacing:0;}
.tg td{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  overflow:hidden;padding:10px 5px;word-break:normal;}
.tg th{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  font-weight:normal;overflow:hidden;padding:10px 5px;word-break:normal;}
.tg .tg-cly1{text-align:left;vertical-align:middle}
.tg .tg-xf3r{background-color:#BFBFBF;font-weight:bold;text-align:left;vertical-align:middle}
.tg .tg-zzem{color:#467886;text-align:left;vertical-align:middle}
</style>
<table class="tg"><thead>
  <tr>
    <th class="tg-xf3r">Implementation Guide</th>
    <th class="tg-xf3r">Version</th>
    <th class="tg-xf3r">Dependency</th>
  </tr></thead>
<tbody>
  <tr>
    <td class="tg-zzem"><a href="https://hl7.org/fhir/us/core/STU6.1/">US Core</a></td>
    <td class="tg-cly1">6.1.0</td>
    <td class="tg-cly1">Where possible, all profiles in this IG are either derived from US Core 6.1.0 or aligned with that release and future releases as much as possible. U.S. Core also sets expectations for a variety of referenced resources and establishes baseline conformance expectations.</td>
  </tr>
  <tr>
    <td class="tg-zzem"><a href="http://hl7.org/fhir/uv/sdc/">Structured Document Capture (SDC)</a></td>
    <td class="tg-cly1">3.0.0</td>
    <td class="tg-cly1">SDC is the basis for mapping QuestionnaireResponses to Observations and Conditions. SDC also provides guidance around how questionnaires can be created with support for score calculation, conditional behavior, specific rendering expectations, etc.</td>
  </tr>
    <tr>
    <td class="tg-zzem"><a href="https://hl7.org/fhir/us/sdoh-clinicalcare/STU2.1">SDOH Clinical Care</a></td>
    <td class="tg-cly1">2.1.0</td>
    <td class="tg-cly1">In some cases, where profiles could not be derived from US Core, SDOH Clinical Care profiles are referenced.</td>
  </tr>
      <tr>
    <td class="tg-zzem"><a href="http://hl7.org/fhir/R4/index.html">HL7 FHIR R4</a></td>
    <td class="tg-cly1">R4</td>
    <td class="tg-cly1">In some cases, where profiles could not be derived from US Core, base FHIR resources may be used.</td>
  </tr>
</tbody></table>

### Authors and Project Team

<style type="text/css">
.tg  {border-collapse:collapse;border-spacing:0;}
.tg td{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  overflow:hidden;padding:10px 5px;word-break:normal;}
.tg th{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  font-weight:normal;overflow:hidden;padding:10px 5px;word-break:normal;}
.tg .tg-cly1{text-align:left;vertical-align:middle}
.tg .tg-xxp7{font-style:italic;font-weight:bold;text-align:center;vertical-align:middle}
.tg .tg-xf3r{background-color:#BFBFBF;font-weight:bold;text-align:left;vertical-align:middle}
</style>
<table class="tg"><thead>
  <tr>
    <td class="tg-xf3r">Name</td>
    <td class="tg-xf3r">Role</td>
    <td class="tg-xf3r">Organization</td>
  </tr>
</thead>
<tbody>
  <tr>
    <td class="tg-cly1">Llew Brown</td>
    <td class="tg-cly1">Contributor</td>
    <td class="tg-cly1">Next Level Health Innovations</td>
  </tr>
  <tr>
    <td class="tg-cly1">JaMor Hairston</td>
    <td class="tg-cly1">IG Author</td>
    <td class="tg-cly1">Next Level Health Innovations</td>
  </tr>
  <tr>
    <td class="tg-cly1">Claudia Hall</td>
    <td class="tg-cly1">IG Author</td>
    <td class="tg-cly1">Next Level Health Innovations</td>
  </tr>
  <tr>
    <td class="tg-cly1">Eva Keeling</td>
    <td class="tg-cly1">Contributor</td>
    <td class="tg-cly1">Next Level Health Innovations</td>
  </tr>
  <tr>
    <td class="tg-cly1">Susan Matney</td>
    <td class="tg-cly1">Contributor</td>
    <td class="tg-cly1">Next Level Health Innovations</td>
  </tr>
    <tr>
    <td class="tg-cly1">Tiara Halstead</td>
    <td class="tg-cly1">Contributor</td>
    <td class="tg-cly1">Next Level Health Innovations</td>
  </tr>
    <tr>
    <td class="tg-cly1">Michelle Zancan</td>
    <td class="tg-cly1">Contributor</td>
    <td class="tg-cly1">Next Level Health Innovations</td>
  </tr>
    <tr>
    <td class="tg-cly1">Aaron Nusstein</td>
    <td class="tg-cly1">Primary Author</td>
    <td class="tg-cly1">Lantana Consulting Group</td>
  </tr>
  <tr>
    <td class="tg-cly1">David deRoode</td>
    <td class="tg-cly1">Contributor</td>
    <td class="tg-cly1">Lantana Consulting Group</td>
  </tr>
  <tr>
    <td class="tg-cly1">Laura Goubeaux</td>
    <td class="tg-cly1">Contributor</td>
    <td class="tg-cly1">Lantana Consulting Group</td>
  </tr>
    <tr>
    <td class="tg-cly1">Patrick Joyce</td>
    <td class="tg-cly1">Contributor</td>
    <td class="tg-cly1">Lantana Consulting Group</td>
  </tr>
  <tr>
    <td class="tg-cly1">Lori Haberman</td>
    <td class="tg-cly1">Project Sponsor Contact</td>
    <td class="tg-cly1">Assistant Secretary for Technology Policy / Office of the National Coordinator for Health IT (ASTP/ONC)</td>
  </tr>
  <tr>
    <td class="tg-cly1">Christopher Muir</td>
    <td class="tg-cly1">Project Sponsor Contact</td>
    <td class="tg-cly1">Assistant Secretary for Technology Policy / Office of the National Coordinator for Health IT (ASTP/ONC)</td>
  </tr>
    <tr>
    <td class="tg-cly1">Dantrell Simmons</td>
    <td class="tg-cly1">Project Sponsor Contact</td>
    <td class="tg-cly1">Substance Abuse and Mental Health Services Administration (SAMHSA)</td>
  </tr>
    <tr>
    <td class="tg-cly1">Talisha Searcy</td>
    <td class="tg-cly1">Project Sponsor Contact</td>
    <td class="tg-cly1">Assistant Secretary for Technology Policy / Office of the National Coordinator for Health IT (ASTP/ONC)</td>
  </tr>
    <tr>
    <td class="tg-cly1">Brett Andriesen</td>
    <td class="tg-cly1">Project Sponsor Contact</td>
    <td class="tg-cly1">Assistant Secretary for Technology Policy / Office of the National Coordinator for Health IT (ASTP/ONC)</td>
  </tr>
    <tr>
    <td class="tg-cly1">Leliveld Emeni</td>
    <td class="tg-cly1">Project Sponsor Contact</td>
    <td class="tg-cly1">Assistant Secretary for Technology Policy / Office of the National Coordinator for Health IT (ASTP/ONC)</td>
  </tr>
</tbody></table>

### Acknowledgements

Next Level Health Innovations and Lantana Consulting Group developed and produced this informational FHIR Implementation Guide (IG) for the Behavioral Health (BH) domain based on the data elements developed for USCDI+ BH. The guide explains the mapping and use of the USCDI+ elements in FHIR. The project is funded by the Substance Abuse and Mental Health Services Administration (SAMHSA) as part of the Behavioral Health Information Technology (BHIT) Initiative, in collaboration with the Assistant Secretary for Technology Policy/Office of the National Coordinator for Health Information Technology (ASTP/ONC). The BHIT is intended to advance health information technology (IT) in behavioral health care and practice settings. The FHIR IG was also developed with input from the HL7 Electronic Health Record (EHR) Work Group Behavioral Health Project Team, which included federal, local, and private BH-focused professionals.  

Health Level Seven, HL7, CDA, CCD, and FHIR are registered trademarks of Health Level Seven International in the US Trademark Office. 

This guide includes SNOMED CT content, copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. This agreement does not cover the implementer's use of SNOMED CT. 

This guide contains content from [LOINC](http://loinc.org). LOINC is copyright © 1995-2024, Regenstrief Institute, Inc., and the Logical Observation Identifiers Names and Codes (LOINC) Committee. It is available at no cost under the license at [https://loinc.org/kb/license](https://loinc.org/kb/license/). LOINC® is a registered United States trademark of Regenstrief Institute, Inc. 

