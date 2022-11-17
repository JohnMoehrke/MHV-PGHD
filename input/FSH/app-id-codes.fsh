// Seems there is not a consistent system value, so here are two different codesystems for two codes I know about

CodeSystem:  AppIdCodes
Id: OnclC
Title: "PGD apps"
Description:  "App identifiers for use with PGD"
* ^url = "https://wiki.mobilehealth.va.gov/x/Onc1C"
* ^caseSensitive = true
* ^experimental = false
* #2ce6d9aa-c068-4809-8dda-662bcb16d09a "MyHealtheVet"
* #49d985b4-6f9d-47e3-bbc9-a56c840ba4a6 "Sync My Health Data"

CodeSystem: AppIdCodesToo
Id: CPM
Title: "PGD other apps"
Description: "Seems to be used by Mobile Kidney"
* ^url = "https://wiki.mobilehealth.va.gov/display/PGDMS/Client+Provenance+Mapping"
* ^caseSensitive = true
* ^experimental = false
* #1e11b692-1898-4351-a7c5-428f61c91817 "MobileKidney"

ValueSet: AllAppIdCodes
Title: "PGD App Id Codes"
Description: "All valid App ID codes"
* ^experimental = false
* include codes from system AppIdCodes
* include codes from system AppIdCodesToo
