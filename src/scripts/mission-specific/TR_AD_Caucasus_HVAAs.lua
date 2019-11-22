---
-- Name: TR_AD_Caucasus_HVAAs
-- Author: Couby Stark
-- Date Edited: 3 september 2019

-- =============================================
--  Tankers and AWACS tasking and management
-- =============================================

do
-- Blue tankers and AWACS
  -- Texaco1 KC-135MPRS
  Spawn_Texaco1 = SPAWN
    :New("Texaco1")
    :InitLimit( 1, 5 )
    :InitRepeatOnEngineShutDown()
    :SpawnScheduled(60,0)

  -- Shell1 KC-135
  Spawn_Shell1 = SPAWN
    :New("Shell1")
    :InitLimit( 1, 5 )
    :InitRepeatOnEngineShutDown()
    :SpawnScheduled(60,0)

  -- Overlord1 E-3A
  Spawn_Overlord1 = SPAWN
    :New("Overlord1")
    :InitLimit( 1, 5 )
    :InitRepeatOnEngineShutDown()
    :SpawnScheduled(60,0)


-- Red tankers and AWACS
  -- Texaco3 IL-78
  Spawn_Texaco3 = SPAWN
    :New("Texaco3")
    :InitLimit( 1, 5 )
    :InitRepeatOnEngineShutDown()
    :SpawnScheduled(60,0)

  -- Texaco4 IL-78
  Spawn_Texaco4 = SPAWN
    :New("Texaco4")
    :InitLimit( 1, 5 )
    :InitRepeatOnEngineShutDown()
    :SpawnScheduled(60,0)

  -- Overlord2 A-50
  Spawn_Overlord2 = SPAWN
    :New("Overlord2")
    :InitLimit( 1, 5 )
    :InitRepeatOnEngineShutDown()
    :SpawnScheduled(60,0)

end
