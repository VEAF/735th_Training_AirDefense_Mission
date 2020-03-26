-------------------------------------------------------------------------------------------------------------------------------------------------------------
-- VEAF ASSETS configuration script
-- By zip (2019)
--
-- Features:
-- ---------
-- Contains all the Caucasus mission-specific configuration for the ASSETS module
--
-- Prerequisite:
-- ------------
-- * This script requires DCS 2.5.1 or higher and MIST 4.3.74 or higher.
-- * It also requires veafAssets.lua
--
-- Load the script:
-- ----------------
-- load it in a trigger after loading veafAssets
-------------------------------------------------------------------------------------------------------------------------------------------------------------

veafAssets.Assets = {
    -- list the assets common to all missions below

	-- BLUE
    {name="CSG-01 Tarawa", description="Tarawa (LHA)", information="Tacan 11X\nDatalink 310 Mhz\nUHF 226 Mhz"},
    {name="CSG-74 Stennis", description="Stennis (CVN)", information="Tacan 10X\nDatalink 321 Mhz\nICLS 1\nUHF 225 Mhz"},  

    {name="Shell1", description="Shell (KC-135)", information="Tacan 47X\nVHF 130.3 Mhz"},
    {name="Texaco1", description="Texaco (KC-135 MPRS)", information="Tacan 23X\nVHF 130.2 Mhz"},
    {name="CVN-74 Stennis S3B-Tanker", description="Texaco-7 (S3-B)", information="Tacan 75Y\nVHF 130.5 Mhz"},

    {name="Overlord1", description="Cyrano (E-3A)", information="Datalink 315.3 Mhz\nUHF 282 Mhz"},

	-- RED
    {name="Texaco3", description="(RED) 127 (IL-78M)", information="VHF 289.4 Mhz"},
    {name="Texaco4", description="(RED) 126 (IL-78M)", information="VHF 334.4 Mhz"},

    {name="Overlord2", description="(RED) 132 (A-50)", information="UHF 341.1 Mhz"},
}
