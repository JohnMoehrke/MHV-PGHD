
Implementation Guide defining structureDefinition profiles, examples, and testing for how MyHealtheVet publishes to PGHD.

The main sections of this IG are:

- [Background](background.html)
- [Artifacts](artifacts.html)
- [TestPlan](testplan.html)
- [Downloads](downloads.html)

Most of the MHV profiles are based on [HL7 FHIR US-Core](http://hl7.org/fhir/us/core/STU5.0.1/index.html) implementation guide, which provides guidance to the USA marketplace that VHA participates within.  Deeper explanation is provided in the US-Core specification.

## Changes since MHV latest PGHD implementation

Changes to align with FHIR core profiles would require the following changes to our backend code
1. BloodPressure must ALSO have the .code of LOINC 85354-9
2. All ValueQuantity must populate the .units element, with a human friendly string (Note this turned out to be the original problem I had with FHIR core vitalsigns profiles)

No effective change but the profile looks different due to deriving off of FHIR Core vitalsigns profiles
- BodyWeight 
- BodyTemperature
- BloodOxygenSat

No effective changes besides the .units issue indicated above
- Pain
- HeartRate
- RespirationRate
- BloodSugar
