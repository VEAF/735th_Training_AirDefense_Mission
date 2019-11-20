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
    -- BLUE
    {sort=1, name="CSG-01 Tarawa", description="Tarawa (LHA)", information="Tacan 1X (TWA)\nDatalink 310 Mhz\nVHF 127.5 Mhz"},  
    {sort=2, name="CSG-74 Stennis", description="Stennis (CVN)", information="Tacan 2X (SIS)\nDatalink 321 Mhz\nICLS 1\nVHF 127.5 Mhz"},  
    {sort=3, name="CVN-74 Stennis S3B-Tanker", description="Texaco-7 (S3-B)", information="Tacan 75Y\nVHF 133.750 Mhz"},  
    {sort=4, name="Overlord1", description="Overlord1 (Cyrano, E-3A)", information="Datalink 315.3 Mhz\nUHF 282 Mhz"},  
    {sort=5, name="Shell2", description="Shell2 (Shell, KC-135)", information="Tacan 47X (SLL)\nVHF 130.3 Mhz"}, 
    {sort=6, name="Texaco1", description="Texaco1 (Texaco, KC-135 MPRS)", information="Tacan 23X (TCO)\nVHF 130.2 Mhz"}, 
    --{sort=8, name="D1-Reaper", description="Colt-1 FAC (MQ-9)", information="UHF 253 Mhz", jtac=1688},  
    --{sort=9, name="D2-Reaper", description="Dodge-1 FAC (MQ-9)", information="UHF 254 Mhz", jtac=1687},  
    -- RED
    {sort=21, name="Overlord2", description="Overlord2 (132, A-50, RED)", information="UHF 341.1 Mhz"},  
    {sort=22, name="Texaco3", description="Texaco3 (127, IL-78M, RED)", information="UHF 289.4 Mhz"}, 
    {sort=23, name="Texaco4", description="Texaco4 (126, IL-78M, RED)", information="UHF 334.4 Mhz"}, 
}

veafAssets.logInfo("Loading configuration")
