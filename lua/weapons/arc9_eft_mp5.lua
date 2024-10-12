AddCSLuaFile()

SWEP.Base = "arc9_base"
SWEP.Spawnable = true
SWEP.Category = "ARC9 - Escape From Tarkov"
SWEP.SubCategory = ARC9:GetPhrase("eft_subcat_smg")
-- SWEP.SubCategory = "_Not for your eyesss"
SWEP.Credits = { 
    [ARC9:GetPhrase("eft_trivia_author") .. "1"] = "Darsu", 
    [ARC9:GetPhrase("eft_trivia_assets") .. "2"] = "Battlestate Games LTD", 
}

SWEP.PrintName = "HK MP5"
SWEP.Class = ARC9:GetPhrase("eft_class_weapon_smg")
SWEP.Trivia = {
    [ARC9:GetPhrase("eft_trivia_manuf") .. "1"] = "Heckler & Koch",
    [ARC9:GetPhrase("eft_trivia_cal") .. "2"] = "9x19mm Parabellum",
    [ARC9:GetPhrase("eft_trivia_act") .. "3"] = ARC9:GetPhrase("eft_trivia_act_gas"),
    [ARC9:GetPhrase("eft_trivia_country") .. "4"] = ARC9:GetPhrase("eft_trivia_country_germ"),
    [ARC9:GetPhrase("eft_trivia_year") .. "5"] = "1964"
}

SWEP.Description = [[HK MP5 submachinegun with Navy 3 Round Burst firing mechanism version, which features three-round cutoff. Widely acclaimed model of a submachinegun, primarily known as weapon of GSG9 and similar forces of the world, and famous through frequent appearance in movies and video games.]]


SWEP.StandardPresets = {
    "[MP5 SD]XQAAAQBVAQAAAAAAAAA9iIIiM7tuo1AtT00OeFD3X8ckFtE/P5LqAv5Va8WqTWvtc3kK/HnSiaJsbEnABHK7FdyqF+HUB74EB3k5t2cKCfmTPVDP55glzMw24iaxXvE22gdDH1pmPFvofbiNdaE4o7gH1bKQmsupvYCc4ytQPqXbliJl8J0yDhjr62WpM0SUcrfln+UZhpCrmdkYAX59AA==",
    "[MP5 SD Spec]XQAAAQD5AQAAAAAAAAA9iIIiM7tuo1AtT00OeFD3X8ckFtE/P5LqZVUmgfwzPDLZgmMRKWLMQ9ISD3WL55J0NC07p3PGdu3nOK6Xs2sdYEffeD786wI9Fyuu/iPnzXR3guXp/jKnHCJTMit0ZJxcbRmU0X7ZlFl+GhnLnI1qKhjA9bPXS767wZqCszu1BxFVFJ3oWTdjWRRDg05Moc6ar/YAySIItoUZTlbfrWTsrv40UGmLiGXcXtlB6gtWSjpPkXV6+VObXXGJ0Do8o/dg/Lo/TT0elwA="
}

SWEP.BarrelLength = 15
SWEP.Slot = 2
SWEP.WorldModel = "models/weapons/w_smg_mp5.mdl"
SWEP.ViewModel = "models/weapons/arc9/darsu_eft/c_mp5.mdl"
SWEP.ViewModelFOVBase = 65
SWEP.MirrorVMWM = true
SWEP.DefaultBodygroups = "00000000000000"


------------------------- [[[           STATS            ]]] -------------------------

-- default pst ghz

SWEP.DamageMax = 54/2
SWEP.DamageMin = 30/2
SWEP.PhysBulletMuzzleVelocity = 457 /0.0254
SWEP.RangeMin = 10
SWEP.RangeMax = 1000 /0.0254

SWEP.Penetration =      20 *2.54/100/0.0254
SWEP.PenetrationDelta = 33/100
SWEP.ArmorPiercing =    33/100
SWEP.RicochetChance =   5/100


SWEP.DamageLookupTable = {
    {   10/0.0254, 
    54/2     },

    {   100 /0.0254, 
    43.77/2     },

    {   200 /0.0254, 
    40.34/2     },

    {   300 /0.0254, 
    37.92/2     },

    {   400 /0.0254, 
    35.98/2     },

    {   500 /0.0254, 
    34.32/2     },

    {   600 /0.0254, 
    32.96/2     },

    {   700 /0.0254, 
    31.9/2     },

    {   800 /0.0254, 
    31.12/2     },

    {   900 /0.0254, 
    30.65/2     },

    {   1000 /0.0254, 
    30.51/2     },
}




--          Spread
SWEP.Spread = 8.594 * ARC9.MOAToAcc
SWEP.SpreadAddHipFire = 0.02
SWEP.SpreadMultMove = 1.5
SWEP.SpreadAddMove = 0.015


--          Recoil
-- touch these

SWEP.Recoil = 0.7 -- general multiplier of main recoil

SWEP.RecoilUp   = 1.2   -- up recoil
SWEP.RecoilSide = 0.35 -- sideways recoil
SWEP.RecoilRandomUp   = 0.35 -- random up/down
SWEP.RecoilRandomSide = 1.0   -- random left/right

SWEP.RecoilAutoControl = 7.5 -- autocompenstaion, could be cool if set to high but it also affects main recoil

-- visual recoil   aka visrec
SWEP.VisualRecoil = 1 -- general multiplier for it

local EFT_VisualRecoilUp_BURST_SEMI   = 0.15   -- up/down tilt when semi/bursts
SWEP.VisualRecoilUp                   = 0.7   --   when fullautoing
local EFT_VisualRecoilSide_BURST_SEMI = 0.003 -- left/right tilt when semi/burst
SWEP.VisualRecoilSide                 = 0.05   --   when fullautoing
SWEP.VisualRecoilRoll = 5 -- roll tilt, a visual thing

SWEP.VisualRecoilPunch = 2 -- How far back visrec moves the gun
SWEP.VisualRecoilPunchSights = 11 -- same but in sights only

SWEP.VisualRecoilDampingConst = 220  -- spring settings, this is speed of visrec
SWEP.VisualRecoilSpringPunchDamping = 7 -- the less this is the more wobbly gun moves
SWEP.VisualRecoilSpringMagnitude = 0.5 -- some third element of spring, high values make gun shake asf on low fps

SWEP.VisualRecoilPositionBumpUpHipFire = 0.1 -- gun will go down each shot by this value
SWEP.VisualRecoilPositionBumpUp = -0.15 -- same but in sights
SWEP.VisualRecoilPositionBumpUpRTScope = 0.05 -- same but in rt scopes, you probably should keep it same as sight value, i guess it doesn't matter anymore after recoil update

SWEP.VisualRecoilCenter = Vector(2, 14, 0) -- ugh, i dont now what to set it too, but probably it should be diffferent on each gun
local EFT_ShotsToSwitchToFullAutoBehaviur = 2 -- how many shots for switch to fullauto stats from semi/burst, + 2 shots afterwards are lerping. you probably should not touch this but ok

SWEP.RecoilKick = 0.145 -- camera roll each shot + makes camera go more up when fullautoing

-- dont touch this i guess

SWEP.RecoilMultHipFire = 1
SWEP.RecoilMultCrouch = 0.75
SWEP.RecoilUpMultFirstShot = 0.85
SWEP.RecoilUpMultRecoil = 1.2

SWEP.RecoilDissipationRate = 5
SWEP.RecoilAutoControlMultHipFire = 0.75
SWEP.RecoilAutoControl_DontTryToReturnBack = true
SWEP.RecoilResetTime = 0.03
SWEP.RecoilFullResetTime = 0.2

SWEP.UseVisualRecoil = true 
SWEP.VisualRecoilMultHipFire = 1
SWEP.VisualRecoilMultSights = 1
SWEP.VisualRecoilMultCrouch = 0.75

SWEP.VisualRecoilDampingConstMultFirstShot = 3

-- SWEP.VisualRecoilThinkFunc = function(springconstant, VisualRecoilSpringMagnitude, PUNCH_DAMPING, recamount)
--     return springconstant, VisualRecoilSpringMagnitude, PUNCH_DAMPING
-- end

SWEP.VisualRecoilDoingFunc = function(up, side, roll, punch, recamount, self)
    local fullauto = math.Clamp(recamount - EFT_ShotsToSwitchToFullAutoBehaviur, 0, 3) * 0.33333333
    up = Lerp(fullauto, EFT_VisualRecoilUp_BURST_SEMI, up)
    side = Lerp(fullauto, EFT_VisualRecoilSide_BURST_SEMI, side)

    if recamount < 2 then
        if self:GetSightAmount() < 0.2 then up = 1 end -- only for visual when hipfiring
    end

    return up, side, roll, punch
end

SWEP.RecoilKickAffectPitch = true
SWEP.RecoilKickDamping = 10



--          Heating

SWEP.Malfunction = true 
SWEP.MalfunctionNeverLastShoot = false 
SWEP.MalfunctionMeanShotsToFail = 1100
SWEP.MalfunctionMeanShotsToFailMultHot = 0.2
SWEP.Overheat = true
SWEP.HeatCapacity = 160
SWEP.HeatDissipation = 2.5
SWEP.HeatPerShot = 1
SWEP.HeatLockout = false


--          Firemodes

SWEP.RPM = 800
-- SWEP.Firemodes = { { Mode = -1 }, { Mode = 1 } } -- auto, semi
SWEP.Firemodes = {
    { Mode = -1, PoseParam = 3},
    { Mode = 1, PoseParam = 1 },
    { Mode = 3, PoseParam = 2},
}

--          Speed

SWEP.AimDownSightsTime = 0.33
SWEP.SprintToFireTime = 0.35

SWEP.SpeedMult = 0.95
SWEP.SpeedMultSights = 0.5
SWEP.SpeedMultShooting = 0.7
SWEP.SpeedMultMelee = 0.75
SWEP.SpeedMultCrouch = 1
SWEP.SpeedMultBlindFire = 1


--          Other

SWEP.FreeAimRadius = 2
SWEP.FreeAimRadiusSights = 0

SWEP.Sway = 1
SWEP.SwayMove = 0.5
SWEP.SwayMidAir = 10
SWEP.SwayMultCrouch = 0.75
SWEP.SwayMultHipFire = 0.2
SWEP.SwayMultSights = 0.25
SWEP.HoldBreathTime = 40
SWEP.RestoreBreathTime = 30
SWEP.BreathInSound = false 
SWEP.BreathOutSound = false
SWEP.BreathRunOutSound = "arc9_eft_shared/bear3_breath_sprint.ogg"

--          Generic stats

SWEP.Ammo = "pistol"
SWEP.ChamberSize = 0 -- no mag
SWEP.ClipSize = 0 -- actual chamber (no mag)
SWEP.SupplyLimit = 4
SWEP.SecondarySupplyLimit = 4
SWEP.ReloadInSights = true
SWEP.DropMagazineSounds = {}
SWEP.DropMagazineAmount = 1
SWEP.DropMagazineTime = 1.5
SWEP.DropMagazineQCA = 4
SWEP.DropMagazinePos = Vector(0, 0, 0)
SWEP.DropMagazineAng = Angle(-180, 180-20, 0)
SWEP.DropMagazineVelocity = Vector(0, -30, 0)
SWEP.Bash = false
SWEP.PrimaryBash = false
SWEP.TracerNum = 0
SWEP.TracerColor = Color(255, 225, 200)



------------------------- [[[           Other            ]]] -------------------------

--          Positions and offsets

SWEP.IronSights = {
    Pos = Vector(-4.27, -4.5, 1.77),
    Ang = Angle(0, 0.05, 0),
    Midpoint = { Pos = Vector(-1, 0, 8), Ang = Angle(0, 0, -145) },
    Magnification = 1.1,
    ViewModelFOV = 54
}

SWEP.ActivePos = Vector(-0.7, -4, -0.37)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.SprintAng = Angle(50, 10, -45)
SWEP.SprintPos = Vector(4, -5, 0)

SWEP.NearWallAng = Angle(0, 55, 0)
SWEP.NearWallPos = Vector(0, 0, -15)

SWEP.CrouchPos = Vector(-0.7, -3.8, .35)
SWEP.CrouchAng = Angle(0, 0, -1)

SWEP.CustomizeAng = Angle(90, 0, 0)
SWEP.CustomizePos = Vector(14, 23, 5.0)
SWEP.CustomizeSnapshotFOV = 95
SWEP.CustomizeRotateAnchor = Vector(14, -4.5, -5.23)


--          Third person stuff

SWEP.HoldType = "rpg"
SWEP.HoldTypeSprint = "rpg"
SWEP.HoldTypeHolstered = "rpg"
SWEP.HoldTypeSights = "rpg"
SWEP.HoldTypeCustomize = "physgun"

SWEP.WorldModelOffset = {
    Pos = Vector(-8, 5.4, -4.5),
    Ang = Angle(-7, 0, 180),
    TPIKPos = Vector(-6, 5, -4), -- rpg
    TPIKAng = Angle(-11.5, 0, 180),
    Scale = 1
}

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_SMG1
SWEP.AnimReload = ACT_HL2MP_GESTURE_RELOAD_MAGIC
SWEP.AnimDraw = ACT_HL2MP_GESTURE_RANGE_ATTACK_SHOTGUN


--          Effects

SWEP.CamQCA = 3
SWEP.CamOffsetAng = Angle(0, 0, 90)
SWEP.CamQCA_Mult = 0.3
SWEP.CamQCA_Mult_ADS = 0.05

SWEP.MuzzleParticle = "muzzleflash_smg"

SWEP.CaseEffectQCA = 2
SWEP.ShellModel = "models/weapons/arc9/darsu_eft/shells/9x19.mdl"
SWEP.ShellScale = 1
SWEP.ShellCorrectAng = Angle(0, 180, 180)
SWEP.ShellPhysBox = Vector(0.5, 0.5, 2)


SWEP.BulletBones = {
    [1] = "patron_in_weapon",
    [2] = "patron_in_mag1",
    [3] = "patron_in_mag2",
    [4] = "patron_in_mag3",

}

------------------------- [[[           Sounds            ]]] -------------------------

local path = "weapons/darsu_eft/mp5/"

SWEP.ShootPitchVariation = 0
SWEP.DistantShootVolume = 0.05
SWEP.DistantShootVolumeActual = 0.05

SWEP.ShootSound = { path .. "fire_new/mp5_outdoor_close_loop1.ogg", path .. "fire_new/mp5_outdoor_close_loop2.ogg", path .. "fire_new/mp5_outdoor_close_loop3.ogg", path .. "fire_new/mp5_outdoor_close_loop4.ogg" }
SWEP.LayerSound = path .. "fire_new/mp5_outdoor_close_loop_tail.ogg"

SWEP.ShootSoundSilenced = { path .. "fire_new/mp5_outdoor_close_silenced_loop1.ogg", path .. "fire_new/mp5_outdoor_close_silenced_loop2.ogg", path .. "fire_new/mp5_outdoor_close_silenced_loop3.ogg", path .. "fire_new/mp5_outdoor_close_silenced_loop4.ogg" }
SWEP.LayerSoundSilenced = path .. "fire_new/mp5_outdoor_close_silenced_loop_tail.ogg"

SWEP.ShootSoundIndoor = { path .. "fire_new/mp5_indoor_close_loop1.ogg", path .. "fire_new/mp5_indoor_close_loop2.ogg", path .. "fire_new/mp5_indoor_close_loop3.ogg", path .. "fire_new/mp5_indoor_close_loop3.ogg", path .. "fire_new/mp5_indoor_close_loop4.ogg" }
SWEP.LayerSoundIndoor = path .. "fire_new/mp5_indoor_close_loop_tail.ogg"

SWEP.ShootSoundSilencedIndoor = { path .. "fire_new/mp5_indoor_close_silenced_loop1.ogg", path .. "fire_new/mp5_indoor_close_silenced_loop2.ogg", path .. "fire_new/mp5_indoor_close_silenced_loop3.ogg", path .. "fire_new/mp5_indoor_close_silenced_loop4.ogg" }
SWEP.LayerSoundSilencedIndoor = path .. "fire_new/mp5_indoor_close_silenced_loop_tail.ogg"

SWEP.DistantShootSound = { path .. "fire_new/mp5_outdoor_distant_loop1.ogg", path .. "fire_new/mp5_outdoor_distant_loop2.ogg" }
SWEP.DistantShootSoundSilenced = { path .. "fire_new/mp5_outdoor_distant_silenced_loop1.ogg", path .. "fire_new/mp5_outdoor_distant_silenced_loop2.ogg" }
SWEP.DistantShootSoundIndoor = { path .. "fire_new/mp5_indoor_distant_loop1.ogg", path .. "fire_new/mp5_indoor_distant_loop2.ogg" }
SWEP.DistantShootSoundSilencedIndoor = { path .. "fire_new/mp5_indoor_distant_silenced_loop1.ogg", path .. "fire_new/mp5_indoor_distant_silenced_loop2.ogg" }


SWEP.FiremodeSound = "" -- we will have own in sound tables
SWEP.ToggleAttSound = "" -- we will have own in sound tables
SWEP.DryFireSound = "" -- we will have own in sound tables


SWEP.EnterSightsSound = ARC9EFT.ADSSMG
SWEP.ExitSightsSound = ARC9EFT.ADSSMG


SWEP.SuppressEmptySuffix = true 

------------------------- [[[           Hooks & functions            ]]] -------------------------



------------------------- [[[           Animations            ]]] -------------------------

SWEP.ReloadHideBoneTables = {
    [1] = {
        "mod_magazine",
        "patron_in_mag1",
        "patron_in_mag2",
        "patron_in_mag3",
    },
}


SWEP.Hook_TranslateAnimation = function(swep, anim)
    local elements = swep:GetElements()
    if !IsFirstTimePredicted() then return end

    local ending = ""
    local mag = ""
    local nomag = false 

    if elements["eft_mp5_mag_30"] then mag = "_0"
    elseif elements["eft_mp5_mag_50"] then mag = "_1"
    elseif elements["eft_mp5_mag_20"] then mag = "_2"
    else nomag = true end
    
    local empty = swep:Clip1() == 0

    -- 0 looking
    -- 1 mag check  (!nomag)
    -- 2 slide checking  (!empty)
    
    if anim == "inspect" or anim == "inspect_empty" then
        -- if empty then anim = "inspect_empty" end

        swep.EFTInspectnum = (swep.EFTInspectnum or 0) + 1
        local rand = swep.EFTInspectnum
        if rand == 3 then swep.EFTInspectnum = 0 rand = 0 end
        if rand == 1 and elements["eft_k"] then return anim .. rand .. "_k" end
        
        if rand == 2 and nomag then rand = 0 swep.EFTInspectnum = 0 end
        
        if rand == 2 and ARC9EFTBASE and SERVER then
            net.Start("arc9eftmagcheck")
            net.WriteBool(false) -- accurate or not based on mag type
            net.WriteUInt(math.min(swep:Clip1(), swep:GetCapacity()), 9)
            net.WriteUInt(swep:GetCapacity(), 9)
            net.Send(swep:GetOwner())
            rand = rand .. mag
        end

        return anim .. rand
    end
    
    if anim == "reload" or anim == "reload_empty" then
        if nomag then return "reload" end
        if empty then return "reload_empty" .. mag end
        return anim .. mag
    end

    if anim == "fix" then
        local rand = math.Truncate(util.SharedRandom("hi", 1, 4.99))
        -- 0 = misfire, 1 = eject, 2 = feed, 3 = bolt, 4 = bolt 
        if ARC9EFTBASE and SERVER then
            timer.Simple(0.25, function()
                if IsValid(swep) and IsValid(swep:GetOwner()) then
                    net.Start("arc9eftjam")
                    net.WriteUInt(rand, 3)
                    net.Send(swep:GetOwner())
                end
            end)
        end
        
        return "jam" .. rand
    end
end

    
    local randspin = {"arc9_eft_shared/weapon_generic_rifle_spin1.ogg","arc9_eft_shared/weapon_generic_rifle_spin2.ogg","arc9_eft_shared/weapon_generic_rifle_spin3.ogg","arc9_eft_shared/weapon_generic_rifle_spin4.ogg","arc9_eft_shared/weapon_generic_rifle_spin5.ogg","arc9_eft_shared/weapon_generic_rifle_spin6.ogg","arc9_eft_shared/weapon_generic_rifle_spin7.ogg","arc9_eft_shared/weapon_generic_rifle_spin8.ogg","arc9_eft_shared/weapon_generic_rifle_spin9.ogg","arc9_eft_shared/weapon_generic_rifle_spin10.ogg"}
    local slidelock = {"arc9_eft_shared/pistol_jam_slidelock_try1.ogg", "arc9_eft_shared/pistol_jam_slidelock_try2.ogg", "arc9_eft_shared/pistol_jam_slidelock_try3.ogg"}
    local slidelockgrab = {"arc9_eft_shared/pistol_jam_slidelock_grab1.ogg", "arc9_eft_shared/pistol_jam_slidelock_grab2.ogg", "arc9_eft_shared/pistol_jam_slidelock_grab3.ogg"}
    local pouchin = {"arc9_eft_shared/generic_mag_pouch_in1.ogg","arc9_eft_shared/generic_mag_pouch_in2.ogg","arc9_eft_shared/generic_mag_pouch_in3.ogg","arc9_eft_shared/generic_mag_pouch_in4.ogg","arc9_eft_shared/generic_mag_pouch_in5.ogg","arc9_eft_shared/generic_mag_pouch_in6.ogg","arc9_eft_shared/generic_mag_pouch_in7.ogg"}
    local pouchout = {"arc9_eft_shared/generic_mag_pouch_out1.ogg","arc9_eft_shared/generic_mag_pouch_out2.ogg","arc9_eft_shared/generic_mag_pouch_out3.ogg","arc9_eft_shared/generic_mag_pouch_out4.ogg","arc9_eft_shared/generic_mag_pouch_out5.ogg","arc9_eft_shared/generic_mag_pouch_out6.ogg","arc9_eft_shared/generic_mag_pouch_out7.ogg"}

    local rst_def = {
        { s = randspin, t = 0.24 },    
        { s =  path .. "mp5_weap_mag_release_button.ogg", t = 0.3 },
        { s =  path .. "mp5_weap_mag_out.ogg", t = 0.44 },
        { s = randspin, t = 0.71 },    
        { s = pouchin, t = 0.89 },
        { s = pouchout, t = 1.15 },
        { s =  path .. "mp5_weap_mag_in.ogg", t = 1.81 - 0.2 },
        { s = randspin, t = 2.4},
    }
    local rst_empty = {
        { s = randspin, t = 0.1 },    
        { s =  path .. "mp5_weap_bolt_out.ogg", t = 0.31 },
        { s =  path .. "mp5_weap_bolt_out_handle.ogg", t = 0.58 },
        { s = randspin, t = 0.95 },    
        { s =  path .. "mp5_weap_mag_release_button.ogg", t = 1.12 },
        { s =  path .. "mp5_weap_mag_out.ogg", t = 1.28 },
        { s = randspin, t = 1.5},
        { s = pouchout, t = 1.75 },
        { s =  path .. "mp5_weap_mag_in.ogg", t = 2.47 - 0.2 },
        { s = randspin, t = 3},
        { s =  path .. "mp5_weap_bolt_in_slap.ogg", t = 3.3 - 0.1 },
        { s = randspin, t = 3.5 },
        {hide = 0, t = 0},
        {hide = 1, t = 1.5},
        {hide = 0, t = 1.8}
    }
    local rst_def1 = {
        { s = randspin, t = 0.24 },    
        { s =  path .. "mp5_weap_mag_release_button.ogg", t = 0.3 },
        { s =  path .. "mp5_weap_mag_out.ogg", t = 0.44 },
        { s = randspin, t = 0.71 },    
        { s = pouchin, t = 0.89 },
        { s = pouchout, t = 1.15 + 0.1 },
        { s =  path .. "mp5_weap_mag_in.ogg", t = 1.81 + 0.15 - 0.2 },
        { s = randspin, t = 2.4 + 0.15},
    }
    local rst_empty1 = {
        { s = randspin, t = 0.1 },    
        { s =  path .. "mp5_weap_bolt_out.ogg", t = 0.31 },
        { s =  path .. "mp5_weap_bolt_out_handle.ogg", t = 0.58 },
        { s = randspin, t = 0.95 },    
        { s =  path .. "mp5_weap_mag_release_button.ogg", t = 1.12 },
        { s =  path .. "mp5_weap_mag_out.ogg", t = 1.28 },
        { s = randspin, t = 1.5},
        { s = pouchout, t = 1.75 + 0.15 },
        { s =  path .. "mp5_weap_mag_in.ogg", t = 2.47 + 0.25 - 0.2 },
        { s = randspin, t = 3 + 0.25},
        { s =  path .. "mp5_weap_bolt_in_slap.ogg", t = 3.3 + 0.25 - 0.1 },
        { s = randspin, t = 3.5 + 0.25 },
        {hide = 0, t = 0},
        {hide = 1, t = 1.5},
        {hide = 0, t = 1.9}
    }
    local rst_def2 = {
        { s = randspin, t = 0.24 },    
        { s =  path .. "mp5_weap_mag_release_button.ogg", t = 0.3 },
        { s =  path .. "mp5_weap_mag_out.ogg", t = 0.44 },
        { s = randspin, t = 0.71 },    
        { s = pouchin, t = 0.89 },
        { s = pouchout, t = 1.15 - 0.05 },
        { s =  path .. "mp5_weap_mag_in.ogg", t = 1.81 - 0.1 - 0.2 },
        { s = randspin, t = 2.4 - 0.1},
    }
    local rst_empty2 = {
        { s = randspin, t = 0.1 },    
        { s =  path .. "mp5_weap_bolt_out.ogg", t = 0.31 },
        { s =  path .. "mp5_weap_bolt_out_handle.ogg", t = 0.58 },
        { s = randspin, t = 0.95 },    
        { s =  path .. "mp5_weap_mag_release_button.ogg", t = 1.12 },
        { s =  path .. "mp5_weap_mag_out.ogg", t = 1.28 },
        { s = randspin, t = 1.5},
        { s = pouchout, t = 1.75 - 0.05 },
        { s =  path .. "mp5_weap_mag_in.ogg", t = 2.47 - 0.1 - 0.2 },
        { s = randspin, t = 3 - 0.1},
        { s =  path .. "mp5_weap_bolt_in_slap.ogg", t = 3.3 - 0.15 - 0.1 },
        { s = randspin, t = 3.5 - 0.15 },
        {hide = 0, t = 0},
        {hide = 1, t = 1.5},
        {hide = 0, t = 1.7}
    }

    local rst_magcheck = {
        { s = "arc9_eft_shared/weap_handoff.ogg", t = 0.03},
        { s =  path .. "mp5_weap_mag_release_button.ogg", t = 0.39 },
        { s =  path .. "mp5_weap_mag_out.ogg", t = 0.66 },
        { s = randspin, t = 0.98 },
        { s = randspin, t = 1.77 },
        { s =  path .. "mp5_weap_mag_in.ogg", t = 2.07 - 0.2 },
        { s = randspin, t = 2.59},
    }
    local rik_magcheck = {
        { t = 0, lhik = 1 },
        { t = 0.15, lhik = 0 },
        { t = 0.85, lhik = 0 },
        { t = 0.97, lhik = 1 },
        { t = 1, lhik = 1 },
    }
    local rik_look = {
        { t = 0, lhik = 1 },
        { t = 0.35, lhik = 1 },
        { t = 0.49, lhik = 0 },
        { t = 0.75, lhik = 0 },
        { t = 0.94, lhik = 1 },
        { t = 1, lhik = 1 },
    }
    local rik_look_k = {
        { t = 0, lhik = 1 },
        { t = 0.2, lhik = 0 },
        { t = 0.9, lhik = 0 },
        { t = 1, lhik = 1 },
    }
    local rik_def = {
        { t = 0, lhik = 1 },
        { t = 0.13, lhik = 0 },
        { t = 0.87, lhik = 0 },
        { t = 1, lhik = 1 },
    }
    local rik_empty = {
        { t = 0, lhik = 1 },
        { t = 0.12, lhik = 0 },
        { t = 0.94, lhik = 0 },
        { t = 1, lhik = 1 },
    }

    SWEP.Animations = {
        ["idle"] = {
            Source = "idle",
            -- Time = 1000, -- reset when done soundstables!!!!!!!!
        },
    
        ["ready"] = {
            Source = "ready0",
            EventTable = {
                { s = "arc9_eft_shared/weap_in.ogg", t = 0.05  },
                { s = path .. "mp5_weap_bolt_out.ogg", t = 0.46 },
                { s = path .. "mp5_weap_bolt_in.ogg", t = 0.65 },
                { s = randspin, t = 0.8},
            },
            IKTimeLine = {
                { t = 0, lhik = 1 },
                { t = 0.001, lhik = 0 },
                { t = 0.64, lhik = 0 },
                { t = 0.89, lhik = 1 },
                { t = 1, lhik = 1 },
            },
        },

        ["draw"] = {
            Source = "draw",
            EventTable = {
                { s = "arc9_eft_shared/weap_in.ogg", t = 0.05 },
            }
        },

        ["holster"] = {
            Source = "holster",
            EventTable = {
                { s =  "arc9_eft_shared/weap_out.ogg", t = 0 },
            }
        },
    
        ["fire"] = {
            Source = "fire",
            EventTable = {
                { s = "arc9_eft_shared/weap_trigger_hammer.ogg", t = 0 },
            }
        },
        ["dryfire"] = {
            Source = "fire_dry",
            EventTable = {
                { s = "arc9_eft_shared/weap_trigger_hammer.ogg", t = 0 },
            }
        },
    
        ["reload"] = { -- does not exist
            Source = "reload0",
            MinProgress = 0.925,
            FireASAP = true,
            EventTable = rst_single,
            IKTimeLine = rik_single
        },
    
        ["reload_0"] = {
            Source = "reload0",
            MinProgress = 0.925,
            MagSwapTime = 1.1,
            FireASAP = true,
            EventTable = rst_def,
            IKTimeLine = rik_def
        },
        ["reload_1"] = {
            Source = "reload1",
            MinProgress = 0.925,
            MagSwapTime = 1.1,
            FireASAP = true,
            EventTable = rst_def1,
            IKTimeLine = rik_def
        },
        ["reload_2"] = {
            Source = "reload2",
            MinProgress = 0.925,
            MagSwapTime = 1.1,
            FireASAP = true,
            EventTable = rst_def2,
            IKTimeLine = rik_def
        },
    
        ["reload_empty_0"] = {
            Source = { "reload_empty0_0","reload_empty0_1" }, 
            MinProgress = 0.925,
            MagSwapTime = 1.75,
            FireASAP = true,
            EventTable = rst_empty,
            IKTimeLine = rik_empty
        },
        ["reload_empty_1"] = {
            Source = { "reload_empty1_0","reload_empty1_1" }, 
            MinProgress = 0.925,
            MagSwapTime = 1.75,
            FireASAP = true,
            EventTable = rst_empty1,
            IKTimeLine = rik_empty
        },
        ["reload_empty_2"] = {
            Source = { "reload_empty2_0","reload_empty2_1" }, 
            MinProgress = 0.925,
            MagSwapTime = 1.75,
            FireASAP = true,
            EventTable = rst_empty2,
            IKTimeLine = rik_empty
        },
    
        ["toggle"] = {
            Source = "mod_switch",
            EventTable = {{ s = {"arc9_eft_shared/weapon_light_switcher1.ogg", "arc9_eft_shared/weapon_light_switcher2.ogg", "arc9_eft_shared/weapon_light_switcher3.ogg"}, t = 0 },}
        },
        ["switchsights"] = {
            Source = "mod_switch",
            EventTable = {{ s = {"arc9_eft_shared/weapon_light_switcher1.ogg", "arc9_eft_shared/weapon_light_switcher2.ogg", "arc9_eft_shared/weapon_light_switcher3.ogg"}, t = 0 },}
        },
    
    
    
        
        ["jam1"] = {
            Source = "jam_shell",
            EventTable = {
                { s = randspin, t = 0.1 },
                { s = randspin, t = 0.6 },
                { s = randspin, t = 1.01 },

                { s =  path .. "generic_jam_shell_ remove_medium2.ogg", t = 1.37 },
                { s = randspin, t = 1.84 },
                { s =  path .. "ar_jam_boltlock_grab1.ogg", t = 1.45 },
                { s = ARC9EFT.Shells9mm, t = 2.1 },
            },
            IKTimeLine = {
                { t = 0, lhik = 1 },
                { t = 1, lhik = 1 },
            },
            -- EjectAt = 1.97
        },        
        
        ["jam3"] = {
            Source = "jam_hardjam",
            EventTable = {
                { s = randspin, t = 0.1 },
                { s = randspin, t = 0.6 },
                { s = randspin, t = 1.01 },

                { s =  path .. "ar_jam_boltlock_grab1.ogg", t = 1.4 },
                { s =  path .. "ar_jam_boltlock_grab2.ogg", t = 1.76 },
                { s = randspin, t = 1.95 },
                { s =  path .. "ar_jam_boltlock_grab3.ogg", t = 2.9 },
                { s =  path .. "ar_jam_boltlock_grab1.ogg", t = 3.13 },
                { s =  path .. "ar_jam_boltlock_grab2.ogg", t = 3.44 },
                { s =  path .. "mp5_weap_bolt_jam2.ogg", t = 3.88 },
                { s =  path .. "generic_jam_shell_ remove_medium2.ogg", t = 3.96 },
                { s =  path .. "mp5_weap_bolt_in.ogg", t = 4.17 },    
                { s = randspin, t = 4.4 },
            },
            IKTimeLine = {
                { t = 0, lhik = 1 },
                { t = 0.18, lhik = 1 },
                { t = 0.28, lhik = 0 },
                { t = 0.89, lhik = 0 },
                { t = 0.96, lhik = 1 },
            },
            EjectAt = 3.96
        },      
        
        ["jam2"] = {
            Source = "jam_feed",
            EventTable = {
                { s = randspin, t = 0.1 },
                { s = randspin, t = 0.6 },
                { s = randspin, t = 1.01 },

                { s =  path .. "ar_jam_boltlock_grab2.ogg", t = 1.36 },
                { s =  path .. "mp5_weap_bolt_jam2.ogg", t = 1.64 },
                { s =  path .. "mp5_weap_bolt_out_handle.ogg", t = 1.82 },
                { s = randspin, t = 2.05 },
                { s = randspin, t = 2.52 },
                { s = randspin, t = 2.92 },
                { s =  path .. "generic_jam_shell_ remove_medium2.ogg", t = 3 },
                { s =  path .. "mp5_weap_bolt_in_manual.ogg", t = 3.6 },
                { s = randspin, t = 3.87 },
            },
            IKTimeLine = {
                { t = 0, lhik = 1 },
                { t = 0.19, lhik = 1 },
                { t = 0.3, lhik = 0 },
                { t = 0.47, lhik = 0 },
                { t = 0.55, lhik = 1 },
                { t = 0.75, lhik = 1 },
                { t = 0.83, lhik = 0 },
                { t = 0.9, lhik = 0 },
                { t = 0.97, lhik = 1 },
                { t = 1, lhik = 1 },
            },
            EjectAt = 3
        },        
        
        ["jam4"] = {
            Source = "jam_softjam",
            EventTable = {
                { s = randspin, t = 0.1 },
                { s = randspin, t = 0.6 },
                { s = randspin, t = 1.01 },

                { s =  path .. "ar_jam_boltlock_grab1.ogg", t = 1.4 },
                { s =  path .. "mp5_weap_bolt_jam2.ogg", t = 1.67 },
                { s =  path .. "generic_jam_shell_ remove_medium2.ogg", t = 1.75 },
                { s =  path .. "mp5_weap_bolt_in.ogg", t = 1.93 },    
                { s = randspin, t = 2.15 },
            },
            IKTimeLine = {
                { t = 0, lhik = 1 },
                { t = 0.33, lhik = 1 },
                { t = 0.49, lhik = 0 },
                { t = 0.8, lhik = 0 },
                { t = 0.91, lhik = 1 },
                { t = 1, lhik = 1 },
            },
            EjectAt = 1.75
        },
    
        ["inspect"] = { -- TO STUPID ARK NINE SEE WE HAVE INSPECT
            Source = "idle",
        },
    
        ["inspect1"] = {
            Source = "look",
            EventTable = {
                { s = randspin, t = 0.13 },
                { s = "arc9_eft_shared/weapon_generic_pistol_spin4.ogg", t = 1.35 },
                { s = randspin, t = 2.5  },
            },
            IKTimeLine = rik_look,
        },
        ["inspect1_k"] = {
            Source = "look",
            EventTable = {
                { s = randspin, t = 0.1 },
                { s = "arc9_eft_shared/weapon_generic_pistol_spin4.ogg", t = 1.15 },
                { s = randspin, t = 2.38  },
            },
            IKTimeLine = rik_look_k,
        },
    

        ["inspect2_0"] = {
            Source = "check_0",
            EventTable = rst_magcheck,
            IKTimeLine = rik_magcheck
        },
        ["inspect2_1"] = {
            Source = "check_1",
            EventTable = rst_magcheck,
            IKTimeLine = rik_magcheck
        },
        ["inspect2_2"] = {
            Source = "check_2",
            EventTable = rst_magcheck,
            IKTimeLine = rik_magcheck
        },

        ["inspect0"] = {
            Source = "check_chamber",
            EventTable = {
                { s = randspin, t = 0.1 },
                -- { s = randspin, t = 0.44 },
                { s =  path .. "mp5_weap_bolt_out_check.ogg", t = 0.46 },
                { s =  path .. "mp5_weap_bolt_in_check.ogg", t = 1.04 },
                { s = randspin, t = 1.25 },
                -- { s = randspin, t = 1.48 },
            },
            IKTimeLine = {
                { t = 0, lhik = 1 },
                { t = 0.18, lhik = 0 },
                { t = 0.75, lhik = 0 },
                { t = 0.92, lhik = 1 },
                { t = 1, lhik = 1 },
            },
        },

        ["firemode_1"] = {
            Source = "firemode0",
            EventTable = { { s = "arc9_eft_shared/weap_fireselctor.ogg", t = 0.2 } }
        },
        ["firemode_2"] = {
            Source = "firemode1",
            EventTable = { { s = "arc9_eft_shared/weap_fireselctor.ogg", t = 0.2 } }
        },
        ["firemode_3"] = {
            Source = "firemode2",
            EventTable = { { s = "arc9_eft_shared/weap_fireselctor.ogg", t = 0.2 } }
        },
    }

------------------------- [[[           Attachments            ]]] -------------------------

SWEP.AttachmentElements = {
    ["eft_mp5_rec_std"] = { Bodygroups = { {1, 1} } },
    ["eft_mp5_rec_sd"] = { Bodygroups = { {1, 2} } },
    ["eft_mp5_rec_k"] = { Bodygroups = { {1, 1} } },

    ["eft_mp5_charge_std"] = { Bodygroups = { {2, 1} } },
    ["eft_mp5_charge_k"] = { Bodygroups = { {2, 1} } },
    ["eft_mp5_rs_std"] = { Bodygroups = { {4, 1} } },

    ["eft_mp5_hg_std"] = { Bodygroups = { {3, 1} } },
    ["eft_mp5_hg_tl99"] = { Bodygroups = { {3, 2} } },
    ["eft_mp5_hg_ptr"] = { Bodygroups = { {3, 4} } },
    ["eft_mp5_hg_caa"] = { Bodygroups = { {3, 3} } },
    ["eft_mp5_hg_sd"] = { Bodygroups = { {3, 5} } },
    ["eft_mp5_hg_k"] = { Bodygroups = { {3, 1} } },

    ["eft_mp5_stock_a2"] = { Bodygroups = { {5, 1} } },
    ["eft_mp5_stock_a3_unfolded"] = { Bodygroups = { {5, 3} } },
    ["eft_mp5_stock_a3_folded"] = { Bodygroups = { {5, 4} } },
    ["eft_mp5_stock_cap"] = { Bodygroups = { {5, 2} } },
    ["eft_mp5_stock_capk"] = { Bodygroups = { {5, 1} } },

    ["eft_mp5_muzzle_3lug"] = { Bodygroups = { {8, 1} } },
    ["eft_mp5_muzzle_navy"] = { Bodygroups = { {8, 2} } },
    ["eft_mp5_muzzle_sd"] = { Bodygroups = { {8, 3} } },

    ["eft_mp5_mount_top"] = { Bodygroups = { {6, 1} } },
    ["eft_mp5_mount_top_tri"] = { Bodygroups = { {6, 2} } },
    ["eft_mp5_mount_sil"] = { Bodygroups = { {9, 1} } },
}

SWEP.missingpartsnotifsent = 0

function SWEP:HookP_BlockFire()
    if  !self:GetValue("HasBarrel") or
        !self:GetValue("HasReceiver") or
        !self:GetValue("HasBolt") or
        !self:GetValue("HasHG") or
        !self:GetValue("HasStock") or
        !self:GetValue("HasAmmoooooooo") then
            if SERVER and self.missingpartsnotifsent < CurTime() then
                self.missingpartsnotifsent = CurTime() + 3
                net.Start("arc9eftmissingparts")
                net.Send(self:GetOwner())
            end
            return true 
    end
end

function SWEP:Hook_RedPrintName()
    if  !self:GetValue("HasBarrel") or
        !self:GetValue("HasReceiver") or
        !self:GetValue("HasBolt") or
        !self:GetValue("HasHG") or
        !self:GetValue("HasStock") or
        !self:GetValue("HasAmmoooooooo") then
            return true 
    end
end

SWEP.Attachments = {
    {
        PrintName = "Receiver",
        Category = "eft_mp5_rec",
        Bone = "mod_reciever",
        Installed = "eft_mp5_rec_std",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, 0),
        SubAttachments = {
            {},
            {
                Installed = "eft_mp5_rs_std"
            },
            {
                Installed = "eft_mp5_stock_a2"
            },
            {
                Installed = "eft_mp5_muzzle_3lug"
            },
            {
                Installed = "eft_mp5_hg_std"
            }
        }
    },
    {
        PrintName = "Charge",
        Category = "eft_mp5_charge",
        Bone = "mod_charge",
        Installed = "eft_mp5_charge_std",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, 0, 0),
        Icon_Offset = Vector(0, 0, 0),
    },
    {
        PrintName = "Ammunition",
        Category = "eft_ammo_9x19",
        Bone = "mod_magazine",
        Integral = true,
        Installed = "eft_ammo_9x19_pst_gzh",
        Pos = Vector(0, -0, -2),
        Ang = Angle(0, 0, 0),
    },
    {
        PrintName = "Magazine",
        Category = "eft_mag_mp5",
        Bone = "mod_magazine",
        Installed = "eft_mp5_mag_30",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, 0),
    },


    {
        PrintName = "Custom slot",
        Category = {"eft_custom_slot", "eft_custom_slot_mp5"},
        Bone = "weapon",
        Pos = Vector(0, 6, -4),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, 0),
    },
}

SWEP.EFTErgo = 50
if ARC9EFTBASE then
    SWEP.AimDownSightsTimeHook = ARC9EFT.ErgoHook or nil
    SWEP.HoldBreathTimeHook = ARC9EFT.ErgoBreathHook or nil
    -- SWEP.HookP_TranslateSound = ARC9EFT.ErgoAdsVolume or nil
    SWEP.SpreadHook = ARC9EFT.SpreadBonus or nil
else
    print("Dum! install arc9 eft shared!!!!!!!!!!!!!!")
end
SWEP.AimDownSightsTimeMultShooting = 4

SWEP.RicochetSounds = ARC9EFT.RicochetSounds
SWEP.ShellSounds = ARC9EFT.Shells9mm


SWEP.HookP_NameChange = function(self, name)
    local elements = self:GetElements()

    if elements["eft_mp5_rec_sd"] then
        return "HK MP5SD"
    else
        return "HK MP5"
    end
end
