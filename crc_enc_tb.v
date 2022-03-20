module crc_enc_tb;
  reg  [0:7] data;
     
       reg [0:3] divisor; 

       wire [0:10] msg;
       wire [0:2] ans;
crc_enc uut(data,divisor,ans,msg);

initial begin

data=8'b10011101;divisor=4'b1001;#10;

end
endmodule