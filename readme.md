# 735th Training Air Defense mission

## Abstract
This mission has been designed in order to offer a friendly environment for **Air Defense** training on [DCS World](https://www.digitalcombatsimulator.com).

Please read the operational documentation for further information on the training concept.
In this documentation you will also find ATO, ACO, radio presets... and many more.

*Link to the operational documentation - in progress*


## Contributor onboarding

If you want to contribute to this mission project, or simply want to edit and build your own based on the original TRAD mission, please read the following steps.

1. clone this repository
2. [download](https://www.7-zip.org/download.html) **7za.exe** (in *7-Zip Extra: standalone console version, 7z DLL, Plugin for Far Manager* package), install it, and either add it to your PATH, or copy it in the root of this repository.
3. install npm - for that install [node.js](https://nodejs.org/en/download/)
4. execute `npm install` in order to install dependencies ( [VEAF-Mission-Creation-Tools](https://github.com/VEAF/VEAF-Mission-Creation-Tools) )

At this stage, you're ready to build your own TRAD mission (use the *build.cmd* command).
Happy editing :-).


## TRAD mission building

Simply execute `./build.cmd` in order to build the mission.

For developpement purpose you way want to use some special flags (*more details about flags needed*).


## .miz edit

If you produce some .miz edit in DCS, you'll need to *extract* this changes.
1. Put the edited .miz in the root of this repository
2. execute `./extract.cmd`

It will extract all files from the .miz and delete it.
