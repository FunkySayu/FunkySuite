local AddonName, ns = ...

-- Register a simple event to verify deployment.
local eventFrame = CreateFrame("Frame")
eventFrame:RegisterEvent("ADDON_LOADED")
eventFrame:SetScript("OnEvent", function(self, event, ...)
    if event == "ADDON_LOADED" then
        local name = ...
        if name == AddonName then
            self:UnregisterEvent("ADDON_LOADED")
            print("|cff00ff00FunkySuite Loaded.|r")
        end
    end
end)
