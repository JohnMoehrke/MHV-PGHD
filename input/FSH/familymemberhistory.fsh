// MHV FamilyMemberHistory



Extension: MultiBirth
Id: FM-MultiBirth
Title: "MultiBirth indication"
Description: """
When this family member is known to be part of a MultiBirth, indicate how many siblings.
"""
* value[x] only integer
* valueInteger 1..1

Extension: Adopted
Id: FM-Adopted
Title: "Adopted indication"
Description: """
When this family member is Adopted.
"""
* value[x] only boolean
* valueBoolean 1..1

Extension: Ethnicity
Id: FM-Ethnicity
Title: "Ethnicity"
Description: """
What is the Ethnicity of this family member

Note would like to use the us-core defined extension, but it is not allowed in FamilyMemberHistory [jira issue](https://jira.hl7.org/browse/FHIR-35997)
"""
* value[x] only CodeableConcept
* valueCodeableConcept from http://terminology.hl7.org/ValueSet/v3-Ethnicity (preferred)
* valueCodeableConcept 1..1

Extension: Race
Id: FM-Race
Title: "Race"
Description: """
What is the Race of this family member

Note would like to use us-core defined extension, but is not allowed in FamilyMemberHistory [Jira issue](https://jira.hl7.org/browse/FHIR-35998)
"""
* value[x] only CodeableConcept
* valueCodeableConcept from http://terminology.hl7.org/ValueSet/v3-Race (preferred)
* valueCodeableConcept 1..1


Profile:        MHVfamilymemberhistory
Parent:         FamilyMemberHistory
Id:             VA.MHV.familymemberhistory
Title:          "VA MHV FamilyMemberHistory"
Description:    """
A profile on the FamilyMemberHistory that declares how MHV will Create/Update in PGHD for an family member history record.

**Proposed mapping not yet approved for implementation**

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
* must have the relationship this family member has with the Patient
* should have the sex/gender (birth sex) of this family member
* should have the age or date-of-birth
  * should use a valueSet for date ranges on decades 
  * indicate estimatedAge if the age is estimated
* should have indication when patient has died with the age of death or date
  * should use a valueSet for date ranges on decades 
* may have extension indication of twin (multiple-birth) using 
* may have extension indicate Race 
* may have extension indicate Ethnicity 
* may have extension indicate Adopted
* should have 0..* conditions
  * condition.code should be from a given valueSet
  * condition.outcome should indicate the outcome of this condition
  * condition.onset[x] should indicate when this condition first manifested
  * condition.note may include a freetext note
* should have a note
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
* extension contains FM-MultiBirth named sibling 0..1 MS
* extension contains FM-Adopted named adopted 0..1 MS
* extension contains FM-Ethnicity named ethnicity 0..* MS
* extension contains FM-Race named race 0..* MS
* condition MS
* condition.code 1..1
* condition.outcome MS
* condition.contributedToDeath MS
* condition.onset[x] MS
* condition.note 0..0
* note.text MS
// Not used, so set them to forbiden
* dataAbsentReason 0..0
* instantiatesCanonical 0..0
* instantiatesUri 0..0
* reasonCode 0..0
* reasonReference 0..0




//  mappings to MHV new FMH UI 
Mapping: MHV-PGHD-FMH-UI
Source:	VA.MHV.familymemberhistory
Target: "MHV-new-UI"
Title: "MyHealtheVet new Family Health History UI mapping to FHIR/PGHD"
* -> "MHV-UI" "New in the MyHealtheVet FamilyMemberHistory User Interface"
* meta.tag -> "(MHV tag)"
* patient -> "(the Patient)"
* status -> "(complete)"
* date -> "(the date recorded)"
* name -> "the family member name"
* relationship -> "the family member relationship"
* sex -> "the gender of the family member"
* born[x] -> "the birthdate of the family member"
* age[x] -> "the age of the family member"
* estimatedAge -> "true if age estimated"
* deceased[x] -> "death"
* extension[sibling] -> "number of siblings"
* extension[adopted] -> "Adopted"
* extension[ethnicity] -> "Ethnicity"
* extension[race] -> "Race"
* condition.code -> "Condition/Problem"
* condition.outcome -> "manifestation of condition/problem"
* condition.onset[x] -> "when this condition first noted"
* note.text -> "Note"


//  mappings to MHV old FMH UI 
Mapping: MHV-OLD-FMH-UI
Source:	VA.MHV.familymemberhistory
Target: "MHV-old-UI"
Title: "MyHealtheVet old Family Health History UI mapping to FHIR/PGHD"
* -> "MHV-UI" "Old in the MyHealtheVet FamilyMemberHistory User Interface"
* meta.tag -> "(MHV tag)" "not on the UI"
* patient -> "(the Patient)" "not on the UI"
* status -> "(complete)" "not on the UI"
* date -> "(the date recorded)" "not on the UI"
* name -> "First Name:, Last Name:"
* relationship -> "Relationship:"
* sex -> "(the gender of the family member)" "Implied by relationship selected"
* born[x] -> "N/A"
* age[x] -> "N/A"
* estimatedAge -> "N/A"
* deceased[x] -> "Living/Deceased choice"
* extension[sibling] -> "N/A"
* extension[adopted] -> "N/A"
* extension[ethnicity] -> "N/A"
* extension[race] -> "N/A"
* condition.code -> "Condition/Problem/Other" "needs mapping to SNOMED-CT terminology"
* condition.outcome -> "N/A"
* condition.onset[x] -> "N/A"
* note.text -> "Comments:"





Instance: ex-father
InstanceOf: MHVfamilymemberhistory
Title: "Example Father Family Member History"
Description: """
Minimal details
- Johannes Yakub Schmidt
- Father
- Male
- born July 25, 1903 - estimated
- deceased
- note
- conditions: Anxiety and Choroidal
"""
* meta.tag = https://wiki.mobilehealth.va.gov/x/Onc1C#2ce6d9aa-c068-4809-8dda-662bcb16d09a
* status = #completed
* patient = Reference(Patient/ex-patient)
* date = 2022-04-08
* bornDate = "1903-07-25"
* deceasedBoolean = true
* name = "Johannes Yakub Schmidt"
* relationship = http://terminology.hl7.org/CodeSystem/v3-RoleCode#FTH "father"
* sex = http://hl7.org/fhir/administrative-gender#male "Male"
* note.text = "His father, John Jacob Schmidt, born Johannes Yakub Schmidt in Lithuania. He was a baker recently moved to Buffalo to open his own bakery. "
* condition[+].code = SCT#109006 "Anxiety disorder of childhood OR adolescence"
* condition[+].code = SCT#122003 "Choroidal hemorrhage"

Instance: ex-mother
InstanceOf: MHVfamilymemberhistory
Title: "Example Mother Family Member History"
Description: """
Minimal details
- Katherine Irene Schmidt
- Mother
- Female
- note
- conditions: Homiothermia and decreased hair growth
"""
* meta.tag = https://wiki.mobilehealth.va.gov/x/Onc1C#2ce6d9aa-c068-4809-8dda-662bcb16d09a
* status = #completed
* patient = Reference(Patient/ex-patient)
* date = 2022-04-08
* name = "Katherine Irene Schmidt"
* relationship = http://terminology.hl7.org/CodeSystem/v3-RoleCode#MTH "mother"
* sex = http://hl7.org/fhir/administrative-gender#female "Female"
* note.text = """
His mother, Katherine Irene Schmidt, (nee O'Cleary) was an immigrant from Ireland, who had left the "Auld Sod" back in 1849 as a young girl escaping the Potato Famine. She worked at the Broadhurst Manor Hotel as a maid, dishwasher, and cook's helper, saving every penny possible.
"""
* condition[+].code = SCT#127009 "Spontaneous abortion with laceration of cervix"
* condition[+].code = SCT#134006 "Decreased hair growth"

Instance: ex-wife
InstanceOf: MHVfamilymemberhistory
Title: "Example Wife Family Member History"
Description: """
Minimal details
- Jania Luise Schmidt
- Wife
- Female
- note
- conditions: Pharyngitis and normal peripheral vision
"""
* meta.tag = https://wiki.mobilehealth.va.gov/x/Onc1C#2ce6d9aa-c068-4809-8dda-662bcb16d09a
* status = #completed
* patient = Reference(Patient/ex-patient)
* date = 2022-04-08
* name = "Jania Louise Schmidt"
* relationship = http://terminology.hl7.org/CodeSystem/v3-RoleCode#WIFE "wife"
* sex = http://hl7.org/fhir/administrative-gender#female "Female"
* note.text = "The wife, Jania the daughter of the green grocers."
* condition[+].code = SCT#140004 "Chronic pharyngitis"
* condition[+].code = SCT#144008 "Normal peripheral vision"

Instance: ex-son
InstanceOf: MHVfamilymemberhistory
Title: "Example Son Family Member History"
Description: """
Minimal details
- John Jacob Schmidt
- Son
- twin
- age 78
- Male
- note
- conditions: scrotum wound and bladder continence
"""
* meta.tag = https://wiki.mobilehealth.va.gov/x/Onc1C#2ce6d9aa-c068-4809-8dda-662bcb16d09a
* status = #completed
* patient = Reference(Patient/ex-patient)
* date = 2022-04-08
* ageAge = 78 'a'
* estimatedAge = true
* extension[sibling].valueInteger = 2
* name = "John Jacob Schmidt"
* relationship = http://terminology.hl7.org/CodeSystem/v3-RoleCode#SON "natural son"
* sex = http://hl7.org/fhir/administrative-gender#male "Male"
* note.text = "but of course there must be a son named John Jacob..."
* condition[+].code = SCT#147001 "Superficial foreign body of scrotum without major open wound but with infection"
* condition[+].code = SCT#150003 "Abnormal bladder continence"

Instance: ex-son2
InstanceOf: MHVfamilymemberhistory
Title: "Example Second Son Family Member History"
Description: """
Maximal details
- John Jacob Schmidt
- Son
- twin
- born 7/25/1943
- Male
- not adopted
- not hispanic or latino
- Irish
- note
- conditions: Meningitis leading to Meningoccermia at age 50s
- conditions: bipolar
"""
* meta.tag = https://wiki.mobilehealth.va.gov/x/Onc1C#2ce6d9aa-c068-4809-8dda-662bcb16d09a
* status = #completed
* patient = Reference(Patient/ex-patient)
* date = 2022-04-08
* name = "John Jacob Schmidt"
* bornDate = "1943-07-25"
* extension[sibling].valueInteger = 2
* extension[adopted].valueBoolean = false
* extension[ethnicity].valueCodeableConcept = http://terminology.hl7.org/CodeSystem/v3-Ethnicity#2186-5 "Not Hispanic or Latino"
* extension[race].valueCodeableConcept = http://terminology.hl7.org/CodeSystem/v3-Race#2113-9 "Irish"
* relationship = http://terminology.hl7.org/CodeSystem/v3-RoleCode#SON "natural son"
* sex = http://hl7.org/fhir/administrative-gender#male "Male"
* note.text = "but of course there must be a son named John Jacob..."
* condition[+].code = SCT#151004 "Meningitis due to gonococcus"
* condition[=].outcome = SCT#4089001 "Meningococcemia"
* condition[=].contributedToDeath = false
* condition[=].onsetString = "50s"
* condition[+].code = SCT#162004 "Severe manic bipolar I disorder without psychotic features"


