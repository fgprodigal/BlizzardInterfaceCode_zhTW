function Localize()
	-- Put all locale specific string adjustments here
end

function LocalizeFrames()
	-- Put all locale specific UI adjustments here
	AccountLoginLogo:SetTexture("Interface\\Glues\\Common\\Glues-WoW-TaiwanCCLogo");
	CharacterCreateLogo:SetTexture("Interface\\Glues\\Common\\Glues-WoW-TaiwanCCLogo");
	CharacterSelectLogo:SetTexture("Interface\\Glues\\Common\\Glues-WoW-TaiwanCCLogo");
	CreditsLogo:SetTexture("Interface\\Glues\\Common\\Glues-WoW-TaiwanCCLogo");
	PatchDownloadLogo:SetTexture("Interface\\Glues\\Common\\Glues-WoW-TaiwanCCLogo");
	RealmWizardLogo:SetTexture("Interface\\Glues\\Common\\Glues-WoW-TaiwanCCLogo");
	CharacterSelectCharacterFrame:SetHeight(650);
	CharacterCreateNameEdit:SetMaxLetters(12);

	-- Hide the Roleplaying an rppvp buttons in the Taiwan build
	RealmWizardStyle:SetHeight(160);
	RealmWizardGameTypeButton3:Hide();
	RealmWizardGameTypeButton4:Hide();

	-- Defined variable to show gameroom billing messages
	SHOW_GAMEROOM_BILLING_FRAME = 1;

	-- Hide save username button
	AccountLoginSaveAccountName:Hide();
	AccountLoginSaveAccountNameText:Hide();
	SAVE_ACCOUNT_BUTTON_HIDDEN = true;

	-- Hide the "Show Launcher" button in this locale
    AccountLoginShowLauncher:Hide();
	
	-- Audio options
	AudioOptionsSoundPanelSoundChannelsDropDownLabel:SetPoint("BOTTOM",  AudioOptionsSoundPanelSoundChannelsDropDown, "TOP", 0, 0);
	AudioOptionsSoundPanelHardwareDropDownLabel:SetPoint("BOTTOM",  AudioOptionsSoundPanelHardwareDropDown, "TOP", 0, 1);
end
