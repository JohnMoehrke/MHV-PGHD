Instance:   ex-MHV-oxygenSat-1
InstanceOf: VA.MHV.bloodOxygenSat
Title: "Example of an MHV heartRate R4 observation"
Description:      "Heart Rate holding typical values"
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
Title: "Example of an MHV heartRate R4 observation"
Description:      "Heart Rate holding typical values"
//* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* meta.tag = https://wiki.mobilehealth.va.gov/x/Onc1C#2ce6d9aa-c068-4809-8dda-662bcb16d09a
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* code.coding[+] = LOINC#2708-6
* code.coding[+] = LOINC#59408-5
* subject = Reference(Patient/ex-patient)
* effectiveDateTime = 2004-12-02T23:50:50-05:00
* valueQuantity = 99 '%' 
// no comments in this one as comments is only in DSTU2
* note.text = "amazingly high"

Instance:   ex-MHV-oxygenSat-3
InstanceOf: VA.MHV.bloodOxygenSat
Title: "Example of an MHV heartRate R4 observation"
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
