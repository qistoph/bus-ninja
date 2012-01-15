#
# CONFIG FOR ARDUINO DIECEMILIA
# 

MCU=atmega328p
F_CPU = 16000000UL
CFLAGS += -DLED0_PORT=PORTB -DLED0_PIN=PINB5 -DLED0_DDR=DDRB
# Hardware watchdog
CONFIG_WATCHDOG=y
# I2C support
CONFIG_BUS_I2C=y
# SPI support
CONFIG_BUS_SPI=y
# Hardware UART driver
CONFIG_HW_UART=y
# Console on hw_uart
CONFIG_HW_UART_CONSOLE=y
#PROGRAM_CMD=/Applications/Arduino.app/Contents/Resources/Java/hardware/tools/avr/bin/avrdude -C /Applications/Arduino.app/Contents/Resources/Java/hardware/tools/avr/etc/avrdude.conf -pm168 -cstk500v1 -P/dev/tty.usbserial-A1001MTD -b19200 -D -Uflash:w:$(TARGET).hex
PROGRAM_CMD=avrdude -CD:\\Development\\Teensy\\arduino-0022\\hardware/tools/avr/etc/avrdude.conf -patmega328p -cstk500v1 -P\\\\.\\COM5 -b57600 -D -Uflash:w:$(TARGET).hex