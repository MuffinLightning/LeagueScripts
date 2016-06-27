if myHero.charName ~= "Caitlyn" then return end

function OnLoad()
  PrintChat("<font color = \"#B13070\">[CAIT HELPER]</font> <font color = \"#4DFF4D\">LOADED</font>")
end


function OnApplyBuff(source, unit, buff) 
   if unit and buff and unit.type == myHero.type and unit.team ~= myHero.team and ValidTarget(unit, 875) and (myHero:CanUseSpell(_W) == READY) and (buff.type == 5 or buff.type == 11 or buff.type == 29 or buff.type == 24 or buff.type == 8) and buff.name ~= "caitlynyordletrapdebuff" then
		print(buff.name)
		CastSpell(_W, unit.x, unit.z)
	end
end

function OnProcessSpell(unit, spell)
		if (myHero:CanUseSpell(_E) == READY) then
			local jarvanAddition = unit.charName == "JarvanIV" and unit:CanUseSpell(_Q) ~= READY and _R or _Q
						local isAGapcloserUnit = {
								['Aatrox']      = {true, spell = _Q,                  range = 1000,  projSpeed = 1200, },
								['Akali']       = {true, spell = _R,                  range = 800,   projSpeed = 2200, },
								['Alistar']     = {true, spell = _W,                  range = 650,   projSpeed = 2000, },
								['Diana']       = {true, spell = _R,                  range = 825,   projSpeed = 2000, },
								['Gragas']      = {true, spell = _E,                  range = 600,   projSpeed = 2000, },
								['Hecarim']     = {true, spell = _R,                  range = 1000,  projSpeed = 1200, },
								['Irelia']      = {true, spell = _Q,                  range = 650,   projSpeed = 2200, },
								['JarvanIV']    = {true, spell = jarvanAddition,      range = 770,   projSpeed = 2000, },
								['Jax']         = {true, spell = _Q,                  range = 700,   projSpeed = 2000, },
								['Jayce']       = {true, spell = 'JayceToTheSkies',   range = 600,   projSpeed = 2000, },
								['Khazix']      = {true, spell = _E,                  range = 900,   projSpeed = 2000, },
								['Leblanc']     = {true, spell = _W,                  range = 600,   projSpeed = 2000, },
								['LeeSin']      = {true, spell = 'blindmonkqtwo',     range = 1300,  projSpeed = 1800, },
								['Leona']       = {true, spell = _E,                  range = 900,   projSpeed = 2000, },
								['Malphite']    = {true, spell = _R,                  range = 1000,  projSpeed = 1500 + unit.ms},
								['Maokai']      = {true, spell = _Q,                  range = 600,   projSpeed = 1200, },
								['MonkeyKing']  = {true, spell = _E,                  range = 650,   projSpeed = 2200, },
								['Pantheon']    = {true, spell = _W,                  range = 600,   projSpeed = 2000, },
								['Poppy']       = {true, spell = _E,                  range = 525,   projSpeed = 2000, },
								['Renekton']    = {true, spell = _E,                  range = 450,   projSpeed = 2000, },
								['Sejuani']     = {true, spell = _Q,                  range = 650,   projSpeed = 2000, },
								['Shen']        = {true, spell = _E,                  range = 575,   projSpeed = 2000, },
								['Tristana']    = {true, spell = _W,                  range = 900,   projSpeed = 2000, },
								['Tryndamere']  = {true, spell = 'Slash',             range = 650,   projSpeed = 1450, },
								['XinZhao']     = {true, spell = _E,                  range = 650,   projSpeed = 2000, },
						}
												if unit.type == myHero.type and unit.team ~= myHero.team and isAGapcloserUnit[unit.charName] and GetDistance(unit) < 2000 and spell ~= nil then
								if spell.name == (type(isAGapcloserUnit[unit.charName].spell) == 'number' and unit:GetSpellData(isAGapcloserUnit[unit.charName].spell).name or isAGapcloserUnit[unit.charName].spell) then
										if spell.target ~= nil and spell.target.isMe or isAGapcloserUnit[unit.charName].spell == 'blindmonkqtwo' then
												if (myHero:CanUseSpell(_W) == READY) then
														CastSpell(_E, unit.x, unit.z)
												end
			 
										end
								end
						end
		end
	
end