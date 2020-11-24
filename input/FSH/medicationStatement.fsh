// note that sushi only supports FHIR R4, so this is on R4 with a need to backport the resulting StructureDefinition
Profile:        MHVmedication
Parent:         MedicationStatement
Id:             VA.MHV.medication
Title:          "VA MHV Medication"
Description:    "A profile on the MedicationStatement that declares how MHV will Create/Update in PGHD.
* must be marked with MHV app tag
* must have a medication
* must have a dosage
* must have a reason for use
* must have effectiveDateTime
* must have status at final
* must point at the patient
* may have a note 
* may have quantity
* may have frequency
* may have method of taking
* may have a rx number
* once created will or might have an id, versionId, lastUpdated, text, and identifier
"
* ^version = "0.1.0"
* ^date = "2020-11-23"
// this is what the MHV / PGD mapping table says
* meta.tag 1..1
* meta.tag = https://wiki.mobilehealth.va.gov/x/Onc1C#2ce6d9aa-c068-4809-8dda-662bcb16d09a
* medication[x] only CodeableConcept
* effective[x] only Period
* effectivePeriod 1..1
* dateAsserted 1..1
* status = #active
* subject 1..1
* subject only Reference(Patient)
* note 0..1
* dosage 0..1
* dosage.route from MHVmedicationRoutes
* category 0..1
* reasonCode 0..1
* partOf 0..1 // for the dispense -> organization
* identifier 0..1
// things that are not declared in the mapping table but likely are populated because they are normal REST processing
//* id 0..1
//* meta.versionId 0..1
//* meta.lastUpdated 0..1
//* meta.profile 0..1
//* meta.source 0..0
//* text 0..0
// not these
* basedOn 0..0
* statusReason 0..0
* context 0..0
* derivedFrom 0..0
* reasonReference 0..0

ValueSet: MHVmedicationRoutes
Id: mhv-medication-routes
Title: "The routes of medication that MHV supports"
Description: "These are the SNOMED-CT routes for medications that MHV supports."
* SCT#26643006 	"Oral use"
* SCT#37161004 	"Rectal use"
* SCT#45890007 	"Transdermal use"
* SCT#6064005 	"Topical route"
* SCT#78421000 	"Intramuscular use"
* SCT#47625008 	"Intravenous use"
