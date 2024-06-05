local module = {}

function module.StringMatchesKeyword(String, list)
	for i,v in pairs(list) do
		if string.lower(String) == string.lower(v) then -- if the string matches one of the words in the list
			return true -- pass
		end
	end
end

function module.SearchStringForKeywords(String, list)
	local Words = string.split(String, " ") -- String.Split, with seperator as a space, returns a list
	
	for i,v in pairs(Words) do -- loop that goes through all of the words in "Words"
		if module.StringMatchesKeyword(v, list) then -- If the string matches one of the keywords in the provided list
			return true -- pass
		end
	end
end

return module
