// =====================================================================
// USCDI+ BH Data Class: Medications
// =====================================================================

Instance: paroxetine-discharge-med-example-1
InstanceOf: MedicationRequest
Usage: #example
Title: "paroxetine-discharge-example"
Description: "Example of discharge medication order of paroxetine. This example includes a US Core 7.0.0 MedicationAdherence extension"
* meta.profile = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-medicationrequest|6.1.0"
* extension.extension[0].url = "medicationAdherence"
* extension.extension[=].valueCodeableConcept = $sct#702565001 "Non-compliance of drug therapy (finding)"
* extension.extension[=].valueCodeableConcept.text = "Non-compliance of drug therapy (finding)"
* extension.extension[+].url = "dateAsserted"
* extension.extension[=].valueDateTime = "2024-02-01T08:15:49.449Z"
* extension.extension[+].url = "informationSource"
* extension.extension[=].valueCodeableConcept = $sct#116154003 "Patient (person)"
* extension.extension[+].url = "informationSource"
* extension.extension[=].valueCodeableConcept = $hsloc.html#1179-1 "Pharmacy"
* extension.url = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-medication-adherence"
* status = #completed
* intent = #order
* category = $medicationrequest-category#discharge "Discharge"
* medicationCodeableConcept = $rxnorm#1738483 "paroxetine hydrochloride 10 MG Oral Tablet"
* subject = Reference(bh-patient-example) "James Wolff"
* encounter = Reference(ed-encounter-example-1) "Emergency Department"
* requester = Reference(mental-health-provider-example-1) "Dr. Lazslo Cravensworth"
* reasonReference = Reference(depression-condition-example-1)
* dosageInstruction.text = "Take 1 tablet daily"
* dispenseRequest.numberOfRepeatsAllowed = 3
* dispenseRequest.quantity = 30 'mg' "mg"

Instance: metformin-discharge-med-example-1
InstanceOf: MedicationRequest
Usage: #example
Title: "metformin-discharge-example"
Description: "Example of discharge medication order of metformin"
* meta.profile = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-medicationrequest|6.1.0"
* status = #completed
* intent = #order
* category = $medicationrequest-category#discharge "Discharge"
* medicationCodeableConcept = $rxnorm#1043563 "24 HR metformin hydrochloride 1000 MG / saxagliptin 2.5 MG Extended Release Oral Tablet"
* subject = Reference(bh-patient-example) "James Wolff"
* encounter = Reference(ed-encounter-example-1) "Emergency Department"
* requester = Reference(ed-physician-example-1)

Instance: ativan-discharge-med-example-1
InstanceOf: MedicationRequest
Usage: #example
Title: "ativan-discharge-example"
Description: "Example of discharge medication order of ativan"
* meta.profile = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-medicationrequest|6.1.0"
* status = #completed
* intent = #order
* category = $medicationrequest-category#discharge "Discharge"
* medicationCodeableConcept = $rxnorm#197900 "lorazepam 0.5 MG Oral Tablet"
* subject = Reference(bh-patient-example) "James Wolff"
* encounter = Reference(ed-encounter-example-1) "Emergency Department"
* requester = Reference(ed-physician-example-1)

Instance: benzo-medication-example-1
InstanceOf: Medication
Usage: #example
Title: "benzo-medication-example"
Description: "Example of patient benzo medication"
* meta.profile = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-medication|6.1.0"
* code = $rxnorm#206821 "lorazepam 0.5 MG Oral Tablet [Ativan]"
* code.text = "lorazepam 0.5 MG Oral Tablet [Ativan]"

Instance: benzo-order-example-1
InstanceOf: MedicationRequest
Usage: #example
Title: "benzo-order-example"
Description: "Example of patient benzo medication order from ED setting"
* meta.profile = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-medicationrequest|6.1.0"
* identifier.use = #usual
* identifier.system = "urn:oid:2.16.840.1.113883.19.5.1.798"
* identifier.value = "101888811"
* status = #completed
* intent = #order
* medicationReference = Reference(benzo-medication-example-1) "lorazepam 0.5 MG Oral Tablet [Ativan]"
* subject = Reference(bh-patient-example) "James Wolff"
* encounter = Reference(ed-encounter-example-1) "Emergency Department"
* requester = Reference(ed-physician-example-1)
* dosageInstruction.text = "every 8 hours as needed"

Instance: bupropion-dispense-example-1
InstanceOf: MedicationDispense
Usage: #example
Title: "bupropion-dispense-example"
Description: "Example of patient bupropion dispensed from a community health center pharmacy"
* meta.profile = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-medicationdispense|6.1.0"
* status = #completed
* medicationCodeableConcept = $rxnorm#993532 "bupropion hydrochloride 200 MG"
* subject = Reference(bh-patient-example) "James Wolff"
* quantity.value = 30
* quantity.system = "http://unitsofmeasure.org"
* quantity.unit = "pills"
* whenHandedOver = "2016-12-08T06:38:52Z"
* dosageInstruction.text = "200 mg daily"

Instance: bupropion-discharge-med-example-1
InstanceOf: MedicationRequest
Usage: #example
Title: "bupropion-discharge-example"
Description: "Example of discharge medication order of bupropion"
* meta.profile = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-medicationrequest|6.1.0"
* status = #completed
* intent = #order
* category = $medicationrequest-category#discharge "Discharge"
* medicationCodeableConcept = $rxnorm#993532 "bupropion hydrochloride 200 MG"
* subject = Reference(bh-patient-example) "James Wolff"
* encounter = Reference(ed-encounter-example-1) "Emergency Department"
* requester = Reference(ed-physician-example-1)
