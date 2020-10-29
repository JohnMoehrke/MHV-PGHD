// MHV Observation for Body Weight
// note that sushi only supports FHIR R4, so this is on R4 with a need to backport the resulting StructureDefinition
Profile:        MHVbodyWeight
Parent:         Observation
Id:             VA.MHV.bodyWeight
Title:          "VA MHV BodyWeight Observation"
Description:    "A profile on the Observation that declares how MHV will Create/Update in PGHD for body weight measurements."
* ^version = "0.1.0"
* ^date = "2020-10-21"

// this is what the mapping table says
* meta.tag 1..1
* meta.tag = https://wiki.mobilehealth.va.gov/x/Onc1C#2ce6d9aa-c068-4809-8dda-662bcb16d09a
* category 1..1
* category = http://hl7.org/fhir/observation-category#vital-signs
* code = http://loinc.org#29463-7
* effectiveDateTime 1..1
* value[x] only Quantity

//* valueQuantity.value 1..1
//* valueQuantity.comparator 0..0
//* valueQuantity.unit 1..1
* valueQuantity from http://hl7.org/fhir/ValueSet/ucum-bodyweight
// http://hl7.org/fhir/ValueSet/ucum-bodyweight#[lb_av]
// http://hl7.org/fhir/ValueSet/ucum-bodyweight#kg

* status = #final
* subject 1..1
* subject only Reference(Patient)
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
* note 0..0
* bodySite 0..0
* method 0..0
* specimen 0..0
* device 0..0
* referenceRange 0..0
* hasMember 0..0
* derivedFrom 0..0
* component 0..0
