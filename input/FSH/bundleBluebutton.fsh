// MHV BlueButton for PGHD data
// note that sushi only supports FHIR R4, so this is on R4 with a need to backport the resulting StructureDefinition
Profile:        MHVbluebutton
Parent:         Bundle
Id:             VA.MHV.BlueBundle
Title:          "VA MHV BlueButton Bundle"
Description:    "A profile on the Bundle that declares how MHV will Create/Update in PGHD for BlueButton report.
* must have Composition
* must have a timestamp of when this was created
* must contain everything referenced by Composition including Patient
* DSTU2 use comment rather than note 
"
* ^version = "0.1.0"
* ^date = "2020-10-24"
* meta.tag 1..1
* meta.tag = https://wiki.mobilehealth.va.gov/x/Onc1C#2ce6d9aa-c068-4809-8dda-662bcb16d09a
* type = #document // this will force the Bundle to include a Composition
* timestamp 1..1
// must be a MHV Composition
// must have a Patient