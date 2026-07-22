// =====================================================================
// USCDI+ BH Data Class: Allergies and Intolerances
// =====================================================================

Instance: peanut-allergy-example-1
InstanceOf: AllergyIntolerance
Usage: #example
Title: "peanut-allergy-example"
Description: "Example of patient documented peanut allergy"
* meta.profile = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-allergyintolerance|6.1.0"
* clinicalStatus = $allergyintolerance-clinical#active
* verificationStatus = $allergyintolerance-verification#confirmed
* category = #food
* criticality = #high
* code = $sct#762952008 "Peanut (substance)"
* code.text = "Peanut"
* patient = Reference(bh-patient-example) "James Wolff"
* reaction.manifestation = $sct#39579001 "Anaphylaxis (disorder)"

Instance: penicillin-allergy-example-1
InstanceOf: AllergyIntolerance
Usage: #example
Title: "penicillin-allergy-example"
Description: "Example of patient documented penicillin allergy"
* meta.profile = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-allergyintolerance|6.1.0"
* clinicalStatus = $allergyintolerance-clinical#active
* verificationStatus = $allergyintolerance-verification#confirmed
* category = #medication
* criticality = #high
* code = $sct#764146007 "Substance with penicillin structure (substance)"
* code.text = "Penicillin"
* patient = Reference(bh-patient-example) "James Wolff"
* reaction.manifestation = $sct#56018004 "Wheezing"
