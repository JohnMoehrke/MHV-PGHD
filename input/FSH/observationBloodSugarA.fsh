// note that Argonaut and us-core categorize blood sugar as a Laboratory, not a vitalsign
Profile:        MHVbloodSugarA
Parent:         Observation
Id:             VA.MHV.bloodSugarA
Title:          "VA MHV Blood Sugar Observation A"
Description:    """
A profile on the Observation for blood sugar measurements that was common in DSTU2 version of PGHD. MHV will continue to display these in addition to the current. MHV will not create using this profile. Eating routine is indicated as a component with string (like VCM shows).

** This was used prior to the move to R4.**

- must be marked with MHV app tag
- must have vital-signs category
- must have LOINC#2339-0 code
- must have effectiveDateTime
- must have valueQuantity with units only of mg/dL
- must have status at final
- must point at the patient
- may have a method of clinical lab test, sterile lancet, transcutaneous, implant, or other
- may have a eating routine component with string of: 
  - Fasting (8 hours)
  - After Meal
  - unknown
- may have a note (comment)
- once created will or might have an id, versionId, lastUpdated, text, and identifier
"""
* ^version = "0.1.0"
* ^date = "2021-09-03"
* ^experimental = true
// this is what the MHV / PGD mapping table says
* meta.tag 1..1
* meta.tag = https://wiki.mobilehealth.va.gov/x/Onc1C#2ce6d9aa-c068-4809-8dda-662bcb16d09a
* category 1..1
* category = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* code.coding ^slicing.discriminator.type = #value
* code.coding ^slicing.discriminator.path = "$this"
* code.coding ^slicing.rules = #open
* code.coding 1..*
* code.coding contains 
    loincCode1 1..1 and
    loincCode2 0..1
* code.coding[loincCode1] = LOINC#2339-0 "Glucose [Mass/volume] in Blood"
* code.coding[loincCode2] = LOINC#2345-7
* effectiveDateTime 1..1
* value[x] only Quantity
* valueQuantity.unit = UCUM#mg/dL
* method from MHVbloodSugarMethods
* component 0..1
* component ^slicing.discriminator.type = #pattern
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #closed
* component ^slicing.description = "Eating Routine is recorded as a string"
* component contains bodyContext 1..1
* component[bodyContext].code = SCT#162549003 "Eating routine (observable entity)"
* component[bodyContext].value[x] only string
// these should be codes, but are not codes today in MHV
//* component[bodyContext].valueCodeableConcept from MHVbloodSugarContext
* status = #final
* subject 1..1
* subject only Reference(Patient)
* note 0..1
* note.author[x] 0..0
* note.time 0..0
// things that are not declared in the mapping table but likely are populated because they are normal REST processing
//* id 0..1
//* meta.versionId 0..1
//* meta.lastUpdated 0..1
//* meta.profile 0..1
//* meta.source 0..0
//* identifier 0..*
//* text 0..0
// this is making everything else in observation forbidden. If they show up, MHV should not misbehave. MHV should NEVER populate these in a Create or Update.
* meta.security 0..0
* implicitRules 0..0
* language 0..0
* contained 0..0
* extension 0..0
* modifierExtension 0..0
* basedOn 0..0
* partOf 0..0
* focus 0..0
* encounter 0..0
* issued 0..0
* performer 0..0
* dataAbsentReason 0..0
* interpretation 0..0
* bodySite 0..0
//* method 0..0
* specimen 0..0
* device 0..0
* referenceRange 0..0
* hasMember 0..0
* derivedFrom 0..0
//* component 0..0

