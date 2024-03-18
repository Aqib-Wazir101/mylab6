module lab6_tb;

    
    parameter CLK_PERIOD = 10;
    
    
    logic [3:0] num;
    logic [2:0] sel;
    logic clk, reset, write;
    logic [7:0] anode;
    logic [6:0] cathode;

    
lab6_source dut (
        .num(num),
        .sel(sel),
        .clk(clk),
        .reset(reset),
        .write(write),
        .anode(anode),
        .cathode(cathode)
    );

   
    always #((CLK_PERIOD / 2)) clk = ~clk;

    
    initial begin
        clk = 0;
        reset = 1;
        num = 4'b0;
        sel = 3'b000;
        write = 0;

        #100; 
        
        reset = 0;
        
        
        #10;        
        
        num = 4'b0011; 
        sel = 3'b000;
        write = 1;
        #10; 
        write = 0;
        
     
        sel = 3'b000;
        write = 0;
        #10; 
        #100;
        $finish;
    end

endmodule
