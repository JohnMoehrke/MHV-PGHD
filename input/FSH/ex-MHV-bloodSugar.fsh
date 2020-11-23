Instance:   ex-MHV-bloodSugar-0
InstanceOf: VA.MHV.bloodSugar
Title: "Example of an MHV blood sugar R4 observation, minimal"
Description:      "holding typical values"
//* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* meta.tag = https://wiki.mobilehealth.va.gov/x/Onc1C#2ce6d9aa-c068-4809-8dda-662bcb16d09a
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* code.coding = LOINC#2339-0 
* code.coding[1] = LOINC#2345-7
* subject = Reference(Patient/example)
* effectiveDateTime = 2004-12-25T23:50:50-05:00
* valueQuantity = 99 'mg/dL' 
// no comments in this one as comments is only in DSTU2
* note.text = "a bit low, no indicated method, no indicated eating"

Instance:   ex-MHV-bloodSugar-1
InstanceOf: VA.MHV.bloodSugar
Title: "Example of an MHV blood sugar R4 observation, fasting"
Description:      "holding typical values"
//* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* meta.tag = https://wiki.mobilehealth.va.gov/x/Onc1C#2ce6d9aa-c068-4809-8dda-662bcb16d09a
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* code.coding = LOINC#2339-0 
* code.coding[1] = LOINC#2345-7
* subject = Reference(Patient/example)
* effectiveDateTime = 2004-12-25T23:50:50-05:00
* valueQuantity = 99 'mg/dL' 
* method = SNO#15220000 "Laboratory Test"
* component.code = SNO#162549003 "Eating routine (observable entity)"
* component.valueString = "fasting"
// no comments in this one as comments is only in DSTU2
* note.text = "a bit low, fasting"

Instance:   ex-MHV-bloodSugar-2
InstanceOf: VA.MHV.bloodSugar
Title: "Example of an MHV blood sugar R4 observation, after meal"
Description:      "holding typical values"
//* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* meta.tag = https://wiki.mobilehealth.va.gov/x/Onc1C#2ce6d9aa-c068-4809-8dda-662bcb16d09a
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* code.coding = LOINC#2339-0 
* code.coding[1] = LOINC#2345-7
* subject = Reference(Patient/example)
* effectiveDateTime = 2004-12-25T23:50:50-05:00
* valueQuantity = 99 'mg/dL' 
* method = SNO#15220000 "Laboratory Test"
* component.code = SNO#162549003 "Eating routine (observable entity)"
* component.valueString = "after meal"
// no comments in this one as comments is only in DSTU2
* note.text = "a bit low, after meal"

Instance:   ex-MHV-bloodSugar-3
InstanceOf: VA.MHV.bloodSugar
Title: "Example of an MHV blood sugar R4 observation, unknown eating"
Description:      "holding typical values"
//* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* meta.tag = https://wiki.mobilehealth.va.gov/x/Onc1C#2ce6d9aa-c068-4809-8dda-662bcb16d09a
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* code.coding = LOINC#2339-0 
* code.coding[1] = LOINC#2345-7
* subject = Reference(Patient/example)
* effectiveDateTime = 2004-12-25T23:50:50-05:00
* valueQuantity = 99 'mg/dL' 
* method = SNO#15220000 "Laboratory Test"
* component.code = SNO#162549003 "Eating routine (observable entity)"
* component.valueString = "unknown"
// no comments in this one as comments is only in DSTU2
* note.text = "a bit low, unknown eating"

Instance:   ex-MHV-bloodSugar-4
InstanceOf: VA.MHV.bloodSugar
Title: "Example of an MHV blood sugar R4 observation, unknown eating, by lancet"
Description:      "holding typical values"
//* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* meta.tag = https://wiki.mobilehealth.va.gov/x/Onc1C#2ce6d9aa-c068-4809-8dda-662bcb16d09a
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* code.coding = LOINC#2339-0 
* code.coding[1] = LOINC#2345-7
* subject = Reference(Patient/example)
* effectiveDateTime = 2004-12-25T23:50:50-05:00
* valueQuantity = 99 'mg/dL' 
* method = SNO#350810002 "Lancet"
* component.code = SNO#162549003 "Eating routine (observable entity)"
* component.valueString = "unknown"
// no comments in this one as comments is only in DSTU2
* note.text = "a bit low, unknown eating, by lancet"

Instance:   ex-MHV-bloodSugar-5
InstanceOf: VA.MHV.bloodSugar
Title: "Example of an MHV blood sugar R4 observation, unknown eating, by skin"
Description:      "holding typical values"
//* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* meta.tag = https://wiki.mobilehealth.va.gov/x/Onc1C#2ce6d9aa-c068-4809-8dda-662bcb16d09a
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* code.coding = LOINC#2339-0 
* code.coding[1] = LOINC#2345-7
* subject = Reference(Patient/example)
* effectiveDateTime = 2004-12-25T23:50:50-05:00
* valueQuantity = 99 'mg/dL' 
* method = SNO#263902000 "Transcutaneous method"
* component.code = SNO#162549003 "Eating routine (observable entity)"
* component.valueString = "unknown"
// no comments in this one as comments is only in DSTU2
* note.text = "a bit low, unknown eating, by skin"

Instance:   ex-MHV-bloodSugar-6
InstanceOf: VA.MHV.bloodSugar
Title: "Example of an MHV blood sugar R4 observation, unknown eating, by implant"
Description:      "holding typical values"
//* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* meta.tag = https://wiki.mobilehealth.va.gov/x/Onc1C#2ce6d9aa-c068-4809-8dda-662bcb16d09a
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* code.coding = LOINC#2339-0 
* code.coding[1] = LOINC#2345-7
* subject = Reference(Patient/example)
* effectiveDateTime = 2004-12-25T23:50:50-05:00
* valueQuantity = 99 'mg/dL' 
* method = SNO#261373009 "Implant technique"
* component.code = SNO#162549003 "Eating routine (observable entity)"
* component.valueString = "unknown"
// no comments in this one as comments is only in DSTU2
* note.text = "a bit low, unknown eating, by implant"

Instance:   ex-MHV-bloodSugar-7
InstanceOf: VA.MHV.bloodSugar
Title: "Example of an MHV blood sugar R4 observation, ZERO, unknown eating, by implant"
Description:      "holding atypical values"
//* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* meta.tag = https://wiki.mobilehealth.va.gov/x/Onc1C#2ce6d9aa-c068-4809-8dda-662bcb16d09a
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* code.coding = LOINC#2339-0 
* code.coding[1] = LOINC#2345-7
* subject = Reference(Patient/example)
* effectiveDateTime = 2004-12-25T23:50:50-05:00
* valueQuantity = 0 'mg/dL' 
* method = SNO#261373009 "Implant technique"
* component.code = SNO#162549003 "Eating routine (observable entity)"
* component.valueString = "unknown"
// no comments in this one as comments is only in DSTU2
* note.text = "dead ZERO, unknown eating, by implant"

Instance:   ex-MHV-bloodSugar-8
InstanceOf: VA.MHV.bloodSugar
Title: "Example of an MHV blood sugar R4 observation, impossibly high, unknown eating, by implant"
Description:      "holding atypical values"
//* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* meta.tag = https://wiki.mobilehealth.va.gov/x/Onc1C#2ce6d9aa-c068-4809-8dda-662bcb16d09a
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* code.coding = LOINC#2339-0 
* code.coding[1] = LOINC#2345-7
* subject = Reference(Patient/example)
* effectiveDateTime = 2004-12-25T23:50:50-05:00
* valueQuantity = 100000 'mg/dL' 
* method = SNO#261373009 "Implant technique"
* component.code = SNO#162549003 "Eating routine (observable entity)"
* component.valueString = "unknown"
// no comments in this one as comments is only in DSTU2
* note.text = "nothing but sugar, unknown eating, by implant"

Instance:   ex-bloodSugar-100
InstanceOf: Observation
Title: "Example of an non-MHV blood sugar R4 observation, random blood glucose measurement"
Description:      "holding atypical values"
//* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* meta.tag = https://wiki.mobilehealth.va.gov/x/Onc1C#2ce6d9aa-c068-4809-8dda-662bcb16d09a
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* code.coding = LOINC#2339-0 
* code.coding[1] = LOINC#2345-7
* subject = Reference(Patient/example)
* effectiveDateTime = 2004-12-25T23:50:50-05:00
* valueQuantity = 100 'mg/dL' 
* method = SNO#271061004 "Random blood glucose measurement (procedure)"
* component.code = SNO#162549003 "Eating routine (observable entity)"
* component.valueString = "unknown"
// no comments in this one as comments is only in DSTU2
* note.text = "non-MHV normal by random blood glucuse measurement"

Instance:   ex-bloodSugar-101
InstanceOf: Observation
Title: "Example of an non-MHV blood sugar R4 observation, by urine"
Description:      "holding atypical values"
//* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* meta.tag = https://wiki.mobilehealth.va.gov/x/Onc1C#2ce6d9aa-c068-4809-8dda-662bcb16d09a
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* code.coding = LOINC#2339-0 
* code.coding[1] = LOINC#2345-7
* subject = Reference(Patient/example)
* effectiveDateTime = 2004-12-25T23:50:50-05:00
* valueQuantity = 100 'mg/dL' 
* method = SNO#308115004 "Self-monitoring of blood and urine glucose (procedure)"
* component.code = SNO#162549003 "Eating routine (observable entity)"
* component.valueString = "unknown"
// no comments in this one as comments is only in DSTU2
* note.text = "non-MHV normal by urine"

Instance:   ex-bloodSugar-102
InstanceOf: Observation
Title: "Example of an non-MHV blood sugar R4 observation, by self monitoring"
Description:      "holding atypical values"
//* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* meta.tag = https://wiki.mobilehealth.va.gov/x/Onc1C#2ce6d9aa-c068-4809-8dda-662bcb16d09a
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* code.coding = LOINC#2339-0 
* code.coding[1] = LOINC#2345-7
* subject = Reference(Patient/example)
* effectiveDateTime = 2004-12-25T23:50:50-05:00
* valueQuantity = 100 'mg/dL' 
* method = SNO#308113006 "Self-monitoring of blood glucose (procedure)"
* component.code = SNO#162549003 "Eating routine (observable entity)"
* component.valueString = "unknown"
// no comments in this one as comments is only in DSTU2
* note.text = "non-MHV normal by self monitoring"

Instance:   ex-bloodSugar-103
InstanceOf: Observation
Title: "Example of an non-MHV blood sugar R4 observation, by self supper time blood sugar measurement"
Description:      "holding atypical values"
//* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* meta.tag = https://wiki.mobilehealth.va.gov/x/Onc1C#2ce6d9aa-c068-4809-8dda-662bcb16d09a
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* code.coding = LOINC#2339-0 
* code.coding[1] = LOINC#2345-7
* subject = Reference(Patient/example)
* effectiveDateTime = 2004-12-25T23:50:50-05:00
* valueQuantity = 100 'mg/dL' 
* method = SNO#271064007 "Supper time blood sugar measurement (procedure)"
* component.code = SNO#162549003 "Eating routine (observable entity)"
* component.valueString = "before meal"
// no comments in this one as comments is only in DSTU2
* note.text = "non-MHV normal by supper time blood sugar measurement"

Instance:   ex-bloodSugar-104
InstanceOf: Observation
Title: "Example of an non-MHV blood sugar R4 observation, with a coded eating"
Description:      "holding atypical values"
//* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* meta.tag = https://wiki.mobilehealth.va.gov/x/Onc1C#2ce6d9aa-c068-4809-8dda-662bcb16d09a
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* code.coding = LOINC#2339-0 
* code.coding[1] = LOINC#2345-7
* subject = Reference(Patient/example)
* effectiveDateTime = 2004-12-25T23:50:50-05:00
* valueQuantity = 100 'mg/dL' 
* method = SNO#271064007 "Supper time blood sugar measurement (procedure)"
* component.code = SNO#162549003 "Eating routine (observable entity)"
* component.valueString = "before meal"
// no comments in this one as comments is only in DSTU2
* note.text = "non-MHV normal by supper time blood sugar measurement"

Instance:   ex-bloodSugar-105
InstanceOf: Observation
Title: "Example of an non-MHV blood sugar R4 observation, just one of the .code values (2339-0)"
Description:      "holding atypical values"
//* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* meta.tag = https://wiki.mobilehealth.va.gov/x/Onc1C#2ce6d9aa-c068-4809-8dda-662bcb16d09a
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* code.coding = LOINC#2339-0 
//* code.coding[1] = LOINC#2345-7
* subject = Reference(Patient/example)
* effectiveDateTime = 2004-12-25T23:50:50-05:00
* valueQuantity = 100 'mg/dL' 
* method = SNO#271064007 "Supper time blood sugar measurement (procedure)"
* component.code = SNO#162549003 "Eating routine (observable entity)"
* component.valueString = "before meal"
// no comments in this one as comments is only in DSTU2
* note.text = "non-MHV normal by supper time blood sugar measurement, just one of the .code values (2339-0)"

Instance:   ex-bloodSugar-106
InstanceOf: Observation
Title: "Example of an non-MHV blood sugar R4 observation, the second .code value (2345-7)"
Description:      "holding atypical values"
//* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* meta.tag = https://wiki.mobilehealth.va.gov/x/Onc1C#2ce6d9aa-c068-4809-8dda-662bcb16d09a
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
//* code.coding = LOINC#2339-0 
* code.coding = LOINC#2345-7
* subject = Reference(Patient/example)
* effectiveDateTime = 2004-12-25T23:50:50-05:00
* valueQuantity = 100 'mg/dL' 
* method = SNO#271064007 "Supper time blood sugar measurement (procedure)"
* component.code = SNO#162549003 "Eating routine (observable entity)"
* component.valueString = "before meal"
// no comments in this one as comments is only in DSTU2
* note.text = "non-MHV normal by supper time blood sugar measurement, just the second .code value (2345-7)"

