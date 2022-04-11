### Usage

The Family Member History enables recording into a Patient's chart relevant medical history of that Patient's family members. Given a Patient, there will be some number of Family Member History resource that indicate various relatives. Each Family Member History resource contains the list of medical conditions that family member had or has. Thus the Family Member History resource is about the Patient potential to have similar medical conditions due to genetics or social environment.

### Background

This is the notes for the VA.MHV.familymemberhistory Profile

The specification here is 
* inspired by https://phgkb.cdc.gov/FHH/html/index.html
* Impact assessment of family health assessment https://pubmed.ncbi.nlm.nih.gov/25901453/
* could derive off of QI-Core FamilyMemberHistory profile, but it is not clear that gives us anything useful  https://hl7.org/fhir/us/qicore/StructureDefinition-qicore-familymemberhistory.html
* There is no profile of FamilyMemberHistory in us-core
* USCDI v2 added Health Conserns and hint that family member is included. https://www.healthit.gov/isa/united-states-core-data-interoperability-uscdi#uscdi-v2
* USCDI v3 seems to be similar https://www.healthit.gov/isa/united-states-core-data-interoperability-uscdi#draft-uscdi-v3
* Level 2 has it clear Family Health History https://www.healthit.gov/isa/united-states-core-data-interoperability-uscdi#level-2
* Cerner Millennium R4 has support for FamilyMemberHistory http://fhir.cerner.com/millennium/r4/clinical/summary/family-member-history/
  * extension for patient-Adopted (Boolean)
  
Some discussion notes
* could indication of twin (multiple-birth) using http://hl7.org/fhir/R4/extension-family-member-history-genetics-sibling.html
  * not clear this is the best match, as this requires a link to the 'other' sibling
  * where as the CDC prototype just wanted to know if this member was a MultiBirth
* could indicate Race and Ethnicity using http://hl7.org/fhir/R4/extension-family-member-history-genetics-observation.html
  * not clear these are useful as they require the family-member to also be a Patient
  * these observations likely are contained so as to not confuse with a real patient
* age in decades -- no known valueSet for this, but it sure seems useful

Existing (old) [Family Health History in MyHealtheVet](ExistingFamilyHealthHistory.png)
* All elements map directoy to FHIR elements
  * See [defined mapping from old to PGHD](StructureDefinition-VA.MHV.familymemberhistory-mappings.html#mappings-for-myhealthevet-old-family-health-history-ui-mapping-t)
  * old conditions need to be mapped to proper Conditions vocabulary
* No need for extensions 


