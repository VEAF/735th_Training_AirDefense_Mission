---
-- Name: TR_AD_Caucasus_One - based on AID-A2A-100 - Demonstration
-- Author: FlightControl / Couby adaptation
-- Date Edited: 25 august 2019

-- ======================================
-- Définition du système de défense Red
-- ======================================


-- Define a SET_GROUP object that builds a collection of groups that define the EWR network.
-- Here we build the network with all the groups that have a name starting with Red AWACS and Red EWR.
DetectionSetGroup = SET_GROUP:New()
DetectionSetGroup:FilterPrefixes( { "Red AWACS", "Red EWR" } )
DetectionSetGroup:FilterStart()

Detection = DETECTION_AREAS:New( DetectionSetGroup, 30000 )

-- Setup the A2A dispatcher, and initialize it.
A2ADispatcher = AI_A2A_DISPATCHER:New( Detection )

-- Enable the tactical display panel.
A2ADispatcher:SetTacticalDisplay( true )

-- Initialize the dispatcher, setting up a border zone. This is a polygon,
-- which takes the waypoints of a late activated group with the name Red Border as the boundaries of the border area.
-- Any enemy crossing this border will be engaged.
RedBorderZone = ZONE_POLYGON:New( "Red Border1", GROUP:FindByName( "Red Border1" ) )
A2ADispatcher:SetBorderZone( RedBorderZone )

-- Initialize the dispatcher, setting up a radius of 100km where any airborne friendly
-- without an assignment within 100km radius from a detected target, will engage that target.
A2ADispatcher:SetEngageRadius( 80000 )

-- Setup the squadrons.
A2ADispatcher:SetSquadron( "Mineralnye", AIRBASE.Caucasus.Mineralnye_Vody, { "SQ Red SU-27" }, 20 )
A2ADispatcher:SetSquadron( "Mineralnye2", AIRBASE.Caucasus.Mineralnye_Vody, { "SQ Red SU-27" }, 20 )
A2ADispatcher:SetSquadron( "Maykop", AIRBASE.Caucasus.Maykop_Khanskaya, { "SQ Red MIG-21" }, 20 )
A2ADispatcher:SetSquadron( "Maykop2", AIRBASE.Caucasus.Maykop_Khanskaya, { "SQ Red MIG-21" }, 20 )
A2ADispatcher:SetSquadron( "Mozdok", AIRBASE.Caucasus.Mozdok, { "SQ Red MIG-31" }, 20 )
A2ADispatcher:SetSquadron( "Nalchik", AIRBASE.Caucasus.Nalchik, { "SQ Red MIG-29A" }, 20 )

-- Setup the overhead
-- Utile pour GCI
-- Multiplicateur relatif au nombre d'hostiles détectés
-- Pour 2 hostiles détectés, overhead à 1.5 => 3 intercepteurs décollent
A2ADispatcher:SetSquadronOverhead( "Mineralnye", 1 )
A2ADispatcher:SetSquadronOverhead( "Mineralnye2", 1 )
A2ADispatcher:SetSquadronOverhead( "Maykop", 2 )
A2ADispatcher:SetSquadronOverhead( "Maykop2", 2 )
A2ADispatcher:SetSquadronOverhead( "Mozdok", 1 )
A2ADispatcher:SetSquadronOverhead( "Nalchik", 1.5 )

-- Setup the Grouping
-- Taille des groupes spawnés
A2ADispatcher:SetSquadronGrouping( "Mineralnye", 2 )
A2ADispatcher:SetSquadronGrouping( "Mineralnye2", 2 )
A2ADispatcher:SetSquadronGrouping( "Maykop", 2 )
A2ADispatcher:SetSquadronGrouping( "Maykop2", 2 )
A2ADispatcher:SetSquadronGrouping( "Mozdok", 2 )
A2ADispatcher:SetSquadronGrouping( "Nalchik", 2 )

-- Setup the Takeoff methods
-- A2ADispatcher:SetDefaultTakeoff( AI_A2A_Dispatcher.Takeoff.Air )
-- [[
A2ADispatcher:SetSquadronTakeoff( "Mineralnye", AI_A2A_DISPATCHER.Takeoff.Air )
A2ADispatcher:SetSquadronTakeoff( "Mineralnye2", AI_A2A_DISPATCHER.Takeoff.Air )
A2ADispatcher:SetSquadronTakeoff( "Maykop", AI_A2A_DISPATCHER.Takeoff.Air )
A2ADispatcher:SetSquadronTakeoff( "Maykop2", AI_A2A_DISPATCHER.Takeoff.Air )
A2ADispatcher:SetSquadronTakeoff( "Mozdok", AI_A2A_DISPATCHER.Takeoff.Air )
A2ADispatcher:SetSquadronTakeoff( "Nalchik", AI_A2A_DISPATCHER.Takeoff.Air )
-- ]]

-- Setup the Landing methods
-- A2ADispatcher:SetDefaultLandingAtRunway()
-- [[
A2ADispatcher:SetSquadronLanding( "Mineralnye", AI_A2A_DISPATCHER.Landing.AtRunway )
A2ADispatcher:SetSquadronLanding( "Mineralnye2", AI_A2A_DISPATCHER.Landing.AtRunway )
A2ADispatcher:SetSquadronLanding( "Maykop", AI_A2A_DISPATCHER.Landing.AtRunway )
A2ADispatcher:SetSquadronLanding( "Maykop2", AI_A2A_DISPATCHER.Landing.AtRunway )
A2ADispatcher:SetSquadronLanding( "Mozdok", AI_A2A_DISPATCHER.Landing.AtRunway )
A2ADispatcher:SetSquadronLanding( "Nalchik", AI_A2A_DISPATCHER.Landing.AtRunway )
-- ]]

-- CAP Squadron execution.
CAPZone1 = ZONE_POLYGON:New( "Red FAOR1", GROUP:FindByName( "Red FAOR1" ) )
A2ADispatcher:SetSquadronCap( "Maykop", CAPZone1, 6095, 10670, 800, 900, 1020, 1200 ) -- 6095m = 20 000ft / 10670m = 35000ft / 800km/h = M0.8 / 1020km/h = M0.9
A2ADispatcher:SetSquadronCapInterval( "Maykop", 2, 30, 60, 1 )

CAPZone2 = ZONE_POLYGON:New( "Red FAOR2", GROUP:FindByName( "Red FAOR2" ) )
A2ADispatcher:SetSquadronCap( "Maykop2", CAPZone2, 6095, 10670, 800, 900, 1020, 1200 ) -- 6095m = 20 000ft / 10670m = 35000ft / 800km/h = M0.8 / 1020km/h = M0.9
A2ADispatcher:SetSquadronCapInterval( "Maykop2", 2, 30, 60, 1 )

CAPZone3 = ZONE_POLYGON:New( "Red FAOR3", GROUP:FindByName( "Red FAOR3" ) )
A2ADispatcher:SetSquadronCap( "Mineralnye", CAPZone3, 6095, 10670, 800, 900, 1020, 2030 ) -- 6095m = 20 000ft / 10670m = 35000ft / 800km/h = M0.8 / 2030km/h = M1.8
A2ADispatcher:SetSquadronCapInterval( "Mineralnye", 1, 30, 60, 1 )

CAPZone4 = ZONE_POLYGON:New( "Red FAOR4", GROUP:FindByName( "Red FAOR4" ) )
A2ADispatcher:SetSquadronCap( "Mineralnye2", CAPZone4, 6095, 10670, 800, 900, 1020, 2030 ) -- 6095m = 20 000ft / 10670m = 35000ft / 800km/h = M0.8 / 2030km/h = M1.8
A2ADispatcher:SetSquadronCapInterval( "Mineralnye2", 1, 30, 60, 1 )

CAPZone5 = ZONE_POLYGON:New( "Red FAOR5", GROUP:FindByName( "Red FAOR5" ) )
A2ADispatcher:SetSquadronCap( "Nalchik", CAPZone5, 6095, 10670, 800, 900, 1020, 2030 ) -- 6095m = 20 000ft / 10670m = 35000ft / 800km/h = M0.8 / 2030km/h = M1.8
A2ADispatcher:SetSquadronCapInterval( "Nalchik", 1, 30, 60, 1 )

CAPZone6 = ZONE_POLYGON:New( "Red FAOR6", GROUP:FindByName( "Red FAOR6" ) )
A2ADispatcher:SetSquadronCap( "Mozdok", CAPZone6, 6095, 10670, 800, 900, 1020, 2480 ) -- 6095m = 20 000ft / 10670m = 35000ft / 800km/h = M0.8 / 2480km/h = M2.2
A2ADispatcher:SetSquadronCapInterval( "Mozdok", 1, 30, 60, 1 )

-- GCI Squadron execution.
--[[
A2ADispatcher:SetSquadronGci( "Maykop", 900, 1200 )
A2ADispatcher:SetSquadronGci( "Mineralnye", 900, 2100 )
A2ADispatcher:SetSquadronGci( "Nalchik", 900, 1200 )
A2ADispatcher:SetSquadronGci( "Mozdok", 900, 1200 )
]]

CleanUp = CLEANUP_AIRBASE:New( { AIRBASE.Caucasus.Novorossiysk } )
