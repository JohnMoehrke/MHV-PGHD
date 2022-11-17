
## MyHealtheVet contributions to PGHD

MyHealtheVet provides access to the VA managed Patient Generated Health Data (PGHD) FHIR based repository. MyHealtheVet enables viewing of the data, creating new entries, editing existing entries, and deleting entries. In addition MyHealtheVet enables the output of a FHIR-Document Bluebutton report.

### currently implemented

[MHV Implementation Capability Statement](CapabilityStatement-MHVcapabilities.html)

#### Vital Signs
1. [Blood Pressure](StructureDefinition-VA.MHV.bloodPressure.html)
1. [Blood Sugar](StructureDefinition-VA.MHV.bloodSugar.html)
1. [Body Temperature](StructureDefinition-VA.MHV.bodyTemperature.html)
1. [Body Weight](StructureDefinition-VA.MHV.bodyWeight.html)
1. [Heart Rate](StructureDefinition-VA.MHV.heartRate.html)
1. [Pain](StructureDefinition-VA.MHV.pain.html)
1. [Oxygen Saturation](StructureDefinition-VA.MHV.bloodOxygenSat.html)
1. [Respiration Rate](StructureDefinition-VA.MHV.respirationRate.html)


### profile drafted but feature is not approved for implementation

* [Family Health History](StructureDefinition-VA.MHV.familymemberhistory.html) -- Experimental for potential new feature
* [Medications](StructureDefinition-VA.MHV.medication.html)
* [Allergy and Intolerance](StructureDefinition-VA.MHV.allergy.html)
* [Immunization](StructureDefinition-VA.MHV.immunization.html)
* [FHIR Document Bluebutton report](StructureDefinition-VA.MHV.BlueBundle.html) -- Experimental and incomplete
* Goals
* Problems
* Implanted Devices
* measurement Devices
* Smoking Status
* CareTeam (external clinicians being seen)
* Height
* Upload Documents

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




