// =====================================================================
// USCDI+ BH Data Class: Clinical Notes
// =====================================================================

Instance: mental-health-consult-note-example-1
InstanceOf: MentalHealthClinicalNotes
Usage: #example
Title: "mental-health-consult-example"
Description: "Example of a mental health consult note. Clinical details of note content are encoded (base64)"
* status = #current
* type = $loinc#34785-6 "Mental Health Consult Note"
* type.text = "Mental Health Consult Note"
* category = $us-core-documentreference-category#clinical-note "Clinical Note"
* category.text = "Clinical Note"
* subject.reference = "Patient/bh-patient-example"
* subject.display = "James Wolff"
* date = "2024-01-01T15:29:46+00:00"
* author.reference = "Practitioner/mental-health-provider-example-1"
* author.display = "Dr. Lazslo Cravensworth"
* content.attachment.contentType = #text/plain
* content.attachment.data = "Tm8gYWN0aXZpdHkgcmVzdHJpY3Rpb24sIHJlZ3VsYXIgZGlldCwgZm9sbG93IHVwIGluIHR3byB0byB0aHJlZSB3ZWVrcyB3aXRoIHByaW1hcnkgY2FyZSBwcm92aWRlci4="

Instance: mental-health-discharge-summary-example-1
InstanceOf: MentalHealthClinicalNotes
Usage: #example
Title: "mental-health-discharge-example"
Description: "Example of a mental health dsicharge summary note. Clinical details of note content are encoded (base64)"
* status = #current
* type = $loinc#78263-1 "Mental Health Discharge Summary"
* type.text = "Mental Health Discharge Summary"
* category = $us-core-documentreference-category#clinical-note "Clinical Note"
* category.text = "Clinical Note"
* subject.reference = "Patient/bh-patient-example"
* subject.display = "James Wolff"
* date = "2024-01-01T15:29:46+00:00"
* author.reference = "Practitioner/mental-health-provider-example-1"
* author.display = "Dr. Lazslo Cravensworth"
* content.attachment.contentType = #text/plain
* content.attachment.data = "Tm8gYWN0aXZpdHkgcmVzdHJpY3Rpb24sIHJlZ3VsYXIgZGlldCwgZm9sbG93IHVwIGluIHR3byB0byB0aHJlZSB3ZWVrcyB3aXRoIHByaW1hcnkgY2FyZSBwcm92aWRlci4="

Instance: mental-health-hx-physical-example-1
InstanceOf: MentalHealthClinicalNotes
Usage: #example
Title: "mental-health-physical-note-example"
Description: "Example of a mental health history and physical note. Clinical details of note content are encoded (base64)"
* status = #current
* type = $loinc#78306-8 "Mental Health History and Physical Note"
* type.text = "Mental Health History and Physical Note"
* category = $us-core-documentreference-category#clinical-note "Clinical Note"
* category.text = "Clinical Note"
* subject.reference = "Patient/bh-patient-example"
* subject.display = "James Wolff"
* date = "2024-01-01T15:29:46+00:00"
* author.reference = "Practitioner/mental-health-provider-example-1"
* author.display = "Dr. Lazslo Cravensworth"
* content.attachment.contentType = #text/plain
* content.attachment.data = "Tm8gYWN0aXZpdHkgcmVzdHJpY3Rpb24sIHJlZ3VsYXIgZGlldCwgZm9sbG93IHVwIGluIHR3byB0byB0aHJlZSB3ZWVrcyB3aXRoIHByaW1hcnkgY2FyZSBwcm92aWRlci4="

Instance: mental-health-procedure-example-1
InstanceOf: MentalHealthClinicalNotes
Usage: #example
Title: "mental-health-procedure-note-example"
Description: "Example of a mental health procedure note. Clinical details of note content are encoded (base64)"
* status = #current
* type = $loinc#78306-8 "Mental health History and physical note"
* type.text = "Mental health History and physical note"
* category = $us-core-documentreference-category#clinical-note "Clinical Note"
* category.text = "Clinical Note"
* subject.reference = "Patient/bh-patient-example"
* subject.display = "James Wolff"
* date = "2024-01-01T15:29:46+00:00"
* author.reference = "Practitioner/mental-health-provider-example-1"
* author.display = "Dr. Lazslo Cravensworth"
* content.attachment.contentType = #text/plain
* content.attachment.data = "Tm8gYWN0aXZpdHkgcmVzdHJpY3Rpb24sIHJlZ3VsYXIgZGlldCwgZm9sbG93IHVwIGluIHR3byB0byB0aHJlZSB3ZWVrcyB3aXRoIHByaW1hcnkgY2FyZSBwcm92aWRlci4="

Instance: mental-health-progress-example-1
InstanceOf: MentalHealthClinicalNotes
Usage: #example
Title: "mental-health-progress-note-example"
Description: "Example of a mental health progress note. Clinical details of note content are encoded (base64)"
* status = #current
* type = $loinc#78306-8 "Mental health History and physical note"
* type.text = "Mental health History and physical note"
* category = $us-core-documentreference-category#clinical-note "Clinical Note"
* category.text = "Clinical Note"
* subject.reference = "Patient/bh-patient-example"
* subject.display = "James Wolff"
* date = "2024-01-01T15:29:46+00:00"
* author.reference = "Practitioner/mental-health-provider-example-1"
* author.display = "Dr. Lazslo Cravensworth"
* content.attachment.contentType = #text/plain
* content.attachment.data = "Tm8gYWN0aXZpdHkgcmVzdHJpY3Rpb24sIHJlZ3VsYXIgZGlldCwgZm9sbG93IHVwIGluIHR3byB0byB0aHJlZSB3ZWVrcyB3aXRoIHByaW1hcnkgY2FyZSBwcm92aWRlci4="
