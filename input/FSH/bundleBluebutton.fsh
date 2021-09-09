// MHV BlueButton for PGHD data
// note that sushi only supports FHIR R4, so this is on R4 with a need to backport the resulting StructureDefinition
Profile:        MHVbundleBluebutton
Parent:         Bundle
Id:             VA.MHV.BlueBundle
Title:          "VA MHV BlueButton Bundle"
Description:    "A profile on the Bundle that declares how MHV will Create/Update in PGHD for BlueButton report.

**This is a work in progress. It is not agreed to, and it is not ready for review.**

* must be a document type Bundle
* must have a timestamp of when this was created
* must have a MHV Bluebutton type of a Composition 
* must include Patient Resource
* must include all Resources referenced by Composition 
* DSTU2 use comment rather than note 
"
* ^version = "0.1.0"
* ^date = "2020-10-24"
* ^experimental = true
* meta.tag 1..1
* meta.tag = https://wiki.mobilehealth.va.gov/x/Onc1C#2ce6d9aa-c068-4809-8dda-662bcb16d09a
* type = #document // this will force the Bundle to include a Composition
* timestamp 1..1
* entry ^slicing.discriminator.type = #profile
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #open
* entry ^slicing.description = "Slicing based on the profile conformance of the entry"
* entry and entry.resource MS
* entry contains 
    Patient 1..1 MS and 
    MHVcompositionBluebutton 1..1 MS
* entry[MHVcompositionBluebutton].resource only MHVcompositionBluebutton
* entry[MHVcompositionBluebutton] ^short = "BlueButton composition"
* entry[MHVcompositionBluebutton] ^definition = "The details of the composition including what is in there and what timerange"
* entry[Patient].resource only Patient
* entry[Patient] ^short = "the Patient"
* entry[Patient] ^definition = "the Patient"
