// =====================================================================
// USCDI+ BH Data Class: Vital Signs
// =====================================================================

Instance: height-example-1
InstanceOf: Observation
Usage: #example
Title: "height-example"
Description: "Example of patient body height"
* meta.profile = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-body-height|6.1.0"
* status = #final
* category = $observation-category#vital-signs "Vital Signs"
* category.text = "Vital Signs"
* code = $loinc#8302-2 "Body height"
* code.text = "height"
* subject = Reference(bh-patient-example) "James Wolff"
* effectiveDateTime = "2024-02-01"
* performer = Reference(pcp-provider-example-1) "Dr. Doc Family"
* valueQuantity = 172.72 'cm' "cm"

Instance: temperature-example-1
InstanceOf: Observation
Usage: #example
Title: "temperature-example"
Description: "Example of patient body temperature"
* meta.profile = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-body-temperature|6.1.0"
* status = #final
* category = $observation-category#vital-signs "Vital Signs"
* category.text = "Vital Signs"
* code = $loinc#8310-5 "Body temperature"
* code.text = "temperature"
* subject = Reference(bh-patient-example) "James Wolff"
* effectiveDateTime = "2024-02-01"
* performer = Reference(pcp-provider-example-1) "Dr. Doc Family"
* valueQuantity = 37 'Cel' "Cel"

Instance: weight-example-1
InstanceOf: Observation
Usage: #example
Title: "weight-example"
Description: "Example of patient's weight"
* meta.profile = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-body-weight|6.1.0"
* status = #final
* category = $observation-category#vital-signs "Vital Signs"
* category.text = "Vital Signs"
* code = $loinc#29463-7 "Body Weight"
* code.text = "Body Weight"
* subject = Reference(bh-patient-example) "James Wolff"
* effectiveDateTime = "2024-02-01"
* performer = Reference(pcp-provider-example-1) "Dr. Doc Family"
* valueQuantity = 81.65 'kg' "kg"

Instance: blood-pressure-example-1
InstanceOf: Observation
Usage: #example
Title: "blood-pressure-example"
Description: "Example of patient systolic and diastolic blood pressure measurements"
* meta.profile = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-blood-pressure|6.1.0"
* status = #final
* category = $observation-category#vital-signs "Vital Signs"
* category.text = "Vital Signs"
* code = $loinc#85354-9 "Blood pressure panel with all children optional"
* code.text = "Blood pressure systolic and diastolic"
* subject = Reference(bh-patient-example) "James Wolff"
* effectiveDateTime = "2024-02-01"
* performer = Reference(pcp-provider-example-1) "Dr. Doc Family"
* component[0].code = $loinc#8480-6 "Systolic blood pressure"
* component[=].code.text = "Systolic blood pressure"
* component[=].valueQuantity = 157 'mm[Hg]' "mmHg"
* component[+].code = $loinc#8462-4 "Diastolic blood pressure"
* component[=].code.text = "Diastolic blood pressure"
* component[=].valueQuantity = 92 'mm[Hg]' "mmHg"

Instance: heart-rate-example-1
InstanceOf: Observation
Usage: #example
Title: "heart-rate-example"
Description: "Example of patient heart rate"
* meta.profile = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-heart-rate|6.1.0"
* status = #final
* category = $observation-category#vital-signs "Vital Signs"
* category.text = "Vital Signs"
* code = $loinc#8867-4 "Heart Rate"
* code.text = "heart_rate"
* subject = Reference(bh-patient-example) "James Wolff"
* effectiveDateTime = "2024-02-01"
* performer = Reference(pcp-provider-example-1) "Dr. Doc Family"
* valueQuantity = 110 '/min' "beats/min"

Instance: oxygen-saturation-example-1
InstanceOf: Observation
Usage: #example
Title: "oxygen-saturation-example"
Description: "Example of patient oxygen saturation"
* meta.profile = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-pulse-oximetry|6.1.0"
* status = #final
* category = $observation-category#vital-signs "Vital Signs"
* category.text = "Vital Signs"
* code.coding[0] = $loinc#2708-6 "Oxygen saturation in Arterial blood"
* code.coding[+] = $loinc#59408-5 "Oxygen saturation in Arterial blood by Pulse oximetry"
* code.text = "oxygen_saturation"
* subject = Reference(bh-patient-example) "James Wolff"
* effectiveDateTime = "2024-02-01"
* performer = Reference(pcp-provider-example-1) "Dr. Doc Family"
* valueQuantity = 97 '%' "%O2"

Instance: respiratory-rate-example-1
InstanceOf: Observation
Usage: #example
Title: "respiratory-rate-example"
Description: "Example of patient respiratory rate"
* meta.profile = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-respiratory-rate|6.1.0"
* status = #final
* category = $observation-category#vital-signs "Vital Signs"
* category.text = "Vital Signs"
* code = $loinc#9279-1 "Respiratory rate"
* code.text = "respiratory_rate"
* subject = Reference(bh-patient-example) "James Wolff"
* effectiveDateTime = "2024-02-01"
* performer = Reference(pcp-provider-example-1) "Dr. Doc Family"
* valueQuantity = 22 '/min' "breaths per minute"

Instance: average-blood-pressure-example-1
InstanceOf: Observation
Usage: #example
Title: "average-bp-example"
Description: "Example of patient average blood pressure"
* meta.profile = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-average-blood-pressure|7.0.0"
* status = #final
* category = $observation-category#vital-signs "Vital Signs"
* category.text = "Vital Signs"
* code = $loinc#96607-7 "Blood pressure panel mean systolic and mean diastolic"
* code.text = "Avg Blood pressure systolic and diastolic"
* subject = Reference(bh-patient-example) "James Wolff"
* effectivePeriod.start = "2024-02-01T01:06:52.48Z"
* effectivePeriod.end = "2024-02-01T13:07:01.166Z"
* performer = Reference(pcp-provider-example-1) "Dr. Doc Family"
* component[0].code = $loinc#96608-5 "Systolic blood pressure mean"
* component[=].code.text = "Average systolic blood pressure"
* component[=].valueQuantity = 157 'mm[Hg]' "mm[Hg]"
* component[+].code = $loinc#96609-3 "Diastolic blood pressure mean"
* component[=].code.text = "Average diastolic blood pressure"
* component[=].valueQuantity = 92 'mm[Hg]' "mm[Hg]"
