// =====================================================================
// USCDI+ BH Data Class: Health Insurance Information
// =====================================================================

Instance: medicaid-coverage-example-1
InstanceOf: Coverage
Usage: #example
Title: "medicaid-coverage-example"
Description: "Example of patient Medicaid coverage"
* meta.profile = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-coverage|6.1.0"
* identifier.type = $v2-0203#MB "Member Number"
* identifier.system = "http://example.org/fhir/memberidentifier"
* identifier.value = "88800933501"
* status = #active
* type = $sopt#2 "Medicaid"
* type.text = "Medicaid"
* subscriberId = "888009335"
* beneficiary = Reference(bh-patient-example)
* relationship = $subscriber-relationship#self
* relationship.text = "Self"
* period.start = "2024-01-01"
* payor = Reference(fl-medicaid-example-1) "MyACCESS - Florida Medicaid"
* class.type = $coverage-class#group "Group"
* class.type.text = "Group"
* class.value = "Union Group Plan"

Instance: fl-medicaid-example-1
InstanceOf: Organization
Usage: #example
Title: "fl-medicaid-example"
Description: "Example of Florida Medicaid (organization) - MyACCESS"
* meta.profile = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-organization|6.1.0"
* identifier.system = "urn:oid:2.16.840.1.113883.6.300"
* identifier.value = "55555"
* active = true
* name = "Florida MyACCESS - Medicaid"
* telecom.system = #phone
* telecom.value = "(+1) 734-677-7777"
* address.line = "3300 WASHTENAW AVE STE 227"
* address.city = "MIAMI"
* address.state = "FL"
* address.postalCode = "01002"
* address.country = "USA"
