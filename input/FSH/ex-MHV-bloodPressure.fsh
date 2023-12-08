Instance:   ex-MHV-bloodPressure-0
InstanceOf: VA.MHV.bloodPressure
Title: "Example of an MHV blood pressure R4 observation, minimal"
Description:      "holding typical values of 140/90"
//* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* meta.tag = https://wiki.mobilehealth.va.gov/x/Onc1C#2ce6d9aa-c068-4809-8dda-662bcb16d09a
* status = #final
* category[VSCat] = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* code.coding[loincCode1] = LOINC#55284-4 "Blood pressure systolic and diastolic"
* code.coding[loincCode2] = LOINC#8716-3 "Vital signs"
* subject = Reference(Patient/ex-patient)
* effectiveDateTime = 2004-12-25T23:50:50-05:00
* component[SystolicBP].code.coding[SBPCode] = LOINC#8480-6 "Systolic blood pressure"
* component[SystolicBP].valueQuantity = 140.0 'mm[Hg]' "mm Hg"
* component[DiastolicBP].code.coding[DBPCode] = LOINC#8462-4 "Diastolic blood pressure"
* component[DiastolicBP].valueQuantity = 90.0 'mm[Hg]' "mm Hg"
// no comments in this one as comments is only in DSTU2
* note.text = "a minimal blood pressure"


Instance:   ex-MHV-bloodPressure-1
InstanceOf: VA.MHV.bloodPressure
Title: "Example of an MHV blood pressure R4 observation, minimal"
Description:      "holding typical values of 140/90 with a heart-rate"
//* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* meta.tag = https://wiki.mobilehealth.va.gov/x/Onc1C#2ce6d9aa-c068-4809-8dda-662bcb16d09a
* status = #final
* category[VSCat] = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* code.coding[loincCode1] = LOINC#55284-4 "Blood pressure systolic and diastolic"
* code.coding[loincCode2] = LOINC#8716-3 "Vital signs"
* subject = Reference(Patient/ex-patient)
* effectiveDateTime = 2004-12-25T23:50:50-05:00
* component[SystolicBP].code.coding[SBPCode] = LOINC#8480-6 "Systolic blood pressure"
* component[SystolicBP].valueQuantity = 140.0 'mm[Hg]' "mm Hg"
* component[DiastolicBP].code.coding[DBPCode] = LOINC#8462-4 "Diastolic blood pressure"
* component[DiastolicBP].valueQuantity = 90.0 'mm[Hg]' "mm Hg"
// no comments in this one as comments is only in DSTU2
* note.text = "a minimal blood pressure"
* hasMember = Reference(Observation/ex-MHV-heartRate-1)

Instance:   ex-MHV-bloodPressure-apple
InstanceOf: Observation
Title: "Example of an MHV blood pressure R4 observation, like Apple produes"
Description:      """
holding Apple like values of 140/90 with a heart-rate

Note
- apple does not populate the category
- apple only uses one code of LOINC#55284-4
- apple uses effectivePeriod (seemingly to have start and end the same)
- has meta.source populated with unknown identifier (presume some link back to apple, although this could be PGHD and not SMHD)
"""
//* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* meta.tag = https://wiki.mobilehealth.va.gov/x/Onc1C#49d985b4-6f9d-47e3-bbc9-a56c840ba4a6 "Sync My Health Data"
* meta.source = "#43f74378-a8bf-41"
* status = #final
* category[+] = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs "Vital Signs"
* code.coding[+] = LOINC#55284-4 "Blood pressure systolic and diastolic"
* code.coding[+] = LOINC#85354-9
* subject = Reference(Patient/ex-patient)
* subject.display = "John Jacob Jingleheimer Schmidt"
* effectivePeriod.start = 2022-11-02T15:43:57.000-04:00
* effectivePeriod.end = 2022-11-02T15:43:57.000-04:00
* component[+].code.coding = LOINC#8480-6 "Systolic blood pressure"
* component[=].valueQuantity = 140.0 'mm[Hg]' "mm Hg"
* component[+].code.coding = LOINC#8462-4 "Diastolic blood pressure"
* component[=].valueQuantity = 90.0 'mm[Hg]' "mm Hg"
// no comments in this one as comments is only in DSTU2
* note.text = "bluetooth omron bp7250"
* hasMember = Reference(Observation/ex-MHV-heartRate-1)

Instance:   ex-MHV-bloodPressure-start
InstanceOf: Observation
Title: "Example of an MHV blood pressure R4 observation, minimal"
Description:      "holding typical values of 140/90 with a heart-rate, using only a start Period time/date"
//* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* meta.tag = https://wiki.mobilehealth.va.gov/x/Onc1C#2ce6d9aa-c068-4809-8dda-662bcb16d09a
* status = #final
* category[+] = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs "Vital Signs"
* code.coding[+] = LOINC#55284-4 "Blood pressure systolic and diastolic"
* code.coding[+] = LOINC#85354-9
* subject = Reference(Patient/ex-patient)
* effectivePeriod.start = 2004-12-25T23:50:50-05:00
* component[+].code.coding = LOINC#8480-6 "Systolic blood pressure"
* component[=].valueQuantity = 140.0 'mm[Hg]' "mm Hg"
* component[+].code.coding = LOINC#8462-4 "Diastolic blood pressure"
* component[=].valueQuantity = 90.0 'mm[Hg]' "mm Hg"
// no comments in this one as comments is only in DSTU2
* note.text = "a minimal blood pressure only Period.start"
* hasMember = Reference(Observation/ex-MHV-heartRate-1)

Instance:   ex-MHV-bloodPressure-end
InstanceOf: Observation
Title: "Example of an MHV blood pressure R4 observation, minimal"
Description:      "holding typical values of 140/90 with a heart-rate, using only a end Period time/date"
//* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* status = #final
* category[+] = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs "Vital Signs"
* code.coding[+] = LOINC#55284-4 "Blood pressure systolic and diastolic"
* code.coding[+] = LOINC#85354-9
* subject = Reference(Patient/ex-patient)
* effectivePeriod.end = 2004-12-25T23:50:50-05:00
* component[+].code.coding = LOINC#8480-6 "Systolic blood pressure"
* component[=].valueQuantity = 140.0 'mm[Hg]' "mm Hg"
* component[+].code.coding = LOINC#8462-4 "Diastolic blood pressure"
* component[=].valueQuantity = 90.0 'mm[Hg]' "mm Hg"
// no comments in this one as comments is only in DSTU2
* note.text = "a minimal blood pressure only Period.end"
* hasMember = Reference(Observation/ex-MHV-heartRate-1)
