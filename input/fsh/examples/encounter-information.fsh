// =====================================================================
// USCDI+ BH Data Class: Encounter Information
// =====================================================================

Instance: discharge-encounter-example-3
InstanceOf: Encounter
Usage: #example
Title: "discharge-encounter-example"
Description: "Example of patient discharge encounter"
* meta.profile = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-encounter|6.1.0"
* identifier.use = #usual
* identifier.system = "urn:oid:2.16.840.1.113883.19.5.1.698.8"
* identifier.value = "40005104253"
* status = #finished
* class = $v3-ActCode#OBSENC "observation encounter"
* type = $sct#448951000124107 "Admission to observation unit (procedure)"
* type.text = "Observation bed"
* subject = Reference(bh-patient-example) "James Wolff"
* period.start = "2024-02-01T21:02:00+00:00"
* period.end = "2024-02-02T17:00:00+00:00"
* diagnosis[0].condition = Reference(panic-attack-condition-example-1) "Panic Attack"
* diagnosis[=].rank = 1
* diagnosis[+].condition = Reference(chest-pain-condition-example-1) "Chest Pain"
* diagnosis[=].rank = 2
* diagnosis[+].condition = Reference(diabetes-condition-example-1) "Diabetes (II)"
* diagnosis[=].rank = 3
* hospitalization.dischargeDisposition = $PatDischargeStatus#01 "Discharged to Home"
* hospitalization.dischargeDisposition.text = "Discharged to Home"
* location[0].location = Reference(ed-location-example-1) "Emergency Dept."
* location[=].physicalType = $location-physical-type#wa "Ward"
* location[=].period.start = "2024-02-01T21:02:00+00:00"
* location[=].period.end = "2024-02-02T03:02:00+00:00"
* location[+].location = Reference(obs-location-example-1) "Hospital bed - OBSERVATION"
* location[=].physicalType = $location-physical-type#wa "Ward"
* location[=].period.start = "2024-02-01T21:02:00+00:00"
* location[=].period.end = "2024-02-02T03:00:00+00:00"

Instance: ed-encounter-example-1
InstanceOf: Encounter
Usage: #example
Title: "ed-encounter-example"
Description: "Example of patient emergency room encounter"
* meta.profile = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-encounter|6.1.0"
* identifier.use = #usual
* identifier.system = "urn:oid:2.16.840.1.113883.19.5.1.698.8"
* identifier.value = "10005104251"
* status = #finished
* class = $v3-ActCode#EMER "emergency"
* type = $sct#50849002 "Emergency room admission (procedure)"
* type.text = "Emergency room"
* subject = Reference(bh-patient-example) "James Wolff"
* period.start = "2024-02-01T21:02:00+00:00"
* period.end = "2024-02-02T03:00:00+00:00"
* reasonCode[0] = $icd-10-cm#R07.9 "Chest pain, unspecified"
* reasonCode[=].text = "Angina"
* reasonCode[+] = $icd-10-cm#R61 "Generalized hyperhidrosis"
* reasonCode[=].text = "Sweating"
* reasonCode[+] = $icd-10-cm#R00.2 "Palpitations"
* reasonCode[=].text = "Palpitations"
* diagnosis[0].condition = Reference(panic-attack-condition-example-1) "Panic Attack"
* diagnosis[=].rank = 1
* diagnosis[+].condition = Reference(chest-pain-condition-example-1) "Chest Pain"
* diagnosis[=].rank = 2
* diagnosis[+].condition = Reference(diabetes-condition-example-1) "Diabetes (II)"
* diagnosis[=].rank = 3
* location.location = Reference(ed-location-example-1) "Emergency Dept."
* location.physicalType = $location-physical-type#wa "Ward"
* location.period.start = "2024-02-01T21:02:00+00:00"
* location.period.end = "2024-02-02T03:02:00+00:00"
* partOf = Reference(discharge-encounter-example-3)
* partOf.identifier.use = #usual
* partOf.identifier.system = "urn:oid:2.16.840.1.113883.19.5.1.698.8"
* partOf.identifier.value = "40005104253"

Instance: obs-encounter-example-2
InstanceOf: Encounter
Usage: #example
Title: "obs-encounter-example"
Description: "Example of patient observation encounter"
* meta.profile = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-encounter|6.1.0"
* identifier.use = #usual
* identifier.system = "urn:oid:2.16.840.1.113883.19.5.1.698.8"
* identifier.value = "20005104252"
* status = #finished
* class = $v3-ActCode#OBSENC "observation encounter"
* type = $sct#448951000124107 "Admission to observation unit (procedure)"
* type.text = "Observation bed"
* subject = Reference(bh-patient-example) "James Wolff"
* period.start = "2024-02-02T03:02:00+00:00"
* period.end = "2024-02-02T17:00:00+00:00"
* diagnosis.condition = Reference(panic-attack-condition-example-1) "Panic Attack"
* location.location = Reference(obs-location-example-1) "Hospital bed - OBSERVATION"
* location.physicalType = $location-physical-type#wa "Ward"
* location.period.start = "2024-02-01T21:02:00+00:00"
* location.period.end = "2024-02-02T03:00:00+00:00"
* partOf = Reference(discharge-encounter-example-3)
* partOf.identifier.use = #usual
* partOf.identifier.system = "urn:oid:2.16.840.1.113883.19.5.1.698.8"
* partOf.identifier.value = "40005104253"

Instance: pcp-encounter-example-4
InstanceOf: Encounter
Usage: #example
Title: "pcp-encounter-example"
Description: "Example of patient ambulatory encounter with primary care provider"
* meta.profile = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-encounter|6.1.0"
* identifier.use = #usual
* identifier.system = "urn:oid:2.16.840.1.113883.19.5.1.698.8"
* identifier.value = "40005104253"
* status = #finished
* class = $v3-ActCode#AMB "ambulatory"
* type = $sct#737470001 "Primary care management (procedure)"
* type.text = "Primary care encounter"
* subject = Reference(bh-patient-example) "James Wolff"
* period.start = "2024-02-15T17:02:00+00:00"
* period.end = "2024-02-15T17:32:00+00:00"
