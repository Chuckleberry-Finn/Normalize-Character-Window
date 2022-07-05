require "XpSystem/ISUI/ISCharacterInfoWindow"

---Overwriting these functions just in case another mod uses them.


local ISCharacterInfoWindow_RestoreLayout = ISCharacterInfoWindow.RestoreLayout
function ISCharacterInfoWindow:RestoreLayout(name, layout)
	ISCharacterInfoWindow_RestoreLayout(self, name, layout)

	if layout.pin == 'true' then
		ISCollapsableWindow.pin(self)
	else
		ISCollapsableWindow.collapse(self)
	end
end


local ISCharacterInfoWindow_SaveLayout = ISCharacterInfoWindow.SaveLayout
function ISCharacterInfoWindow:SaveLayout(name, layout)
	ISCharacterInfoWindow_SaveLayout(self, name, layout)

	if self.pin then layout.pin = 'true' else layout.pin = 'false' end
end