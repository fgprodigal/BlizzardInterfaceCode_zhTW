-- This file is executed at the end of addon load

function GuildControlUI_LocalizeBankTab(frame)
	_G[frame:GetName().."OwnedStackBoxLabelText"]:SetFontObject("AchievementDescriptionFont");
end

GuildControlUIRankSettingsFrameBankLabel:SetPoint("TOPLEFT", GuildControlUIRankSettingsFrameBankBg, 7, -4)
GuildControlUIRankSettingsFrameChatLabel:SetPoint("TOPLEFT", GuildControlUIRankSettingsFrameChatBg, 7, -4)
GuildControlUIRankSettingsFrameRosterLabel:SetPoint("TOPLEFT", GuildControlUIRankSettingsFrameRosterBg, 7, -4)
GuildControlUIRankSettingsFrameInfoLabel:SetPoint("TOPLEFT", GuildControlUIRankSettingsFrameInfoBg, 7, -4)