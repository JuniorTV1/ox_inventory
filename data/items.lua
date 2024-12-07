return {
	['testburger'] = {
		label = 'Test Burger',
		weight = 220,
		degrade = 60,
		client = {
			image = 'burger_chicken.png',
			status = { hunger = 200000 },
			anim = 'eating',
			prop = 'burger',
			usetime = 2500,
			export = 'ox_inventory_examples.testburger'
		},
		server = {
			export = 'ox_inventory_examples.testburger',
			test = 'what an amazingly delicious burger, amirite?'
		},
		buttons = {
			{
				label = 'Lick it',
				action = function(slot)
					print('You licked the burger')
				end
			},
			{
				label = 'Squeeze it',
				action = function(slot)
					print('You squeezed the burger :(')
				end
			},
			{
				label = 'What do you call a vegan burger?',
				group = 'Hamburger Puns',
				action = function(slot)
					print('A misteak.')
				end
			},
			{
				label = 'What do frogs like to eat with their hamburgers?',
				group = 'Hamburger Puns',
				action = function(slot)
					print('French flies.')
				end
			},
			{
				label = 'Why were the burger and fries running?',
				group = 'Hamburger Puns',
				action = function(slot)
					print('Because they\'re fast food.')
				end
			}
		},
		consume = 0.3
	},

	['bandage'] = {
		label = 'Bandage',
		weight = 115,
		client = {
			anim = { dict = 'missheistdockssetup1clipboard@idle_a', clip = 'idle_a', flag = 49 },
			prop = { model = `prop_rolled_sock_02`, pos = vec3(-0.14, -0.14, -0.08), rot = vec3(-50.0, -50.0, 0.0) },
			disable = { move = true, car = true, combat = true },
			usetime = 2500,
		}
	},

	['black_money'] = {
		label = 'Dirty Money',
	},

	['burger'] = {
		label = 'Burger',
		weight = 220,
		client = {
			status = { hunger = 200000 },
			anim = 'eating',
			prop = 'burger',
			usetime = 2500,
			notification = 'You ate a delicious burger'
		},
	},

	['sprunk'] = {
		label = 'Sprunk',
		weight = 350,
		client = {
			status = { thirst = 200000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_ld_can_01`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'You quenched your thirst with a sprunk'
		}
	},

	['parachute'] = {
		label = 'Parachute',
		weight = 8000,
		stack = false,
		client = {
			anim = { dict = 'clothingshirt', clip = 'try_shirt_positive_d' },
			usetime = 1500
		}
	},

	['garbage'] = {
		label = 'Garbage',
	},

	['paperbag'] = {
		label = 'Paper Bag',
		weight = 1,
		stack = false,
		close = false,
		consume = 0
	},

	['identification'] = {
		label = 'Identification',
		client = {
			image = 'card_id.png'
		}
	},

	['panties'] = {
		label = 'Knickers',
		weight = 10,
		consume = 0,
		client = {
			status = { thirst = -100000, stress = -25000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_cs_panties_02`, pos = vec3(0.03, 0.0, 0.02), rot = vec3(0.0, -13.5, -1.5) },
			usetime = 2500,
		}
	},

	['lockpick'] = {
		label = 'Lockpick',
		weight = 160,
	},

	['phone'] = {
		label = 'Phone',
		weight = 190,
		stack = false,
		consume = 0,
		client = {
			add = function(total)
				if total > 0 then
					pcall(function() return exports.npwd:setPhoneDisabled(false) end)
				end
			end,

			remove = function(total)
				if total < 1 then
					pcall(function() return exports.npwd:setPhoneDisabled(true) end)
				end
			end
		}
	},

	['money'] = {
		label = 'Money',
	},

	['mustard'] = {
		label = 'Mustard',
		weight = 500,
		client = {
			status = { hunger = 25000, thirst = 25000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_food_mustard`, pos = vec3(0.01, 0.0, -0.07), rot = vec3(1.0, 1.0, -1.5) },
			usetime = 2500,
			notification = 'You.. drank mustard'
		}
	},

	['water'] = {
		label = 'Water',
		weight = 500,
		client = {
			status = { thirst = 200000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_ld_flow_bottle`, pos = vec3(0.03, 0.03, 0.02), rot = vec3(0.0, 0.0, -1.5) },
			usetime = 2500,
			cancel = true,
			notification = 'You drank some refreshing water'
		}
	},

	['radio'] = {
		label = 'Radio',
		weight = 1000,
		stack = false,
		allowArmed = true
	},

	['armour'] = {
		label = 'Bulletproof Vest',
		weight = 3000,
		stack = false,
		client = {
			anim = { dict = 'clothingshirt', clip = 'try_shirt_positive_d' },
			usetime = 3500
		}
	},

	['clothing'] = {
		label = 'Clothing',
		consume = 0,
	},

	['mastercard'] = {
		label = 'Fleeca Card',
		stack = false,
		weight = 10,
		client = {
			image = 'card_bank.png'
		}
	},

	['scrapmetal'] = {
		label = 'Scrap Metal',
		weight = 80,
	},

	["alive_chicken"] = {
		label = "Living chicken",
		weight = 1,
		stack = true,
		close = true,
	},

	["blowpipe"] = {
		label = "Blowtorch",
		weight = 2,
		stack = true,
		close = true,
	},

	["bread"] = {
		label = "Bread",
		weight = 1,
		stack = true,
		close = true,
	},

	["cannabis"] = {
		label = "Cannabis",
		weight = 3,
		stack = true,
		close = true,
	},

	["carokit"] = {
		label = "Body Kit",
		weight = 3,
		stack = true,
		close = true,
	},

	["carotool"] = {
		label = "Tools",
		weight = 2,
		stack = true,
		close = true,
	},

	["clothe"] = {
		label = "Cloth",
		weight = 1,
		stack = true,
		close = true,
	},

	["copper"] = {
		label = "Copper",
		weight = 1,
		stack = true,
		close = true,
	},

	["cutted_wood"] = {
		label = "Cut wood",
		weight = 1,
		stack = true,
		close = true,
	},

	["diamond"] = {
		label = "Diamond",
		weight = 1,
		stack = true,
		close = true,
	},

	["essence"] = {
		label = "Gas",
		weight = 1,
		stack = true,
		close = true,
	},

	["fabric"] = {
		label = "Fabric",
		weight = 1,
		stack = true,
		close = true,
	},

	["fish"] = {
		label = "Fish",
		weight = 1,
		stack = true,
		close = true,
	},

	["fixkit"] = {
		label = "Repair Kit",
		weight = 3,
		stack = true,
		close = true,
	},

	["fixtool"] = {
		label = "Repair Tools",
		weight = 2,
		stack = true,
		close = true,
	},

	["gazbottle"] = {
		label = "Gas Bottle",
		weight = 2,
		stack = true,
		close = true,
	},

	["gold"] = {
		label = "Gold",
		weight = 1,
		stack = true,
		close = true,
	},

	["iron"] = {
		label = "Iron",
		weight = 1,
		stack = true,
		close = true,
	},

	["marijuana"] = {
		label = "Marijuana",
		weight = 2,
		stack = true,
		close = true,
	},

	["medikit"] = {
		label = "Medikit",
		weight = 2,
		stack = true,
		close = true,
	},

	["packaged_chicken"] = {
		label = "Chicken fillet",
		weight = 1,
		stack = true,
		close = true,
	},

	["packaged_plank"] = {
		label = "Packaged wood",
		weight = 1,
		stack = true,
		close = true,
	},

	["petrol"] = {
		label = "Oil",
		weight = 1,
		stack = true,
		close = true,
	},

	["petrol_raffin"] = {
		label = "Processed oil",
		weight = 1,
		stack = true,
		close = true,
	},

	["slaughtered_chicken"] = {
		label = "Slaughtered chicken",
		weight = 1,
		stack = true,
		close = true,
	},

	["stone"] = {
		label = "Stone",
		weight = 1,
		stack = true,
		close = true,
	},

	["washed_stone"] = {
		label = "Washed stone",
		weight = 1,
		stack = true,
		close = true,
	},

	["wood"] = {
		label = "Wood",
		weight = 1,
		stack = true,
		close = true,
	},

	["wool"] = {
		label = "Wool",
		weight = 1,
		stack = true,
		close = true,
	},

	["advancedrifle"] = {
		label = "CTAR-21",
		weight = 1,
		stack = true,
		close = true,
	},

	["airpods"] = {
		label = "Airpords",
		weight = 1,
		stack = true,
		close = true,
	},

	["appistol"] = {
		label = "Colt SCAMP",
		weight = 1,
		stack = true,
		close = true,
	},

	["assaultrifle"] = {
		label = "AK 47",
		weight = 1,
		stack = true,
		close = true,
	},

	["assaultshotgun"] = {
		label = "UTAS UTS15",
		weight = 1,
		stack = true,
		close = true,
	},

	["assaultsmg"] = {
		label = "Magpul PDR",
		weight = 1,
		stack = true,
		close = true,
	},

	["autoshotgun"] = {
		label = "AA12",
		weight = 1,
		stack = true,
		close = true,
	},

	["bag"] = {
		label = "Sac",
		weight = 5,
		stack = true,
		close = true,
	},

	["ball"] = {
		label = "ball",
		weight = 1,
		stack = true,
		close = true,
	},

	["ball_ammo"] = {
		label = "ball_ammo",
		weight = 1,
		stack = true,
		close = true,
	},

	["bar"] = {
		label = "Bar",
		weight = 1,
		stack = true,
		close = true,
	},

	["bat"] = {
		label = "Baseball Bat",
		weight = 1,
		stack = true,
		close = true,
	},

	["battleaxe"] = {
		label = "Battle Axe",
		weight = 1,
		stack = true,
		close = true,
	},

	["beer"] = {
		label = "Biere",
		weight = 1,
		stack = true,
		close = true,
	},

	["biere"] = {
		label = "Bière",
		weight = 1,
		stack = true,
		close = true,
	},

	["bigmac"] = {
		label = "BigMac",
		weight = -1,
		stack = true,
		close = true,
	},

	["black_phone"] = {
		label = "Black Phone",
		weight = 10,
		stack = true,
		close = true,
	},

	["ble"] = {
		label = "Blé",
		weight = -1,
		stack = true,
		close = true,
	},

	["blond_seche"] = {
		label = "Tabac Blond séché",
		weight = 2,
		stack = true,
		close = true,
	},

	["blue_phone"] = {
		label = "Blue Phone",
		weight = 10,
		stack = true,
		close = true,
	},

	["bong"] = {
		label = "Bong",
		weight = 1,
		stack = true,
		close = true,
	},

	["book"] = {
		label = "Book",
		weight = 1,
		stack = true,
		close = true,
	},

	["boombox"] = {
		label = "Boombox",
		weight = 1,
		stack = true,
		close = true,
	},

	["bottle"] = {
		label = "Bottle",
		weight = 1,
		stack = true,
		close = true,
	},

	["bouteilledechampagne"] = {
		label = "Bouteille de champagne",
		weight = 1,
		stack = true,
		close = true,
	},

	["bouteilleV"] = {
		label = "Bouteille vide",
		weight = 1,
		stack = true,
		close = true,
	},

	["bouteillevinblanc"] = {
		label = "Bouteille de vin blanc",
		weight = 1,
		stack = true,
		close = true,
	},

	["bouteillevinrouge"] = {
		label = "Bouteille de vin rouge",
		weight = 1,
		stack = true,
		close = true,
	},

	["bracelet"] = {
		label = "Bracelet",
		weight = 1,
		stack = true,
		close = true,
	},

	["brownie"] = {
		label = "Brownie",
		weight = -1,
		stack = true,
		close = true,
	},

	["brun_seche"] = {
		label = "Tabac Brun séché",
		weight = 2,
		stack = true,
		close = true,
	},

	["bullpuprifle"] = {
		label = "Type 86-S",
		weight = 1,
		stack = true,
		close = true,
	},

	["bullpupshotgun"] = {
		label = "Kel-Tec KSG",
		weight = 1,
		stack = true,
		close = true,
	},

	["burncream"] = {
		label = "Burn Cream",
		weight = 1,
		stack = true,
		close = true,
	},

	["c4_bomb"] = {
		label = "C4",
		weight = 3,
		stack = true,
		close = true,
	},

	["cafe"] = {
		label = "Café",
		weight = -1,
		stack = true,
		close = true,
	},

	["canneapeche"] = {
		label = "Canne a peche",
		weight = 1,
		stack = true,
		close = true,
	},

	["caprisun"] = {
		label = "Capri Sun",
		weight = -1,
		stack = true,
		close = true,
	},

	["capuchino"] = {
		label = "Capuchino",
		weight = -1,
		stack = true,
		close = true,
	},

	["carbinerifle"] = {
		label = "M4A1",
		weight = 1,
		stack = true,
		close = true,
	},

	["carteidentite"] = {
		label = "Carte Indentité",
		weight = 1,
		stack = true,
		close = true,
	},

	["cbo"] = {
		label = "CBO",
		weight = -1,
		stack = true,
		close = true,
	},

	["champagne"] = {
		label = "Champagne",
		weight = 1,
		stack = true,
		close = true,
	},

	["cheescake"] = {
		label = "Cheesecake",
		weight = -1,
		stack = true,
		close = true,
	},

	["cheeseburger"] = {
		label = "Cheese Burger",
		weight = -1,
		stack = true,
		close = true,
	},

	["chocolatchaud"] = {
		label = "Chocolat Chaud",
		weight = -1,
		stack = true,
		close = true,
	},

	["chocolate"] = {
		label = "Chocolat",
		weight = 1,
		stack = true,
		close = true,
	},

	["cigarett"] = {
		label = "Cigarettes",
		weight = 1,
		stack = true,
		close = true,
	},

	["cigarrette"] = {
		label = "Cigarrette",
		weight = 1,
		stack = true,
		close = true,
	},

	["classea"] = {
		label = "Billet Classe Affaire",
		weight = 1,
		stack = true,
		close = true,
	},

	["classeeco"] = {
		label = "Billet Classe Economique",
		weight = 1,
		stack = true,
		close = true,
	},

	["classeep"] = {
		label = "Billet Classe Economique Premium",
		weight = 1,
		stack = true,
		close = true,
	},

	["classep"] = {
		label = "Billet Premiere Classe",
		weight = 1,
		stack = true,
		close = true,
	},

	["classic_phone"] = {
		label = "Classic Phone",
		weight = 10,
		stack = true,
		close = true,
	},

	["clip"] = {
		label = "Chargeur",
		weight = -1,
		stack = true,
		close = true,
	},

	["coca"] = {
		label = "Coca",
		weight = 10,
		stack = true,
		close = true,
	},

	["cocacola"] = {
		label = "Coca-cola",
		weight = 1,
		stack = true,
		close = true,
	},

	["coffe"] = {
		label = "Café",
		weight = 1,
		stack = true,
		close = true,
	},

	["coffemachine"] = {
		label = "Tape Player",
		weight = 1,
		stack = true,
		close = true,
	},

	["coke"] = {
		label = "Coke",
		weight = 1,
		stack = true,
		close = true,
	},

	["coke_pooch"] = {
		label = "Pochon de coke",
		weight = 4,
		stack = true,
		close = true,
	},

	["colis"] = {
		label = "Colis",
		weight = 2,
		stack = true,
		close = true,
	},

	["colis_pooch"] = {
		label = "Colis Confirmé [DOUANE]",
		weight = 2,
		stack = true,
		close = true,
	},

	["combatmg"] = {
		label = "M249E1",
		weight = 1,
		stack = true,
		close = true,
	},

	["combatpdw"] = {
		label = "SIG Sauer MPX",
		weight = 1,
		stack = true,
		close = true,
	},

	["combatpistol"] = {
		label = "Sig Sauer P228",
		weight = 1,
		stack = true,
		close = true,
	},

	["compactrifle"] = {
		label = "Micro Draco AK Pistol",
		weight = 1,
		stack = true,
		close = true,
	},

	["console"] = {
		label = "Console",
		weight = 1,
		stack = true,
		close = true,
	},

	["cookie"] = {
		label = "Cookie",
		weight = 10,
		stack = true,
		close = true,
	},

	["croissant"] = {
		label = "Croissant",
		weight = -1,
		stack = true,
		close = true,
	},

	["crowbar"] = {
		label = "Crow Bar",
		weight = 1,
		stack = true,
		close = true,
	},

	["cupcake"] = {
		label = "Cupcake",
		weight = 1,
		stack = true,
		close = true,
	},

	["cutter"] = {
		label = "Cutter",
		weight = 1,
		stack = true,
		close = true,
	},

	["dagger"] = {
		label = "Dagger",
		weight = 1,
		stack = true,
		close = true,
	},

	["dbshotgun"] = {
		label = "Zabala short-barreled side-by-side shotgun",
		weight = 1,
		stack = true,
		close = true,
	},

	["defib"] = {
		label = "Defibrillator",
		weight = 1,
		stack = true,
		close = true,
	},

	["desperados"] = {
		label = "Desperados",
		weight = 1,
		stack = true,
		close = true,
	},

	["dirty_cash"] = {
		label = "Argent Sale",
		weight = -1,
		stack = true,
		close = true,
	},

	["dj_deck"] = {
		label = "DJ Deck",
		weight = 1,
		stack = true,
		close = true,
	},

	["donut"] = {
		label = "Donut",
		weight = -1,
		stack = true,
		close = true,
	},

	["dopebag"] = {
		label = "Pochon vide",
		weight = -1,
		stack = true,
		close = true,
	},

	["dorade"] = {
		label = "Dorade",
		weight = 3,
		stack = true,
		close = true,
	},

	["doublecheese"] = {
		label = "Double Cheese",
		weight = 1,
		stack = true,
		close = true,
	},

	["drill"] = {
		label = "Perceuse",
		weight = 3,
		stack = true,
		close = true,
	},

	["drugscales"] = {
		label = "Balance",
		weight = -1,
		stack = true,
		close = true,
	},

	["earings"] = {
		label = "Earings",
		weight = 1,
		stack = true,
		close = true,
	},

	["expresso"] = {
		label = "Expresso",
		weight = -1,
		stack = true,
		close = true,
	},

	["fabricationM"] = {
		label = "Matériaux de Fabrications",
		weight = 2,
		stack = true,
		close = true,
	},

	["fan"] = {
		label = "Fan",
		weight = 1,
		stack = true,
		close = true,
	},

	["fanta"] = {
		label = "Fanta",
		weight = 10,
		stack = true,
		close = true,
	},

	["farine"] = {
		label = "Farine",
		weight = -1,
		stack = true,
		close = true,
	},

	["fireextinguisher_ammo"] = {
		label = "fireextinguisher_ammo",
		weight = 1,
		stack = true,
		close = true,
	},

	["fishingrod"] = {
		label = "Canne à pêche",
		weight = 3,
		stack = true,
		close = true,
	},

	["flare_ammo"] = {
		label = "Flares",
		weight = 1,
		stack = true,
		close = true,
	},

	["flashlight"] = {
		label = "Flashlight",
		weight = 1,
		stack = true,
		close = true,
	},

	["flat_television"] = {
		label = "Flat TV",
		weight = 1,
		stack = true,
		close = true,
	},

	["frite"] = {
		label = "Frite",
		weight = -1,
		stack = true,
		close = true,
	},

	["fritecru"] = {
		label = "Pomme de terre",
		weight = -1,
		stack = true,
		close = true,
	},

	["frites"] = {
		label = "Frites",
		weight = 3,
		stack = true,
		close = true,
	},

	["fritesfritecru"] = {
		label = "Frites surgelé",
		weight = 3,
		stack = true,
		close = true,
	},

	["fruitshoot"] = {
		label = "Fruit Shoot",
		weight = -1,
		stack = true,
		close = true,
	},

	["gallette"] = {
		label = "Gallette",
		weight = -1,
		stack = true,
		close = true,
	},

	["gasmask"] = {
		label = "Masque à Gaz",
		weight = 2,
		stack = true,
		close = true,
	},

	["gitanes"] = {
		label = "Gitanes",
		weight = 4,
		stack = true,
		close = true,
	},

	["gold_bracelet"] = {
		label = "Gold bracelet",
		weight = 1,
		stack = true,
		close = true,
	},

	["gold_phone"] = {
		label = "Gold Phone",
		weight = 10,
		stack = true,
		close = true,
	},

	["gold_watch"] = {
		label = "Gold watch",
		weight = 1,
		stack = true,
		close = true,
	},

	["golfclub"] = {
		label = "Golf Club",
		weight = 1,
		stack = true,
		close = true,
	},

	["greenlight_phone"] = {
		label = "Green Light Phone",
		weight = 10,
		stack = true,
		close = true,
	},

	["green_phone"] = {
		label = "Green Phone",
		weight = 10,
		stack = true,
		close = true,
	},

	["gusenberg"] = {
		label = "M1928A1 Thompson SMG",
		weight = 1,
		stack = true,
		close = true,
	},

	["hacking_laptop"] = {
		label = "Hacking Laptop",
		weight = 1,
		stack = true,
		close = true,
	},

	["hack_laptop"] = {
		label = "Hacking Laptop",
		weight = 1,
		stack = true,
		close = true,
	},

	["hack_usb"] = {
		label = "Clé USB Hacker",
		weight = 1,
		stack = true,
		close = true,
	},

	["hairdryer"] = {
		label = "Hairdryer",
		weight = 1,
		stack = true,
		close = true,
	},

	["hamburger"] = {
		label = "Hamburger",
		weight = 1,
		stack = true,
		close = true,
	},

	["hammer"] = {
		label = "Hammer",
		weight = 1,
		stack = true,
		close = true,
	},

	["hatchet"] = {
		label = "hatchet",
		weight = 1,
		stack = true,
		close = true,
	},

	["heavypistol"] = {
		label = "EWB 1911",
		weight = 1,
		stack = true,
		close = true,
	},

	["heavyshotgun"] = {
		label = "Saiga12K",
		weight = 1,
		stack = true,
		close = true,
	},

	["highgradefemaleseed"] = {
		label = "Graine de weed femelle +",
		weight = -1,
		stack = true,
		close = true,
	},

	["highgradefert"] = {
		label = "Engrais de haute qualité",
		weight = -1,
		stack = true,
		close = true,
	},

	["highgrademaleseed"] = {
		label = "Graine de dope mâle +",
		weight = -1,
		stack = true,
		close = true,
	},

	["house_locator"] = {
		label = "House locator",
		weight = 1,
		stack = true,
		close = true,
	},

	["icepack"] = {
		label = "Ice Pack",
		weight = 1,
		stack = true,
		close = true,
	},

	["icetea"] = {
		label = "Ice-tea",
		weight = 1,
		stack = true,
		close = true,
	},

	["jewels"] = {
		label = "Bijoux",
		weight = 2,
		stack = true,
		close = true,
	},

	["junior"] = {
		label = "Junior tout puissant",
		weight = 1,
		stack = true,
		close = true,
	},

	["jusdorange"] = {
		label = "Jus d'orange",
		weight = -1,
		stack = true,
		close = true,
	},

	["jusfruit"] = {
		label = "Jus de fruit",
		weight = -1,
		stack = true,
		close = true,
	},

	["j_phone"] = {
		label = "Phone",
		weight = 1,
		stack = true,
		close = true,
	},

	["ketchup"] = {
		label = "sachet de ketchup",
		weight = -1,
		stack = true,
		close = true,
	},

	["ketchup_pooch"] = {
		label = "Caisse de ketchup",
		weight = -1,
		stack = true,
		close = true,
	},

	["key1"] = {
		label = "Clé 1",
		weight = 1,
		stack = true,
		close = true,
	},

	["key2"] = {
		label = "Clé 2",
		weight = 1,
		stack = true,
		close = true,
	},

	["keys_master_key"] = {
		label = "Master Key",
		weight = 1,
		stack = true,
		close = true,
	},

	["keys_master_key_single_use"] = {
		label = "Master Key (Single Use)",
		weight = 1,
		stack = true,
		close = true,
	},

	["keys_missionrow_pd_front"] = {
		label = "Mission Row PD Key (Front)",
		weight = 1,
		stack = true,
		close = true,
	},

	["kiwi"] = {
		label = "Kiwi",
		weight = 10,
		stack = true,
		close = true,
	},

	["knife"] = {
		label = "Knife",
		weight = 1,
		stack = true,
		close = true,
	},

	["knuckle"] = {
		label = "Knuckledusters",
		weight = 1,
		stack = true,
		close = true,
	},

	["laptop"] = {
		label = "Laptop",
		weight = 1,
		stack = true,
		close = true,
	},

	["ldb"] = {
		label = "Carton Chronopost",
		weight = 2,
		stack = true,
		close = true,
	},

	["leather_a"] = {
		label = "Cuir",
		weight = 1,
		stack = true,
		close = true,
	},

	["lieu"] = {
		label = "Lieu",
		weight = 1,
		stack = true,
		close = true,
	},

	["lighter"] = {
		label = "Briquet",
		weight = 1,
		stack = true,
		close = true,
	},

	["limonade"] = {
		label = "Limonade",
		weight = -1,
		stack = true,
		close = true,
	},

	["lockpickv2"] = {
		label = "Lockpick (V2)",
		weight = 1,
		stack = true,
		close = true,
	},

	["loot_bag"] = {
		label = "Duffle bag",
		weight = 1,
		stack = true,
		close = true,
	},

	["lowgradefemaleseed"] = {
		label = "Graine de weed femelle",
		weight = -1,
		stack = true,
		close = true,
	},

	["lowgradefert"] = {
		label = "Engrais de basse qualité",
		weight = -1,
		stack = true,
		close = true,
	},

	["lowgrademaleseed"] = {
		label = "Graine de weed mâle",
		weight = -1,
		stack = true,
		close = true,
	},

	["machete"] = {
		label = "machete",
		weight = 1,
		stack = true,
		close = true,
	},

	["machinepistol"] = {
		label = "TEC-9",
		weight = 1,
		stack = true,
		close = true,
	},

	["macro"] = {
		label = "Macro",
		weight = 2,
		stack = true,
		close = true,
	},

	["marksmanpistol"] = {
		label = "Thompson-Center Contender G2",
		weight = 1,
		stack = true,
		close = true,
	},

	["marlboro"] = {
		label = "Marlboro",
		weight = 2,
		stack = true,
		close = true,
	},

	["meat_a"] = {
		label = "Viande",
		weight = 1,
		stack = true,
		close = true,
	},

	["medbag"] = {
		label = "Medical Bag",
		weight = 1,
		stack = true,
		close = true,
	},

	["meth"] = {
		label = "Meth",
		weight = 1,
		stack = true,
		close = true,
	},

	["meth_pooch"] = {
		label = "Pochon de meth",
		weight = 1,
		stack = true,
		close = true,
	},

	["mg"] = {
		label = "PKP Pecheneg",
		weight = 1,
		stack = true,
		close = true,
	},

	["mg_ammo"] = {
		label = "MG Ammo",
		weight = 1,
		stack = true,
		close = true,
	},

	["mg_clip"] = {
		label = "Chargeur de MG",
		weight = 1,
		stack = true,
		close = true,
	},

	["microsmg"] = {
		label = "Micro SMG",
		weight = 1,
		stack = true,
		close = true,
	},

	["milk"] = {
		label = "Lait",
		weight = 1,
		stack = true,
		close = true,
	},

	["minismg"] = {
		label = "Skorpion Vz. 61",
		weight = 1,
		stack = true,
		close = true,
	},

	["molotov"] = {
		label = "Molotov Cocktail",
		weight = 1,
		stack = true,
		close = true,
	},

	["molotov_ammo"] = {
		label = "molotov_ammo",
		weight = 1,
		stack = true,
		close = true,
	},

	["monitor"] = {
		label = "Monitor",
		weight = 1,
		stack = true,
		close = true,
	},

	["mortier"] = {
		label = "Mortier",
		weight = 3,
		stack = true,
		close = true,
	},

	["muffin"] = {
		label = "Muffin",
		weight = -1,
		stack = true,
		close = true,
	},

	["necklace"] = {
		label = "Necklace",
		weight = 1,
		stack = true,
		close = true,
	},

	["nightstick"] = {
		label = "ASP Baton",
		weight = 1,
		stack = true,
		close = true,
	},

	["notepad"] = {
		label = "Notepad",
		weight = 1,
		stack = true,
		close = true,
	},

	["npc_phone"] = {
		label = "Phone",
		weight = 1,
		stack = true,
		close = true,
	},

	["nuggets"] = {
		label = "Nuggets",
		weight = -1,
		stack = true,
		close = true,
	},

	["nuggetscru"] = {
		label = "Nuggets Cru",
		weight = -1,
		stack = true,
		close = true,
	},

	["oasis"] = {
		label = "Oasis",
		weight = 10,
		stack = true,
		close = true,
	},

	["orangina"] = {
		label = "Orangina",
		weight = 10,
		stack = true,
		close = true,
	},

	["pain"] = {
		label = "Pain",
		weight = 10,
		stack = true,
		close = true,
	},

	["painchoco"] = {
		label = "Pain au chocolat",
		weight = -1,
		stack = true,
		close = true,
	},

	["paintinge"] = {
		label = "Paintinge",
		weight = 3,
		stack = true,
		close = true,
	},

	["paintingf"] = {
		label = "Paintingf",
		weight = 3,
		stack = true,
		close = true,
	},

	["paintingg"] = {
		label = "Painting",
		weight = 3,
		stack = true,
		close = true,
	},

	["paintingh"] = {
		label = "Paintingh",
		weight = 3,
		stack = true,
		close = true,
	},

	["paintingi"] = {
		label = "Paintingi",
		weight = 3,
		stack = true,
		close = true,
	},

	["paintingj"] = {
		label = "Paintingj",
		weight = 3,
		stack = true,
		close = true,
	},

	["pain_chaud"] = {
		label = "Pain Chaud",
		weight = -1,
		stack = true,
		close = true,
	},

	["pastabox"] = {
		label = "Pasta Box",
		weight = -1,
		stack = true,
		close = true,
	},

	["pencil"] = {
		label = "Pencil",
		weight = 1,
		stack = true,
		close = true,
	},

	["petrolcan"] = {
		label = "Petrol Can",
		weight = 1,
		stack = true,
		close = true,
	},

	["phone_hack"] = {
		label = "Phone Hack",
		weight = 10,
		stack = true,
		close = true,
	},

	["phone_module"] = {
		label = "Phone Module",
		weight = 10,
		stack = true,
		close = true,
	},

	["pink_phone"] = {
		label = "Pink Phone",
		weight = 10,
		stack = true,
		close = true,
	},

	["pistol"] = {
		label = "Colt M1911",
		weight = 1,
		stack = true,
		close = true,
	},

	["pistol50"] = {
		label = "Desert Eagle",
		weight = 1,
		stack = true,
		close = true,
	},

	["pistol_ammo"] = {
		label = "Pistol Ammo",
		weight = 1,
		stack = true,
		close = true,
	},

	["pistol_clip"] = {
		label = "Chargeur de Pistolet",
		weight = 1,
		stack = true,
		close = true,
	},

	["pizza"] = {
		label = "Pizza",
		weight = 10,
		stack = true,
		close = true,
	},

	["plantpot"] = {
		label = "Pot de plante",
		weight = -1,
		stack = true,
		close = true,
	},

	["pogo"] = {
		label = "Art Piece",
		weight = 1,
		stack = true,
		close = true,
	},

	["poolcue"] = {
		label = "pool cue",
		weight = 1,
		stack = true,
		close = true,
	},

	["potatoes"] = {
		label = "Potatoes",
		weight = -1,
		stack = true,
		close = true,
	},

	["potatoescru"] = {
		label = "Potatoes Surgélé",
		weight = 1,
		stack = true,
		close = true,
	},

	["poulet"] = {
		label = "Poulet",
		weight = 10,
		stack = true,
		close = true,
	},

	["pouletdroifcongeler"] = {
		label = "Poulet Cru",
		weight = -1,
		stack = true,
		close = true,
	},

	["powder"] = {
		label = "Bag with powder",
		weight = 1,
		stack = true,
		close = true,
	},

	["powerade"] = {
		label = "Powerade",
		weight = -1,
		stack = true,
		close = true,
	},

	["powerbank"] = {
		label = "Power Bank",
		weight = 4,
		stack = true,
		close = true,
	},

	["printer"] = {
		label = "Printer",
		weight = 1,
		stack = true,
		close = true,
	},

	["ptitwrap"] = {
		label = "Petit wrap",
		weight = -1,
		stack = true,
		close = true,
	},

	["ptwrap"] = {
		label = "Galette",
		weight = -1,
		stack = true,
		close = true,
	},

	["pumpshotgun"] = {
		label = "Remington 870",
		weight = 1,
		stack = true,
		close = true,
	},

	["purifiedwater"] = {
		label = "Eau purifiée",
		weight = -1,
		stack = true,
		close = true,
	},

	["purple_phone"] = {
		label = "Purple Phone",
		weight = 10,
		stack = true,
		close = true,
	},

	["radio_alarm"] = {
		label = "Radio",
		weight = 1,
		stack = true,
		close = true,
	},

	["raie"] = {
		label = "Raie",
		weight = 1,
		stack = true,
		close = true,
	},

	["red_phone"] = {
		label = "Red Phone",
		weight = 10,
		stack = true,
		close = true,
	},

	["revolver"] = {
		label = "Taurus Raging Bull",
		weight = 1,
		stack = true,
		close = true,
	},

	["rifle_ammo"] = {
		label = "Rifle Ammo",
		weight = 1,
		stack = true,
		close = true,
	},

	["rifle_clip"] = {
		label = "Chargeur de fusil assault",
		weight = 1,
		stack = true,
		close = true,
	},

	["ring"] = {
		label = "Bague",
		weight = 1,
		stack = true,
		close = true,
	},

	["rolex"] = {
		label = "Rolex",
		weight = 1,
		stack = true,
		close = true,
	},

	["romantic_book"] = {
		label = "Romantic book",
		weight = 1,
		stack = true,
		close = true,
	},

	["sac_coke"] = {
		label = "Sac de coke",
		weight = 1,
		stack = true,
		close = true,
	},

	["sac_meth"] = {
		label = "Sac de meth",
		weight = 1,
		stack = true,
		close = true,
	},

	["sac_opium"] = {
		label = "Sac d'opium",
		weight = 1,
		stack = true,
		close = true,
	},

	["sac_weed"] = {
		label = "Sac de weed",
		weight = 1,
		stack = true,
		close = true,
	},

	["sandwich"] = {
		label = "Sandwich",
		weight = 1,
		stack = true,
		close = true,
	},

	["sandwitch"] = {
		label = "Sandwitch",
		weight = -1,
		stack = true,
		close = true,
	},

	["sardine"] = {
		label = "Sardine",
		weight = 3,
		stack = true,
		close = true,
	},

	["saumon"] = {
		label = "Saumon",
		weight = 2,
		stack = true,
		close = true,
	},

	["sawnoffshotgun"] = {
		label = "Mossberg 500",
		weight = 1,
		stack = true,
		close = true,
	},

	["sculpture"] = {
		label = "Sculpture",
		weight = 1,
		stack = true,
		close = true,
	},

	["sdb"] = {
		label = "Palette de Cartons",
		weight = 4,
		stack = true,
		close = true,
	},

	["sedative"] = {
		label = "Sedative",
		weight = 1,
		stack = true,
		close = true,
	},

	["shampoo"] = {
		label = "Shampoo",
		weight = 1,
		stack = true,
		close = true,
	},

	["shoebox"] = {
		label = "Shoe box",
		weight = 1,
		stack = true,
		close = true,
	},

	["shotgun_ammo"] = {
		label = "Shotgun Ammo",
		weight = 1,
		stack = true,
		close = true,
	},

	["shotgun_clip"] = {
		label = "Chargeur de fusil a pompe",
		weight = 1,
		stack = true,
		close = true,
	},

	["shwepps"] = {
		label = "Shwepps",
		weight = 10,
		stack = true,
		close = true,
	},

	["sim_card"] = {
		label = "Sim Card",
		weight = -1,
		stack = true,
		close = true,
	},

	["skull"] = {
		label = "Skull Art with diamonds",
		weight = 1,
		stack = true,
		close = true,
	},

	["smg"] = {
		label = "MP5A3",
		weight = 1,
		stack = true,
		close = true,
	},

	["smg_ammo"] = {
		label = "SMG Ammo",
		weight = 1,
		stack = true,
		close = true,
	},

	["smg_clip"] = {
		label = "Chargeur de SMG",
		weight = 1,
		stack = true,
		close = true,
	},

	["smokegrenade"] = {
		label = "smoke grenade",
		weight = 1,
		stack = true,
		close = true,
	},

	["smokegrenade_ammo"] = {
		label = "smokegrenade_ammo",
		weight = 1,
		stack = true,
		close = true,
	},

	["snspistol"] = {
		label = "H&K P7",
		weight = 1,
		stack = true,
		close = true,
	},

	["soap"] = {
		label = "Soap",
		weight = 1,
		stack = true,
		close = true,
	},

	["specialcarbine"] = {
		label = "H&K G36C",
		weight = 1,
		stack = true,
		close = true,
	},

	["spray"] = {
		label = "Spray",
		weight = 1,
		stack = true,
		close = true,
	},

	["spray_remover"] = {
		label = "Spray Remover",
		weight = 1,
		stack = true,
		close = true,
	},

	["sprite"] = {
		label = "Sprite",
		weight = 10,
		stack = true,
		close = true,
	},

	["steak"] = {
		label = "Steak haché",
		weight = -1,
		stack = true,
		close = true,
	},

	["stickybomb"] = {
		label = "sticky bomb",
		weight = 1,
		stack = true,
		close = true,
	},

	["stickybomb_ammo"] = {
		label = "stickybomb_ammo",
		weight = 1,
		stack = true,
		close = true,
	},

	["stretcher"] = {
		label = "Brancard",
		weight = -1,
		stack = true,
		close = true,
	},

	["stungun"] = {
		label = "X26 Taser",
		weight = 1,
		stack = true,
		close = true,
	},

	["stungun_ammo"] = {
		label = "Stungun Ammo",
		weight = 1,
		stack = true,
		close = true,
	},

	["suturekit"] = {
		label = "Suture Kit",
		weight = 1,
		stack = true,
		close = true,
	},

	["switchblade"] = {
		label = "Switchblade",
		weight = 1,
		stack = true,
		close = true,
	},

	["tabac_blond"] = {
		label = "Tabac Blond",
		weight = 2,
		stack = true,
		close = true,
	},

	["tabac_brun"] = {
		label = "Tabac Brun",
		weight = 2,
		stack = true,
		close = true,
	},

	["tapeplayer"] = {
		label = "Coffe machine",
		weight = 1,
		stack = true,
		close = true,
	},

	["telephone"] = {
		label = "Téléphone",
		weight = 1,
		stack = true,
		close = true,
	},

	["television"] = {
		label = "TV",
		weight = 1,
		stack = true,
		close = true,
	},

	["tequila"] = {
		label = "Tequila",
		weight = 1,
		stack = true,
		close = true,
	},

	["thermite"] = {
		label = "Thermite",
		weight = 1,
		stack = true,
		close = true,
	},

	["thermite_bomb"] = {
		label = "Bombe",
		weight = 3,
		stack = true,
		close = true,
	},

	["thon"] = {
		label = "Thon",
		weight = 1,
		stack = true,
		close = true,
	},

	["toiletry"] = {
		label = "Toiletry",
		weight = 1,
		stack = true,
		close = true,
	},

	["toothpaste"] = {
		label = "Toothpaste",
		weight = 1,
		stack = true,
		close = true,
	},

	["trimmedweed"] = {
		label = "Weed coupé",
		weight = -1,
		stack = true,
		close = true,
	},

	["truelle"] = {
		label = "Truelle",
		weight = 1,
		stack = true,
		close = true,
	},

	["tweezers"] = {
		label = "Tweezers",
		weight = 1,
		stack = true,
		close = true,
	},

	["vanBottle"] = {
		label = "vanBottle",
		weight = 2,
		stack = true,
		close = true,
	},

	["vanDiamond"] = {
		label = "vanDiamond",
		weight = 2,
		stack = true,
		close = true,
	},

	["vanNecklace"] = {
		label = "vanNecklace",
		weight = 2,
		stack = true,
		close = true,
	},

	["vanPanther"] = {
		label = "vanPanther",
		weight = 2,
		stack = true,
		close = true,
	},

	["vanPogo"] = {
		label = "vanPogo",
		weight = 2,
		stack = true,
		close = true,
	},

	["vingtnuggets"] = {
		label = "Boite de 20 Nuggets",
		weight = 6,
		stack = true,
		close = true,
	},

	["vinnoir"] = {
		label = "Vin noir",
		weight = 1,
		stack = true,
		close = true,
	},

	["vinrouge"] = {
		label = "Vin Rouge",
		weight = 1,
		stack = true,
		close = true,
	},

	["vintagepistol"] = {
		label = "FN Model 1910",
		weight = 1,
		stack = true,
		close = true,
	},

	["vodka"] = {
		label = "Vodka",
		weight = 1,
		stack = true,
		close = true,
	},

	["watch"] = {
		label = "Watch",
		weight = 1,
		stack = true,
		close = true,
	},

	["wateringcan"] = {
		label = "Arrosoir",
		weight = -1,
		stack = true,
		close = true,
	},

	["weed"] = {
		label = "Weed",
		weight = 1,
		stack = true,
		close = true,
	},

	["weed_pooch"] = {
		label = "Pochon de weed",
		weight = 4,
		stack = true,
		close = true,
	},

	["wet_black_phone"] = {
		label = "Wet Black Phone",
		weight = 10,
		stack = true,
		close = true,
	},

	["wet_blue_phone"] = {
		label = "Wet Blue Phone",
		weight = 10,
		stack = true,
		close = true,
	},

	["wet_classic_phone"] = {
		label = "Wet Classic Phone",
		weight = 10,
		stack = true,
		close = true,
	},

	["wet_gold_phone"] = {
		label = "Wet Gold Phone",
		weight = 10,
		stack = true,
		close = true,
	},

	["wet_greenlight_phone"] = {
		label = "Wet Green Light Phone",
		weight = 10,
		stack = true,
		close = true,
	},

	["wet_green_phone"] = {
		label = "Wet Green Phone",
		weight = 10,
		stack = true,
		close = true,
	},

	["wet_pink_phone"] = {
		label = "Wet Pink Phone",
		weight = 10,
		stack = true,
		close = true,
	},

	["wet_purple_phone"] = {
		label = "Wet Purple Phone",
		weight = 10,
		stack = true,
		close = true,
	},

	["wet_red_phone"] = {
		label = "Wet Red Phone",
		weight = 10,
		stack = true,
		close = true,
	},

	["wet_white_phone"] = {
		label = "Wet White Phone",
		weight = 10,
		stack = true,
		close = true,
	},

	["whisky"] = {
		label = "Whisky",
		weight = 1,
		stack = true,
		close = true,
	},

	["white_phone"] = {
		label = "White Phone",
		weight = 10,
		stack = true,
		close = true,
	},

	["wine"] = {
		label = "Vin",
		weight = 1,
		stack = true,
		close = true,
	},

	["wrap"] = {
		label = "Wrap",
		weight = 10,
		stack = true,
		close = true,
	},

	["wrench"] = {
		label = "wrench",
		weight = 1,
		stack = true,
		close = true,
	},

	["WEAPON_lbd"] = {
		label = "LBD",
		weight = 1,
		stack = true,
		close = true,
	},

	["WEAPON_LGCOUGAR"] = {
		label = "LGCOUGARD",
		weight = 1,
		stack = true,
		close = true,
	},

	["baguette_admin"] = {
		label = "Baguette Administration",
		weight = 3,
		stack = true,
		close = true,
	},

	["tableau"] = {
		label = "Tableau",
		weight = 1,
		stack = true,
		close = true,
	},

	["pc"] = {
		label = "Pc",
		weight = 1,
		stack = true,
		close = true,
	},

	["vase"] = {
		label = "Vase",
		weight = 1,
		stack = true,
		close = true,
	},

	["tele"] = {
		label = "Télé",
		weight = 1,
		stack = true,
		close = true,
	},

	["bijoux"] = {
		label = "Bijoux",
		weight = 1,
		stack = true,
		close = true,
	},

	["enceinte"] = {
		label = "Enceinte",
		weight = 1,
		stack = true,
		close = true,
	},

	["contract"] = {
		label = "contract",
		weight = 1,
		stack = true,
		close = true,
	},
}