# Parsing an ethernet frame

The aim of this exercise is to learn how to read header documentation for networking protocols, and to learn how to handle binary data. To this end, use the [sandbox](./sandbox.rb) to read the [binary file](./ethernet_frame.bin) containing a simple ethernet frame and complete the class methods on the [`EthernetFrame` class](./ethernet_frame.rb).

There are plenty of resources describing the header of an ethernet frame. [Wikipedia](https://en.wikipedia.org/wiki/Ethernet_frame) is just one of them.

Run `ruby test.rb` to test, but avoid looking into the file if you don't want to be spoiled.

## Note

The binary file provided has already stripped the preamble, and checksum.

## Hints

If you're stuck, maybe these can help:

1. `IO#binread` is your friend for reading binary data in ruby.
2. `String#unpack` can help you parse out binary data into virtually any format.
3. for the ethertype, remember that there's a default endianness for network packages.
