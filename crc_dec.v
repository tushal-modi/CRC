module crc_dec(data,divisor,ans,msg);
    
       input  [0:7] data;
     
       input [0:3] divisor; 

       output reg [0:10] msg;
       output reg [0:2] ans;
       reg [0:10] arr;
       integer i,j,k;
       always @(*)
       begin
            arr = {data,3'b100};
            msg = arr;
            for(i=0;i<8;i=i+1)
            begin
                j=0;
                k=i;
                if(arr[k] >= divisor[j])
                begin
                     k=i;
                      for(j=0;j<4;j=j+1)
                      begin
                           
                            
                            if(arr[k]^divisor[j] == 0)
                                arr[k]=0;
                            else
                                arr[k]=1;
                                k=k+1;
                            
                      end
                      
                end
            end
            j=8;
            for(i=0;i<3;i=i+1)
               begin

                  ans[i]=arr[j];
               j=j+1;
               end
             

       end
endmodule
       