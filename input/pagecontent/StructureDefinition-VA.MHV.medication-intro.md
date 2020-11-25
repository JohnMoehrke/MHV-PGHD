The My Medications will have a User Interface similar to

![](MyMedicationsBox.svg)


Where:

* MedicationStatement contains a MedicationRequest, a MedicationDispense and a Organization
  * MedicationRequest holds the prescribing clinician and the prescription number
  * MedicationDispense is used simply to point at the Organization (MedicationDispense.performer.actor)
    * note that the MedicationDispense.medicationCodeableConcept must be populated with the same medication value as MedicationStatement.medicationCodeableConcept
  * Organization holds the Pharmacy information
  * MedicationStatement.partOf points at MedicationDispense
* Medication -- should be from RxNorm, but may be free text
  * MedicationStatement.medicationCodeableConcept
  * when no RxNorm is found the free text goes into the .text element
* Reason -- will be free text
  * MedicationStatement.reasonCode.text
  * ''could be a code in the future''
* Strength -- will be free text, but may eventually be coded based on the medication selected
  * MedicationStatement.dose.doseAndRate.doseQuantity
* Quantity -- a value from a pick list
  * MedicationStatement.dose.doseAndRate.rateRatio.numerator
* Frequency -- a value from a pick list
  * MedicationStatement.dose.doseAndRate.rateRatio.denominator
* Method -- a value from a pick list
  * MedicationStatement.route
  * from valueSet MHVmedicationRoutes
* Prescription Number -- will be free text
  * MedicationStatement.identifier
* Clinician -- will be free text
  * MedicationRequest.requester
* Pharmacy -- will be free text
  * Organization.name
  * could be a drop-down based on last medication entered
* Phone of Pharmacy -- will be a phone number
  * Organization.telcom
  * could be a drop-down based on last medication entered
* Notes -- will be free text
  * MedicationStatement.note.text
* Side Effects -- will be Yes/No 
  * TODO unknown at this time. Likely a contained Observation
  
Additionally:
* status would be active, unless the veteran says it is no longer being taken then either stopped or completed as appropriate
* category would be patientspecified
* subject would be the Patient
* dateAsserted would be the date/time when created or edited in MHV
* effectivePeriod would hold a start and end if known


Not clear
* where side effects goes, likely a contained Observation
