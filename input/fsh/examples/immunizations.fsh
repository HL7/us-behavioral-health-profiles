// =====================================================================
// USCDI+ BH Data Class: Immunizations
// =====================================================================

Instance: flu-vaccine-example-1
InstanceOf: Immunization
Usage: #example
Title: "flu-vaccine-example"
Description: "Example of patient flu vaccine (immunization)"
* meta.profile = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-immunization|6.1.0"
* status = #completed
* vaccineCode.coding[0] = $cvx#197 "influenza, high-dose, quadrivalent"
* vaccineCode.coding[+] = $ndc#49281012165 "FLUZONE High-Dose Quadrivalent Northern Hemisphere, 10 SYRINGE, GLASS in 1 PACKAGE (49281-121-65) > .7 mL in 1 SYRINGE, GLASS (49281-121-88) (package)"
* vaccineCode.text = "influenza, high-dose, quadrivalent"
* patient = Reference(bh-patient-example) "James Wolff"
* occurrenceDateTime = "2023-11-19T20:46:57+00:00"
