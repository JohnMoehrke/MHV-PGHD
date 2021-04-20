Instance:   ex-MHV-bloodSugarB-0
InstanceOf: VA.MHV.bloodSugarB
Title: "Example of an MHV blood sugar R4 observation, minimal"
Description:      "holding typical values"
//* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* meta.tag = https://wiki.mobilehealth.va.gov/x/Onc1C#2ce6d9aa-c068-4809-8dda-662bcb16d09a
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* code.coding = LOINC#2339-0 
* code.coding[1] = LOINC#2345-7
* subject = Reference(Patient/ex-patient)
* effectiveDateTime = 2020-12-04T23:50:50-05:00
* valueQuantity = 99 'mg/dL' 
// no comments in this one as comments is only in DSTU2
* note.text = "a bit low, no indicated method, no indicated eating"

Instance:   ex-MHV-bloodSugarB-1
InstanceOf: VA.MHV.bloodSugarB
Title: "Example of an MHV blood sugar R4 observation, fasting"
Description:      "holding typical values"
//* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* meta.tag = https://wiki.mobilehealth.va.gov/x/Onc1C#2ce6d9aa-c068-4809-8dda-662bcb16d09a
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* code.coding = LOINC#2339-0 
* code.coding[1] = LOINC#2345-7
* code.coding[2] = LOINC#1556-0
* subject = Reference(Patient/ex-patient)
* effectiveDateTime = 2020-12-04T23:50:50-05:00
* valueQuantity = 99 'mg/dL' 
* method = SCT#15220000 "Laboratory Test"
// no comments in this one as comments is only in DSTU2
* note.text = "a bit low, fasting"

Instance:   ex-MHV-bloodSugarB-2
InstanceOf: VA.MHV.bloodSugarB
Title: "Example of an MHV blood sugar R4 observation, after meal"
Description:      "holding typical values"
//* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* meta.tag = https://wiki.mobilehealth.va.gov/x/Onc1C#2ce6d9aa-c068-4809-8dda-662bcb16d09a
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* code.coding = LOINC#2339-0 
* code.coding[1] = LOINC#2345-7
* code.coding[afterMeal] = LOINC#6689-4
* subject = Reference(Patient/ex-patient)
* effectiveDateTime = 2020-12-04T23:50:50-05:00
* valueQuantity = 99 'mg/dL' 
* method = SCT#15220000 "Laboratory Test"
// no comments in this one as comments is only in DSTU2
* note.text = "a bit low, after meal"

Instance:   ex-MHV-bloodSugarB-3
InstanceOf: VA.MHV.bloodSugarB
Title: "Example of an MHV blood sugar R4 observation, unknown eating"
Description:      "holding typical values"
//* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* meta.tag = https://wiki.mobilehealth.va.gov/x/Onc1C#2ce6d9aa-c068-4809-8dda-662bcb16d09a
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* code.coding = LOINC#2339-0 
* code.coding[1] = LOINC#2345-7
* subject = Reference(Patient/ex-patient)
* effectiveDateTime = 2020-12-04T23:50:50-05:00
* valueQuantity = 99 'mg/dL' 
* method = SCT#15220000 "Laboratory Test"
// no comments in this one as comments is only in DSTU2
* note.text = "a bit low, unknown eating"

Instance:   ex-MHV-bloodSugarB-4
InstanceOf: VA.MHV.bloodSugarB
Title: "Example of an MHV blood sugar R4 observation, unknown eating, by lancet"
Description:      "holding typical values"
//* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* meta.tag = https://wiki.mobilehealth.va.gov/x/Onc1C#2ce6d9aa-c068-4809-8dda-662bcb16d09a
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* code.coding = LOINC#2339-0 
* code.coding[1] = LOINC#2345-7
* subject = Reference(Patient/ex-patient)
* effectiveDateTime = 2020-12-04T23:50:50-05:00
* valueQuantity = 99 'mg/dL' 
* method = SCT#350810002 "Lancet"
// no comments in this one as comments is only in DSTU2
* note.text = "a bit low, unknown eating, by lancet"

Instance:   ex-MHV-bloodSugarB-5
InstanceOf: VA.MHV.bloodSugarB
Title: "Example of an MHV blood sugar R4 observation, unknown eating, by skin"
Description:      "holding typical values"
//* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* meta.tag = https://wiki.mobilehealth.va.gov/x/Onc1C#2ce6d9aa-c068-4809-8dda-662bcb16d09a
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* code.coding = LOINC#2339-0 
* code.coding[1] = LOINC#2345-7
* subject = Reference(Patient/ex-patient)
* effectiveDateTime = 2020-12-04T23:50:50-05:00
* valueQuantity = 99 'mg/dL' 
* method = SCT#263902000 "Transcutaneous method"
// no comments in this one as comments is only in DSTU2
* note.text = "a bit low, unknown eating, by skin"

Instance:   ex-MHV-bloodSugarB-6
InstanceOf: VA.MHV.bloodSugarB
Title: "Example of an MHV blood sugar R4 observation, unknown eating, by implant"
Description:      "holding typical values"
//* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* meta.tag = https://wiki.mobilehealth.va.gov/x/Onc1C#2ce6d9aa-c068-4809-8dda-662bcb16d09a
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* code.coding = LOINC#2339-0 
* code.coding[1] = LOINC#2345-7
* subject = Reference(Patient/ex-patient)
* effectiveDateTime = 2020-12-04T23:50:50-05:00
* valueQuantity = 99 'mg/dL' 
* method = SCT#261373009 "Implant technique"
// no comments in this one as comments is only in DSTU2
* note.text = "a bit low, unknown eating, by implant"

Instance:   ex-MHV-bloodSugarB-7
InstanceOf: VA.MHV.bloodSugarB
Title: "Example of an MHV blood sugar R4 observation, ZERO, unknown eating, by implant"
Description:      "holding atypical values"
//* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* meta.tag = https://wiki.mobilehealth.va.gov/x/Onc1C#2ce6d9aa-c068-4809-8dda-662bcb16d09a
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* code.coding = LOINC#2339-0 
* code.coding[1] = LOINC#2345-7
* subject = Reference(Patient/ex-patient)
* effectiveDateTime = 2020-12-04T23:50:50-05:00
* valueQuantity = 0 'mg/dL' 
* method = SCT#261373009 "Implant technique"
// no comments in this one as comments is only in DSTU2
* note.text = "dead ZERO, unknown eating, by implant"

Instance:   ex-MHV-bloodSugarB-8
InstanceOf: VA.MHV.bloodSugarB
Title: "Example of an MHV blood sugar R4 observation, impossibly high, unknown eating, by implant"
Description:      "holding atypical values"
//* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* meta.tag = https://wiki.mobilehealth.va.gov/x/Onc1C#2ce6d9aa-c068-4809-8dda-662bcb16d09a
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* code.coding = LOINC#2339-0 
* code.coding[1] = LOINC#2345-7
* subject = Reference(Patient/ex-patient)
* effectiveDateTime = 2020-12-04T23:50:50-05:00
* valueQuantity = 100000 'mg/dL' 
* method = SCT#261373009 "Implant technique"
// no comments in this one as comments is only in DSTU2
* note.text = "nothing but sugar, unknown eating, by implant"

Instance:   ex-bloodSugarB-106100
InstanceOf: Observation
Title: "Example of an non-MHV blood sugar R4 observation, random blood glucose measurement"
Description:      "holding atypical values"
//* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* meta.tag = https://wiki.mobilehealth.va.gov/x/Onc1C#2ce6d9aa-c068-4809-8dda-662bcb16d09a
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* code.coding = LOINC#2339-0 
* code.coding[1] = LOINC#2345-7
* subject = Reference(Patient/ex-patient)
* effectiveDateTime = 2020-12-04T23:50:50-05:00
* valueQuantity = 100 'mg/dL' 
* method = SCT#271061004 "Random blood glucose measurement (procedure)"
// no comments in this one as comments is only in DSTU2
* note.text = "non-MHV normal by random blood glucuse measurement"

Instance:   ex-bloodSugarB-106101
InstanceOf: Observation
Title: "Example of an non-MHV blood sugar R4 observation, by urine"
Description:      "holding atypical values"
//* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* meta.tag = https://wiki.mobilehealth.va.gov/x/Onc1C#2ce6d9aa-c068-4809-8dda-662bcb16d09a
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* code.coding = LOINC#2339-0 
* code.coding[1] = LOINC#2345-7
* subject = Reference(Patient/ex-patient)
* effectiveDateTime = 2020-12-04T23:50:50-05:00
* valueQuantity = 100 'mg/dL' 
* method = SCT#308115004 "Self-monitoring of blood and urine glucose (procedure)"
// no comments in this one as comments is only in DSTU2
* note.text = "non-MHV normal by urine"

Instance:   ex-bloodSugarB-106102
InstanceOf: Observation
Title: "Example of an non-MHV blood sugar R4 observation, by self monitoring"
Description:      "holding atypical values"
//* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* meta.tag = https://wiki.mobilehealth.va.gov/x/Onc1C#2ce6d9aa-c068-4809-8dda-662bcb16d09a
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* code.coding = LOINC#2339-0 
* code.coding[1] = LOINC#2345-7
* subject = Reference(Patient/ex-patient)
* effectiveDateTime = 2020-12-04T23:50:50-05:00
* valueQuantity = 100 'mg/dL' 
* method = SCT#308113006 "Self-monitoring of blood glucose (procedure)"
// no comments in this one as comments is only in DSTU2
* note.text = "non-MHV normal by self monitoring"

Instance:   ex-bloodSugarB-106103
InstanceOf: Observation
Title: "Example of an non-MHV blood sugar R4 observation, by self supper time blood sugar measurement"
Description:      "holding atypical values"
//* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* meta.tag = https://wiki.mobilehealth.va.gov/x/Onc1C#2ce6d9aa-c068-4809-8dda-662bcb16d09a
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* code.coding = LOINC#2339-0 
* code.coding[1] = LOINC#2345-7
* code.coding[2] = LOINC#1556-0
* subject = Reference(Patient/ex-patient)
* effectiveDateTime = 2020-12-04T23:50:50-05:00
* valueQuantity = 100 'mg/dL' 
* method = SCT#271064007 "Supper time blood sugar measurement (procedure)"
// no comments in this one as comments is only in DSTU2
* note.text = "non-MHV normal by supper time blood sugar measurement"

Instance:   ex-bloodSugarB-106104
InstanceOf: Observation
Title: "Example of an non-MHV blood sugar R4 observation, with a coded eating"
Description:      "holding atypical values"
//* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* meta.tag = https://wiki.mobilehealth.va.gov/x/Onc1C#2ce6d9aa-c068-4809-8dda-662bcb16d09a
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* code.coding = LOINC#2339-0 
* code.coding[1] = LOINC#2345-7
* code.coding[2] = LOINC#1556-0
* subject = Reference(Patient/ex-patient)
* effectiveDateTime = 2020-12-04T23:50:50-05:00
* valueQuantity = 100 'mg/dL' 
* method = SCT#271064007 "Supper time blood sugar measurement (procedure)"
// no comments in this one as comments is only in DSTU2
* note.text = "non-MHV normal by supper time blood sugar measurement"

Instance:   ex-bloodSugarB-106105
InstanceOf: Observation
Title: "Example of an non-MHV blood sugar R4 observation, just one of the .code values (2339-0)"
Description:      "holding atypical values"
//* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* meta.tag = https://wiki.mobilehealth.va.gov/x/Onc1C#2ce6d9aa-c068-4809-8dda-662bcb16d09a
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* code.coding = LOINC#2339-0 
//* code.coding[1] = LOINC#2345-7
* code.coding[1] = LOINC#1556-0
* subject = Reference(Patient/ex-patient)
* effectiveDateTime = 2020-12-04T23:50:50-05:00
* valueQuantity = 100 'mg/dL' 
* method = SCT#271064007 "Supper time blood sugar measurement (procedure)"
// no comments in this one as comments is only in DSTU2
* note.text = "non-MHV normal by supper time blood sugar measurement, just one of the .code values (2339-0)"

Instance:   ex-bloodSugarB-106106
InstanceOf: Observation
Title: "Example of an non-MHV blood sugar R4 observation, the second .code value (2345-7)"
Description:      "holding atypical values"
//* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* meta.tag = https://wiki.mobilehealth.va.gov/x/Onc1C#2ce6d9aa-c068-4809-8dda-662bcb16d09a
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
//* code.coding = LOINC#2339-0 
* code.coding = LOINC#2345-7
* code.coding[1] = LOINC#1556-0
* subject = Reference(Patient/ex-patient)
* effectiveDateTime = 2020-12-04T23:50:50-05:00
* valueQuantity = 100 'mg/dL' 
* method = SCT#271064007 "Supper time blood sugar measurement (procedure)"
// no comments in this one as comments is only in DSTU2
* note.text = "non-MHV normal by supper time blood sugar measurement, just the second .code value (2345-7)"

