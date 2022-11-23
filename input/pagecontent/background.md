
## MyHealtheVet contributions to PGHD

MyHealtheVet provides access to the VA managed Patient Generated Health Data (PGHD) FHIR based repository. MyHealtheVet enables viewing of the data, creating new entries, editing existing entries, and deleting entries. In addition MyHealtheVet enables the output of a FHIR-Document Bluebutton report.

### currently implemented

[MHV Implementation Capability Statement](CapabilityStatement-MHVcapabilities.html)

#### Vital Signs
1. [Blood Pressure](StructureDefinition-VA.MHV.bloodPressure.html)
1. [Blood Sugar](StructureDefinition-VA.MHV.bloodSugar.html)
1. [Body Temperature](StructureDefinition-VA.MHV.bodyTemperature.html)
1. [Body Weight](StructureDefinition-VA.MHV.bodyWeight.html)
1. [Heart Rate](StructureDefinition-VA.MHV.heartRate.html) - aka Pulse
1. [Pain](StructureDefinition-VA.MHV.pain.html)
1. [Oxygen Saturation](StructureDefinition-VA.MHV.bloodOxygenSat.html)
1. [Respiration Rate](StructureDefinition-VA.MHV.respirationRate.html)


### profile drafted but feature is not approved for implementation

* [Family Health History](StructureDefinition-VA.MHV.familymemberhistory.html) -- Experimental for potential new feature
* [Medications](StructureDefinition-VA.MHV.medication.html)
* [Allergy and Intolerance](StructureDefinition-VA.MHV.allergy.html)
* [Immunization](StructureDefinition-VA.MHV.immunization.html)
* [FHIR Document Bluebutton report](StructureDefinition-VA.MHV.BlueBundle.html) -- Experimental and incomplete

### other FHIR data that could be implemented

* Goals
* Problems / Conditions
* Implanted Devices
* measurement Devices
* Smoking Status
* CareTeam (external clinicians being seen)
* Upload Documents
  * C-CDA
  * Discharge Summary
  * BlueButton
  * ?

#### From SMHD (e.g., Apple, Fitbit?)
* Exercise Duration - 55411-3
* Active Calories Burned - 41981-2
* BMR Calories Burned - 41981-2
* Energy Burned (Calories) - 41981-2
* Floors Climbed - 93833-2
* Resting Heart Rate - 40443-4
* Steps Taken - 41950-7
* Distance Travled - 93849-8
* Elevation - 93971-0
* category "daily-active-summary -- components:
  * Time Spent Fairly Active - code "fairly-active-duration"
  * Heart Rate Variability - code "heart-rate-variability"
  * Heart Rate Zone High - code "heart-rate-zone-high"
  * Heart Rate Zone Low - code "heart-rate-zone-low"
  * Heart Rate Zone Medium - code "heart-rate-zone-medium"
  * Heart Rate Zone Very Low - code "heart-rate-zone-very-low"
  * Time Spent Lightly Active - code "lightly-active-duration"
  * Max Heart Rate - code "max-heart-rate"
  * Minimum Heart Rate - code "min-heart-rate"
  * Mindful Duration - code "mindful-duration"
  * Time Spent Very Active - code "very-active-duration
* category workout - components:
  * average heart rate
  * active duration
  * energy burned
  * steps
  * average cadence
  * average power
  * average speed
  * distance
  * fairly active duration
  * heart rate variability
  * heart rate zone high
  * heart rate zone low
  * heart rate zone medium
  * heart rate zone very low
  * laps
  * lightly active duration
  * max heart rate
  * max speed
  * min heart tate
  * very active duration
* Maximum expiration gas flow Respiratiotory system airway by Peak flow meter - 19935-6
* Body mass index Estimated - 89270-3
* Percentage of Body Fat - 41982-0
* Body Height - 8301-4 or 8302-2
* FEF 25-75% Predicted - 69971-0
* FEV1 - 20150-9
* FEV1/FVC - 19926-5
* Circumference of Arms - 56072-2
* Chest Circumference at nipple line - 8279-2
* Circumference of Hips - 62409-8
* Circumference of Thys - 8286-7
* Circumference of Waist - 8281-8
* Forced Expiratory Time (FET) - 65819-5
* Insulin Consumed - 2339-0 ???
* Nutritian
  * calcium
  * carbohydrate
  * cholestorol
  * dietary fiber
  * energy consumed
  * fat
  * protein
  * sodium
  * water
  * unsaturated fat
  * sugars
* Sleep
  * awake count
  * awake duration
  * deep sleep
  * in bed duration
  * light sleep
  * rem sleep
  * restless count
  * sleep duration
  * sleep score
  * time to fall asleep
* Intraday 
  * average heart rate
  * blood glucoe
  * floors climbed
  * steps
  * distance


### Additional Features MyHealtheVet could use FHIR for

* Change
  * Allowing Delete without Edit
  * Allowing Edit without Delete
  * Allowing both Edit and Delete
* Support for Delegate user of MyHealtheVet to access PGHD
  * Read Only access
  * Read/Write/Create access
* Graph data over time -- like MyHealtheVet already supports for SEI vital signs, or like VCM supports for PGHD vital signs.
* Revoke Clinical access
  * Use of FHIR Consent to indicate Veteran has revoked MHV access to the data without removing the data
* Veteran see when data are reviewed
  * Requires PGHD implement FHIR AuditEvent
  * Provide view of who has accessed the data
* Current MyHealtheVet secure messaging include references to PGHD hosted resources. For example being able to tell the doctor you have a new blood-pressure, and include in the message the FHIR Reference id in a rich-text way that appears to the human nicely, but is actually a FHIR URL




