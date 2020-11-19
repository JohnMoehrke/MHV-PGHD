Alias: SNO = http://snomed.info/sct
Alias: UCUM = http://unitsofmeasure.org
Alias: LOINC = http://loinc.org

// note that sushi only supports FHIR R4, so this is on R4 with a need to backport the resulting StructureDefinition
Profile:        MHVpain
Parent:         Observation
Id:             VA.MHV.pain
Title:          "VA MHV Pain Observation"
Description:    "A profile on the Observation that declares how MHV will Create/Update in PGHD for pain measurements."
* ^version = "0.1.0"
* ^date = "2020-11-19"
// this is what the MHV / PGD mapping table says
* meta.tag 1..1
* meta.tag = https://wiki.mobilehealth.va.gov/x/Onc1C#2ce6d9aa-c068-4809-8dda-662bcb16d09a
* category 1..1
* category = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
// MHV records using two codes as there are mobile apps that only look for the snomed code
//* code.coding ^slicing.discriminator.type = #value
//* code.coding ^slicing.discriminator.path = "coding"
//* code.coding ^slicing.rules = #closed
//* code.coding ^slicing.ordered = false
//* code.coding ^slicing.description = "Slice on coding"
//* code.coding[loincCode] = LOINC#72514-3 "Pain severity - 0-10 verbal numeric rating"
//* code.coding[snomedCode] = SNO#225908003 "Pain Score"
* effectiveDateTime 1..1
* value[x] only Quantity
* valueQuantity.unit 0..0
* valueQuantity.value ^minValueInteger = 0
* valueQuantity.value ^maxValueInteger = 10
* status = #final
* subject 1..1
* subject only Reference(Patient)
// using note in R4, where we use comments in DSTU2
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
* bodySite 0..0

