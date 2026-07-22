// =====================================================================
// USCDI+ BH Data Class: Care Team Member(s)
// =====================================================================

Instance: bh-care-team-example-1
InstanceOf: CareTeam
Usage: #example
Title: "care-team-example"
Description: "Example of a mental health counselor as part of the care team"
* meta.profile = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-careteam|6.1.0"
* status = #active
* name = "Example CareTeam"
* subject = Reference(bh-patient-example) "James Wolff"
* participant[0].role = $sct#309339007 "Adult intensive care specialist (occupation)"
* participant[=].member = Reference(ed-physician-example-1) "Wise Owl, MD"
* participant[+].role = $sct#310190000 "Mental health counselor (occupation)"
* participant[=].member = Reference(mental-health-provider-example-1) "Dr. Lazslo Cravensworth"

Instance: ed-physician-example-1
InstanceOf: Practitioner
Usage: #example
Title: "physician-example"
Description: "Example of emergency room physician care team member"
* meta.profile = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-practitioner|6.1.0"
* identifier[0].system = "http://hl7.org/fhir/sid/us-npi"
* identifier[=].value = "9941339100"
* identifier[+].system = "http://ncsbn.org/identifier/example-system"
* identifier[=].value = "9941339100"
* name.family = "Owl"
* name.given = "Wise"
* name.prefix = "Dr"
* telecom.system = #email
* telecom.value = "Wise.owl@MassGenExample.net"
* telecom.use = #work
* address.use = #work
* address.line = "1003 HEALTHCARE DR"
* address.city = "Miami"
* address.state = "FL"
* address.postalCode = "01002"

Instance: pcp-provider-example-1
InstanceOf: Practitioner
Usage: #example
Title: "pcp-provider-example"
Description: "Example of Primary Care Provider"
* meta.profile = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-practitioner|6.1.0"
* identifier.system = "http://ncsbn.org/identifier/example-system"
* identifier.value = "2233551235"
* name.family = "Family"
* name.given = "Doc"
* name.prefix = "Dr"
* telecom[0].system = #phone
* telecom[=].value = "999-999-9999"
* telecom[=].use = #work
* telecom[+].system = #email
* telecom[=].value = "doc.family@example.com"
* address.use = #work
* address.line = "444 Main Street"
* address.city = "Miami"
* address.state = "FL"
* address.postalCode = "33102"

Instance: mental-health-provider-example-1
InstanceOf: Practitioner
Usage: #example
Title: "mental-health-provider-example"
Description: "Example of mental health provider"
* meta.profile = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-practitioner|6.1.0"
* identifier.system = "http://ncsbn.org/identifier/example-system"
* identifier.value = "5516813518"
* name.family = "Cravensworth"
* name.given = "Lazslo"
* name.prefix = "Dr"
* telecom.system = #email
* telecom.value = "lazslo.cravensworth@hospital.net"
* telecom.use = #work
* address.use = #work
* address.line = "333 Main Street"
* address.city = "Miami"
* address.state = "FL"
* address.postalCode = "01002"

Instance: mh-provider-example-1
InstanceOf: Organization
Usage: #example
Title: "mh-provider-example"
Description: "Example of patient mental health provider"
* meta.profile = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-organization|6.1.0"
* active = true
* type = $organization-type#prov "Healthcare Provider"
* name = "Florida Mental Health Provider Associates"
* telecom.system = #phone
* telecom.value = "(+1) 734-677-7777"
* address.line = "3300 WASHTENAW AVE STE 227"
* address.city = "MIAMI"
* address.state = "FL"
* address.postalCode = "01002"
* address.country = "USA"
