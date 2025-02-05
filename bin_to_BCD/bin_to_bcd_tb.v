module binary_to_bcd_tb();

	reg [3:0] bin_num ;
	wire  [3:0] bcd ;
        integer i;
	binary_to_bcd dut (.bin_num(bin_num), 
	                   .bcd(bcd)
	                  );
	                  
  initial begin
   
   $dumpfile("bin_to_bcd.vcd");
   $dumpvars(0,binary_to_bcd_tb);
   bin_num = 4'b0000;
   $monitor("Binary : %0b   BCD : %0d",bin_num,bcd);
       
     for(i = 0 ; i < 16 ; i++)
      begin     
       #5;
       bin_num = i ;
      end
      
      
     $finish;
    end
  endmodule
      
