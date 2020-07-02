---
-- Name: TR_AD_Caucasus_Artificial_Activities
-- Author: Couby Stark
-- Date Edited: 18 november 2019

-- ======================================================
--  Generate some AI activities if some slots are empty
-- ======================================================

-- Define the CAP ALPHA SET of CLIENTs
CAP_ALPHA_PlanesClientSet = SET_CLIENT:New():FilterPrefixes("Bulldog11"):AddClientsByName("Blue11"):AddClientsByName("Camel11"):AddClientsByName("GhostRider11"):AddClientsByName("GhostRider21")

-- Define the CAP ALPHA SPAWN object
-- Cleanup cycle every 60 seconds
-- 2 units spawned maximum / unlimited groups can be spawned
CAP_ALPHA_PlanesSpawn = SPAWN:New( "AI_Bulldog1" ):InitCleanUp( 60 ):InitLimit(2, 0)

-- CAP ALPHA AI_BALANCER
CAP_ALPHA_AI_Balancer = AI_BALANCER:New( CAP_ALPHA_PlanesClientSet, CAP_ALPHA_PlanesSpawn )
