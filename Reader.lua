local Email = "This is an extremely important message, that you have to read now!"
local Terms = {"important"}

local Module = require(script:WaitForChild("API"))

if Module.SearchStringForKeywords(Email, Terms) then
	print("An important message was sent")
end

