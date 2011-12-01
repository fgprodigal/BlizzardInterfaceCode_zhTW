
-- This is a symbol available for people who need to know the locale (separate from GetLocale())
LOCALE_zhTW = true;

function Localize()
	-- Put all locale specific string adjustments here
end

function LocalizeFrames()
	-- Put all locale specific UI adjustments here

	-- Hide billing help option.  If the number of help options changes this will need to change also.
	CATEGORY_TO_NOT_DISPLAY = 9;

	-- Hide profanity checkbox
	-- UIOptionsFrameCheckButton5:Hide();

	-- Adjust text in character and friends frame tabs
	for i=1, (CharacterFrame.numTabs or 0) do
		local tabName = "CharacterFrameTab"..i;
		_G[tabName.."Text"]:SetPoint("CENTER", tabName, "CENTER", 0, 5);
		tabName = "FriendsFrameTab"..i;
		_G[tabName.."Text"]:SetPoint("CENTER", tabName, "CENTER", 0, 5);
	end

	for i = 1, WHOS_TO_DISPLAY do
		--Who tab
		_G["WhoFrameButton" .. i .. "Name"]:SetPoint("TOPLEFT", 10, -2);
	end

	--Fix the positioning of the dropdown list
	WhoFrameDropDown:SetPoint("TOPLEFT", WhoFrameColumnHeader2, "TOPLEFT", -15, 1);

	for i = 1, MAX_CHANNEL_MEMBER_BUTTONS do
		--Chat tab
		_G["ChannelMemberButton" .. i .. "Name"]:SetPoint("TOPLEFT", 13, 1);
	end

	-- Mailframe tabs
	for i=1, (MailFrame.numTabs or 0) do
		local tabName = "MailFrameTab"..i;
		_G[tabName.."Text"]:SetPoint("CENTER", tabName, "CENTER", 0, 5);
	end

	-- Chat Editbox
	ChatEdit_LanguageShow();

	-- Disable knowledge base (leaving this here, just in case we need to roll back quickly)
	--HelpMicroButton:SetScript("OnClick", ToggleHelpFrame);
	--HelpFrameHomeCancel:SetScript("OnClick", ToggleHelpFrame);

	-- Quest Log
	QuestLogQuestCount:SetPoint("TOPRIGHT", "QuestLogCountTopRight", "BOTTOMLEFT", 1, 6);
	QuestLogDailyQuestCount:SetPoint("TOPLEFT", "QuestLogQuestCount", "BOTTOMLEFT", 0, 2);


	local point, relativeTo, relativePoint, xOfs, yOfs;

	-- Player Frame
	point, relativeTo, relativePoint, xOfs, yOfs = PlayerFrameHealthBarText:GetPoint();
	PlayerFrameHealthBarText:SetPoint(point, relativeTo, relativePoint, 50, 3);

	-- Pet Frame
	PetFrameHealthBarText:SetPoint("CENTER", PetFrameHealthBarText:GetParent(), "TOPLEFT", 82, -25);
	PetFrameManaBarText:SetPoint("CENTER", PetFrameManaBarText:GetParent(), "TOPLEFT", 82, -36);

	-- Party Frame
	for i=1, MAX_PARTY_MEMBERS do
		local currPartyMemberBarText;

		-- adjust health bar text
		currPartyMemberBarText = _G["PartyMemberFrame"..i.."HealthBarText"];
		point, relativeTo, relativePoint, xOfs, yOfs = currPartyMemberBarText:GetPoint();
		currPartyMemberBarText:SetPoint(point, relativeTo, relativePoint, 20, 11);

		-- adjust mana bar text
		currPartyMemberBarText = _G["PartyMemberFrame"..i.."ManaBarText"];
		point, relativeTo, relativePoint, xOfs, yOfs = currPartyMemberBarText:GetPoint();
		currPartyMemberBarText:SetPoint(point, relativeTo, relativePoint, 20, 0);
	end

	-- Reputation Watch Bar
	ReputationWatchStatusBarText:SetFontObject(TextStatusBarText);
	
	-- Trade Frame
	TradeFramePlayerEnchantText:SetPoint("TOPLEFT", TradeFrame, 26, -371);

	-- Fix money display everywhere
	MONEY_TEXT_VADJUST = 1;
	
	-- PVP frame
	local banner;
	banner = PVPTeamManagementFrameFlag2;
	banner.title:SetPoint("CENTER", banner.NormalHeader, 0, 1);
	banner = PVPTeamManagementFrameFlag3;
	banner.title:SetPoint("CENTER", banner.NormalHeader, 0, 1);
	banner = PVPTeamManagementFrameFlag5;
	banner.title:SetPoint("CENTER", banner.NormalHeader, 0, 1);
	ARENABANNER_SMALLFONT = "ReputationDetailFont";
	
	-- Video options
	Advanced_UIScaleSliderLow:SetText(SMALL);
	Advanced_UIScaleSliderHigh:SetText(LARGE);
	
	-- Audio options
	AudioOptionsSoundPanelSoundChannelsDropDownLabel:SetPoint("BOTTOM",  AudioOptionsSoundPanelSoundChannelsDropDown, "TOP", 0, 0);
	AudioOptionsSoundPanelHardwareDropDownLabel:SetPoint("BOTTOM",  AudioOptionsSoundPanelHardwareDropDown, "TOP", 0, 1);

	-- Equipment Manager
	GearManagerDialogPopupNameText:SetPoint("TOPLEFT", 24, -18);
	GearManagerDialogPopupChooseIconText:SetPoint("TOPLEFT", 24, -66);
	
	-- Combat log config 
	CombatConfigColorsExampleTitle:Hide();
	CombatConfigColorsExampleString1:SetPoint("TOPLEFT", 25, -16);
	CombatConfigFormattingExampleTitle:Hide();
	CombatConfigFormattingExampleString1:SetPoint("TOPLEFT", 15, -16);
	
	EJ_MIN_CHARACTER_SEARCH = 1;
end
