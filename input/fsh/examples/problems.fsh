// =====================================================================
// USCDI+ BH Data Class: Problems
// =====================================================================

Instance: panic-attack-condition-example-1
InstanceOf: Condition
Usage: #example
Title: "panic-attack-example"
Description: "Example of patients panic attack condition"
* meta.profile = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-condition-encounter-diagnosis|6.1.0"
* clinicalStatus = $condition-clinical#inactive "Inactive"
* verificationStatus.coding.version = "4.0.0"
* verificationStatus.coding = $condition-ver-status#confirmed "Confirmed"
* verificationStatus.text = "Confirmed"
* category = $condition-category#encounter-diagnosis "Encounter Diagnosis"
* category.text = "Encounter Diagnosis"
* code = $sct#225624000 "Panic attack (finding)"
* code.text = "Panic Attack"
* subject = Reference(bh-patient-example) "James Wolff"
* onsetDateTime = "2007-12-14"
* abatementDateTime = "2007-12-14"
* recordedDate = "2007-12-14T15:15:07+00:00"

Instance: chest-pain-condition-example-1
InstanceOf: Condition
Usage: #example
Title: "chest-pain-example"
Description: "Example of patient chest pain"
* meta.profile = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-condition-encounter-diagnosis|6.1.0"
* clinicalStatus = $condition-clinical#inactive "Inactive"
* verificationStatus.coding.version = "4.0.0"
* verificationStatus.coding = $condition-ver-status#confirmed "Confirmed"
* verificationStatus.text = "Confirmed"
* category = $condition-category#encounter-diagnosis "Encounter Diagnosis"
* category.text = "Encounter Diagnosis"
* code = $sct#29857009 "Chest pain"
* code.text = "Chest Pain"
* subject = Reference(bh-patient-example) "James Wolff"
* onsetDateTime = "2007-12-14"
* abatementDateTime = "2007-12-14"
* recordedDate = "2007-12-14T15:15:07+00:00"

Instance: grief-condition-example-1
InstanceOf: Condition
Usage: #example
Title: "grief-example"
Description: "Example of patient history of grief"
* meta.profile = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-condition-problems-health-concerns|6.1.0"
* clinicalStatus = $condition-clinical#active "Active"
* verificationStatus.coding.version = "4.0.0"
* verificationStatus.coding = $condition-ver-status#confirmed "Confirmed"
* verificationStatus.text = "Confirmed"
* category[0] = $condition-category_1#health-concern "Health Concern"
* category[=].text = "Health Concern"
* category[+] = $us-core-category#sdoh "SDOH"
* category[=].text = "Social Determinants Of Health"
* code.coding[0] = $sct#723914003 "Prolonged grief disorder"
* code.coding[+] = $icd-10-cm#F43.81 "Prolonged grief disorder"
* code.text = "Prolonged grief disorder"
* subject = Reference(bh-patient-example) "James Wolff"
* onsetDateTime = "2007-12-14"
* recordedDate = "2007-12-14T15:15:07+00:00"

Instance: diabetes-condition-example-1
InstanceOf: Condition
Usage: #example
Title: "diabetes-example"
Description: "Example of patient diabetes"
* meta.profile = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-condition-problems-health-concerns|6.1.0"
* clinicalStatus = $condition-clinical#active "Active"
* verificationStatus.coding.version = "4.0.0"
* verificationStatus.coding = $condition-ver-status#confirmed "Confirmed"
* verificationStatus.text = "Confirmed"
* category = $condition-category#problem-list-item "Problem List Item"
* category.text = "Problem List"
* code.coding[0] = $sct#444110003 "Type II diabetes mellitus well controlled"
* code.coding[+] = $icd-10-cm#E11.9 "Type 2 diabetes mellitus without complications"
* code.text = "Type 2 Diabetes"
* subject = Reference(bh-patient-example) "James Wolff"
* onsetDateTime = "2020-01-01"
* recordedDate = "2024-02-01"

Instance: depression-condition-example-1
InstanceOf: Condition
Usage: #example
Title: "depression-example"
Description: "Example of patient depression"
* meta.profile = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-condition-problems-health-concerns|6.1.0"
* clinicalStatus = $condition-clinical#active "Active"
* verificationStatus.coding.version = "4.0.0"
* verificationStatus.coding = $condition-ver-status#confirmed "Confirmed"
* verificationStatus.text = "Confirmed"
* category[0] = $condition-category#problem-list-item "Problem List Item"
* category[=].text = "Problem List Item"
* category[+] = $us-core-category#sdoh "SDOH"
* category[=].text = "Social Determinants Of Health"
* code.coding[0] = $sct#310496002 "Moderate depression (disorder)"
* code.coding[+] = $icd-10-cm#F32.A "Depression, unspecified"
* code.text = "Depression"
* subject = Reference(bh-patient-example) "James Wolff"
