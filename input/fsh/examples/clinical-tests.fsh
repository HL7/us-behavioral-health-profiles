// =====================================================================
// USCDI+ BH Data Class: Clinical Tests
// =====================================================================

Instance: hemoglobin-a1c-example-1
InstanceOf: Observation
Usage: #example
Title: "hemoglobin-a1c-example"
Description: "Example of Hemoglobin A1c test result"
* meta.profile = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-observation-lab|6.1.0"
* status = #final
* category = $observation-category#laboratory "Laboratory"
* category.text = "Laboratory"
* code = $loinc#4548-4 "Hemoglobin A1c/Hemoglobin.total in Blood"
* code.text = "Hemoglobin A1c/Hemoglobin.total in Blood"
* subject = Reference(bh-patient-example) "James Wolff"
* effectiveDateTime = "2024-02-05"
* performer = Reference(pcp-provider-example-1) "Dr. Doc Family"
* valueQuantity = 6.9 '%' "%"
* interpretation = $v3-ObservationInterpretation#H "High"
* interpretation.text = "High"
