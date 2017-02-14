
import("publish")

local report = Report{
	title = "BAU",
	author = "Camara et. al (2015)"
}

report:addHeading("Introduction")

Application{
    project = "bau.tview",
	title = "BAU Scenario",
    description = "Results of BAU (Business As Usual) scenario of Redd PAC project. For more information, please visit www.redd-pac.org.",
    clean = true,
    output = "BAUWebMap",
--	report = report,
	order = {"biomes", "states", "bau"},
	biomes = View{
		select = "name",
		color = "Set2",
		width = 1,
		description = "Brazilian Biomes, from IBGE.",
-- [[
		report = function(cell)
			_Gtme.print("processing report for "..cell.name)
			local mreport = Report{
				title = cell.name,
				author = "REDD PAC Project"
			}

			mreport:addText("Abc "..cell.name)
			return mreport
		end
--]]
	},
	states  = View{
		color = "yellow",
--		select = "NOMEUF2",
		width = 1,
		description = "States",
--[[		report = function(cell)
			local mreport = Report{
				title = cell.NOMEUF2,
				author = "REDD PAC Project"
			}

			mreport:addText("Abc "..cell.NOMEUF2)
			return mreport
		end
--]]
	},
    bau = View{ -- try a wrong layer name and get a bad error message
        title = "BAU",
        description = "BAU results",
        width = 1,
		--select = "Defor2020",

	-- only work with categories, and not with slices. implement it
--[[
        select = "TotFor2050",
		min = 0,
		max = 310,
		slices = 10,
--]]
		color = "red"
    }
}

