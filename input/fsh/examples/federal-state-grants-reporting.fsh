// =====================================================================
// USCDI+ BH Data Class: Federal/State Grants Reporting Requirements
// =====================================================================

Instance: bh-grant-info-observation-example-1
InstanceOf: BehavioralHealthGrantInfo
Usage: #example
Title: "bh-grant-info-obs-example"
Description: "Example of patient observation"
* extension[program-info].extension[program-id].valueString = "SP-23-004"
* extension[program-info].extension[grant-number].valueString = "SP083783-01"
* status = #final
* category = BehavioralHealthProgramFundingTypeCodes#funding-program-info "Program Funding Information"
* category.text = "Program Funding Information"
* code = BehavioralHealthProgramFundingTypeCodes#grant-funding-type "Grant Funding Type"
* code.text = "Behavioral Health Grant Funding Type"
* subject.reference = "Patient/bh-patient-example"
* subject.display = "James Wolff"
* effectiveDateTime = "2024-02-01"
* performer.reference = "Organization/mh-provider-example-1"
* performer.display = "Florida Mental Health Provider Associates"
* valueCodeableConcept = BehavioralHealthProgramFundingTypeCodes#discretionary "Discretionary Funding"
* valueCodeableConcept.text = "Discretionary Grant Funding"
