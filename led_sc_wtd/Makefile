led_wtd.bin: start.o delay.o
	arm-linux-ld -Ttext 0x30000000 -o led_wtd.elf $^
	arm-linux-objcopy -O binary led_wtd.elf led_wtd.bin
	arm-linux-objdump -D led_wtd.elf > led_wtd_elf.dis

%.o : %.S
	arm-linux-gcc  -o $@ $< -c 

%.o : %.c
	arm-linux-gcc  -o $@ $< -c


clean:
	rm *.o *.elf *.bin *.dis -f
