***** Spice Netlist for Cell 'New' *****

************** Module New **************
.subckt New out
xi0 out i2 inverter_tb
xi1 i2 i3 inverter_tb
xi2 i3 out inverter_tb
vin out gnd dc='5' ac='0' 
.ends New

************** Module inverter_tb **************
.subckt inverter_tb in out example_param=1.0
m0 out in gnd gnd scmosn w='1u' l='0.4u' m='1' 
m1 out in vdd vdd scmosp w='2.5u' l='0.4u' m='1' 
.ends inverter_tb


.end

