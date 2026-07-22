// =====================================================================
// USCDI+ BH Data Class: Diagnostic Imaging
// =====================================================================

Instance: ekg-impression-report-example-1
InstanceOf: DiagnosticReport
Usage: #example
Title: "ekg-report-example"
Description: "Example of patient ekg impression"
* meta.profile = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-diagnosticreport-note|6.1.0"
* status = #final
* category = $loinc#LP29708-2 "Cardiology"
* category.text = "Cardiology"
* code = $loinc#8601-7 "EKG Impression"
* code.text = "EKG Impression"
* subject = Reference(bh-patient-example) "James Wolff"
* effectiveDateTime = "2024-01-02T03:30:46+00:00"
* result = Reference(ekg-observation-example-1)

Instance: ekg-observation-example-1
InstanceOf: Observation
Usage: #example
Title: "ekg-obs-example"
Description: "Example of patient ekg test result"
* meta.profile = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-observation-clinical-result|6.1.0"
* status = #final
* category = $observation-category#exam "Exam"
* category.text = "Exam"
* code = $loinc#8601-7 "EKG impression"
* subject = Reference(bh-patient-example) "James Wolff"
* effectiveDateTime = "2024-02-02T03:48:57.246958+00:00"
* performer = Reference(pcp-provider-example-1) "Dr. Doc Family"
* valueCodeableConcept = $sct#64730000 "Normal sinus rhythm (finding)"
