onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -radix binary -childformat {{{/tb_sw_led/sw[3]} -radix binary} {{/tb_sw_led/sw[2]} -radix binary} {{/tb_sw_led/sw[1]} -radix binary} {{/tb_sw_led/sw[0]} -radix binary}} -expand -subitemconfig {{/tb_sw_led/sw[3]} {-radix binary} {/tb_sw_led/sw[2]} {-radix binary} {/tb_sw_led/sw[1]} {-radix binary} {/tb_sw_led/sw[0]} {-radix binary}} /tb_sw_led/sw
add wave -noupdate -radix binary -childformat {{{/tb_sw_led/led[3]} -radix binary} {{/tb_sw_led/led[2]} -radix binary} {{/tb_sw_led/led[1]} -radix binary} {{/tb_sw_led/led[0]} -radix binary}} -expand -subitemconfig {{/tb_sw_led/led[3]} {-radix binary} {/tb_sw_led/led[2]} {-radix binary} {/tb_sw_led/led[1]} {-radix binary} {/tb_sw_led/led[0]} {-radix binary}} /tb_sw_led/led
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 1
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {0 ps} {74 ps}
