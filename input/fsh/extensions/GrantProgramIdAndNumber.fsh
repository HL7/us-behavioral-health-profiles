Extension: GrantProgramIdAndNumber
Id: program-info
Title: "Grant Program ID and Number"
Description: "This complex extension defines the representation of Grant Program ID as well as grant number."
Context: Observation
* ^version = "1.0.0"
* . ^short = "Grant Program ID and Number"
* extension 1..
* extension contains
    program-id 0..1 MS and
    grant-number 0..1 MS
* extension[program-id] ^short = "The program id for a program that that is participating in a designated behavioral health program."
* extension[program-id] ^definition = "The program id for a program that that is participating in a designated behavioral health program."
* extension[program-id].value[x] 1..
* extension[program-id].value[x] only string
* extension[grant-number] ^short = "The grant number that the behavioral health service is operating under."
* extension[grant-number] ^definition = "The grant number that the behavioral health service is operating under."
* extension[grant-number].value[x] only string