# CRC Encoding and Decoding using Verilog

- Designed a basic CRC encoder and decoder using verilog on Intel Quartus prime followed by its RTL synthesis.

- It can be tweaked to a standard CRC generator as well, for error correction and detection.

------------------------------------------
Consider a bit stream 10011101 is transmitted using the standard CRC method. The generator polynomial is x3+1. Suppose the third bit from the left is inverted during transmission.

The generator polynomial G(x) = x3 + 1 is encoded as 1001. Clearly, the generator polynomial consists of 4 bits.
A string of 3 zeroes is appended to the bit stream to be transmitted resulting in bit stream is 10011101000.
Then, the division is performed.
From here, CRC = 100.

The code word to be transmitted is obtained by replacing the last 3 zeroes of 10011101000 with the CRC.
The code word transmitted to the receiver = 10011101100.
During transmission, third bit from the left gets inverted during transmission.
So, the bit stream received by the receiver = 10111101100.

Now,
Receiver receives the bit stream = 10111101100.
Receiver performs the binary division with the same generator polynomial as-

From here,
The remainder obtained on division is a non-zero value.
This indicates to the receiver that an error occurred in the data during the transmission.

Therefore, receiver rejects the data and asks the sender for retransmission.