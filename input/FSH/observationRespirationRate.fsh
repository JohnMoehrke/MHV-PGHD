// using FHIR core vitalsigns as that profile requires different codes that MHV/PGHD have not agreed to allow
// http://hl7.org/fhir/R4/observation-vitalsigns.html
Profile:        MHVrespirationRate
Parent:         http://hl7.org/fhir/StructureDefinition/resprate
Id:             VA.MHV.respirationRate
Title:          "VA MHV Respiration Rate Observation"
Description:    """
A profile on the Observation that declares how MHV will Read/Create in PGHD for respiration rate measurements. This is mostly used in conjunction with Blood Oxygen Saturation (aka PulseOx).

This profile is consistent with FHIR core Vital-Signs for Respiration Rate

- must be marked with MHV app tag
- must have vital-signs category
- must have LOINC#9279-1 code 
  - FHIR Core, Argonaut and VCM use 9279-1
- must have effectiveDateTime
  - others might use effectivePeriod
- must have valueQuantity with units only of breaths per minute
  - typical is 12-16 breaths per minute
  - must be a value 5 <= n <=120
- must have status at final or preliminary
- must point at the patient
- may have a note (comment)
- once created will or might have an id, versionId, lastUpdated, text, and identifier
- DSTU2 use comment rather than note
"""
* ^version = "0.2.0"
* ^date = "2021-09-08"
* ^experimental = false
// this is what the MHV / PGD mapping table says
* meta.tag 1..1
* meta.tag = https://wiki.mobilehealth.va.gov/x/Onc1C#2ce6d9aa-c068-4809-8dda-662bcb16d09a
//* category 1..1
// don't add this category constraint as it is already in fhir core
//* category = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
//* code.coding[RespRateCode] = LOINC#9279-1 "Respiratory rate"
* effectiveDateTime 1..1
* value[x] only Quantity
* valueQuantity.unit = UCUM#/min
* valueQuantity.value ^minValueQuantity = 5 UCUM#/min
* valueQuantity.value ^maxValueQuantity = 120 UCUM#/min
// status of preliminary and final found in the PGHD database
//* status = #final
* subject 1..1
* subject only Reference(Patient)
* note 0..1
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
* method 0..0
* specimen 0..0
* device 0..0
* referenceRange 0..0
* hasMember 0..0
* derivedFrom 0..0
* component 0..0

