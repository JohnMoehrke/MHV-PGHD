Instance:   ex-MHV-medication-0
InstanceOf: VA.MHV.medication
Title: "Example of an MHV medication R4, minimal"
Description:      "holding typical values"
Usage: #example
//* meta.security = http://terminology.hl7.org/CodeSystem/v3-ActReason#HTEST
* meta.tag = https://wiki.mobilehealth.va.gov/x/Onc1C#2ce6d9aa-c068-4809-8dda-662bcb16d09a
* status = #active
* category = http://terminology.hl7.org/CodeSystem/medication-statement-category#patientspecified
* subject = Reference(Patient/ex-patient)
* effectivePeriod.start = 2004-12-25 // started taking
* effectivePeriod.end = 2021-12-25  // end of prescription
* dateAsserted = 2020-11-24
* note.text = "a minimal medication"
* dosage.text = "1 tablet"
* dosage.doseAndRate.doseQuantity = 1 '{Capsule}' // strength
// frequency
* dosage.doseAndRate.rateRatio.numerator.value = 3 // three times per day
* dosage.doseAndRate.rateRatio.denominator = 1 '/d' // day
* dosage.route = SCT#26643006
* medicationCodeableConcept.text = "Tylenol"
* reasonCode.text = "Body pains"
* contained[+] = in-Pharmacy
* contained[+] = in-Dispense
* contained[+] = in-Request
* partOf[+] = Reference(in-Dispense)
* basedOn = Reference(in-Request)
* identifier.value = "1234" // The prescription number

Instance: in-Dispense
InstanceOf: MedicationDispense
Usage: #inline
* status = #unknown
* medicationCodeableConcept.text = "Tylenol"
// maybe a function is needed?? * performer.function = 
* performer.actor = Reference(in-Pharmacy)

Instance: in-Pharmacy
InstanceOf: Organization
Usage: #inline
* type.text = "Pharmacy"  // couldn't find a code for this
* name = "CVS" // PHARMACY_NAME
* telecom.value = "+17773339998" // PHARMACY_PHONE_NBR
* telecom.system = #phone

Instance: in-Request
InstanceOf: MedicationRequest
Usage: #inline
* status = #active
* intent = #order
* medicationCodeableConcept.text = "Tylenol"
* subject = Reference(Patient/ex-patient)
* requester.display = "Dr. Prancy Practitioner"
* identifier.value = "1234" // The prescription number
