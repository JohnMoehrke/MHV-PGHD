// MHV Observation for Body Weight
// using FHIR core vitalsigns, tried to use the core bodyweight but some logic (builder) problem creates errors in the examples valueQuantity
Profile:        MHVbodyWeight
Parent:         http://hl7.org/fhir/StructureDefinition/vitalsigns
Id:             VA.MHV.bodyWeight
Title:          "VA MHV BodyWeight Observation"
Description:    """
A profile on the Observation that declares how MHV will Create/Update in PGHD for body weight measurements.

Note this is compliant with FHIR core vital-signs.

- must be marked with MHV app tag
- must have vital-signs category
- must have LOINC#29463-7 code
- must have effectiveDateTime
- must have valueQuantity with units from the MHV body weights (lbs and kg)
  - must be value 60 < n < 1000 lbs
- must have status at final
- must point at the patient
- may have a note (comment)
- once created will or might have an id, versionId, lastUpdated, text, and identifier
"""
* ^version = "0.2.0"
* ^date = "2021-09-08"
* ^experimental = false
//Note this could be derived off of the international profile for http://hl7.org/fhir/StructureDefinition/bodyweight. But doing that causes alot of indirection, and doesn't seem to be as blunt as writing it all inline here.
// this is what the MHV / PGD mapping table says
* meta.tag 1..1
* meta.tag = https://wiki.mobilehealth.va.gov/x/Onc1C#2ce6d9aa-c068-4809-8dda-662bcb16d09a
* category 1..1
// this category requirement is already in core vital-signs, build fails examples with this explicitly here
//* category = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* code = LOINC#29463-7
* effectiveDateTime 1..1
* value[x] only Quantity
* valueQuantity.unit from MHVbodyWeights
* valueQuantity.value ^minValueQuantity = 60 UCUM#[lb_av]
* valueQuantity.value ^maxValueQuantity = 1000 UCUM#[lb_av]
* status = #final
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

ValueSet: MHVbodyWeights
Id: mhv-body-weights
Title: "The body weight measurement types that MHV supports"
Description: "These are the UCUM types that MHV supports. This is a subset of the full bodyWeight types (which also brings in grams. Others might also include stone)."
* UCUM#[lb_av]
* UCUM#kg
