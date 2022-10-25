The My Medications will have a User Interface similar to

![](MyMedicationsBox.svg)


Where:

* MedicationStatement contains a MedicationRequest, a MedicationDispense, an Organization, and an Observation
  * MedicationRequest holds the prescribing clinician and the prescription number
  * MedicationDispense is used simply to point at the Organization (MedicationDispense.performer.actor)
    * note that the MedicationDispense.medicationCodeableConcept must be populated with the same medication value as MedicationStatement.medicationCodeableConcept
  * Organization holds the Pharmacy information
  * Observation holds the facts about side affects
  * MedicationStatement.partOf points at MedicationDispense
  * MedicationStatement.partOf points at the Observation 
* Medication Name -- should be from RxNorm, but may be free text
  * MedicationStatement.medicationCodeableConcept
  * when no RxNorm is found the free text goes into the .text element
* Reason -- will be free text
  * MedicationStatement.reasonCode.text
  * ''could be a code in the future''
* Strength -- will be free text, but may eventually be coded based on the medication selected
  * MedicationStatement.dose.doseAndRate.doseQuantity
* Quantity per dose -- a value from a pick list
  * 0.5, 1, 2, 3, 4, 5, 6
  * MedicationStatement.dose.doseAndRate.rateRatio.numerator
* Frequency of a dose -- a value from a pick list
  * once a day, twice a day, three a day, four a day, once a week, twice a week, three a week, four a week, five a week, six a week, once a month, every hour, as needed
  * MedicationStatement.dose.doseAndRate.rateRatio.denominator
* Method of a dose -- a value from a pick list
  * MedicationStatement.route
  * from valueSet MHVmedicationRoutes
* Side Effects -- will be Yes/No 
  * contained Observation, 
  * The causality linkage is only implied by the use of the two snomed-ct codes
  * SNOWMED-CT 401207004 - Medication Side effects present (finding)
  * SNOMED-CT 408508002 - Has shown no side effects from medication (finding)
* Start Date and Stop Date 
  * effectiveDateTime when just start date/time
  * effectivePeriod when both start and stop are provided
* Currently Taking checkbox
  * status of active, complete, or stopped
* Prescription Number -- will be free text
  * MedicationStatement.identifier
* Provider -- will be free text
  * MedicationRequest.requester
* Pharmacy -- will be free text
  * Organization.name
  * could be a drop-down based on last medication entered
* Phone of Pharmacy -- will be a phone number
  * Organization.telcom
  * could be a drop-down based on last medication entered
* Notes -- will be free text
  * MedicationStatement.note.text

  
Additionally:
* status would be active, unless the veteran says it is no longer being taken then either stopped or completed as appropriate
* category would be patientspecified
* subject would be the Patient
* dateAsserted would be the date/time when created or edited in MHV


Not clear
* where side effects goes, likely a contained Observation, but unknown how the relationship of the Observation is a sideaffect caused/related to the medication. Most Observations are the reason for taking the medication, not the side affects of the medication.

### Profile