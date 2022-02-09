
## MyHealtheVet contributions to PGHD

August 2021 now moving toward using FHIR R4 rather than DSTU2. This IG is focused on that FHIR R4 profile.

MyHealtheVet provides access to the VA managed Patient Generated Health Data (PGHD) FHIR based repository. MyHealtheVet enables viewing of the data, creating new entries, editing existing entries, and deleting entries. In addition MyHealtheVet enables the output of a FHIR-Document Bluebutton report.

### currently implemented

* Vital Signs
  * [Blood Pressure](StructureDefinition-VA.MHV.bloodPressure.html)
  * [Blood Sugar](StructureDefinition-VA.MHV.bloodSugar.html)
  * [Body Temperature](StructureDefinition-VA.MHV.bodyTemperature.html)
  * [Body Weight](StructureDefinition-VA.MHV.bodyWeight.html)
  * [Heart Rate](StructureDefinition-VA.MHV.heartRate.html)
  * [Pain](StructureDefinition-VA.MHV.pain.html)
  * [Oxygen Saturation](StructureDefinition-VA.MHV.bloodOxygenSat.html)


### profile drafted but feature is not approved for implementation

* [Family Health History](StructureDefinition-VA.MHV.familymemberhistory.html) -- Experimental for potential new feature
* Vital Signs
  * [Blood Sugar A - former using component for fasting status](StructureDefinition-VA.MHV.bloodSugarA.html)
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

### Additional Features

* Change
  * Allowing Delete without Edit
  * Allowing Edit without Delete
  * Allowing both Edit and Delete
* Support for Delegate user of MyHealtheVet to access PGHD
  * Read Only access
  * Read/Write/Create access
* Graph data over time -- like MyHealtheVet already supports for SEI vital signs, or like VCM supports for PGHD vital signs.
* Current MyHealtheVet secure messaging include references to PGHD hosted resources. For example being able to tell the doctor you have a new blood-pressure, and include in the message the FHIR Reference id in a rich-text way that appears to the human nicely, but is actually a FHIR URL


## Test Plan
Overall test plan leverages the Profiles, and Examples shown on the [Artifacts Summary](artifacts.html). The [Profiles](artifacts.html#structures-resource-profiles) listed are describing the constraints that MHV uses when publishing (Create or Update) into PGHD. Thus any Resources that are known to have been published by MHV MUST be conformant to these profiles.

The Examples listed in [Example Instances](artifacts.html#example-example-instances) are example instances that are conformant to the MHV profiles. 

The Examples listed in [Other](artifacts.html#other) are examples that either assist with the structure of the examples (e.g. Patient and Encounter) or are examples that MHV should be able to handle in various ways. 

See the Test Plan for each Profile to understand the specific expectations for each good, odd, and bad example.
* [Body Weight](StructureDefinition-VA.MHV.bodyWeight.html)

#### Cucumber Actions
The following Actions are defined for use in the Cucumber scripts

SUT - System Under Test -- this is the MyHealtheVet application -- aka MHV

PGHD - Patient Generated Health Data service -- this is the FHIR Server that MyHealtheVet uses -- aka PGD

Test-Patient - a FHIR Patient resource within the PGHD that is used for testing purposes and is tied to a test login to MHV

Test-Bench - a FHIR application (likely built with HAPI) that is used with PGHD for testing of the MHV

##### Initialized

**Preconditions**

PGHD is operational and has no known defects that would affect the test.

Test-Patient is created or known to have no data that would affect the test.

##### Load X into PGHD

This action is used to initialize a test, it is not expected to fail. So a failure is a fundamental failure, not an indication of the system-under-test.

GIVEN FHIR Resource X from this Implementation Guide

ACTION:

1. load X into Test-Bench
1. update the patient to the Test-Patient id under test
1. update the effectiveDateTime to **now**
1. POST the resource into PGHD
1. continue if successful, if error then break out of test plan



