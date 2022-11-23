
// using FHIR core vitalsigns as that profile requires different codes that MHV/PGHD have not agreed to allow
// http://hl7.org/fhir/us/core/StructureDefinition-us-core-pulse-oximetry.html
Profile:        MHVbloodOxygenSat
Parent:         http://hl7.org/fhir/StructureDefinition/vitalsigns
Id:             VA.MHV.bloodOxygenSat
Title:          "VA MHV Blood Oxygen Saturation Observation"
Description:    """
A profile on the Observation that declares how MHV will Read/Create/Update in PGHD for blood Oxygen Saturation measurements (aka Pulse Ox).

This profile is consistent with FHIR core Vital-Signs for Oxygen Saturation

- must be marked with MHV app tag
- must have vital-signs category
- must have LOINC#59408-5 code AND LOINC#2708-6
  - Argonaut and VCM use 59408-5
  - FHIR Core R4 also adds 2708-6
- must have effectiveDateTime 
  - others might use effectivePeriod
- must have a valueQuantity with UCUM '%' units
  * must be between 50% <= n <= 100%
- must have status at final or preliminary
- must point at the patient
- may have a hasMember of a heart-rate and/or respiration-rate
- may have a note (comment)
- once created will or might have an id, versionId, lastUpdated, text, and identifier
- DSTU2 use comment rather than note
"""
* ^version = "0.3.0"
* ^date = "2021-09-08"
* ^experimental = false
// this is what the MHV / PGD mapping table says
* meta.tag 1..1
* meta.tag = https://wiki.mobilehealth.va.gov/x/Onc1C#2ce6d9aa-c068-4809-8dda-662bcb16d09a
//* category 1..1
// don't add this category constraint as it is already in fhir core
//* category = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
// MHV records using two codes as there are two different codes based on the version of the oxygen saturation profiles from FHIR and Argonaut
// Argonaut and VCM use 59408-5
// FHIR Core R4 also adds 2708-6
* code.coding ^slicing.discriminator.type = #value
* code.coding ^slicing.discriminator.path = "$this"
* code.coding ^slicing.rules = #closed
* code.coding 2..2
* code.coding contains ox1 1..1 and ox2 1..1
* code.coding[ox1] = LOINC#59408-5 "Oxygen saturation in Arterial blood by Pulse oximetry"
* code.coding[ox2] = LOINC#2708-6 "Oxygen saturation in Arterial blood"
* effectiveDateTime 1..1
* value[x] only Quantity
* valueQuantity.unit = UCUM#%
* valueQuantity.value ^minValueQuantity = 50 UCUM#%
* valueQuantity.value ^maxValueQuantity = 100 UCUM#%
// status of preliminary and final found in the PGHD database
//* status = #final
* subject 1..1
* subject only Reference(Patient)
* hasMember MS
* hasMember 0..2
* hasMember only Reference(VA.MHV.heartRate or VA.MHV.respirationRate)
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
* derivedFrom 0..0
* component 0..0

