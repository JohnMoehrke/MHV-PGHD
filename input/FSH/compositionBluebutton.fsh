// MHV BlueButton for PGHD data
// note that sushi only supports FHIR R4, so this is on R4 with a need to backport the resulting StructureDefinition
Profile:        MHVcompositionBluebutton
Parent:         Composition
Id:             VA.MHV.BlueComposition
Title:          "VA MHV BlueButton Composition"
Description:    "A profile on the Composition that declares how MHV will Create/Update in PGHD for BlueButton report.
* must be marked with MHV app tag
* must be status final
* must have a title explaining the content - for example: all vital-signs from past 60 days
* must have date stamp of when created (now)
* must be LOINC 55188-7 Patient data Document
* must point at the patient for both subject and author
* DSTU2 use comment rather than note 
"
* ^version = "0.1.0"
* ^date = "2020-10-24"
* meta.tag 1..1
* meta.tag = https://wiki.mobilehealth.va.gov/x/Onc1C#2ce6d9aa-c068-4809-8dda-662bcb16d09a
//* type = LOINC#51855-5 "Patient Note"
* type = LOINC#55188-7 "Patient data Document"
* date 1..1
* status = #final
* subject 1..1
* subject only Reference(Patient)
* author 1..1
* author only Reference(Patient)
* title 1..1

