Instance:   ex-MHV-bloodPressure-0
InstanceOf: VA.MHV.bloodPressure
Title: "Example of an MHV blood pressure R4 observation, minimal"
Description:      "holding typical values of 140/90"
//* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* meta.tag = https://wiki.mobilehealth.va.gov/x/Onc1C#2ce6d9aa-c068-4809-8dda-662bcb16d09a
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs "Vital Signs"
* code.coding = LOINC#55284-4 "Blood pressure systolic and diastolic"
* code.coding[1] = LOINC#8716-3 "Vital Signs"
* subject = Reference(Patient/ex-patient)
* effectiveDateTime = 2004-12-25T23:50:50-05:00
* component.code = LOINC#8480-6 "Systolic blood pressure"
* component.valueQuantity = 140.0 'mm[Hg]'
* component[1].code = LOINC#8462-4 "Diastolic blood pressure"
* component[1].valueQuantity = 90.0 'mm[Hg]'
// no comments in this one as comments is only in DSTU2
* note.text = "a minimal blood pressure"


Instance:   ex-MHV-bloodPressure-1
InstanceOf: VA.MHV.bloodPressure
Title: "Example of an MHV blood pressure R4 observation, minimal"
Description:      "holding typical values of 140/90 with a heart-rate"
//* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* meta.tag = https://wiki.mobilehealth.va.gov/x/Onc1C#2ce6d9aa-c068-4809-8dda-662bcb16d09a
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs "Vital Signs"
* code.coding = LOINC#55284-4 "Blood pressure systolic and diastolic"
* code.coding[1] = LOINC#8716-3 "Vital Signs"
* subject = Reference(Patient/ex-patient)
* effectiveDateTime = 2004-12-25T23:50:50-05:00
* component.code = LOINC#8480-6 "Systolic blood pressure"
* component.valueQuantity = 140.0 'mm[Hg]'
* component[1].code = LOINC#8462-4 "Diastolic blood pressure"
* component[1].valueQuantity = 90.0 'mm[Hg]'
// no comments in this one as comments is only in DSTU2
* note.text = "a minimal blood pressure"
* hasMember = Reference(ex-MHV-heartRate-1)