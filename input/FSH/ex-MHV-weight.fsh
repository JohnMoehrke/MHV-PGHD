Instance:   ex-MHV-weight
InstanceOf: VA.MHV.bodyWeight
Title: "Example of an MHV bodyWeight R4 observation"
Description:      "holding typical values"
//* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* meta.tag = https://wiki.mobilehealth.va.gov/x/Onc1C#2ce6d9aa-c068-4809-8dda-662bcb16d09a
* status = #final
* category[VSCat] = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* code = LOINC#29463-7 "Body weight"
* subject = Reference(Patient/ex-patient)
* effectiveDateTime = 2004-12-25T23:50:50-05:00
* valueQuantity = 185 '[lb_av]' 
// no comments in this one as comments is only in DSTU2
* note.text = "a bit heavy"

Instance:   ex-weight-core
InstanceOf: Observation
Title: "Example of an valid FHIR International bodyWeight R4 observation"
Description:      "holding typical values. Should be close to the example body weight in the FHIR core specification"
//* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* code.text = "body weight"
* code.coding[+] = LOINC#29463-7
* code.coding[+] = LOINC#3141-9
* code.coding[+] = SCT#27113001
* code.coding[+] = http://acme.org/devices/clinical-codes#body-weight "Body Weight"
* subject = Reference(Patient/ex-patient)
* encounter = Reference(Encounter/ex-encounter)
* effectiveDateTime = 2016-03-28
* valueQuantity = 185 '[lb_av]' 

Instance:   ex-weight-stone
InstanceOf: Observation
Title: "Example of an valid FHIR bodyWeight R4 observation"
Description:      "holding typical stone values."
//* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* code.text = "body weight"
* code.coding[+] = LOINC#29463-7
* code.coding[+] = LOINC#3141-9
* code.coding[+] = SCT#27113001
* code.coding[+] = http://acme.org/devices/clinical-codes#body-weight "Body Weight"
* subject = Reference(Patient/ex-patient)
* encounter = Reference(Encounter/ex-encounter)
* effectiveDateTime = 2016-03-28
* valueQuantity = 20 '[stone_av]' 
* note.text = "a bit heavy, about 280 lbs"

Instance:   ex-weight-period
InstanceOf: Observation
Title: "Example of an valid FHIR International bodyWeight R4 observation over a period"
Description: """
This observation does not use a dateTime, but rather a period. 

This is similar to how Apple data looks.
- note no category
- note effectivePeriod with start and end that are equal
"""
//* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* status = #final
* code = LOINC#29463-7
* subject = Reference(Patient/ex-patient)
* effectivePeriod.start = 2016-03-28
* effectivePeriod.end = 2016-03-28
* valueQuantity = 185 '[lb_av]' 

Instance:   ex-weight-period-end
InstanceOf: Observation
Title: "Example of an valid FHIR International bodyWeight R4 observation over a period with just an end"
Description:      "holding typical values. Should be close to the example body weight in the FHIR core specification. This observation does not use a dateTime, but rather a period with just an end."
//* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* code = LOINC#29463-7
* subject = Reference(Patient/ex-patient)
* effectivePeriod.end = 2016-03-27
* valueQuantity = 185 '[lb_av]' 

Instance:   ex-weight-period-start
InstanceOf: Observation
Title: "Example of an valid FHIR International bodyWeight R4 observation over a period with just a start"
Description:      "holding typical values. Should be close to the example body weight in the FHIR core specification. This observation does not use a dateTime, but rather a period with just a start."
//* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* code = LOINC#29463-7
* subject = Reference(Patient/ex-patient)
* effectivePeriod.start = 2016-03-26
* valueQuantity = 185 '[lb_av]' 

Instance:   ex-weight-apple
InstanceOf: Observation
Title: "Example of an Apple bodyWeight"
Description: """
This observation does not use a dateTime, but rather a period. 

This is similar to how Apple data looks.
- note no category
- note effectivePeriod with start and end that are equal
"""
//* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* meta.tag = https://wiki.mobilehealth.va.gov/x/Onc1C#49d985b4-6f9d-47e3-bbc9-a56c840ba4a6 "Sync My Health Data"
* meta.source = "#e60e7f0e-8b08-49"
* status = #final
* code = LOINC#29463-7 "Body weight"
* subject = Reference(Patient/ex-patient)
* subject.display = "John Jacob Jingleheimer Schmidt"
* effectivePeriod.start = 2022-11-02T19:44:00+00:00
* effectivePeriod.end = 2022-11-02T19:44:00+00:00
* valueQuantity = 88.450000000000003 'kg' 
* note.text = "apple_health"


