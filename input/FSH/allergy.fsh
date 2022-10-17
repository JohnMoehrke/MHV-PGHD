// MHV Allergy or Intolerance
// note that sushi only supports FHIR R4, so this is on R4 with a need to backport the resulting StructureDefinition
Profile:        MHVallergy
Parent:         http://hl7.org/fhir/us/core/StructureDefinition/us-core-allergyintolerance
Id:             VA.MHV.allergy
Title:          "VA MHV Allergy or Intolerance"
Description:    """
A profile on the AllergyIntolerance that declares how MHV will Create/Update in PGHD for allergy or intolerance.

Given that MyHealtheVet has access to the medical record (Vista and Cerner), there should be logic keeping a patient from entering a duplicate allergy or intolerance. 

* Derived off of US-Core Allergy
* must be marked with MHV app tag
* must point at the patient
* must indicate patient is the asserter
* may have recorder be the user (e.g. delegate)
* must have clinicalStatus of active
* may have type set to allergy or intolerance (default blank)
* must have a recordedDate of the date entered
* must have a onsetDateTime from the UI
* must have a code.text or code.coding from a valueset from the UI
* may have a category from the UI
* may have a severity from the UI
* must have a reaction.note or reaction.manifestation from the UI
* may have a comments note from the UI
* once created will or might have an id, versionId, lastUpdated, text, and identifier
* DSTU2 uses slightly different element names (e.g., substance and onset)
"""
* ^version = "0.1.0"
* ^date = "2021-04-14"
* meta.tag 1..1
* meta.tag = https://wiki.mobilehealth.va.gov/x/Onc1C#2ce6d9aa-c068-4809-8dda-662bcb16d09a
* asserter only Reference(Patient)
* clinicalStatus = http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical#active
* verificationStatus 1..1
* type 1..1
* category 1..1
* code 1..1
* onsetDateTime 1..1
* reaction 1..1
* reaction.manifestation 1..1
* reaction.severity 0..1
* reaction.description 0..1
// everything not allowed
* criticality 0..0
* encounter 0..0
* lastOccurrence 0..0
* reaction.substance 0..0
* reaction.onset 0..0
* reaction.exposureRoute 0..0
* reaction.note 0..0

//  mappings to MHV UI 
Mapping: MHV-UI
Source:	VA.MHV.allergy
Target: "MHV-UI"
Title: "MyHealtheVet mapping to FHIR/PGHD"
* -> "MHV-UI" "Used in the MyHealtheVet Allergy User Interface"
* meta.tag -> "MHV tag"
* code -> "Allergy: UI value"
* patient -> "the Patient"
* asserter -> "the Patient"
* recorder -> "the user (Patient or delegate)"
* clinicalStatus -> "active"
* type -> "allergy vs intolerance"
* recordedDate -> "the date recorded"
* onsetDateTime -> "Onset Date: UI value"
* category -> "Kind: UI value"
* note -> "Comment: UI value"
* reaction.severity -> "Severity: UI value"
* reaction.description -> "Reaction: UI value"
* reaction.manifestation -> "Reaction: UI value"

Instance:   ex-MHV-allergy-0
InstanceOf: VA.MHV.allergy
Title: "Example of an MHV allergy R4 to aspirin, no note"
Description:      "holding typical values"
//* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* meta.tag = https://wiki.mobilehealth.va.gov/x/Onc1C#2ce6d9aa-c068-4809-8dda-662bcb16d09a
* clinicalStatus = http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical#active
* verificationStatus = http://terminology.hl7.org/CodeSystem/allergyintolerance-verification#unconfirmed
* type = #allergy
* category = #medication
* code = SCT#293586001 "Aspirin allergy"
* patient = Reference(Patient/ex-patient)
* asserter = Reference(Patient/ex-patient)
* recorder = Reference(Patient/ex-patient)
* onsetDateTime = 2020-12-25T23:50:50-05:00
* recordedDate = 2020-12-25T23:50:50-05:00
* reaction.manifestation = SCT#39579001 "Anaphylaxis"
* reaction.description = "Anaphylaxis"
* note.text = "hard to breath, but able to"

// TODO need more allergy examples
