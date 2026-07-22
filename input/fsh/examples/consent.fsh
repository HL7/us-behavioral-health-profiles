// =====================================================================
// USCDI+ BH Data Class: Consent
// =====================================================================

Instance: SDOHCC-ConsentInformationDisclosure-example-1
InstanceOf: Consent
Usage: #example
Title: "consent-disclosure-example"
Description: "Example of patient HIPAA consent form for mental health providers (custodian). The consent (PDF form) content is encoded (base64)"
* meta.profile = "http://hl7.org/fhir/us/sdoh-clinicalcare/StructureDefinition/SDOHCC-Consent"
* status = #active
* scope = $consentscope#patient-privacy "Privacy Consent"
* category = $v3-ActCode#IDSCL "information disclosure"
* patient = Reference(bh-patient-example) "James Wolff"
* dateTime = "2024-02-01"
* organization = Reference(mh-provider-example-1)
* sourceAttachment.contentType = #text/plain
* sourceAttachment.data = "Tm8gYWN0aXZpdHkgcmVzdHJpY3Rpb24sIHJlZ3VsYXIgZGlldCwgZm9sbG93IHVwIGluIHR3byB0byB0aHJlZSB3ZWVrcyB3aXRoIHByaW1hcnkgY2FyZSBwcm92aWRlci4="
* policyRule = $consentpolicycodes#hipaa-auth "HIPAA Authorization"
