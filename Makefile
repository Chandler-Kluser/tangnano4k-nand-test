.PHONY: all clean flash

all: output.fs

output.fs: output2.json
	gowin_pack -d GW1NS-4 -o $@ $^

output2.json: output1.json tangnano4k.cst
	nextpnr-gowin --json $< --write $@ --device GW1NSR-LV4CQN48PC7/I6 --cst tangnano4k.cst

output1.json: top.v
	yosys -p "read_verilog $^; synth_gowin -json $@"

clean:
	rm -rf output1.json output2.json output.fs

flash: output.fs
	openFPGALoader -b tangnano4k -f output.fs