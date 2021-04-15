This is the Intro for the VA.MHV.allergy Profile

The My Allergies will have a User Interface similar to

Simple UI that is similar to current MyHealtheVet

![](Allergy.svg)

<div style="clear: left"/>

Advanced UI that adds a few features

![](Allergy_advanced.svg)

<div style="clear: left"/>

The mapping between the FHIR AllergyIntolerance resource and the above User Interface can be found on the [Mappings for MyHealtheVet mapping to FHIR/PGHD (MHV-UI)](StructureDefinition-VA.MHV.allergy-mappings.html#mappings-for-myhealthevet-mapping-to-fhir-pghd-mhv-ui)

#### Policy and Design Considerations

Where MyHealtheVet can determine that the new allergy being entered already exists, in either PGHD, Vista, and Cerner, the user should be warned that they are creating duplicate information. Some logic should be determined on if there should be a hard rule forbidding this duplicate entry, or if there should be a linkage to the medical record so that other applications can detect that this is a duplicate. This link is possible in FHIR, but has not been included here.
