// =====================================================================
// USCDI+ BH Data Class: Work Information
// =====================================================================

Instance: usual-work-example-1
InstanceOf: Observation
Usage: #example
Description: "Example of a patient's usual work (occupation history)"
* meta.profile = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-observation-occupation"
* status = #final
* code = $loinc#11341-5 "History of Occupation"
* subject = Reference(bh-patient-example) "James Wolff"
* performer = Reference(mental-health-provider-example-1) "Dr. Lazslo Cravensworth"
* effectivePeriod.start = "2018-03-01"
* valueCodeableConcept = urn:oid:2.16.840.1.114222.4.5.327#45-2092.02.015820 "Farm Worker [Farmworkers and Laborers, Crop]"
