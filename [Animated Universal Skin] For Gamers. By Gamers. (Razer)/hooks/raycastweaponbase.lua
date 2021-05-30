if not _G.AnimatedSkinFramework then
	return
end

--Chroma Shot
local skin_id = "razer_chroma"
Hooks:PostHook(RaycastWeaponBase, "fire", skin_id .. "_post_RaycastWeaponBase_fire", function(self)
	--log(skin_id .. "_post_RaycastWeaponBase_fire")
	
	local asf_data = AnimatedSkinFramework and AnimatedSkinFramework.skin_data and AnimatedSkinFramework.skin_data[skin_id]
	if asf_data then
		local weap_base = AnimatedSkinFramework:get_equipped_weap_base()
		--Filter out akimbo and bot/enemy weapons
		if weap_base == self then
			AnimatedSkinFramework:set_wear(skin_id, 0, false)
		end
	end
end)

--Quartz Shot
local skin_id = "razer_quartz"
Hooks:PostHook(RaycastWeaponBase, "fire", skin_id .. "_post_RaycastWeaponBase_fire", function(self)
	--log(skin_id .. "_post_RaycastWeaponBase_fire")
	
	local asf_data = AnimatedSkinFramework and AnimatedSkinFramework.skin_data and AnimatedSkinFramework.skin_data[skin_id]
	if asf_data then
		local weap_base = AnimatedSkinFramework:get_equipped_weap_base()
		--Filter out akimbo and bot/enemy weapons
		if weap_base == self then
			AnimatedSkinFramework:set_wear(skin_id, 0, false)
		end
	end
end)
