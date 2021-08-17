Instance:   ex-MHV-oxygenSat-1
InstanceOf: VA.MHV.bloodOxygenSat
Title: "Example of an MHV oxygenSat R4 observation value of 95%"
Description:      "Oxygen Saturation holding typical values"
//* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* meta.tag = https://wiki.mobilehealth.va.gov/x/Onc1C#2ce6d9aa-c068-4809-8dda-662bcb16d09a
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* code.coding[+] = LOINC#2708-6
* code.coding[+] = LOINC#59408-5
* subject = Reference(Patient/ex-patient)
* effectiveDateTime = 2004-12-01T23:50:50-05:00
* valueQuantity = 95 '%' 
// no comments in this one as comments is only in DSTU2
* note.text = "a typical value"

Instance:   ex-MHV-oxygenSat-2
InstanceOf: VA.MHV.bloodOxygenSat
Title: "Example of an MHV oxygenSat R4 observation"
Description:      "Oxygen Saturation holding high value of 99.4%"
//* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* meta.tag = https://wiki.mobilehealth.va.gov/x/Onc1C#2ce6d9aa-c068-4809-8dda-662bcb16d09a
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* code.coding[+] = LOINC#2708-6
* code.coding[+] = LOINC#59408-5
* subject = Reference(Patient/ex-patient)
* effectiveDateTime = 2004-12-02T23:50:50-05:00
* valueQuantity = 99.4 '%' 
// no comments in this one as comments is only in DSTU2
* note.text = "amazingly high"

Instance:   ex-MHV-oxygenSat-3
InstanceOf: VA.MHV.bloodOxygenSat
Title: "Example of an MHV oxygenSat R4 observation really low at 65%"
Description:      "Oxygen Saturation holding typical values"
//* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* meta.tag = https://wiki.mobilehealth.va.gov/x/Onc1C#2ce6d9aa-c068-4809-8dda-662bcb16d09a
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* code.coding[+] = LOINC#2708-6
* code.coding[+] = LOINC#59408-5
* subject = Reference(Patient/ex-patient)
* effectiveDateTime = 2004-12-03T23:50:50-05:00
* valueQuantity = 65 '%' 
// no comments in this one as comments is only in DSTU2
* note.text = "Way too low, clinically speaking"

Instance: ex-other-oxygenSat-4
InstanceOf: Observation
Title: "Example of an OxygenSat that is rumored to exist"
Description: "This is not coded as oxygen sat, but has a text. Rumored to be what SMHD might create."
* status = #final
* category.text = "Blood Oxygen Saturation Level"
* code.coding[+] = LOINC#2708-6
* subject = Reference(Patient/ex-patient)
* effectiveDateTime = 2004-12-04T23:50:50-05:00
* valueQuantity = 97 '%' 
// no comments in this one as comments is only in DSTU2
* note.text = "Wow, you found it"

Instance:   ex-MHV-oxygenSat-5
InstanceOf: VA.MHV.bloodOxygenSat
Title: "Example of an MHV oxygenSat R4 observation of 65% with a heart-rate"
Description:      "Heart Rate holding typical values"
//* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* meta.tag = https://wiki.mobilehealth.va.gov/x/Onc1C#2ce6d9aa-c068-4809-8dda-662bcb16d09a
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* code.coding[+] = LOINC#2708-6
* code.coding[+] = LOINC#59408-5
* subject = Reference(Patient/ex-patient)
* effectiveDateTime = 2004-12-03T23:50:50-05:00
* valueQuantity = 65 '%' 
// no comments in this one as comments is only in DSTU2
* note.text = "Way too low, clinically speaking"
* hasMember = Reference(ex-MHV-heartRate-1)

Instance:   ex-MHV-oxygenSat-6
InstanceOf: VA.MHV.bloodOxygenSat
Title: "Example of an MHV oxygenSat R4 observation of 95% with a respiration-rate"
Description:      "Heart Rate holding typical values"
//* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* meta.tag = https://wiki.mobilehealth.va.gov/x/Onc1C#2ce6d9aa-c068-4809-8dda-662bcb16d09a
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* code.coding[+] = LOINC#2708-6
* code.coding[+] = LOINC#59408-5
* subject = Reference(Patient/ex-patient)
* effectiveDateTime = 2004-12-03T23:50:50-05:00
* valueQuantity = 95 '%' 
// no comments in this one as comments is only in DSTU2
* note.text = "Way too low, clinically speaking"
* hasMember = Reference(ex-MHV-respirationRate-1)

Instance:   ex-MHV-oxygenSat-7
InstanceOf: VA.MHV.bloodOxygenSat
Title: "Example of an MHV oxygenSat R4 observation of 94% with a heart-rate and respiration-rate"
Description:      "Heart Rate holding typical values"
//* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* meta.tag = https://wiki.mobilehealth.va.gov/x/Onc1C#2ce6d9aa-c068-4809-8dda-662bcb16d09a
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* code.coding[+] = LOINC#2708-6
* code.coding[+] = LOINC#59408-5
* subject = Reference(Patient/ex-patient)
* effectiveDateTime = 2004-12-03T23:50:50-05:00
* valueQuantity = 94 '%' 
// no comments in this one as comments is only in DSTU2
* note.text = "Way too low, clinically speaking"
* hasMember[respirationRate] = Reference(ex-MHV-respirationRate-1)
* hasMember[heartRate] = Reference(ex-MHV-heartRate-1)

Instance:   ex-other-oxygenSat-8
InstanceOf: Observation
Title: "Example of an oxygenSat R4 observation of 94% with a heart-rate and respiration-rate and pain"
Description:      "Heart Rate holding typical values"
//* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* meta.tag = https://wiki.mobilehealth.va.gov/x/Onc1C#2ce6d9aa-c068-4809-8dda-662bcb16d09a
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* code.coding[+] = LOINC#2708-6
* code.coding[+] = LOINC#59408-5
* subject = Reference(Patient/ex-patient)
* effectiveDateTime = 2004-12-03T23:50:50-05:00
* valueQuantity = 94 '%' 
// no comments in this one as comments is only in DSTU2
* note.text = "Way too low, clinically speaking"
* hasMember[+] = Reference(ex-MHV-respirationRate-1)
* hasMember[+] = Reference(ex-MHV-heartRate-1)
* hasMember[+] = Reference(ex-MHV-pain-1)
