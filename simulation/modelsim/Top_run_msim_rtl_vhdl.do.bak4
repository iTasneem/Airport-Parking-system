transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {E:/work space/airplane/Top.vhd}
vcom -93 -work work {E:/work space/airplane/Timer.vhd}
vcom -93 -work work {E:/work space/airplane/airportE.vhd}
vcom -93 -work work {E:/work space/airplane/airplaneParking.vhd}
vcom -93 -work work {E:/work space/airplane/airplane.vhd}

vcom -93 -work work {E:/work space/airplane/top_tp.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneive -L rtl_work -L work -voptargs="+acc"  top_tb

add wave *
view structure
view signals
run -all
