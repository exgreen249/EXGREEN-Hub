-- ==========================================
-- EXGREEN UNIVERSAL AUTO-DETECT HUB
-- ==========================================
local PlaceID = game.PlaceId
local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

Rayfield:Notify({Title = "EXGREEN Hub", Content = "Mendeteksi server...", Duration = 3})

-- ==========================================
-- 1. DATABASE SCRIPT (Lemari Arsip EXGREEN)
-- ==========================================
local GameScripts = {
    
    -- 🏝️ Build An Island
    [101949297449238] = function()
        Rayfield:Notify({Title = "Target Terkunci", Content = "Memuat Build An Island Script...", Duration = 4})
        loadstring(game:HttpGet("https://raw.githubusercontent.com/exgreen249/EXGREEN-Hub/refs/heads/main/games/BuildAnIsland.lua"))()
    end,

    -- 🏴‍☠️ Sailorpiece
    [77747658251236] = function()
        Rayfield:Notify({Title = "Target Terkunci", Content = "Memuat Sailorpiece Script...", Duration = 4})
        loadstring(game:HttpGet("https://raw.githubusercontent.com/exgreen249/EXGREEN-Hub/refs/heads/main/games/SailorPiece.lua"))()
    end,

    -- 🌲 99 Night at Forest 
    [79546208627805] = function()
        Rayfield:Notify({Title = "Target Terkunci", Content = "Memuat FoxnameHub...", Duration = 4})
        loadstring(game:HttpGet("https://raw.githubusercontent.com/caomod2077/Script/refs/heads/main/FoxnameHub.lua"))()
    end,

    -- 🧠 Ride A Brainrot 
    [78762878926445] = function()
        Rayfield:Notify({Title = "Target Terkunci", Content = "Memuat RideABrainrot Script...", Duration = 4})
        loadstring(game:HttpGet("https://raw.githubusercontent.com/exgreen249/EXGREEN-Hub/refs/heads/main/games/RideBrainrot"))()
    end
}

-- ==========================================
-- 2. MESIN PENGEKSEKUSI & FALLBACK
-- ==========================================
task.wait(1)

if GameScripts[PlaceID] then
    -- Mengeksekusi script spesifik sesuai game
    GameScripts[PlaceID]()
else
    -- Jika game tidak ada di daftar, muat Universal Script!
    Rayfield:Notify({Title = "Game Bebas", Content = "Memuat EXGREEN Universal Script...", Duration = 4})
    
    -- TAUTAN RAW UNIVERSAL SCRIPT
    loadstring(game:HttpGet("https://raw.githubusercontent.com/exgreen249/EXGREEN-Hub/refs/heads/main/games/UniversalScript"))()
end
