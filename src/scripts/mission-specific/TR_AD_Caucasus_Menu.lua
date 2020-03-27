---
-- Name: TR_AD_Caucasus_Menu
-- Author: Couby Stark
-- Date Edited: 27th march 2020



--- =========================================================================================================

-- =======================================================
--            Menu functions for BFM Area Redairs
-- =======================================================


-- Function to activate BFM Area Tu-160 Bomber Wave 1 / 9 slow Tu-160
local function BFM_Bomber_Activate_Scenario1()
  MESSAGE:New( "Tu-160 Bomber wave scenario 1 - activated",  25):ToAll()
  MESSAGE:New( "You have 10 minutes to destroy bombers",  25):ToAll()
  local BFM_Wave11 = SPAWN:New("Red Tu-160 Bomber Wave1-1"):Spawn()
  local BFM_Wave12 = SPAWN:New("Red Tu-160 Bomber Wave1-2"):Spawn()
  local BFM_Wave13 = SPAWN:New("Red Tu-160 Bomber Wave1-3"):Spawn()
  local BFM_Wave14 = SPAWN:New("Red Tu-160 Bomber Wave1-4"):Spawn()
  local BFM_Wave15 = SPAWN:New("Red Tu-160 Bomber Wave1-5"):Spawn()
  local BFM_Wave16 = SPAWN:New("Red Tu-160 Bomber Wave1-6"):Spawn()
  local BFM_Wave17 = SPAWN:New("Red Tu-160 Bomber Wave1-7"):Spawn()
  local BFM_Wave18 = SPAWN:New("Red Tu-160 Bomber Wave1-8"):Spawn()
  local BFM_Wave19 = SPAWN:New("Red Tu-160 Bomber Wave1-9"):Spawn()
  SCHEDULER:New( nil,
    function()
      MESSAGE:New( "Tu-160 Bomber wave scenario 1 - terminated",  10):ToAll()
      BFM_Wave11:Destroy()
      BFM_Wave12:Destroy()
      BFM_Wave13:Destroy()
      BFM_Wave14:Destroy()
      BFM_Wave15:Destroy()
      BFM_Wave16:Destroy()
      BFM_Wave17:Destroy()
      BFM_Wave18:Destroy()
      BFM_Wave19:Destroy()
    end, {}, 605)
end

-- Function to activate BFM Area Tu-160 Bomber Wave 2 / 9 supersonic Tu-160
local function BFM_Bomber_Activate_Scenario2()
  MESSAGE:New( "Tu-160 Bomber wave scenario 2 - activated",  25):ToAll()
  MESSAGE:New( "You have 5 minutes to destroy bombers",  25):ToAll()
  local BFM_Wave21 = SPAWN:New("Red Tu-160 Bomber Wave2-1"):Spawn()
  local BFM_Wave22 = SPAWN:New("Red Tu-160 Bomber Wave2-2"):Spawn()
  local BFM_Wave23 = SPAWN:New("Red Tu-160 Bomber Wave2-3"):Spawn()
  local BFM_Wave24 = SPAWN:New("Red Tu-160 Bomber Wave2-4"):Spawn()
  local BFM_Wave25 = SPAWN:New("Red Tu-160 Bomber Wave2-5"):Spawn()
  local BFM_Wave26 = SPAWN:New("Red Tu-160 Bomber Wave2-6"):Spawn()
  local BFM_Wave27 = SPAWN:New("Red Tu-160 Bomber Wave2-7"):Spawn()
  local BFM_Wave28 = SPAWN:New("Red Tu-160 Bomber Wave2-8"):Spawn()
  local BFM_Wave29 = SPAWN:New("Red Tu-160 Bomber Wave2-9"):Spawn()
  SCHEDULER:New( nil,
    function()
      MESSAGE:New( "Tu-160 Bomber wave scenario 2 - terminated",  10):ToAll()
      BFM_Wave21:Destroy()
      BFM_Wave22:Destroy()
      BFM_Wave23:Destroy()
      BFM_Wave24:Destroy()
      BFM_Wave25:Destroy()
      BFM_Wave26:Destroy()
      BFM_Wave27:Destroy()
      BFM_Wave28:Destroy()
      BFM_Wave29:Destroy()
    end, {}, 305)
end

-- Function to activate BFM Area Su-25 Bomber Wave 1 / 4 passive Su-25
local function BFM_Bomber_Activate_Scenario3()
  MESSAGE:New( "Su-25 Bomber wave scenario 1 - activated",  25):ToAll()
  MESSAGE:New( "You have 8 minutes to destroy bombers",  25):ToAll()
  local BFM_Wave31 = SPAWN:New("Red Su-25 Target Wave1-1"):Spawn()
  SCHEDULER:New( nil,
    function()
      MESSAGE:New( "Su-25 Bomber wave scenario 1 - terminated",  10):ToAll()
      BFM_Wave31:Destroy()
    end, {}, 480)
end

-- Function to activate BFM Area Su-25 Bomber Wave 2 / 4 R-60M defensive Su-25
local function BFM_Bomber_Activate_Scenario4()
  MESSAGE:New( "Su-25 Bomber wave scenario 2 - activated",  25):ToAll()
  MESSAGE:New( "You have 8 minutes to destroy bombers",  25):ToAll()
  local BFM_Wave41 = SPAWN:New("Red Su-25 Target Wave2-1"):Spawn()
  SCHEDULER:New( nil,
    function()
      MESSAGE:New( "Su-25 Bomber wave scenario 2 - terminated",  10):ToAll()
      BFM_Wave41:Destroy()
    end, {}, 480)
end

--- =========================================================================================================

-- ==================================================
--            Menu functions for ALPHA CAPs
-- ==================================================


-- Function to activate ALPHA Red Interceptors Automata - Scenario 1 - 10 minutes interval activation
local function ALPHA_Interceptors_Activate_Scenario1_10()
  MESSAGE:New( "ALPHA Interceptors Scenario 1 - 10 minute waves - activated",  25):ToAll()
  local Alpha_Wave11 = SPAWN:New("Red MIG-29S ALPHA Inter Wave1-1"):Spawn()
  SCHEDULER:New( nil,
    function()
      local Alpha_Wave21 = SPAWN:New("Red MIG-29S ALPHA Inter Wave2-1"):Spawn()
    end, {}, 600)
  SCHEDULER:New( nil,
    function()
      local Alpha_Wave31 = SPAWN:New("Red MIG-29S ALPHA Inter Wave3-1"):Spawn()
    end, {}, 1200)
  SCHEDULER:New( nil,
    function()
      local Alpha_Wave41 = SPAWN:New("Red MIG-29S ALPHA Inter Wave4-1"):Spawn()
    end, {}, 1800)
end

-- Function to activate ALPHA Red Interceptors Automata - Scenario 1 - 5 minutes interval activation
local function ALPHA_Interceptors_Activate_Scenario1_5()
  MESSAGE:New( "ALPHA Interceptors Scenario 1 - 5 minute waves - activated",  25):ToAll()
  local Alpha_Wave12 = SPAWN:New("Red MIG-29S ALPHA Inter Wave1-1"):Spawn()
  SCHEDULER:New( nil,
    function()
      local Alpha_Wave22 = SPAWN:New("Red MIG-29S ALPHA Inter Wave2-1"):Spawn()
    end, {}, 300)
  SCHEDULER:New( nil,
    function()
      local Alpha_Wave32 = SPAWN:New("Red MIG-29S ALPHA Inter Wave3-1"):Spawn()
    end, {}, 600)
  SCHEDULER:New( nil,
    function()
      local Alpha_Wave42 = SPAWN:New("Red MIG-29S ALPHA Inter Wave4-1"):Spawn()
    end, {}, 900)
end

--- =========================================================================================================

-- ==================================================
--            Menu functions for BRAVO CAPs
-- ==================================================


-- Function to activate BRAVO Red Interceptors Automata - Scenario 1 - 10 minutes interval activation
local function BRAVO_Interceptors_Activate_Scenario1_10()
  MESSAGE:New( "BRAVO Interceptors Scenario 1 - 10 minute waves - activated",  25):ToAll()
  local Bravo_Wave111 = SPAWN:New("Red MIG-21 BRAVO Inter Wave1-1"):Spawn()
  local Bravo_Wave121 = SPAWN:New("Red MIG-21 BRAVO Inter Wave1-2"):Spawn()
  SCHEDULER:New( nil,
    function()
      local Bravo_Wave211 = SPAWN:New("Red MIG-21 BRAVO Inter Wave2-1"):Spawn()
      local Bravo_Wave221 = SPAWN:New("Red MIG-21 BRAVO Inter Wave2-2"):Spawn()
    end, {}, 600)
  SCHEDULER:New( nil,
    function()
      local Bravo_Wave311 = SPAWN:New("Red MIG-21 BRAVO Inter Wave3-1"):Spawn()
      local Bravo_Wave321 = SPAWN:New("Red MIG-21 BRAVO Inter Wave3-2"):Spawn()
    end, {}, 1200)
end

-- Function to activate BRAVO Red Interceptors Automata - Scenario 1 - 5 minutes interval activation
local function BRAVO_Interceptors_Activate_Scenario1_5()
  MESSAGE:New( "BRAVO Interceptors Scenario 1 - 5 minute waves - activated",  25):ToAll()
  local Bravo_Wave112 = SPAWN:New("Red MIG-21 BRAVO Inter Wave1-1"):Spawn()
  local Bravo_Wave122 = SPAWN:New("Red MIG-21 BRAVO Inter Wave1-2"):Spawn()
  SCHEDULER:New( nil,
    function()
      local Bravo_Wave112 = SPAWN:New("Red MIG-21 BRAVO Inter Wave2-1"):Spawn()
      local Bravo_Wave122 = SPAWN:New("Red MIG-21 BRAVO Inter Wave2-2"):Spawn()
    end, {}, 300)
  SCHEDULER:New( nil,
    function()
      local Bravo_Wave312 = SPAWN:New("Red MIG-21 BRAVO Inter Wave3-1"):Spawn()
      local Bravo_Wave322 = SPAWN:New("Red MIG-21 BRAVO Inter Wave3-2"):Spawn()
    end, {}, 600)
end

--- =========================================================================================================

-- ==================================================
--            Menu functions for CHARLIE CAPs
-- ==================================================


-- Function to activate CHARLIE Red Interceptors Automata - Scenario 1 - 10 minutes interval activation
local function CHARLIE_Interceptors_Activate_Scenario1_10()
  MESSAGE:New( "CHARLIE Interceptors Scenario 1 - 10 minute waves - activated",  25):ToAll()
  local Charlie_Wave111 = SPAWN:New("Red MIG-23 CHARLIE Inter Wave1-1"):Spawn()
  local Charlie_Wave121 = SPAWN:New("Red MIG-23 CHARLIE Inter Wave1-2"):Spawn()
  SCHEDULER:New( nil,
    function()
      local Charlie_Wave211 = SPAWN:New("Red MIG-23 CHARLIE Inter Wave2-1"):Spawn()
      local Charlie_Wave221 = SPAWN:New("Red MIG-23 CHARLIE Inter Wave2-2"):Spawn()
    end, {}, 600)
  SCHEDULER:New( nil,
    function()
      local Charlie_Wave311 = SPAWN:New("Red MIG-23 CHARLIE Inter Wave3-1"):Spawn()
    end, {}, 1200)
end

-- Function to activate CHARLIE Red Interceptors Automata - Scenario 1 - 5 minutes interval activation
local function CHARLIE_Interceptors_Activate_Scenario1_5()
  MESSAGE:New( "CHARLIE Interceptors Scenario 1 - 5 minute waves - activated",  25):ToAll()
  local Charlie_Wave112 = SPAWN:New("Red MIG-23 CHARLIE Inter Wave1-1"):Spawn()
  local Charlie_Wave122 = SPAWN:New("Red MIG-23 CHARLIE Inter Wave1-2"):Spawn()
  SCHEDULER:New( nil,
    function()
      local Charlie_Wave112 = SPAWN:New("Red MIG-23 CHARLIE Inter Wave2-1"):Spawn()
      local Charlie_Wave122 = SPAWN:New("Red MIG-23 CHARLIE Inter Wave2-2"):Spawn()
    end, {}, 300)
  SCHEDULER:New( nil,
    function()
      local Charlie_Wave312 = SPAWN:New("Red MIG-23 CHARLIE Inter Wave3-1"):Spawn()
    end, {}, 600)
end

--- =========================================================================================================

-- ===========================================
--            Radio menu management
-- ===========================================


-- Sub-menu creation
local Menu_Blue_Coalition_BFM_RedAirs = MENU_COALITION:New( coalition.side.BLUE, "BFM Area RedAir Activations" )
local Menu_Blue_Coalition_ALPHA_RedAirs = MENU_COALITION:New( coalition.side.BLUE, "ALPHA RedAir Activations" )
local Menu_Blue_Coalition_BRAVO_RedAirs = MENU_COALITION:New( coalition.side.BLUE, "BRAVO RedAir Activations" )
local Menu_Blue_Coalition_CHARLIE_RedAirs = MENU_COALITION:New( coalition.side.BLUE, "CHARLIE RedAir Activations" )

-- Menu Command to activate RedAirs BFM Area
local Menu_Activate_BFM1 = MENU_COALITION_COMMAND:New( coalition.side.BLUE, "BFM Area Bomber Scenario 1 - slow Tu-160", Menu_Blue_Coalition_BFM_RedAirs, BFM_Bomber_Activate_Scenario1 )
local Menu_Activate_BFM2 = MENU_COALITION_COMMAND:New( coalition.side.BLUE, "BFM Area Bomber Scenario 2 - supersonic Tu-160", Menu_Blue_Coalition_BFM_RedAirs, BFM_Bomber_Activate_Scenario2 )
local Menu_Activate_BFM3 = MENU_COALITION_COMMAND:New( coalition.side.BLUE, "BFM Area Bomber Scenario 3 - passive Su-25", Menu_Blue_Coalition_BFM_RedAirs, BFM_Bomber_Activate_Scenario3 )
local Menu_Activate_BFM4 = MENU_COALITION_COMMAND:New( coalition.side.BLUE, "BFM Area Bomber Scenario 4 - R-60M Su-25", Menu_Blue_Coalition_BFM_RedAirs, BFM_Bomber_Activate_Scenario4 )

-- Menu Command to activate RedAirs ALPHA
local Menu_Activate_ALPHA1 = MENU_COALITION_COMMAND:New( coalition.side.BLUE, "ALPHA Interceptors Scenario 1 - 10min", Menu_Blue_Coalition_ALPHA_RedAirs, ALPHA_Interceptors_Activate_Scenario1_10 )
local Menu_Activate_ALPHA2 = MENU_COALITION_COMMAND:New( coalition.side.BLUE, "ALPHA Interceptors Scenario 1 - 5min", Menu_Blue_Coalition_ALPHA_RedAirs, ALPHA_Interceptors_Activate_Scenario1_5 )

-- Menu Command to activate RedAirs BRAVO
local Menu_Activate_BRAVO1 = MENU_COALITION_COMMAND:New( coalition.side.BLUE, "BRAVO Interceptors Scenario 1 - 10min", Menu_Blue_Coalition_BRAVO_RedAirs, BRAVO_Interceptors_Activate_Scenario1_10 )
local Menu_Activate_BRAVO2 = MENU_COALITION_COMMAND:New( coalition.side.BLUE, "BRAVO Interceptors Scenario 1 - 5min", Menu_Blue_Coalition_BRAVO_RedAirs, BRAVO_Interceptors_Activate_Scenario1_5 )

-- Menu Command to activate RedAirs CHARLIE
local Menu_Activate_CHARLIE1 = MENU_COALITION_COMMAND:New( coalition.side.BLUE, "CHARLIE Interceptors Scenario 1 - 10min", Menu_Blue_Coalition_CHARLIE_RedAirs, CHARLIE_Interceptors_Activate_Scenario1_10 )
local Menu_Activate_CHARLIE2 = MENU_COALITION_COMMAND:New( coalition.side.BLUE, "CHARLIE Interceptors Scenario 1 - 5min", Menu_Blue_Coalition_CHARLIE_RedAirs, CHARLIE_Interceptors_Activate_Scenario1_5 )
