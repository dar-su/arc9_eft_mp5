
--copy of arc9_eft_m1911 but diff stats

AddCSLuaFile()

SWEP.Base = "arc9_eft_m1911"
SWEP.Spawnable = true
SWEP.Category = "ARC9 - Escape From Tarkov"

SWEP.PrintName = "Colt M45A1"
SWEP.Description = [[The MEU(SOC) pistol, ("Marine Expeditionary Unit"; "Special Operations Capable") officially designated the M45 MEUSOC, is a magazine-fed, recoil-operated, single-action, semiautomatic pistol chambered for the .45 ACP cartridge. Its a variant of the M1911, and has been the standard-issue side arm for the Force Recon Element of the United States Marine Corps Marine Expeditionary Units since 1985. The improved M45A1 features several changes to the original M1911A1 design. One feature is the dual recoil spring system that spreads out the recoil force of the .45 ACP round by lowering the peak force of the recoil pulse. It also has 3-dot tritium night sights, a 5-inch national match barrel, ambidextrous safety, a picatinny rail, and a desert tan Cerakote finish.]]

SWEP.DefaultBodygroups = "10000000000000"

SWEP.StandardPresets = {
    "[Mew-mew]XQAAAQC+AQAAAAAAAAA9iIIiM7tuo1AtT00OeFDtNRc/1Ceer4O3MPP904dax2v7chEPMYqMWxx83CUGUTOMfZmKd/uc2BVTT+x9BQXGJsqIkru2mUg0b7e7WNsO8Y4i/l8OJhxLB2gDLXUkfxlofN5tQh71ml2uKObeuKqLUQO7YUCz7UhKZXgfMtx0CeoTSYBlbD2usaX15reMaBI2ENdw9zsYxEIcnHXwynPlD84Dw4Apy+5CexwA",
    "[Black]XQAAAQDsAQAAAAAAAAA9iIIiM7tuo1AtT00OeFDtNRc/1Ceer4O3MPP904dax2v7chEPMYqMWxx83CUGUTOMfZmKd/uaa4g3V57K5T9L0pbY7UbH30iexv3WOuAOFlaKgtEaF6de3UHY5s5KH/DpIbnr59ADEAHcPWvkiaCEc0T4E5yqv2/R0a9ql24NKmUUeJM7RHCGV/uSwkjVmryZZ9jwD0jhHHpfZJ+1/2YAEjOiyUMM1kSMMER8ISNoU6mJvx0sDCEi6fLBGcgA",
}

SWEP.EFTErgo = 78

-- SWEP.DefaultElements = {"eft_k"} -- owo

SWEP.Attachments = {
    {
        Installed = "eft_barrel_1911_nat",
    },
    {
        Installed = "eft_slide_1911_m45",
        SubAttachments = {
            {
                Installed = "eft_fs_1911_m45",
            },
            {
                Installed = "eft_rs_1911_m45",
            },
        }
    },
    _,
    {
        Installed = "eft_mag_1911_tac",
    },
    {
        PrintName = "Tactical",
        Category = {"eft_tactical_pistol"},
        Pos = Vector(0, 1.9, 0.38),
        Ang = Angle(0, -90, 180),
    },
    _,
    {
        Installed = "eft_1911_slock_m45",
    },
    {
        Installed = "eft_1911_hammer_m45",
    },
    {
        Installed = "eft_1911_trigger_m45",
    },
    {
        Category = "eft_m45_pgrip",
        Installed = "eft_1911_pgrip_m45",
    },
}