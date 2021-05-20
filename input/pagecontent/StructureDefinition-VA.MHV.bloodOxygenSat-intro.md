The MyHealtheVet Oxygen Saturation 

**Epic** MyHealtheVet will support Oxygen Saturation measurements in the PGHD (FHIR) repository

## Use-Case

### View all measurements currently in PGHD

**Given** that Oxygen Saturation measurements may be automatically recorded by Internet connected Oxygen Saturation measurement devices that are Veteran authorized 

**When** the Veteran needs to confirm that the measurements taken are available in PGHD

**Then** the MyHealtheVet will provide a user interface that displays the current measurements,

**And** these current measurements shall be sorted by date/time

**And** these current measurements shall be paged in pages of N size

#### User Interface prototype

will have a User Interface similar to

![](BloodOxygenSatList.svg)


Where:

* This will display the measurements recorded in the PGHD database
* For each oxygen saturation value found in PGHD (for a **Given** page size)
* Display the 
  * Date
  * Time
  * Percentage Oxygen Saturation
* When a Pulse/Heart-Rate is associated with the Oxygen Saturation measurement, it will NOT be displayed.
* Search of PGHD will be for any Observation resources with either of the given .code values

#### possible additional columns

* VCM equivalent UI shows the "source", which I think is the application (e.g. Get Care, Mobile Kidney, MyHealtheVet)
* Unclear if others are populating any element that might identify the device used

### View associated Heart Rate

**Given** that the Oxygen Saturation measurement has an associated Heart-Rate

**Then** indicate in the list for that Oxygen Saturation measurement the heart-rate value

#### User Interface

add one more column

### Graph all measurements currently in PGHD

**Given** that there are measurement shown in table form

**When** the user requests to see a graphic view

**Then** MyHealtheVet will show the data time-plotted

**And** normal range of 90%-99% indicated for visual relationship

### Mark a specified entry as deleted

**Given** that the Oxygen Saturation measurements will often be automatically entered upon use of a Oxygen Saturation device

**When** the device is used by someone other than the Veteran a spurious measurement will be recorded into PGHD

**And** the Veteran desires to not have that incorrect/inaccurate value associated with their medical measurements in PGHD

**Then** MyHealtheVet will provide a way for the user to select an entry from the list of measurements displayed

**And** MyHealtheVet will use the PGHD DELETE verb to indicate to PGHD that the entry should be marked as deleted

Note, that PGHD does not fully delete entries that are marked as deleted, but does make them unavailable for normal queries so the result will be that the measurement will no longer be in the list in MyHealtheVet or Virtual Care Manager

### Add manually entered Oxygen Saturation measurement

**Given** that some Veterans will not have measurement devices that are capable of automatically recording, or unwilling to authorize the measurement device, or do not have technology sufficient to support automatical recording from an Oxygen Saturation measurement device

**When** the Veteran takes a measurement

**And** the Veteran desires to enter the measurement

**Then** the MyHealtheVet will provide a user interface that enables the manual entry of the Oxygen Saturation measurement

#### User Interface 

* Date/time, not to be a future 
* Date/time, not to be too far in the past
* Percentage of Oxygen Saturation to one decimal place (e.g. 95.2%)
* Normal ranges for Oxygen Saturation are 90%-99%, so outside this range should cause a User Interface challenge to the user to confirm the value entered.
* Percentage of Oxygen Saturation not to be greater than 100%
* Percentage of Oxygen Saturation not to be less than X value defined by clinical review (typically not lower than 85%)

## Heart-Rate Considerations

Note that the Veteran may have a pulse that is associated with the Oxygen Saturation entry. This may be optionally recorded as a related  [Heart Rate](StructureDefinition-VA.MHV.heartRate.html) Observation. Similar to the Blood-Pressure use of a related Heart-Rate measurement.

Note, when a [Heart Rate](StructureDefinition-VA.MHV.heartRate.html) associated with a Oxygen Saturation Measurement is deleted or updated; the relationship between the Oxygen Saturation Measurement and that Heart Rate must be confirmed or eliminated. 

## Edit is not proposed

Edit is not proposed as a User-Story as it presents too many concerns for revisions. The use-case need to change a measurement can be satisfied by deleting the current and adding a replacement with the proper values.

## Mapping to Observation

