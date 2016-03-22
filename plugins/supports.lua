do
local function run(msg, matches)
local support = 110603156
local user = msg.from.id

    if matches[1]:lower() == "join support" or "tosupport" or "support" then
       chat_invite_user("channel#id"..support, 'user#id'..user, ok_cb, false)
       send_large_msg("channel#id"..support, 'Hi @'..msg.from.username.. ' \nWelcome To Teamus Support')
       return "You Have Been Added To blacklifeTG Support"
    end
 end
return {
  patterns = {
    "^([Jj]oin [Ss]upport)$",
    "^[!/]([Jj]oin [Ss]upport)$",
    "^([Tt]o[Ss]upport)$",
    "^[!/]([Tt]o[Ss]upport)$",
    "^([Ss]upport)$",
    "^[!/]([Ss]upport)$"
  },
  run = run
}
end
