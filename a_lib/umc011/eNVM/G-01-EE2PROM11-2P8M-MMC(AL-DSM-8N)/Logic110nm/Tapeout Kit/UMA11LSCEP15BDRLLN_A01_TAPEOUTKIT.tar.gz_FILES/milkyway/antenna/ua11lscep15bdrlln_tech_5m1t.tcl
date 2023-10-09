set lib [current_mw_lib]
remove_antenna_rules $lib
define_antenna_rule $lib -mode 4 -diode_mode 4 -metal_ratio 400 -cut_ratio 0
define_antenna_layer_rule $lib -mode 4 -layer "ME1" -ratio 400 -diode_ratio {0.1024 0 200 2000}
define_antenna_layer_rule $lib -mode 4 -layer "ME2" -ratio 400 -diode_ratio {0.1024 0 200 2000}
define_antenna_layer_rule $lib -mode 4 -layer "ME3" -ratio 400 -diode_ratio {0.1024 0 200 2000}
define_antenna_layer_rule $lib -mode 4 -layer "ME4" -ratio 400 -diode_ratio {0.1024 0 200 2000}
define_antenna_layer_rule $lib -mode 4 -layer "ME5" -ratio 400 -diode_ratio {0.1024 0 200 1500}

define_antenna_rule $lib -mode 5 -diode_mode 4 -metal_ratio 400 -cut_ratio 0
define_antenna_layer_rule $lib -mode 5 -layer "ME1" -ratio 400 -diode_ratio {0.1024 0 200 2000}
define_antenna_layer_rule $lib -mode 5 -layer "ME2" -ratio 400 -diode_ratio {0.1024 0 200 2000}
define_antenna_layer_rule $lib -mode 5 -layer "ME3" -ratio 400 -diode_ratio {0.1024 0 200 2000}
define_antenna_layer_rule $lib -mode 5 -layer "ME4" -ratio 400 -diode_ratio {0.1024 0 200 2000}
define_antenna_layer_rule $lib -mode 5 -layer "ME5" -ratio 400 -diode_ratio {0.1024 0 200 2000}
