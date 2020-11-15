#######################################################
#                                                     
#  Innovus Command Logging File                     
#  Created on Fri Oct 23 19:28:50 2020                
#                                                     
#######################################################

#@(#)CDS: Innovus v17.11-s080_1 (64bit) 08/04/2017 11:13 (Linux 2.6.18-194.el5)
#@(#)CDS: NanoRoute 17.11-s080_1 NR170721-2155/17_11-UB (database version 2.30, 390.7.1) {superthreading v1.44}
#@(#)CDS: AAE 17.11-s034 (64bit) 08/04/2017 (Linux 2.6.18-194.el5)
#@(#)CDS: CTE 17.11-s053_1 () Aug  1 2017 23:31:41 ( )
#@(#)CDS: SYNTECH 17.11-s012_1 () Jul 21 2017 02:29:12 ( )
#@(#)CDS: CPE v17.11-s095
#@(#)CDS: IQRC/TQRC 16.1.1-s215 (64bit) Thu Jul  6 20:18:10 PDT 2017 (Linux 2.6.18-194.el5)

set_global _enable_mmmc_by_default_flow      $CTE::mmmc_default
suppressMessage ENCEXT-2799
getDrawView
loadWorkspace -name Physical
win
set init_design_netlisttype verilog
set init_design_settop 1
set init_top_cell myiir
set init_verilog ../netlist/myiir.v
set init_lef_file /software/dk/nangate45/lef/NangateOpenCellLibrary.lef
set init_gnd_net VSS
set init_pwr_net VDD
set init_design_netlisttype verilog
set init_design_settop 1
set init_top_cell myiir
set init_verilog ../netlist/myiir.v
set init_lef_file /software/dk/nangate45/lef/NangateOpenCellLibrary.lef
set init_gnd_net VSS
set init_pwr_net VDD
set init_mmmc_file mmm_design.tcl
init_design
getIoFlowFlag
setIoFlowFlag 0
floorPlan -coreMarginsBy die -site FreePDK45_38x28_10R_NP_162NW_34O -r 1.0 0.6 5.0 5.0 5.0 5.0
uiSetTool select
getIoFlowFlag
fit
set sprCreateIeRingOffset 1.0
set sprCreateIeRingThreshold 1.0
set sprCreateIeRingJogDistance 1.0
set sprCreateIeRingLayers {}
set sprCreateIeRingOffset 1.0
set sprCreateIeRingThreshold 1.0
set sprCreateIeRingJogDistance 1.0
set sprCreateIeRingLayers {}
set sprCreateIeStripeWidth 10.0
set sprCreateIeStripeThreshold 1.0
set sprCreateIeStripeWidth 10.0
set sprCreateIeStripeThreshold 1.0
set sprCreateIeRingOffset 1.0
set sprCreateIeRingThreshold 1.0
set sprCreateIeRingJogDistance 1.0
set sprCreateIeRingLayers {}
set sprCreateIeStripeWidth 10.0
set sprCreateIeStripeThreshold 1.0
setAddRingMode -ring_target default -extend_over_row 0 -ignore_rows 0 -avoid_short 0 -skip_crossing_trunks none -stacked_via_top_layer metal10 -stacked_via_bottom_layer metal1 -via_using_exact_crossover_size 1 -orthogonal_only true -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape }
addRing -nets {VDD VSS} -type core_rings -follow core -layer {top metal1 bottom metal1 left metal2 right metal2} -width {top 0.8 bottom 0.8 left 0.8 right 0.8} -spacing {top 0.8 bottom 0.8 left 0.8 right 0.8} -offset {top 1.8 bottom 1.8 left 1.8 right 1.8} -center 1 -extend_corner {} -threshold 0 -jog_distance 0 -snap_wire_center_to_grid None
selectWire 1.3650 1.3200 51.2650 2.1200 1 VSS
deselectAll
selectWire 1.3650 1.3200 51.2650 2.1200 1 VSS
deselectAll
clearGlobalNets
globalNetConnect VDD -type pgpin -pin VDD -inst * -module {}
globalNetConnect VSS -type pgpin -pin VSS -inst * -module {}
setSrouteMode -viaConnectToShape { noshape }
sroute -connect { blockPin padPin padRing corePin floatingStripe } -layerChangeRange { metal1(1) metal10(10) } -blockPinTarget { nearestTarget } -padPinPortConnect { allPort oneGeom } -padPinTarget { nearestTarget } -corePinTarget { firstAfterRowEnd } -floatingStripeTarget { blockring padring ring stripe ringpin blockpin followpin } -allowJogging 1 -crossoverViaLayerRange { metal1(1) metal10(10) } -nets { VDD VSS } -allowLayerChange 1 -blockPin useLef -targetViaLayerRange { metal1(1) metal10(10) }
setPlaceMode -prerouteAsObs {1 2 3 4 5 6 7 8}
setPlaceMode -fp false
placeDesign
zoomIn
zoomIn
zoomIn
selectWire 29.1300 28.5950 29.2000 32.3050 2 {iir_inst_sw[0]}
deselectAll
selectInst iir_inst_U28
deselectAll
selectWire 25.9000 28.7350 31.6700 28.8050 3 {iir_inst_sw[7]}
gui_select -rect {73.376 39.257 105.047 53.915}
panPage -1 0
panPage -1 0
panPage -1 0
panPage -1 0
panPage 1 0
panPage 1 0
panPage 0 -1
panPage 1 0
zoomIn
selectWire 27.8350 17.0800 27.9750 20.3000 4 iir_inst_mult_54_n26
deselectAll
selectWire 28.9550 19.6000 29.0950 22.8200 4 iir_inst_mult_54_n257
deselectAll
selectInst iir_inst_mult_54_U216
deselectAll
selectInst iir_inst_mult_54_U4
deselectAll
selectInst iir_inst_mult_54_U4
gui_select -rect {27.128 20.532 27.041 21.012}
selectInst iir_inst_mult_54_U3
zoomIn
deselectAll
selectInst iir_inst_mult_54_U208
deselectAll
selectInst iir_inst_mult_54_U190
deselectAll
selectWire 41.2750 12.4600 41.4150 16.6600 4 iir_inst_mult_54_n278
deselectAll
selectWire 43.9500 12.5300 44.0200 14.3850 2 iir_inst_mult_54_n277
deselectAll
selectWire 46.0400 8.7150 46.1100 23.6250 2 iir_inst_mult_54_n78
deselectAll
selectWire 46.4200 11.1800 46.4900 14.4850 2 iir_inst_mult_54_n114
deselectAll
selectWire 46.8000 15.2950 46.8700 17.1850 2 iir_inst_mult_54_n265
deselectAll
gui_select -rect {39.671 -9.061 41.614 -10.698}
selectWire 47.4350 6.8600 47.5750 9.1000 4 iir_inst_mult_54_n13
gui_select -rect {35.834 -10.385 50.873 -11.613}
zoomBox 39.006 -5.168 51.896 -6.293
get_visible_nets
zoomOut
zoomOut
fit
selectInst iir_inst_mult_55_U206
deselectAll
selectInst iir_inst_mult_55_U206
deselectAll
selectWire 11.0800 5.8800 11.1500 6.6850 2 iir_inst_mult_55_n254
deselectAll
selectInst iir_inst_mult_55_U206
deselectAll
selectInst iir_inst_mult_55_U173
deselectAll
selectInst iir_inst_mult_56_U22
deselectAll
selectInst iir_inst_mult_56_U195
deselectAll
selectInst iir_inst_mult_56_U195
deselectAll
selectInst iir_inst_mult_56_U241
deselectAll
selectInst iir_inst_mult_56_U173
deselectAll
selectInst iir_inst_mult_56_U25
gui_select -rect {37.173 47.636 39.199 47.485}
selectInst iir_inst_mult_56_U173
deselectAll
selectInst iir_inst_mult_56_U241
deselectAll
selectInst iir_inst_mult_56_U195
fit
zoomIn
panPage 0 1
panPage 0 1
panPage -1 0
panPage -1 0
panPage -1 0
panPage 0 -1
panPage 0 -1
panPage 0 -1
panPage 0 -1
panPage 0 1
panPage 0 -1
panPage 1 0
deselectAll
selectInst reg_file1_inst_registers_reg_1_
panPage -1 0
zoomIn
panPage 0 -1
panPage -1 0
panPage -1 0
panPage 0 -1
fit
setOptMode -fixCap true -fixTran true -fixFanoutLoad false
optDesign -postCTS
optDesign -postCTS -hold
deselectAll
getFillerMode -quiet
addFiller -cell FILLCELL_X8 FILLCELL_X4 FILLCELL_X32 FILLCELL_X2 FILLCELL_X16 FILLCELL_X1 -prefix FILLER
setNanoRouteMode -quiet -timingEngine {}
setNanoRouteMode -quiet -routeWithSiPostRouteFix 0
setNanoRouteMode -quiet -drouteStartIteration default
setNanoRouteMode -quiet -routeTopRoutingLayer default
setNanoRouteMode -quiet -routeBottomRoutingLayer default
setNanoRouteMode -quiet -drouteEndIteration default
setNanoRouteMode -quiet -routeWithTimingDriven false
setNanoRouteMode -quiet -routeWithSiDriven false
routeDesign -globalDetail
fit
setAnalysisMode -analysisType onChipVariation
setOptMode -fixCap true -fixTran true -fixFanoutLoad false
optDesign -postRoute
optDesign -postRoute -hold
setOptMode -fixCap true -fixTran true -fixFanoutLoad false
optDesign -postRoute
optDesign -postRoute -hold
fit
saveDesign myiir.enc
fit
getDrawView
setDrawView fplan
win
dumpToGIF snapshots/ss_snapshot1.fplan.gif
getDrawView
setDrawView amoeba
win
dumpToGIF snapshots/ss_snapshot1.amoeba.gif
getDrawView
setDrawView place
win
dumpToGIF snapshots/ss_snapshot1.place.gif
checkPlace checkplace.ss.rpt
fit
reset_parasitics
extractRC
rcOut -setload myiir.setload -rc_corner my_rc
rcOut -setres myiir.setres -rc_corner my_rc
rcOut -spf myiir.spf -rc_corner my_rc
rcOut -spef myiir.spef -rc_corner my_rc
redirect -quiet {set honorDomain [getAnalysisMode -honorClockDomains]} > /dev/null
timeDesign -postRoute -pathReports -drvReports -slackReports -numPaths 50 -prefix myiir_postRoute -outDir timingReports
redirect -quiet {set honorDomain [getAnalysisMode -honorClockDomains]} > /dev/null
timeDesign -postRoute -hold -pathReports -slackReports -numPaths 50 -prefix myiir_postRoute -outDir timingReports
verifyConnectivity -type all -error 1000 -warning 50
setVerifyGeometryMode -area { 0 0 0 0 } -minWidth true -minSpacing true -minArea true -sameNet true -short true -overlap true -offRGrid false -offMGrid true -mergedMGridCheck true -minHole true -implantCheck true -minimumCut true -minStep true -viaEnclosure true -antenna false -insuffMetalOverlap true -pinInBlkg false -diffCellViol true -sameCellViol false -padFillerCellsOverlap true -routingBlkgPinOverlap true -routingCellBlkgOverlap true -regRoutingOnly false -stackedViasOnRegNet false -wireExt true -useNonDefaultSpacing false -maxWidth true -maxNonPrefLength -1 -error 1000
verifyGeometry
setVerifyGeometryMode -area { 0 0 0 0 }
reportGateCount -level 5 -limit 100 -outfile myiir.gateCount
saveNetlist myiir.v
all_hold_analysis_views 
all_setup_analysis_views 
write_sdf  -ideal_clock_network myiir.sdf
