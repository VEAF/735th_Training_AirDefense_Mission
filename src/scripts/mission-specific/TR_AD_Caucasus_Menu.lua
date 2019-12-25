---
-- Name: TR_AD_Caucasus_Menu
-- Author: Couby Stark
-- Date Edited: 25 december 2019

-- =============================================
--            Menu for ALPHA CAPs
-- =============================================


-- Function to activate ALPHA Red Interceptors Automata - Scenario 1 - 10 minutes interval activation
local function ALPHA_Interceptors_Activate_Scenario1_10()
  MESSAGE:New( "ALPHA Interceptors Scenario 1 - 10 minute waves - activated",  25):ToAll()
  local Wave1 = SPAWN:New("Red MIG-29S ALPHA Inter Wave1-1"):Spawn()
  SCHEDULER:New( nil,
    function()
      local Wave2 = SPAWN:New("Red MIG-29S ALPHA Inter Wave2-1"):Spawn()
    end, {}, 600)
  SCHEDULER:New( nil,
    function()
      local Wave3 = SPAWN:New("Red MIG-29S ALPHA Inter Wave3-1"):Spawn()
    end, {}, 1200)
  SCHEDULER:New( nil,
    function()
      local Wave4 = SPAWN:New("Red MIG-29S ALPHA Inter Wave4-1"):Spawn()
    end, {}, 1800)
end

-- Function to activate ALPHA Red Interceptors Automata - Scenario 1 - 5 minutes interval activation
local function ALPHA_Interceptors_Activate_Scenario1_5()
  MESSAGE:New( "ALPHA Interceptors Scenario 1 - 5 minute waves - activated",  25):ToAll()
  local Wave1 = SPAWN:New("Red MIG-29S ALPHA Inter Wave1-1"):Spawn()
  SCHEDULER:New( nil,
    function()
      local Wave2 = SPAWN:New("Red MIG-29S ALPHA Inter Wave2-1"):Spawn()
    end, {}, 300)
  SCHEDULER:New( nil,
    function()
      local Wave3 = SPAWN:New("Red MIG-29S ALPHA Inter Wave3-1"):Spawn()
    end, {}, 600)
  SCHEDULER:New( nil,
    function()
      local Wave4 = SPAWN:New("Red MIG-29S ALPHA Inter Wave4-1"):Spawn()
    end, {}, 900)
end

-- Function to activate BRAVO Red Interceptors Automata - Scenario 1 - 10 minutes interval activation
local function BRAVO_Interceptors_Activate_Scenario1_10()
  MESSAGE:New( "BRAVO Interceptors Scenario 1 - 10 minute waves - activated",  25):ToAll()
  local Wave11 = SPAWN:New("Red MIG-21 BRAVO Inter Wave1-1"):Spawn()
  local Wave12 = SPAWN:New("Red MIG-21 BRAVO Inter Wave1-2"):Spawn()
  SCHEDULER:New( nil,
    function()
      local Wave21 = SPAWN:New("Red MIG-21 BRAVO Inter Wave2-1"):Spawn()
      local Wave22 = SPAWN:New("Red MIG-21 BRAVO Inter Wave2-2"):Spawn()
    end, {}, 600)
  SCHEDULER:New( nil,
    function()
      local Wave31 = SPAWN:New("Red MIG-21 BRAVO Inter Wave3-1"):Spawn()
      local Wave32 = SPAWN:New("Red MIG-21 BRAVO Inter Wave3-2"):Spawn()
    end, {}, 1200)
end

-- Function to activate BRAVO Red Interceptors Automata - Scenario 1 - 5 minutes interval activation
local function BRAVO_Interceptors_Activate_Scenario1_5()
  MESSAGE:New( "BRAVO Interceptors Scenario 1 - 5 minute waves - activated",  25):ToAll()
  local Wave11 = SPAWN:New("Red MIG-21 BRAVO Inter Wave1-1"):Spawn()
  local Wave12 = SPAWN:New("Red MIG-21 BRAVO Inter Wave1-2"):Spawn()
  SCHEDULER:New( nil,
    function()
      local Wave11 = SPAWN:New("Red MIG-21 BRAVO Inter Wave2-1"):Spawn()
      local Wave12 = SPAWN:New("Red MIG-21 BRAVO Inter Wave2-2"):Spawn()
    end, {}, 300)
  SCHEDULER:New( nil,
    function()
      local Wave31 = SPAWN:New("Red MIG-21 BRAVO Inter Wave3-1"):Spawn()
      local Wave32 = SPAWN:New("Red MIG-21 BRAVO Inter Wave3-2"):Spawn()
    end, {}, 600)
end

-- Function to activate CHARLIE Red Interceptors Automata - Scenario 1 - 10 minutes interval activation
local function CHARLIE_Interceptors_Activate_Scenario1_10()
  MESSAGE:New( "CHARLIE Interceptors Scenario 1 - 10 minute waves - activated",  25):ToAll()
  local Wave11 = SPAWN:New("Red MIG-23 CHARLIE Inter Wave1-1"):Spawn()
  local Wave12 = SPAWN:New("Red MIG-23 CHARLIE Inter Wave1-2"):Spawn()
  SCHEDULER:New( nil,
    function()
      local Wave21 = SPAWN:New("Red MIG-23 CHARLIE Inter Wave2-1"):Spawn()
      local Wave22 = SPAWN:New("Red MIG-23 CHARLIE Inter Wave2-2"):Spawn()
    end, {}, 600)
  SCHEDULER:New( nil,
    function()
      local Wave31 = SPAWN:New("Red MIG-23 CHARLIE Inter Wave3-1"):Spawn()
    end, {}, 1200)
end

-- Function to activate CHARLIE Red Interceptors Automata - Scenario 1 - 5 minutes interval activation
local function CHARLIE_Interceptors_Activate_Scenario1_5()
  MESSAGE:New( "CHARLIE Interceptors Scenario 1 - 5 minute waves - activated",  25):ToAll()
  local Wave11 = SPAWN:New("Red MIG-23 CHARLIE Inter Wave1-1"):Spawn()
  local Wave12 = SPAWN:New("Red MIG-23 CHARLIE Inter Wave1-2"):Spawn()
  SCHEDULER:New( nil,
    function()
      local Wave11 = SPAWN:New("Red MIG-23 CHARLIE Inter Wave2-1"):Spawn()
      local Wave12 = SPAWN:New("Red MIG-23 CHARLIE Inter Wave2-2"):Spawn()
    end, {}, 300)
  SCHEDULER:New( nil,
    function()
      local Wave31 = SPAWN:New("Red MIG-23 CHARLIE Inter Wave3-1"):Spawn()
    end, {}, 600)
end

-- Menu creation
local Menu_Blue_Coalition_ALPHA_RedAirs = MENU_COALITION:New( coalition.side.BLUE, "ALPHA RedAir Activations" )
local Menu_Blue_Coalition_BRAVO_RedAirs = MENU_COALITION:New( coalition.side.BLUE, "BRAVO RedAir Activations" )
local Menu_Blue_Coalition_CHARLIE_RedAirs = MENU_COALITION:New( coalition.side.BLUE, "CHARLIE RedAir Activations" )

-- Menu Command to activate RedAirs ALPHA
local Menu_Activate_ALPHA1 = MENU_COALITION_COMMAND:New( coalition.side.BLUE, "ALPHA Interceptors Scenario 1 - 10min", Menu_Blue_Coalition_ALPHA_RedAirs, ALPHA_Interceptors_Activate_Scenario1_10 )
local Menu_Activate_ALPHA2 = MENU_COALITION_COMMAND:New( coalition.side.BLUE, "ALPHA Interceptors Scenario 1 - 5min", Menu_Blue_Coalition_ALPHA_RedAirs, ALPHA_Interceptors_Activate_Scenario1_5 )

-- Menu Command to activate RedAirs BRAVO
local Menu_Activate_BRAVO1 = MENU_COALITION_COMMAND:New( coalition.side.BLUE, "BRAVO Interceptors Scenario 1 - 10min", Menu_Blue_Coalition_BRAVO_RedAirs, BRAVO_Interceptors_Activate_Scenario1_10 )
local Menu_Activate_BRAVO2 = MENU_COALITION_COMMAND:New( coalition.side.BLUE, "BRAVO Interceptors Scenario 1 - 5min", Menu_Blue_Coalition_BRAVO_RedAirs, BRAVO_Interceptors_Activate_Scenario1_5 )

-- Menu Command to activate RedAirs CHARLIE
local Menu_Activate_CHARLIE1 = MENU_COALITION_COMMAND:New( coalition.side.BLUE, "CHARLIE Interceptors Scenario 1 - 10min", Menu_Blue_Coalition_CHARLIE_RedAirs, CHARLIE_Interceptors_Activate_Scenario1_10 )
local Menu_Activate_CHARLIE2 = MENU_COALITION_COMMAND:New( coalition.side.BLUE, "CHARLIE Interceptors Scenario 1 - 5min", Menu_Blue_Coalition_CHARLIE_RedAirs, CHARLIE_Interceptors_Activate_Scenario1_5 )
