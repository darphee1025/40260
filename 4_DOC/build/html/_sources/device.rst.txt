Device
##########

Cyclic Redundant Check generation
=================================

An 8 bit CRC is required for each Write and Read SPI and I2C command. Computation
of a cyclic redundancy check is derived from the mathematics of polynomial division,
modulo two.
The CRC polynomial used is x^8+x^4+x^3+x^2+1 (identified by 0x1D) with a SEED value
of hexadecimal '0xFF'
The following is an example of CRC encoding HW implementation:




spi interface 
===============

SPI interface overview
-----------------------

MOSI,master out slave in bits

.. wavedrom::

   { "reg" : [
      {bits: 8,   name: 'crc8',             attr: '',},
      {bits: 16,  name: 'control bits',     attr: ''},
      {bits: 1,   name: 'r/w',    attr: ''},
      {bits: 6,   name: 'register address',    attr: ''},
      {bits: 1,   name: 'sel',    attr: ''},
      ]
    }


– Bit 31: main or fail-safe registers selection
– Bit 30 to 25: register address
– Bit 24: read/write
– Bit 23 to 8: control bits
– Bit7 to 0: cyclic redundant check (CRC)



MISO,master in slave out bits

.. wavedrom::

   { "reg" : [
      {bits: 8,   name: 'crc8',             attr: '',},
      {bits: 16,  name: 'fdevice status/content/lags',     attr: ''},
      {bits: 8,   name: 'general device status',    attr: ''},
      ]
    }


– Bit 31-24: general device status
– bits 23 to 8: extended device status, or device internal control register content or
device flags
– Bit7 to 0: cyclic redundant check (CRC)

The digital SPI pins (CSB, SCLK, MOSI, MISO) are referenced to VDDIO.


SPI CRC calculation and results
--------------------------------




Spi interface timing
--------------------- 


