
// not using FHIR core vitalsigns as that profile requires different codes that MHV/PGHD have not agreed to allow
Profile:        MHVbloodPressure
Parent:         http://hl7.org/fhir/StructureDefinition/bp
Id:             VA.MHV.bloodPressure
Title:          "VA MHV Blood Pressure Observation"
Description:    """
A profile on the Observation that declares how MHV will Create/Read in PGHD for blood pressure measurements.

Note: This profile is now aligned with FHIR core Vital-Signs. 

- must be marked with MHV app tag
- must have vital-signs category
- FHIR core profile requires LOINC#85354-9
- must also have LOINC#55284-4 code AND LOINC#8716-3
  - 8716-3 was added as some mobile apps searched on this
- must have effectiveDateTime
  - others might use effectivePeriod
- must not have a value[x]
- must have two components
- must have systolic and diastolic component values in mm[Hg]
  - systolic must be between 20 <= s <= 300
  - diastolic must be between 20 <= d <= 250
- may have a related has-member heart-rate observation
- must have status at final
- must point at the patient
- may have a note (comment)
- once created will or might have an id, versionId, lastUpdated, text, and identifier

Later may have a position component (sitting, standing, supline, and resting)
"""
* ^version = "0.3.0"
* ^date = "2021-09-08"
* ^experimental = false
// this is what the MHV / PGD mapping table says
* meta.tag 1..1
* meta.tag = https://wiki.mobilehealth.va.gov/x/Onc1C#2ce6d9aa-c068-4809-8dda-662bcb16d09a
* code.coding 1.. // hack to make FHIR core profiles not throw an error
// FHIR Core R4 requires 85354-9

/* TODO: would like to add the following but it fails. However one can still add them to instances.
* code.coding contains loincCode1 1..1 and loincCode2 1..1
* code.coding[loincCode1] = LOINC#55284-4 "Blood pressure systolic and diastolic"
* code.coding[loincCode2] = LOINC#8716-3 "Vital signs"
*/

* effectiveDateTime 1..1
* component[SystolicBP].code.coding 1.. // hack to make FHIR core profiles not throw an error
* component[SystolicBP].valueQuantity.value ^minValueQuantity = 20 UCUM#mm[Hg] // "mmHg"
* component[SystolicBP].valueQuantity.value ^maxValueQuantity = 300 UCUM#mm[Hg] // "mmHg"
* component[DiastolicBP].code.coding 1.. // hack to make FHIR core profiles not throw an error
* component[DiastolicBP].valueQuantity.value ^minValueQuantity = 20 UCUM#mm[Hg] // "mmHg"
* component[DiastolicBP].valueQuantity.value ^maxValueQuantity = 250 UCUM#mm[Hg] // "mmHg"
* status = #final
* subject 1..1
* subject only Reference(Patient)
* hasMember MS
* hasMember 0..1
* hasMember only Reference(VA.MHV.heartRate)
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

ValueSet: MHVbloodPressurePositions
Id: mhv-blood-pressure-positions
Title: "The methods of measurement for blood pressure that MHV supports"
Description: "These are the loinc body positions that MHV supports on blood pressure."
* ^experimental = false
* LOINC#69000-8 "Heart rate - sitting"
* LOINC#69001-6 "Heart rate - standing"
* LOINC#68999-2 "Heart rate - supine"
* LOINC#40443-4 "Heart rate - resting"