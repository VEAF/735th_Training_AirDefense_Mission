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

-- Function to activate BFM Area Tu-160 Bomber Wave 1 / 9 slow Tu-160
local function BFM_Bomber_Activate_Scenario1()
  MESSAGE:New( "Tu-160 Bomber wave scenario 1 - activated",  25):ToAll()
  local Wave11 = SPAWN:New("Red Tu-160 Bomber Wave1-1"):Spawn()
  local Wave12 = SPAWN:New("Red Tu-160 Bomber Wave1-2"):Spawn()
  local Wave13 = SPAWN:New("Red Tu-160 Bomber Wave1-3"):Spawn()
  local Wave14 = SPAWN:New("Red Tu-160 Bomber Wave1-4"):Spawn()
  local Wave15 = SPAWN:New("Red Tu-160 Bomber Wave1-5"):Spawn()
  local Wave16 = SPAWN:New("Red Tu-160 Bomber Wave1-6"):Spawn()
  local Wave17 = SPAWN:New("Red Tu-160 Bomber Wave1-7"):Spawn()
  local Wave18 = SPAWN:New("Red Tu-160 Bomber Wave1-8"):Spawn()
  local Wave19 = SPAWN:New("Red Tu-160 Bomber Wave1-9"):Spawn()
end

-- Function to activate BFM Area Tu-160 Bomber Wave 2 / 9 supersonic Tu-160
local function BFM_Bomber_Activate_Scenario2()
  MESSAGE:New( "Tu-160 Bomber wave scenario 2 - activated",  25):ToAll()
  local Wave21 = SPAWN:New("Red Tu-160 Bomber Wave2-1"):Spawn()
  local Wave22 = SPAWN:New("Red Tu-160 Bomber Wave2-2"):Spawn()
  local Wave23 = SPAWN:New("Red Tu-160 Bomber Wave2-3"):Spawn()
  local Wave24 = SPAWN:New("Red Tu-160 Bomber Wave2-4"):Spawn()
  local Wave25 = SPAWN:New("Red Tu-160 Bomber Wave2-5"):Spawn()
  local Wave26 = SPAWN:New("Red Tu-160 Bomber Wave2-6"):Spawn()
  local Wave27 = SPAWN:New("Red Tu-160 Bomber Wave2-7"):Spawn()
  local Wave28 = SPAWN:New("Red Tu-160 Bomber Wave2-8"):Spawn()
  local Wave29 = SPAWN:New("Red Tu-160 Bomber Wave2-9"):Spawn()
end

-- Function to activate BFM Area Su-25 Bomber Wave 1 / 4 passive Su-25
local function BFM_Bomber_Activate_Scenario3()
  MESSAGE:New( "Su-25 Bomber wave scenario 1 - activated",  25):ToAll()
  local Wave11 = SPAWN:New("Red Su-25 Target Wave1-1"):Spawn()
end

-- Function to activate BFM Area Su-25 Bomber Wave 2 / 4 R-60M defensive Su-25
local function BFM_Bomber_Activate_Scenario4()
  MESSAGE:New( "Su-25 Bomber wave scenario 2 - activated",  25):ToAll()
  local Wave11 = SPAWN:New("Red Su-25 Target Wave1-2"):Spawn()
end

-- Menu creation
-- local Menu_Blue_Coalition_BFM_RedAirs = veafRadio.addMenu("BFM Area RedAir Activations" )
-- local Menu_Blue_Coalition_ALPHA_RedAirs = veafRadio.addMenu("ALPHA RedAir Activations" )
-- local Menu_Blue_Coalition_BRAVO_RedAirs = veafRadio.addMenu("BRAVO RedAir Activations" )
-- local Menu_Blue_Coalition_CHARLIE_RedAirs = veafRadio.addMenu("CHARLIE RedAir Activations" )
local Menu_Blue_Coalition_BFM_RedAirs = MENU_COALITION:New( coalition.side.BLUE, "BFM Area RedAir Activations" )
local Menu_Blue_Coalition_ALPHA_RedAirs = MENU_COALITION:New( coalition.side.BLUE, "ALPHA RedAir Activations" )
local Menu_Blue_Coalition_BRAVO_RedAirs = MENU_COALITION:New( coalition.side.BLUE, "BRAVO RedAir Activations" )
local Menu_Blue_Coalition_CHARLIE_RedAirs = MENU_COALITION:New( coalition.side.BLUE, "CHARLIE RedAir Activations" )

-- Menu Command to activate RedAirs BFM Area
-- veafRadio.addCommandToSubmenu("BFM Area Bomber Scenario 1 - slow Tu-160", Menu_Blue_Coalition_BFM_RedAirs, BFM_Bomber_Activate_Scenario1, nil, veafRadio.USAGE_ForAll)
-- veafRadio.addCommandToSubmenu("BFM Area Bomber Scenario 2 - supersonic Tu-160", Menu_Blue_Coalition_BFM_RedAirs, BFM_Bomber_Activate_Scenario2, nil, veafRadio.USAGE_ForAll)
-- veafRadio.addCommandToSubmenu("BFM Area Bomber Scenario 3 - passive Su-25", Menu_Blue_Coalition_BFM_RedAirs, BFM_Bomber_Activate_Scenario3, nil, veafRadio.USAGE_ForAll)
-- veafRadio.addCommandToSubmenu("BFM Area Bomber Scenario 4 - R-60M Su-25", Menu_Blue_Coalition_BFM_RedAirs, BFM_Bomber_Activate_Scenario4, nil, veafRadio.USAGE_ForAll)
local Menu_Activate_BFM1 = MENU_COALITION_COMMAND:New( coalition.side.BLUE, "BFM Area Bomber Scenario 1 - slow Tu-160", Menu_Blue_Coalition_BFM_RedAirs, BFM_Bomber_Activate_Scenario1 )
local Menu_Activate_BFM2 = MENU_COALITION_COMMAND:New( coalition.side.BLUE, "BFM Area Bomber Scenario 2 - supersonic Tu-160", Menu_Blue_Coalition_BFM_RedAirs, BFM_Bomber_Activate_Scenario2 )
local Menu_Activate_BFM3 = MENU_COALITION_COMMAND:New( coalition.side.BLUE, "BFM Area Bomber Scenario 3 - passive Su-25", Menu_Blue_Coalition_BFM_RedAirs, BFM_Bomber_Activate_Scenario3 )
local Menu_Activate_BFM4 = MENU_COALITION_COMMAND:New( coalition.side.BLUE, "BFM Area Bomber Scenario 4 - R-60M Su-25", Menu_Blue_Coalition_BFM_RedAirs, BFM_Bomber_Activate_Scenario4 )

-- Menu Command to activate RedAirs ALPHA
-- veafRadio.addCommandToSubmenu("ALPHA Interceptors Scenario 1 - 10min", Menu_Blue_Coalition_ALPHA_RedAirs, ALPHA_Interceptors_Activate_Scenario1_10, nil, veafRadio.USAGE_ForAll)
-- veafRadio.addCommandToSubmenu("ALPHA Interceptors Scenario 1 - 5min", Menu_Blue_Coalition_ALPHA_RedAirs, ALPHA_Interceptors_Activate_Scenario1_5, nil, veafRadio.USAGE_ForAll)
local Menu_Activate_ALPHA1 = MENU_COALITION_COMMAND:New( coalition.side.BLUE, "ALPHA Interceptors Scenario 1 - 10min", Menu_Blue_Coalition_ALPHA_RedAirs, ALPHA_Interceptors_Activate_Scenario1_10 )
local Menu_Activate_ALPHA2 = MENU_COALITION_COMMAND:New( coalition.side.BLUE, "ALPHA Interceptors Scenario 1 - 5min", Menu_Blue_Coalition_ALPHA_RedAirs, ALPHA_Interceptors_Activate_Scenario1_5 )

-- Menu Command to activate RedAirs BRAVO
-- veafRadio.addCommandToSubmenu("BRAVO Interceptors Scenario 1 - 10min", Menu_Blue_Coalition_BRAVO_RedAirs, BRAVO_Interceptors_Activate_Scenario1_10, nil, veafRadio.USAGE_ForAll)
-- veafRadio.addCommandToSubmenu("BRAVO Interceptors Scenario 1 - 5min", Menu_Blue_Coalition_BRAVO_RedAirs, BRAVO_Interceptors_Activate_Scenario1_5, nil, veafRadio.USAGE_ForAll)
local Menu_Activate_BRAVO1 = MENU_COALITION_COMMAND:New( coalition.side.BLUE, "BRAVO Interceptors Scenario 1 - 10min", Menu_Blue_Coalition_BRAVO_RedAirs, BRAVO_Interceptors_Activate_Scenario1_10 )
local Menu_Activate_BRAVO2 = MENU_COALITION_COMMAND:New( coalition.side.BLUE, "BRAVO Interceptors Scenario 1 - 5min", Menu_Blue_Coalition_BRAVO_RedAirs, BRAVO_Interceptors_Activate_Scenario1_5 )

-- Menu Command to activate RedAirs CHARLIE
-- veafRadio.addCommandToSubmenu("CHARLIE Interceptors Scenario 1 - 10min", Menu_Blue_Coalition_CHARLIE_RedAirs, CHARLIE_Interceptors_Activate_Scenario1_10, nil, veafRadio.USAGE_ForAll)
-- veafRadio.addCommandToSubmenu("CHARLIE Interceptors Scenario 1 - 5min", Menu_Blue_Coalition_CHARLIE_RedAirs, CHARLIE_Interceptors_Activate_Scenario1_5, nil, veafRadio.USAGE_ForAll)
local Menu_Activate_CHARLIE1 = MENU_COALITION_COMMAND:New( coalition.side.BLUE, "CHARLIE Interceptors Scenario 1 - 10min", Menu_Blue_Coalition_CHARLIE_RedAirs, CHARLIE_Interceptors_Activate_Scenario1_10 )
local Menu_Activate_CHARLIE2 = MENU_COALITION_COMMAND:New( coalition.side.BLUE, "CHARLIE Interceptors Scenario 1 - 5min", Menu_Blue_Coalition_CHARLIE_RedAirs, CHARLIE_Interceptors_Activate_Scenario1_5 )
