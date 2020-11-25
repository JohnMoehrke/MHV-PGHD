// Seems there is not a consistent system value, so here are two different codesystems for two codes I know about

CodeSystem:  AppIdCodes
Id: OnclC
Title: "PGD apps"
Description:  "App identifiers for use with PGD"
* ^url = "https://wiki.mobilehealth.va.gov/x/Onc1C"
* #2ce6d9aa-c068-4809-8dda-662bcb16d09a "MyHealtheVet"

CodeSystem: AppIdCodesToo
Id: CPM
Title: "PGD other apps"
Description: "Seems to be used by Mobile Kidney"
* ^url = "https://wiki.mobilehealth.va.gov/display/PGDMS/Client+Provenance+Mapping"
* #1e11b692-1898-4351-a7c5-428f61c91817" "MobileKidney"

ValueSet: AllAppIdCodes
* include codes from system AppIdCodes
* include codes from system AppIdCodesToo
