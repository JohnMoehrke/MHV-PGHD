// MHV FamilyMemberHistory



Extension: multiBirth
Id: FM-multiBirth
Title: "multi-birth indication"
Description: """
When this family member is known to be part of a multi-birth, indicate how many siblings.
"""
* value[x] only integer
* valueInteger 1..1

Extension: adopted
Id: FM-adopted
Title: "adopted indication"
Description: """
When this family member is adopted.
"""
* value[x] only boolean
* valueBoolean 1..1

Extension: ethnicity
Id: FM-ethnicity
Title: "ethnicity"
Description: """
What is the ethnicity of this family member

Note would like to use the us-core defined extension, but it is not allowed in FamilyMemberHistory [jira issue](https://jira.hl7.org/browse/FHIR-35997)
"""
* value[x] only CodeableConcept
* valueCodeableConcept from http://hl7.org/fhir/us/core/ValueSet/omb-ethnicity-category (preferred)
* valueCodeableConcept 1..1

Extension: race
Id: FM-race
Title: "race"
Description: """
What is the race of this family member

Note would like to use us-core defined extension, but is not allowed in FamilyMemberHistory [Jira issue](https://jira.hl7.org/browse/FHIR-35998)
"""
* value[x] only CodeableConcept
* valueCodeableConcept from http://hl7.org/fhir/us/core/ValueSet/omb-race-category (preferred)
* valueCodeableConcept 1..1


Profile:        MHVfamilymemberhistory
Parent:         FamilyMemberHistory
Id:             VA.MHV.familymemberhistory
Title:          "VA MHV FamilyMemberHistory"
Description:    """
A profile on the FamilyMemberHistory that declares how MHV will Create/Update in PGHD for an family member history record.

**Proposed mapping not yet approved for implementation**

The specification here is 
* inspired by https://phgkb.cdc.gov/FHH/html/index.html
* could derive off of QI-Core FamilyMemberHistory profile, but it is not clear that gives us anything useful  https://hl7.org/fhir/us/qicore/StructureDefinition-qicore-familymemberhistory.html
* There is no profile of FamilyMemberHistory in us-core
* USCDI v2 added Health Conserns and hint that family member is included. https://www.healthit.gov/isa/united-states-core-data-interoperability-uscdi#uscdi-v2
* USCDI v3 seems to be similar https://www.healthit.gov/isa/united-states-core-data-interoperability-uscdi#draft-uscdi-v3
* Level 2 has it clear Family Health History https://www.healthit.gov/isa/united-states-core-data-interoperability-uscdi#level-2

Some discussion notes
* could indication of twin (multiple-birth) using http://hl7.org/fhir/R4/extension-family-member-history-genetics-sibling.html
  * not clear this is the best match, as this requires a link to the 'other' sibling
  * where as the CDC prototype just wanted to know if this member was a multi-birth
* could indicate race and ethnicity using http://hl7.org/fhir/R4/extension-family-member-history-genetics-observation.html
  * not clear these are useful as they require the family-member to also be a Patient
  * these observations likely are contained so as to not confuse with a real patient

Given that MyHealtheVet has access to medical record (Vista and Cerner) of FamilyMemberHistory, there should be logic keeping a patient from entering a duplicate details.
* For each relative of the Patient there will be a FamilyMemberHistory instance 
  * Thus a query of the FamilyMemberHistory instances for a given Patient will give you all the relatives for which medical history is known.
  * Each FamilyMemberHistory record would be updated when new medical conditions/problems are learned
  * Thus FamilyMemberHistory needs to have support for Create/Read/Update/Delete
  * once created will or might have an id, versionId, lastUpdated, text, and identifier
* must be marked with MHV app tag
* must point at the patient
* must indicate the date this record is being recorded into PGHD 
* should have a name of the family member
* should have the relationship this family member has with the Patient
* should have the sex/gender (administrative gender) of this family member
* should have the age or date-of-birth
  * should use a valueSet for date ranges on decades 
  * indicate estimatedAge if the age is estimated
* should have indication when patient has died with the age of death or date
  * should use a valueSet for date ranges on decades 
* extension indication of twin (multiple-birth) using * extension indicate race 
* extension indicate ethnicity 
* extension indicated if adopted
* should have 0..* conditions
  * condition.code should be from a given valueSet
  * condition.outcome should indicate the outcome of this condition
  * condition.onset[x] should indicate when this condition first manifested
  * condition.note may include a freetext note
"""
* ^version = "0.1.0"
* ^date = "2022-02-09"
* ^experimental = true
* meta.tag 1..1
* meta.tag = https://wiki.mobilehealth.va.gov/x/Onc1C#2ce6d9aa-c068-4809-8dda-662bcb16d09a
* status 1..1
* date 1..1
* patient 1..1
* name MS
* relationship 1..1
* sex MS
* born[x] MS
* age[x] MS
* estimatedAge MS
* deceased[x] MS
* extension contains FM-multiBirth named sibling 0..1 MS
* extension contains FM-adopted named adopted 0..1 MS
* extension contains FM-ethnicity named ethnicity 0..* MS
* extension contains FM-race named race 0..* MS
* condition MS
* condition.code 1..1
* condition.outcome MS
* condition.contributedToDeath MS
* condition.onset[x] MS
* condition.note MS
// Not used, so set them to forbiden
* dataAbsentReason 0..0
* instantiatesCanonical 0..0
* instantiatesUri 0..0
* reasonCode 0..0
* reasonReference 0..0
* note 0..0



//  mappings to MHV FMH UI 
Mapping: MHV-FMH-UI
Source:	VA.MHV.familymemberhistory
Target: "MHV-UI"
Title: "MyHealtheVet mapping to FHIR/PGHD"
* -> "MHV-UI" "Used in the MyHealtheVet FamilyMemberHistory User Interface"
* meta.tag -> "MHV tag"
* patient -> "the Patient"
* status -> "complete"
* date -> "the date recorded"
* name -> "the family member name"
* relationship -> "the family member relationship"
* sex -> "the gender of the family member"
* born[x] -> "the birthdate of the family member"
* age[x] -> "the age of the family member"
* estimatedAge -> "true if age estimated"
* deceased[x] -> "death"
* extension[sibling] -> "number of siblings"
* extension[adopted] -> "adopted"
* extension[ethnicity] -> "ethnicity"
* extension[race] -> "race"
* condition.code -> "Condition/Problem"
* condition.outcome -> "manifestation of condition/problem"
* condition.onset[x] -> "when this condition first noted"
* condition.note -> "Note"




