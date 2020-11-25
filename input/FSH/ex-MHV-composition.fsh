Instance:   ex-MHV-Composition-0
InstanceOf: MHVcompositionBluebutton
Title: "Example of an MHV BlueButton Document Composition"
Description:      "holding typical values"
//* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* meta.tag = https://wiki.mobilehealth.va.gov/x/Onc1C#2ce6d9aa-c068-4809-8dda-662bcb16d09a
* status = #final
//* type = LOINC#51855-5 "Patient Note"
* type = LOINC#55188-7 "Patient data Document"
* subject = Reference(Patient/ex-patient)
* date = 2020-11-24
* author = Reference(Patient/ex-patient)
* title = "All Vital-Signs entered in past 60 days"
* section.title = "Blood Pressures"
* section.code = LOINC#8716-3 "Vital Signs"
* section.mode = #snapshot
* section.entry = Reference(Observation/ex-MHV-weight)
* section.entry[1] = Reference(Observation/ex-MHV-bloodSugar-0)