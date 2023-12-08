
// using FHIR core vitalsigns as that profile requires different codes that MHV/PGHD have not agreed to allow
// http://hl7.org/fhir/us/core/StructureDefinition-us-core-pulse-oximetry.html
Profile:        MHVbloodOxygenSat
Parent:         http://hl7.org/fhir/StructureDefinition/oxygensat
Id:             VA.MHV.bloodOxygenSat
Title:          "VA MHV Blood Oxygen Saturation Observation"
Description:    """
A profile on the Observation that declares how MHV will Read/Create in PGHD for blood Oxygen Saturation measurements (aka Pulse Ox).

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
- MHV captures Oxygen Setting, but this is not captured or stored in PGHD
- once created will or might have an id, versionId, lastUpdated, text, and identifier
- DSTU2 use comment rather than note
"""
* ^version = "0.3.1"
* ^date = "2023-12-07"
* ^experimental = false
// this is what the MHV / PGD mapping table says
* meta.tag 1..1
* meta.tag = https://wiki.mobilehealth.va.gov/x/Onc1C#2ce6d9aa-c068-4809-8dda-662bcb16d09a
* code.coding 1.. // hack to make FHIR core profiles not throw an error
// FHIR Core R4 requires 2708-6

* code.coding contains ox1 1..1
* code.coding[ox1].system 1..1
* code.coding[ox1].system only uri
* code.coding[ox1].system = "http://loinc.org" (exactly)
* code.coding[ox1].code 1..1
* code.coding[ox1].code only code
* code.coding[ox1].code = #59408-5 (exactly)

* effectiveDateTime 1..1
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

