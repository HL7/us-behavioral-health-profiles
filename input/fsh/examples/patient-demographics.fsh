// =====================================================================
// USCDI+ BH Data Class: Patient Demographics
// =====================================================================

Instance: bh-patient-example
InstanceOf: Patient
Usage: #example
Title: "patient-example"
Description: "Example of patient demographic information, which includes Veteran Status (missing from narrative)"
* meta.profile = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-patient|6.1.0"
* extension[0].extension[0].url = "ombCategory"
* extension[=].extension[=].valueCoding = urn:oid:2.16.840.1.113883.6.238#2054-5 "Black or African American"
* extension[=].extension[+].url = "text"
* extension[=].extension[=].valueString = "Black or African American"
* extension[=].url = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-race"
* extension[+].extension[0].url = "ombCategory"
* extension[=].extension[=].valueCoding = urn:oid:2.16.840.1.113883.6.238#2186-5 "Not Hispanic or Latino"
* extension[=].extension[+].url = "text"
* extension[=].extension[=].valueString = "Not Hispanic or Latino"
* extension[=].url = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-ethnicity"
* extension[+].url = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-birthsex"
* extension[=].valueCode = #M
* extension[+].url = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-sex"
* extension[=].valueCode = #248153007
* extension[+].url = "http://hl7.org/fhir/us/military-service/StructureDefinition/military-service-veteran-status"
* extension[=].valueBoolean = true
* extension[+].extension.url = "tribalAffiliation"
* extension[=].extension.valueCodeableConcept = $v3-TribalEntityUS#187 "Paiute-Shoshone Tribe of the Fallon Reservation and Colony, Nevada"
* extension[=].extension.valueCodeableConcept.text = "Shoshone"
* extension[=].url = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-tribal-affiliation"
* identifier.use = #usual
* identifier.type = $v2-0203#MR "Medical Record Number"
* identifier.type.text = "Medical Record Number"
* identifier.system = "http://hospital.smarthealthit.org"
* identifier.value = "1032702"
* active = true
* name[0].use = #official
* name[=].family = "Wolff"
* name[=].given = "Jennifer"
* name[+].use = #usual
* name[=].family = "Wolff"
* name[=].given = "James"
* name[=].period.start = "2016-07-22"
* telecom[0].system = #phone
* telecom[=].value = "555-555-5555"
* telecom[=].use = #home
* telecom[+].system = #email
* telecom[=].value = "james.wolff@example.com"
* gender = #male
* birthDate = "1961-07-16"
* deceasedBoolean = false
* address[0].use = #old
* address[=].line = "49 MEADOW ST"
* address[=].city = "MIAMI"
* address[=].state = "FL"
* address[=].postalCode = "74047"
* address[=].country = "US"
* address[=].period.start = "2016-12-06"
* address[=].period.end = "2020-07-22"
* address[+].line = "183 MOUNTAIN VIEW ST"
* address[=].city = "MIAMI"
* address[=].state = "FL"
* address[=].postalCode = "74048"
* address[=].country = "US"
* address[=].period.start = "2020-07-22"
* communication.language = urn:ietf:bcp:47#en "English"
* communication.language.text = "English"
* communication.preferred = true

Instance: adult-child-relatedperson-example-1
InstanceOf: RelatedPerson
Usage: #example
Title: "adult-child-relatedperson-example"
Description: "Example of patient related person"
* meta.profile = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-relatedperson|6.1.0"
* active = true
* patient = Reference(bh-patient-example) "James Wolff"
* relationship = $v3-RoleCode#CHILD "child"
* name.use = #official
* name.family = "Wolff"
* name.given = "Sarah"
* telecom[0].system = #phone
* telecom[=].value = "555-555-5555"
* telecom[=].use = #home
* telecom[+].system = #email
* telecom[=].value = "sarah.wolff@example.com"
* telecom[=].use = #home
* birthDate = "1996-01-28"
* address.use = #home
* address.line = "80A VILLAGE ST"
* address.city = "NEW HOLLAND"
* address.state = "PA"
* address.postalCode = "17557"
