BUILD_DIR?=$(readlink -f .)

define compile
	./compile_with_tectonic.sh $(BUILD_DIR)/$1 $2
endef

template:
	$(call compile,COPY_THIS,SPEXpdd.tex)
	$(call compile, "HELP", "HelpMe.tex")

all:
	$(call compile, "COPY_THIS", "SPEXpdd.tex")
	$(call compile, "HELP", "HelpMe.tex")
	$(call compile, "50SAT", "SPEX$50SAT.tex")
	$(call compile, "Aerospike_Nozzle", "SPEXpdd.tex")
	$(call compile, "ASTRO", "ASTROpdd.tex")
	$(call compile, "astrodynamics-fall-2018", "astrodynamicsFall2018PDD.tex")
	$(call compile, "Cold-Gas-Thruster", "Cold Gas Thruster PDD.tex")
	$(call compile, "CSLI", "CSLI.tex")
	$(call compile, "Environmental-Test-Chamber", "enviornmentalTestChamberPDD.tex")
	$(call compile, "HAB-CV", "hab-cv.tex")
	$(call compile, "HAB5", "hab5.tex")
	$(call compile, "Habian-Motion", "Habian_Motion.tex")
	$(call compile, "IREC", "IREC_PDD.tex")
	$(call compile, "microhab_2017", "microhab2017.tex")
	$(call compile, "Mission-Feasibility-Study", "SPEXMissionFeasibilityStudy.tex")
	$(call compile, "Rocket-Nozzle-Design-and-Analysis", "Rocket_Nozzle_Design_and_Analysis.tex")
	$(call compile, "Rovers", "Rovers.tex")
	$(call compile, "SDL-IREC 2019 SPEXTRO", "SDL-IREC_SPEXTRO.tex")
