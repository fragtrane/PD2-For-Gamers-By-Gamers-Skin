if not _G.AnimatedSkinFramework then
	log("ERROR: Animated Skin Framework missing.")
	return
else
	AnimatedSkinFramework.skin_data = AnimatedSkinFramework.skin_data or {}
end

--Classic
local skin_id = "razer_classic"
AnimatedSkinFramework.skin_data[skin_id] = {
	frequency = 0.25,
	preset = "breathe",
	max_quality = 1,
	min_quality = 0.35
}

--Chroma
local skin_id = "razer_chroma"
AnimatedSkinFramework.skin_data[skin_id] = {}
local function fade_chroma(t, dt, ...)
	local rate = 0.8
	return rate*dt, true
end
AnimatedSkinFramework.skin_data[skin_id].custom_func = fade_chroma
AnimatedSkinFramework.hooks[skin_id] = {
	post = {
		skin_id .. "_post_RaycastWeaponBase_fire",
		skin_id .. "_post_SawWeaponBase_fire"
	}
}

--Quartz
local skin_id = "razer_quartz"
AnimatedSkinFramework.skin_data[skin_id] = {}
local function fade_quartz(t, dt, ...)
	local rate = 2
	return rate*dt, true
end
AnimatedSkinFramework.skin_data[skin_id].custom_func = fade_quartz
AnimatedSkinFramework.hooks[skin_id] = {
	post = {
		skin_id .. "_post_RaycastWeaponBase_fire",
		skin_id .. "_post_SawWeaponBase_fire"
	}
}
