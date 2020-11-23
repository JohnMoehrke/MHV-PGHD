Instance:   ex-MHV-weight
InstanceOf: VA.MHV.bodyWeight
Title: "Example of an MHV bodyWeight R4 observation"
Description:      "holding typical values"
//* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* meta.tag = https://wiki.mobilehealth.va.gov/x/Onc1C#2ce6d9aa-c068-4809-8dda-662bcb16d09a
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* code = LOINC#29463-7
* subject = Reference(Patient/example)
* effectiveDateTime = 2004-12-25T23:50:50-05:00
* valueQuantity = 185 '[lb_av]' 
// no comments in this one as comments is only in DSTU2
* note.text = "a bit heavy"

Instance:   ex-MHV-weight-core
//InstanceOf: http://hl7.org/fhir/StructureDefinition/bodyweight
InstanceOf: Observation
Title: "Example of an valid FHIR International bodyWeight R4 observation"
Description:      "holding typical values. Should be close to the example body weight in the FHIR core specification"
//* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* code.text = "body weight"
* code.coding = LOINC#29463-7
* code.coding[1] = LOINC#3141-9
* code.coding[2] = SNO#27113001
* code.coding[3] = http://acme.org/devices/clinical-codes#body-weight "Body Weight"
* subject = Reference(Patient/example)
* encounter = Reference(Encounter/example)
* effectiveDateTime = 2016-03-28
* valueQuantity = 185 '[lb_av]' 

Instance:   ex-MHV-weight-stone
//InstanceOf: http://hl7.org/fhir/StructureDefinition/bodyweight
InstanceOf: Observation
Title: "Example of an valid FHIR bodyWeight R4 observation"
Description:      "holding typical stone values."
//* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#vital-signs
* code.text = "body weight"
* code.coding = LOINC#29463-7
* code.coding[1] = LOINC#3141-9
* code.coding[2] = SNO#27113001
* code.coding[3] = http://acme.org/devices/clinical-codes#body-weight "Body Weight"
* subject = Reference(Patient/example)
* encounter = Reference(Encounter/example)
* effectiveDateTime = 2016-03-28
* valueQuantity = 20 '[stone_av]' 
* note.text = "a bit heavy, about 280 lbs"