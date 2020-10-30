Overall test plan leverages the Profiles, and Examples shown on the [Artifacts Summary](artifacts.html). The [Profiles](artifacts.html#structures-resource-profiles) listed are describing the constraints that MHV uses when publishing (Create or Update) into PGHD. Thus any Resources that are known to have been published by MHV MUST be conformant to these profiles.

The Examples listed in [Example Instances](artifacts.html#example-example-instances) are example instances that are conformant to the MHV profiles. 

The Examples listed in [Other](artifacts.html#other) are examples that either assist with the structure of the examples (e.g. Patient and Encounter) or are examples that MHV should be able to handle in various ways. 

See the Test Plan for each Profile to understand the specific expectations for each good, odd, and bad example.
* [Body Weight](StructureDefinition-VA.MHV.bodyWeight.html)

### Cucumber Actions
The following Actions are defined for use in the Cucumber scripts

SUT - System Under Test -- this is the MyHealtheVet application -- aka MHV

PGHD - Patient Generated Health Data service -- this is the FHIR Server that MyHealtheVet uses -- aka PGD

Test-Patient - a FHIR Patient resource within the PGHD that is used for testing purposes and is tied to a test login to MHV

Test-Bench - a FHIR application (likely built with HAPI) that is used with PGHD for testing of the MHV

#### Initialized

**Preconditions**

PGHD is operational and has no known defects that would affect the test.

Test-Patient is created or known to have no data that would affect the test.

#### Load X into PGHD

This action is used to initialize a test, it is not expected to fail. So a failure is a fundamental failure, not an indication of the system-under-test.

GIVEN FHIR Resource X from this Implementation Guide

ACTION:

1. load X into Test-Bench
1. update the patient to the Test-Patient id under test
1. update the effectiveDateTime to **now**
1. POST the resource into PGHD
1. continue if successful, if error then break out of test plan
