// =====================================================================
// USCDI+ BH Data Class: Procedures
// =====================================================================

Instance: harm-reduction-example-1
InstanceOf: Procedure
Usage: #example
Title: "harm-reduction-activities-example"
Description: "Example of patient harm reduction program"
* meta.profile = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-procedure|6.1.0"
* status = #completed
* code = $sct#720175009 "Alcohol harm reduction program (regime/therapy)"
* code.text = "Alcohol harm reduction program (regime/therapy)"
* subject = Reference(bh-patient-example) "James Wolff"
* performedDateTime = "2024-03-23"

Instance: alcohol-prevetion-education-example-1
InstanceOf: Procedure
Usage: #example
Title: "alcohol-prevention-edu-example"
Description: "Example of patient alcohol cessation education"
* meta.profile = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-procedure|6.1.0"
* status = #completed
* code = $sct#424407005 "Substance use cessation education, guidance, and counseling (procedure)"
* code.text = "Substance use cessation education, guidance, and counseling (procedure)"
* subject = Reference(bh-patient-example) "James Wolff"
* performedDateTime = "2024-03-23"

Instance: ServiceRequest-peer-mentoring-example-1
InstanceOf: ServiceRequest
Usage: #example
Title: "sdoh-referral-example"
Description: "Example of patient referral to a peer coaching program"
* meta.profile = "http://hl7.org/fhir/us/sdoh-clinicalcare/StructureDefinition/SDOHCC-ServiceRequest"
* status = #completed
* intent = #order
* category[0] = $sct#410606002 "Social service procedure"
* category[+] = $SDOHCC-CodeSystemTemporaryCodes#social-connection "Social Connection"
* code = $sct#461481000124109 "Referral to peer support (procedure)"
* subject = Reference(bh-patient-example) "James Wolff"
* reasonReference = Reference(depression-condition-example-1)

Instance: bh-prevention-education-program-example-1
InstanceOf: Procedure
Usage: #example
Title: "bh-prevention-edu-example"
Description: "Example of education service provided to patient"
* meta.profile = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-procedure|6.1.0"
* basedOn = Reference(ServiceRequest-peer-mentoring-example-1)
* status = #completed
* code = $HCPCSReleaseCodeSets#H0025 "Behavioral health prevention education service (delivery of services with target population to affect knowledge, attitude and/or behavior)"
* code.text = "Behavioral Health Prevention Education"
* subject = Reference(bh-patient-example) "James Wolff"
* performedDateTime = "2024-03-23"
