// =====================================================================
// USCDI+ BH Data Class: Adverse Event
// =====================================================================

Instance: fall-adverse-event-example-1
InstanceOf: AdverseEvent
Usage: #example
* actuality = #actual
* event = $sct#1912002 "Fall (event)"
* event.text = "Fall"
* subject = Reference(bh-patient-example) "James Wolff"
