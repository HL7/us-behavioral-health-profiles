// =====================================================================
// USCDI+ BH Data Class: Facility Information
// =====================================================================

Instance: obs-location-example-1
InstanceOf: Location
Usage: #example
Title: "obs-location-example"
Description: "Example of patient observation"
* meta.profile = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-location|6.1.0"
* identifier.system = "http://www.acme.org/location"
* identifier.value = "30"
* status = #active
* name = "Florida General Hospital - Observation"
* description = "Florida General Hospital - Observation bed"
* type = $v3-RoleCode#HOSP "Hospital"
* type.text = "Hospital bed"
* telecom.system = #phone
* telecom.value = "(+1) 734-677-8888"
* address.line = "1234 Beach Street"
* address.city = "Miami"
* address.state = "FL"
* address.postalCode = "33101"
* address.country = "USA"

Instance: ed-location-example-1
InstanceOf: Location
Usage: #example
Title: "ed-location-example"
Description: "Example of emergency dept. location"
* meta.profile = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-location|6.1.0"
* identifier.system = "http://www.acme.org/location"
* identifier.value = "29"
* status = #active
* name = "Florida General Hospital - Emergency Department"
* description = "Florida General Hospital - Emergency Department"
* type = $v3-RoleCode#ER "Emergency room"
* type.text = "Emergency room"
* telecom.system = #phone
* telecom.value = "(+1) 734-677-7777"
* address.line = "1234 Beach Street"
* address.city = "Miami"
* address.state = "FL"
* address.postalCode = "33101"
* address.country = "USA"
