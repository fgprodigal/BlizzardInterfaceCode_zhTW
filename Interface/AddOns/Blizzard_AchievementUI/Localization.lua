-- This file is executed at the end of addon load

function AchievementFrameSummary_LocalizeButton (button)
	button.dateCompleted:SetWidth(150);
	button.dateCompleted:SetPoint("TOPRIGHT", -63, -6);
	button.label:SetPoint("TOP", 0, -4);
	button.description:SetPoint("TOP", 0, -27);
	button.description:SetFontObject("AchievementFont_Small");
	button.shield.points:SetPoint("CENTER", -1, 4);
end
	
function AchievementButton_LocalizeMiniAchievement (frame)
	frame.points:SetFontObject("GameFontWhite");
end

function AchievementButton_LocalizeProgressBar (frame)
	frame.text:SetPoint("TOP", 0, 1);
end

function AchievementButton_LocalizeMetaAchievement (frame)
	frame.label:SetFontObject("AchievementFont_Small");
end

function AchievementFrame_LocalizeCriteria (frame)
	frame.name:SetFontObject("AchievementFont_Small");
end

function AchievementButton_Localize (button)
	button.dateCompleted:SetWidth(80);
	button.dateCompleted:SetPoint("TOP", "$parent", "BOTTOM", -2, 6);
	button.dateCompleted:SetJustifyH("CENTER");
	button.description:SetFontObject("AchievementFont_Small");
	button.hiddenDescription:SetFontObject("AchievementFont_Small");
	button.shield:SetPoint("TOPRIGHT", -10, 0);
	button.tabard:SetPoint("TOPRIGHT", -7, -4);
end

ACHIEVEMENTCOMPARISON_FRIENDSHIELDFONT1 = GameFontBlack;
ACHIEVEMENTCOMPARISON_FRIENDSHIELDFONT2 = GameFontBlack;

function AchievementComparisonButton_Localize (button)
	button.player.label:SetPoint("TOP", 0, -4);
	button.player.description:SetPoint("TOP", 0, -27);
	button.player.description:SetFontObject("AchievementFont_Small");
	button.friend.status:SetFontObject("GameFontBlack");
	button.friend.status:SetPoint("BOTTOM", 20, 4);
	button.friend.shield.points:SetFontObject("GameFontBlack");
end

function AchievementCategoryButton_Localize(button)
	button.label:SetPoint("TOPRIGHT", -8, -6);
	button.label:SetPoint("BOTTOMLEFT", 16, 2);
end

for _, button in next, AchievementFrameAchievementsContainer.buttons do
	AchievementButton_Localize(button);
end

for _, button in next, AchievementFrameComparisonContainer.buttons do
	AchievementComparisonButton_Localize(button);
end