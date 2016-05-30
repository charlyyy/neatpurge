SLASH_TEST1 = "/neatpurge"
function SlashCmdList.TEST(msg, editbox)
main()
end
j=0
maxdayoffline = 7
function main()

	for i=1,GetNumGuildMembers() do
		yearsOffline, monthsOffline, daysOffline, hoursOffline = GetGuildRosterLastOnline(i);
		name, rank = GetGuildRosterInfo(i);
		pcall(purge)
	end
end

function purge()
	if (daysOffline > maxdayoffline-1 and rank == "Recruit") then
		j=j+1
		DEFAULT_CHAT_FRAME:AddMessage(name)
		--GuildUninvite(name)
	end
end



