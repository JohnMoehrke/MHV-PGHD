
// using FHIR core vitalsigns, tried to use FHIR core bodytemp but some builder issue causes conflict in the valueQuantity
Profile:        MHVbodyTemperature
Parent:         http://hl7.org/fhir/StructureDefinition/vitalsigns
Id:             VA.MHV.bodyTemperature
Title:          "VA MHV Body Temperature Observation"
Description:    """
A profile on the Observation that declares how MHV will Create/Update/Read in PGHD for body temperature measurements.

Note this is compliant with FHIR core vital-signs.

- must be marked with MHV app tag
- must have vital-signs category
- must have LOINC#8310-5 code
- must have effectiveDateTime
- must have valueQuantity with units from the MHV body temperatures (F and C)
  - must be value between 92 <= n <= 108 Fahrenheit
- must have status at final
- must point at the patient
- may have a bodySite from MHV body temperature sites (tongue, underarm, ear, mouth, or rectum)
- may have a note (comment)
- once created will or might have an id, versionId, lastUpdated, text, and identifier
"""
* ^version = "0.2.0"
* ^date = "2021-09-08"
* ^experimental = false
// this is what the MHV / PGD mapping table says
* meta.tag 1..1
* meta.tag = https://wiki.mobilehealth.va.gov/x/Onc1C#2ce6d9aa-c068-4809-8dda-662bcb16d09a
* category 1..1
// this category requirement is already in core vital-signs, build fails examples with this explicitly here
//* category = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* code = LOINC#8310-5
* effectiveDateTime 1..1
* value[x] only Quantity
* valueQuantity.unit from MHVbodyTemperatures
* valueQuantity.value ^minValueQuantity = 92 UCUM#[degF]
* valueQuantity.value ^maxValueQuantity = 108 UCUM#[degF]
* status = #final
* subject 1..1
* subject only Reference(Patient)
* bodySite from MHVbodyTemperatureSites
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
* method 0..0
* specimen 0..0
* device 0..0
* referenceRange 0..0
* hasMember 0..0
* derivedFrom 0..0
* component 0..0

ValueSet: MHVbodyTemperatures
Id: mhv-body-temperatures
Title: "The body temperature measurement types that MHV supports"
Description: "These are the UCUM types that MHV supports."
* UCUM#[degF] "degree Fahrenheit"
* UCUM#Cel "degree Celsius"

// found at http://fhir.org/guides/hspc/core/0.1.0/ValueSet-bodytempbodylocation.html
ValueSet: MHVbodyTemperatureSites
Id: mhv-body-temperature-sites
Title: "The body temperature measurement sites that MHV supports"
Description: "These are the SNOMED body sites that MHV supports."
* SCT#422005 "Inferior surface of tongue"
* SCT#362732006 "Entire axillary region"
* SCT#1910005 "Entire ear"
* SCT#21082005 "Entire mouth region"
* SCT#181261002 "Entire rectum"
// groin is a historic body site in MHV, so it is allowed as a string
// unknown "groin"
// These are part of the valueset typically used for body temperature
* SCT#39937001 "Skin structure"
* SCT#362620003 "Entire temporal region"
* SCT#89837001 "Urinary bladder structure"
// also been discussed to include
//* SCT#8205005 "Wrist region structure"
//* SCT#7569003 "Finger structure"
//* SCT#8671006 "Structure of all toes"

