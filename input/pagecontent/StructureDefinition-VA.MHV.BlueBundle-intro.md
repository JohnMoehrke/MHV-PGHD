The BlueButton is exported given the information in PGHD. The BlueButton is a FHIR Document of the following format, conforming to this profile.

![](BluebuttonDiagram.svg)


Where:
* The Bundle is a document bundle
* The Bundle must contain a Composition
* The Bundle must contain the Patient
* The Bundle contains other PGHD resources that fit the query criteria

Query Criteria. Select a type and a timeframe:
* By data type
  * Only Vital Signs, not just MHV compliant Vital-Signs Observations
    * All vitals, even those not supported by MHV
    * Only [Blood Pressure](StructureDefinition-VA.MHV.bloodPressure.html)
    * Only [Blood Sugar](StructureDefinition-VA.MHV.bloodSugar.html)
    * Only [Body Temperature](StructureDefinition-VA.MHV.bodyTemperature.html)
    * Only [Body Weight](StructureDefinition-VA.MHV.bodyWeight.html)
    * Only [Heart Rate](StructureDefinition-VA.MHV.heartRate.html)
    * Only [Pain](StructureDefinition-VA.MHV.pain.html)
  * Only [Medications](StructureDefinition-VA.MHV.medication.html)
  * All data for the patient in PGHD regardless of MHV understanding
    * Note this might be very big, especially if there are Provenance or AuditEvents
* By timeframe
  * all
  * last year
  * 3 months
  * defined start-end
  
  