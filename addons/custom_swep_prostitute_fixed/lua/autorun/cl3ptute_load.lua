local dir = "prostitute/"
cl3ptute_cfg = {}
if SERVER then
	local files = file.Find(dir .. "*", "LUA")
	for k, v in pairs(files) do
		if string.StartWith(v, "sv_") then
			include(dir .. v)
		elseif string.StartWith(v, "sh_") then
			AddCSLuaFile(dir .. v)
			include(dir .. v)
		elseif string.StartWith(v, "cl_") then
			AddCSLuaFile(dir .. v)
		end
	end
elseif CLIENT then
	local files = file.Find(dir .. "*", "LUA")
	for k, v in pairs(files) do
		if string.StartWith(v, "sh_") || string.StartWith(v, "cl_") then
			include(dir .. v)
		end
	end
end