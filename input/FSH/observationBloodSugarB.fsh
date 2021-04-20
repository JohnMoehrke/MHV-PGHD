// note that sushi only supports FHIR R4, so this is on R4 with a need to backport the resulting StructureDefinition
// note that Argonaut and us-core categorize blood sugar as a Laboratory, not a vitalsign
Profile:        MHVbloodSugarB
Parent:         Observation
Id:             VA.MHV.bloodSugarB
Title:          "VA MHV Blood Sugar Observation alternative B"
Description:    "A profile on the Observation that declares how MHV will Create/Update in PGHD for blood sugar measurements. Indicate fasting status as a code.

Note that Blood Sugar is not part of FHIR core vital-signs.

* must be marked with MHV app tag
* must have vital-signs category
* must have LOINC#2339-0 code AND LOINC#2345-7
* may have indication of fasting (LOINC#1556-0), or 2-hours after meal (LOINC#6689-4)
* must have effectiveDateTime
* must have valueQuantity with units only of mg/dL
* must have status at final
* must point at the patient
* may have a method of clinical lab test, sterile lancet, transcutaneous, implant, or other
* may have a note (comment)
* once created will or might have an id, versionId, lastUpdated, text, and identifier
* DSTU2 use comment rather than note 
"
* ^version = "0.1.0"
* ^date = "2020-11-23"
// this is what the MHV / PGD mapping table says
* meta.tag 1..1
* meta.tag = https://wiki.mobilehealth.va.gov/x/Onc1C#2ce6d9aa-c068-4809-8dda-662bcb16d09a
* category 1..1
* category = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
// MHV records using two codes as there are mobile apps that only look for the second loinc code
* code.coding ^slicing.discriminator.type = #value
* code.coding ^slicing.discriminator.path = "$this"
* code.coding ^slicing.rules = #closed
* code.coding 2..4
* code.coding contains 
    loincCode1 1..1 and 
    loincCode2 1..1 and
    fasting 0..1 and
    afterMeal 0..1
* code.coding[loincCode1] = LOINC#2339-0 
* code.coding[loincCode2] = LOINC#2345-7
* code.coding[fasting] = LOINC#1556-0
* code.coding[afterMeal] = LOINC#6689-4
* effectiveDateTime 1..1
* value[x] only Quantity
* valueQuantity.unit = UCUM#mg/dL
* method from MHVbloodSugarMethods
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
* bodySite 0..0
//* method 0..0
* specimen 0..0
* device 0..0
* referenceRange 0..0
* hasMember 0..0
* derivedFrom 0..0
* component 0..0

//ValueSet: MHVbloodSugarMethods
//Id: mhv-blood-sugar-methods-sites
//Title: "The methods of measurement for blood sugar that MHV supports"
//Description: "These are the SNOMED body sites that MHV supports."
// this is not the snomed code for clinical lab test
//* SCT#15220000 "Laboratory Test"
//* SCT#350810002 "Lancet"
//* SCT#263902000 "Transcutaneous method"
//* SCT#261373009 "Implant technique"
// other choices not yet supported by MHV
//* SCT#271061004 "Random blood glucose measurement (procedure)"
//* SCT#308115004 "Self-monitoring of blood and urine glucose (procedure)"
//* SCT#308113006 "Self-monitoring of blood glucose (procedure)"
//* SCT#271064007 "Supper time blood sugar measurement (procedure)"


// these are not codes in MHV today, just using string
//ValueSet: MHVbloodSugarContext
//Id: mhv-blood-sugar-context
//Title: "The context of the measurement"

