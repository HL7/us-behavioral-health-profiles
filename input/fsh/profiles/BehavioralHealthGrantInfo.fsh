Profile: BehavioralHealthGrantInfo
Parent: http://hl7.org/fhir/us/core/StructureDefinition/us-core-simple-observation
Id: bh-grant-info
Title: "Behavioral Health Grant Funding Information"
Description: "This profile defines the structure and terminology for Observations related to Program ID, number, and funding type. Feedback is requested throughout this profile, specifically do standard concepts exist for .category, .code, and .value[x]? Also, use of a complex extension to represent both grant number and program ID."
* ^experimental = true
* extension contains GrantProgramIdAndNumber named program-info 0..*
* extension[program-info] ^short = "Program information including program ID and grant number"
* category ^slicing.discriminator.type = #pattern
* category ^slicing.discriminator.path = "$this"
* category ^slicing.rules = #open
* category contains bh_funding 0..*
* category[bh_funding] from BehavioralHealthProgramFundingTypes (required)
* performer only Reference($us-core-organization)
* value[x] only CodeableConcept
* value[x] from BehavioralHealthProgramFundingTypes (required)