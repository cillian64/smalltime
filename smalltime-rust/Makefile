# Using windows arm-embedded tools because I couldn't get them to work under
# WSL1.  I have no idea why the blackslashes are required for the serial port.
BMP_PATH = "\\\\.\\\COM11"
ELF = "target/thumbv6m-none-eabi/release/smalltime-rust"
GDB = "arm-none-eabi-gdb.exe"

.PHONY: $(ELF)
$(ELF):
	cargo build --release

flash: $(ELF)
	$(GDB) --batch \
		-ex "target extended-remote $(BMP_PATH)" \
		-ex 'monitor version' \
		-ex 'monitor swdp_scan' \
		-ex 'attach 1' \
		-ex "file $(ELF)" \
		-ex 'load' \
		-ex 'compare-sections'


debug: $(ELF)
	$(GDB) \
		-ex "target extended-remote $(BMP_PATH)" \
		-ex 'monitor version' \
		-ex 'monitor swdp_scan' \
		-ex 'attach 1' \
		-ex "file $(ELF)"

power:
	$(GDB) --batch \
		-ex "target extended-remote $(BMP_PATH)" \
		-ex 'monitor tpwr enable'

unpower:
	$(GDB) --batch \
		-ex "target extended-remote $(BMP_PATH)" \
		-ex 'monitor tpwr disable'
