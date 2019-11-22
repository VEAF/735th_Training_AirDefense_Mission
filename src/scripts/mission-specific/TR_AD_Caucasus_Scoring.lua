---
-- Name: TR_AD_Caucasus_Scoring
-- Author: Couby Stark
-- Date Edited: 5 september 2019

-- ======================================
--  Scoring management
-- ======================================

-- Scoring object definition
local Scoring = SCORING:New( "VEAF 735th Air Defense Training Scoring" )

-- Scoring scales definition
Scoring:SetScaleDestroyScore( 10 )
Scoring:SetScaleDestroyPenalty( 30 ) -- Penalties are punished more than normal destroys.
