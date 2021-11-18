*inverter testbench
.GLOBAL vdd gnd
.PARAM vsupply=5.0
* Technology path
.LIB "~/tools/eda-technology/scn4m_subm/models/scn4m_cnrs_bsim3v1.lib" nom

*Include the Inverter Netlist
.INCLUDE inverter_tb.sp
*Instantiate Inverter
Xinverter1 out in inverter_tb

*Source
vsup vdd 0 DC vsupply
vin in 0 DC vsupply

*Analysis
.DC vin 0 5 0.1

.CONTROL
run
plot v(in) v(out)
.ENDC
.END  
