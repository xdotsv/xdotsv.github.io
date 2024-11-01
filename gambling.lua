--- /loadstring loadstring(LuaCraft.httpGet("https://xdotsv.github.io/gambling.lua"))()
CommandManager.registerCommand(
  "gambletest",
  function(commandLabel, senderName, args)
    print("Command executed by:", senderName)
    local player = senderName
    function weighted_choice(roll, player)
      if roll = 100
        then LuaCraft.player.giveItem("DIAMOND", 12)
        LuaCraft.broadcastMessage("[Gambling] player won 12 diamonds!")
      elseif roll = 99
        then LuaCraftWorld.NewItem("NETHERITE_HOE", { player = player, name = "The Almighty Hoe", lore = { "The most Legendary Hoe of ALL TIME", "Unbreakable" }, enchantments = { { "sharpness", 10 }, { "fortune", 10 }, { "looting", 5 }, { "unbreaking", 3 }, { "mending", 1 } } })
        LuaCraft.broadcastMessage("[Gambling] player won the Almighty Hoe!")
      elseif roll > 93
        then LuaCraft.player.giveItem("NETHERITE_SCRAP", 1)
        LuaCraft.broadcastMessage("[Gambling] player won a Netherite Scrap!")
      elseif roll > 88
        then LuaCraft.player.giveItem("ENCHANTED_GOLDEN_APPLE", 1)
        LuaCraft.broadcastMessage("[Gambling] player won an Enchanted Golden Apple!")
      elseif roll > 78
        then LuaCraft.executeCommand("discord bcast [gambling] player gambled and won this message!")
        LuaCraft.broadcastMessage("[Gambling] player won a message in the discord!")
      elseif roll > 70
        then LuaCraft.broadcastMessage("AW DANG IT!")
      elseif roll > 63
        then LuaCraft.executeCommand("playsound entity.wither.spawn master @a[distance=10..100] ~ ~ ~ 2.5")
        LuaCraft.broadcastMessage("[Gambling] player gambled and won a Wither! (sound effect)")
      elseif roll > 57
        then LuaCraft.executeCommand("sudoforce player tfly add player 1200")
        LuaCraft.broadcastMessage("[Gambling] player won 6 minutes of temp fly!")
      elseif roll > 47
        then LuaCraft.executeCommand("loot give player loot minecraft:chests/desert_pyramid")
        LuaCraft.broadcastMessage("[Gambling] player won Desert Temple chest loot!")
      elseif roll > 40
        then LuaCraft.executeCommand("loot give player loot minecraft:chests/ancient_city")
        LuaCraft.broadcastMessage("[Gambling] player won Ancient City chest loot!")
      elseif roll > 24
        then LuaCraft.executeCommand("effect give player luck 360 255 true")
        LuaCraft.broadcastMessage("[Gambling] player won 6 minutes of luck!")
      else
        then LuaCraft.player.giveItem("DIRT", 128)
        LuaCraft.broadcastMessage("[Gambling] player won 2 stacks of dirt!")
      end
    end
    for i, arg in ipairs(args) do
      for i, arg do
      weighted_choice(math.random(1, 100), player)
    end
  end,
  function(commandLabel, senderName, args)
    return {"gambletest"}
  end,
  "Gambling test command, correct usage: /gambletest num (replace num with",
  "/gambletest <args>",
  "test.lua"
)
