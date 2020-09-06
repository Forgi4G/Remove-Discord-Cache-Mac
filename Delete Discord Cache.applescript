on pathExists(thePath)
	if thePath starts with "~" then set thePath to POSIX path of (path to home folder) & text 3 thru -1 of (get thePath)
	try
		POSIX file thePath as alias
		return true
	on error
		return false
	end try
end pathExists

if pathExists("~/Library/Application Support/discordcanary/Cache/") = true then
	return do shell script "rm -rf ~/Library/Application\\ Support/discordcanary/Cache/*"
end if

if pathExists("~/Library/Application Support/discord/Cache/") = true then
	return do shell script "rm -rf ~/Library/Application\\ Support/discord/Cache/*"
end if