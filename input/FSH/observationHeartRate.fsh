// using FHIR core vitalsigns. not using FHIR core heartrate as it causes build failures
Profile:        MHVheartRate
Parent:         http://hl7.org/fhir/StructureDefinition/heartrate
Id:             VA.MHV.heartRate
Title:          "VA MHV HeartRate Observation"
Description:    """
A profile on the Observation that declares how MHV will Create in PGHD for heart rate measurements.

Note this is compliant with FHIR core vital-signs.

- must be marked with MHV app tag
- must have vital-signs category
- must have LOINC#8867-4 code
- must have effectiveDateTime
  - others might use effectivePeriod
- must have valueQuantity with units only of beats per minute
  - must be value 10 <= n <= 250
- must have status at final
- must point at the patient
- may have a note (comment)
- once created will or might have an id, versionId, lastUpdated, text, and identifier
"""
* ^version = "0.3.0"
* ^date = "2021-09-08"
* ^experimental = false
// this is what the MHV / PGD mapping table says
* meta.tag 1..1
* meta.tag = https://wiki.mobilehealth.va.gov/x/Onc1C#2ce6d9aa-c068-4809-8dda-662bcb16d09a
* category 1..1
// this category requirement is already in core vital-signs, build fails examples with this explicitly here
//* category = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
// this code requirement is already in core vital-signs for heartrate
//* code = LOINC#8867-4 "Heart rate"
* effectiveDateTime 1..1
* value[x] only Quantity
* valueQuantity.unit = UCUM#/min
* valueQuantity.value ^minValueQuantity = 10 UCUM#/min
* valueQuantity.value ^maxValueQuantity = 250 UCUM#/min
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


