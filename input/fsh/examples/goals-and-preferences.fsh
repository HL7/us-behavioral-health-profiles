// =====================================================================
// USCDI+ BH Data Class: Goals and Preferences
// =====================================================================

Instance: provider-preference-observation-example-2
InstanceOf: Observation
Usage: #example
Title: "provider-preference-obs-example"
Description: "Example of patient preference for healthcare professiona"
* meta.profile = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-care-experience-preference"
* status = #final
* category = $us-core-category#care-experience-preference "Care experience preference"
* category.text = "Care Experience Preference"
* code = $loinc#95541-9 "Care experience preference"
* code.text = "Care Experience Preference"
* subject = Reference(bh-patient-example) "James Wolff"
* effectiveDateTime = "2024-02-01"
* performer = Reference(pcp-provider-example-1) "Dr. Doc Family"
* valueCodeableConcept = $sct#314433002 "Preference for health professional (finding)"
* valueCodeableConcept.text = "Preference for health professional"

Instance: social-connection-example-1
InstanceOf: Goal
Usage: #example
Title: "social-connection-example"
Description: "Example of an improving patient goal improve toward adequate social participation"
* meta.profile = "http://hl7.org/fhir/us/sdoh-clinicalcare/StructureDefinition/SDOHCC-Goal"
* lifecycleStatus = #active
* achievementStatus = $goal-achievement#improving "Improving"
* description = $sct#1230393005 "Adequate social participation (finding)"
* subject = Reference(bh-patient-example) "James Wolff"
* statusDate = "2024-02-01"

Instance: food-insecurity-example-1
InstanceOf: Goal
Usage: #example
Title: "food-insecurity-example"
Description: "Example of food insecurity (goal)"
* meta.profile = "http://hl7.org/fhir/us/sdoh-clinicalcare/StructureDefinition/SDOHCC-Goal"
* lifecycleStatus = #active
* achievementStatus = $goal-achievement#improving "Improving"
* category = $SDOHCC-CodeSystemTemporaryCodes#food-insecurity "Food Insecurity"
* description = $sct#1078229009 "Food security"
* subject = Reference(bh-patient-example) "James Wolff"
* target.measure = $loinc#88124-3 "Food insecurity risk [HVS]"
* target.detailCodeableConcept = $loinc#LA19983-8 "No risk"
* target.dueDate = "2025-12-10"
* statusDate = "2024-02-01"

Instance: housing-insecurity-example-1
InstanceOf: Goal
Usage: #example
Title: "housing-insecurity-example"
Description: "Example of housing insecurity (goal)"
* meta.profile = "http://hl7.org/fhir/us/sdoh-clinicalcare/StructureDefinition/SDOHCC-Goal"
* lifecycleStatus = #active
* achievementStatus = $goal-achievement#improving "Improving"
* category = $SDOHCC-CodeSystemTemporaryCodes#housing-instability "Housing Instability"
* description = $sct#611211000124100 "Housing security (finding)"
* subject = Reference(bh-patient-example) "James Wolff"
* target.measure = $loinc#93033-9 "Are you worried about losing your housing [PRAPARE]"
* target.detailCodeableConcept = $loinc#LA33-6 "Yes"
* target.dueDate = "2024-12-10"
* statusDate = "2024-02-01"

Instance: transportation-insecurity-example-1
InstanceOf: Goal
Usage: #example
Title: "transportation-insecurity-example"
Description: "Example of transportation insecurity (goal)"
* meta.profile = "http://hl7.org/fhir/us/sdoh-clinicalcare/StructureDefinition/SDOHCC-Goal"
* lifecycleStatus = #active
* achievementStatus = $goal-achievement#improving "Improving"
* description = $sct#713458007 "Lack of access to transportation (finding)"
* subject = Reference(bh-patient-example) "James Wolff"
* statusDate = "2024-02-01"

Instance: no-morphine-preference-observation-example-1
InstanceOf: Observation
Usage: #example
Title: "no-morphine-preference-obs-example"
Description: "Example of patient treatment preference for no morphine"
* meta.profile = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-treatment-intervention-preference"
* status = #final
* category = $us-core-category#treatment-intervention-preference "Treatment Intervention Preference"
* category.text = "Treatment Intervention Preference"
* code = $loinc#75773-2 "Goals, preferences, and priorities for medical treatment Narrative - Reported"
* code.text = "Goals, preferences, and priorities for medical treatment Narrative - Reported"
* subject = Reference(bh-patient-example) "James Wolff"
* effectiveDateTime = "2024-02-01"
* performer = Reference(pcp-provider-example-1) "Dr. Doc Family"
* valueString = "James made sure to let the staff know that he does NOT want morphine for his chest pain, citing a past struggle with opioids and other substances."
