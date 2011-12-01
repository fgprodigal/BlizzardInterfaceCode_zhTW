-- This file is executed at the end of addon load

-- Adjust Macro text
MacroFrameCharLimitText:SetPoint("BOTTOM", "MacroFrame", "BOTTOM", -15, 102);
-- Adjust Macro Name Input Box's Texture Width
MacroPopupNameMiddle:SetWidth(190);
-- Adjust MacroTab2 size
PanelTemplates_TabResize(MacroFrameTab2, -15, nil, 130);