// MHV Immunization
// note that sushi only supports FHIR R4, so this is on R4 with a need to backport the resulting StructureDefinition
Profile:        MHVimmunization
Parent:         http://hl7.org/fhir/us/core/StructureDefinition/us-core-immunization
Id:             VA.MHV.immunization
Title:          "VA MHV Immunization"
Description:    """
A profile on the Immunization that declares how MHV will Create/Update in PGHD for an immunization.

**Proposed mapping not yet approved for implementation**

Given that MyHealtheVet has access to medical record (Vista and Cerner) of immunizations, there should be logic keeping a patient from entering a duplicate immunization.

* Derived off of US-Core Immunization
* must be marked with MHV app tag
* must point at the patient
* must have status of completed (can not enter not-done or entered-in-error)
* must have a code.text or code.coding from a valueset from the UI
  * codes from given valueSet
* must have a date (occuranceDateTime) the vaccine was administered from the UI
* must indicate the date this record is being recorded into PGHD 
* must be indicated this data are not official record (primarySource=false)
* must indicate this is being recorded from patient recollection
* any reaction is recorded as a contained observation
* may have a comment note
* once created will or might have an id, versionId, lastUpdated, text, and identifier
* DSTU2 uses slightly different element names (e.g., substance and onset)
"""
* ^version = "0.1.0"
* ^date = "2021-04-14"
* ^experimental = true
* meta.tag 1..1
* meta.tag = https://wiki.mobilehealth.va.gov/x/Onc1C#2ce6d9aa-c068-4809-8dda-662bcb16d09a
* status = #completed
//* vaccineCode from http://hl7.org/fhir/us/core/ValueSet/us-core-vaccines-cvx
// TODO is this set of codes the right one? It likely is more modern than the existing MHV list
* occurrence[x] only dateTime
* occurrence[x] 1..1
* recorded 1..1
* primarySource = false
* reportOrigin = http://terminology.hl7.org/CodeSystem/immunization-origin#recall
* route 1..1
// TODO note that the route vocabulary is bigger than existing MHV, not much bigger. likely more modern.
* note 0..1
* reaction.detail ^type.aggregation = #contained
// TODO characterize the contained Observations for the given reactions.
// not allowed
* statusReason 0..0
* encounter 0..0
* location 0..0
* manufacturer 0..0
* lotNumber 0..0
* expirationDate 0..0
* site 0..0
* doseQuantity 0..0
* performer 0..0
* reasonCode 0..0
* reasonReference 0..0
* isSubpotent 0..0
* education 0..0
* programEligibility 0..0
* fundingSource 0..0
* protocolApplied 0..0

//  mappings to MHV IM UI 
Mapping: MHV-IM-UI
Source:	VA.MHV.immunization
Target: "MHV-UI"
Title: "MyHealtheVet mapping to FHIR/PGHD"
* -> "MHV-UI" "Used in the MyHealtheVet Immunization User Interface"
* meta.tag -> "MHV tag"
* patient -> "the Patient"
* status -> "complete"
* recorded -> "the date recorded"
* occurrence[x] -> "Date Received: UI value"
* vaccineCode -> "Immunization: UI value"
* note -> "Comment: UI value"
* primarySource -> "false"
* reportOrigin -> "Patient recall"
* route -> "Method: UI value"
* reaction.detail -> "Reaction: UI value"


Instance:   ex-MHV-immunization-0
InstanceOf: VA.MHV.immunization
Title: "Example of an MHV immunization R4 to flu, no note, no reaction"
Description:      "holding typical values"
//* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* meta.tag = https://wiki.mobilehealth.va.gov/x/Onc1C#2ce6d9aa-c068-4809-8dda-662bcb16d09a
* status = #completed
* vaccineCode = http://hl7.org/fhir/sid/cvx#111
* patient = Reference(Patient/ex-patient)
* occurrenceDateTime = 2020-12-25T23:50:50-05:00
* recorded = 2020-12-25T23:50:50-05:00
* primarySource = false
* reportOrigin = http://terminology.hl7.org/CodeSystem/immunization-origin#recall
* route = http://terminology.hl7.org/CodeSystem/v3-RouteOfAdministration#IM

// TODO need more Immunization examples

