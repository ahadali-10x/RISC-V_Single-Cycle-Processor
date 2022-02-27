`timescale 1ns / 1ps


module main(rst, clk, Anode_Activate, LED_out);
input rst, clk;						// 1 button to reset, clock signal as input
output reg[7:0] Anode_Activate;		// Anodes to control 7-segments
output reg [6:0] LED_out;			// output result to be sent on 7-segments
wire [31:0] pc;
wire [31:0]Result;
wire [31:0]Result1;
 

	// ALL modules will be called in this file. Code will be executed and results will be shown on 7-segment display
// Code segment for BCD to 7-segment Decoder. Keep this code as it is
reg [31:0] counter;		// A 32 bit flashing counter
reg toggle = 0;			// A variable to toggle between two 7-segments 

always @(posedge clk)
    begin
            if(counter>=100000) begin
                 counter <= 0;
				 toggle = ~toggle; end
            else begin
                counter <= counter + 1;
				end
    end 
    // anode activating signals for 8 segments, digit period of 1ms
    // decoder to generate anode signals 
    always @(*)
    begin
        case(toggle)
        1'b0: begin
            Anode_Activate = 8'b01111111; 
            // activate SEGMENT1 and Deactivate all others
              end
        1'b1: begin
            Anode_Activate = 8'b10111111; 
            // activate LED2 and Deactivate all others    
               end
        endcase
    end
    // Cathode patterns of the 7-segment 1 LED display 
    always @(*)
    begin
	if (toggle) begin
        case(Result1[3:0])				// First 4 bits of Result from ALU will be displayed on 1st segment
        4'b0000: LED_out = 7'b0000001; // "0"     
        4'b0001: LED_out = 7'b1001111; // "1" 
        4'b0010: LED_out = 7'b0010010; // "2" 
        4'b0011: LED_out = 7'b0000110; // "3" 
        4'b0100: LED_out = 7'b1001100; // "4" 
        4'b0101: LED_out = 7'b0100100; // "5" 
        4'b0110: LED_out = 7'b0100000; // "6" 
        4'b0111: LED_out = 7'b0001111; // "7" 
        4'b1000: LED_out = 7'b0000000; // "8"     
        4'b1001: LED_out = 7'b0000100; // "9"
		4'b1010: LED_out = 7'b0001000; // "A"     
        4'b1011: LED_out = 7'b1100000; // "b"     
        4'b1100: LED_out = 7'b0110001; // "C"     
        4'b1101: LED_out = 7'b1000010; // "d"     
        4'b1110: LED_out = 7'b0110000; // "E"     
        4'b1111: LED_out = 7'b0111000; // "F"     
        
        default: LED_out = 7'b0000001; // "0"
        endcase
		end
    

	// Cathode patterns of the 7-segment 2 LED display
if(!toggle) begin	
        case(Result1[7:4])			// Next 4 bits of Result from ALU will be displayed on 2nd segment
        4'b0000: LED_out = 7'b0000001; // "0"     
        4'b0001: LED_out = 7'b1001111; // "1" 
        4'b0010: LED_out = 7'b0010010; // "2" 
        4'b0011: LED_out = 7'b0000110; // "3" 
        4'b0100: LED_out = 7'b1001100; // "4" 
        4'b0101: LED_out = 7'b0100100; // "5" 
        4'b0110: LED_out = 7'b0100000; // "6" 
        4'b0111: LED_out = 7'b0001111; // "7" 
        4'b1000: LED_out = 7'b0000000; // "8"     
        4'b1001: LED_out = 7'b0000100; // "9"
		4'b1010: LED_out = 7'b0001000; // "A"     
        4'b1011: LED_out = 7'b1100000; // "b"     
        4'b1100: LED_out = 7'b0110001; // "C"     
        4'b1101: LED_out = 7'b1000010; // "d"     
        4'b1110: LED_out = 7'b0110000; // "E"     
        4'b1111: LED_out = 7'b0111000; // "F"     
        
        default: LED_out = 7'b0000001; // "0"
        endcase
    end
end

	
wire [31:0]PC_in;

wire [31:0]instruction;
wire [4:0]rs1;
wire [4:0]rs2;
wire [4:0]rd;
wire [31:7]immBitField;
wire [6:0]opCode;
wire [6:0]funct7;
wire [2:0]funct3;


wire [31:0]aluResult;
wire zeroFlag;
wire [31:0]srcA;
wire [31:0]Op_B;
wire [3:0]aluControl;

wire [31:0]srcB;
wire [31:0]result;
wire regWr;

wire [31:0]dataOut;
wire memRead;
wire memWr;

wire [31:0]immext;
wire [1:0]immSrc;

wire resultSrc;

wire aluSrc;

wire [31:0]pcPlus4;
wire [31:0]pcTarget;
wire [31:0]pcNext;
wire pcSrc;
wire negFlag;




Instruction_fetch  x1(.instruction(instruction),.rs1(rs1), .rs2(rs2), .rd(rd), .immBitField(immBitField), .opCode(opCode), .funct7(funct7), .funct3(funct3));
controller  x2(.opCode(opCode),.funct7(funct7),.funct3(funct3),.zeroFlag(zeroFlag),.negFlag(negFlag),.pcSrc(pcSrc),.resultSrc(resultSrc),.aluSrc(aluSrc),.memWr(memWr),.aluControl(aluControl),.immSrc(immSrc),.regWr(regWr),.memRead(memRead));
ALU x3(.aluResult(Result), .zeroFlag(zeroFlag),.funct3(funct3),.negFlag(negFlag), .srcA(srcA), .Op_B(Op_B), .aluControl(aluControl));
register_file x4(.srcA(srcA),.srcB(srcB), .result(result), .rs1(rs1), .rs2(rs2), .rd(rd), .regWr(regWr), .rst(rst),.clk(clk),.GCD_Result(Result1));
Data_Memory x5(.dataOut(dataOut),.aluResult(Result), .srcB(srcB), .memRead(memRead), .memWr(memWr), .rst(rst),.clk(clk));
Signextend x6(.immext(immext),.immBitField(immBitField), .immSrc(immSrc));
mux02 #(32) x7(.d0(Result), .d1(dataOut), .y(result), .s(resultSrc));
mux02 #(32) x8(.d0(srcB), .d1(immext), .y(Op_B), .s(aluSrc));
mux02 #(32) x9(.d0(pcPlus4), .d1(pcTarget), .y(pcNext), .s(pcSrc));
adder x10(.a(pc),.b(32'h00000004),.y(pcPlus4));
adder x11(.a(pc),.b(immext),.y(pcTarget));
adress_generator  x12(.pc(pc), .pcNext(pcNext), .clk(clk), .rst(rst));
Instruction_Memory  x13(.pc(pc), .instruction(instruction));

endmodule

module adress_generator (output reg [31:0] pc,input [31:0] pcNext,input clk, input rst);	

	always @ (posedge clk or posedge rst)
	begin
		if(rst==1'b1)
			pc<=0;
		else
			pc<=pcNext;
	end

endmodule


//INSTRUCTION MEMORY MODULE
module Instruction_Memory (input [31:0] pc,output reg [31:0] instruction);

    always@(pc)
        case(pc) 
32'h00: instruction = 32'h00000000;
32'h04: instruction = 32'h00700413;
32'h08: instruction = 32'h00500493;
32'h0c: instruction = 32'h00940c63;
32'h10: instruction = 32'h00944663;
32'h14: instruction = 32'h40940433;
32'h18: instruction = 32'hff5ff06f;
32'h1c: instruction = 32'h408484b3;
32'h20: instruction = 32'hfedff06f;
32'h24: instruction = 32'h0000006f;
default: instruction =32'h00000000;
        endcase

endmodule

//INSTRUCTION FETCH MODULE
module Instruction_fetch (input [31:0] instruction, output reg [4:0]rs1, output reg [4:0]rs2, output reg [4:0]rd, 
output reg[31:7]immBitField,output reg [6:0]opCode,output reg [6:0]funct7,output reg [2:0]funct3);

    always@(*)begin
        opCode      <= instruction[6:0];
        funct3      <= instruction[14:12];
        funct7      <= instruction[31:25];
        immBitField <= instruction[31:7];
        rs1         <= instruction[19:15];
        rs2         <= instruction[24:20];
        rd          <= instruction[11:7];
        end

endmodule

//REGISTER FILE
module register_file(output [31:0] srcA, output [31:0] srcB, input [31:0] result,input rst,clk, 
                     input [4:0] rs1, input [4:0] rs2, input [4:0] rd, input regWr,output  [31:0] GCD_Result);
			
    integer i;	
	reg [31:0] Reg_File [31:0];				
	assign srcA = (rs1 != 0) ? Reg_File[rs1] : 0;
	assign srcB = (rs2 != 0) ? Reg_File[rs2] : 0;
    assign GCD_Result = Reg_File[8];
     
    always @(negedge clk or posedge rst) begin
        if(rst==1'b1)
        for (i = 0; i < 32; i = i + 1)
            Reg_File[i] <= 0;
        else if(regWr==1'b1)
            Reg_File[rd] <=result;
        end	
endmodule

//ALU
module ALU(output reg [31:0] aluResult,output zeroFlag,output negFlag,input [2:0]funct3, input [31:0] srcA, input [31:0] Op_B, input [3:0] aluControl);

    wire [31:0] tmp;
    assign tmp = srcA - Op_B;
    assign zeroFlag = (tmp == 0)?1:0;
    assign negFlag = tmp[31];
    always @(*)begin
        case(aluControl)
            4'b0000 : aluResult = srcA + Op_B;
            4'b0001 : aluResult = srcA - Op_B;
            4'b0010 : aluResult = srcA * Op_B;
            4'b0011 : aluResult = srcA / Op_B;
            4'b0100 : aluResult = srcA << Op_B;
            4'b0110 : aluResult = srcA >> Op_B;
            4'b0111 : aluResult = srcA & Op_B;
            4'b1000 : aluResult = srcA | Op_B;
            4'b1001 : aluResult = srcA ^ Op_B;
            4'b1010 : aluResult = ~(srcA | Op_B);
            default : aluResult = srcA + Op_B;
        endcase
    end
endmodule

//DATA MEMORY
module Data_Memory(output [31:0] dataOut,input memRead,clk,rst ,input [31:0] srcB, input [31:0] aluResult, input memWr);
     integer i;
    reg [31:0] Mem [255:0];			
    assign dataOut = memRead? Mem[aluResult]:32'bx;
    always @(posedge clk) begin
       if (rst == 1'b1) begin
		  for (i=0; i<256; i=i+1) begin
			Mem[i] = 32'b0;
				end
			end
        
        if (memWr)
            Mem[aluResult] = srcB;
        end
       	
endmodule

//SIGN EXTENSION
module Signextend(input [31:7] immBitField,input [1:0] immSrc,output reg[31:0] immext);
    always@(immSrc or immBitField)
      case(immSrc)
               
        2'b00:     immext = {{20{immBitField[31]}}, immBitField[31:20]};                     // I-type		 
        2'b01:     immext = {{20{immBitField[31]}}, immBitField[31:25], immBitField[11:7]};  // S-type (stores) 
        2'b10:      immext = {{20{immBitField[31]}}, immBitField[7],  immBitField[30:25], immBitField[11:8], 1'b0}; // B-type (branches)     // J-type (jal)
	    2'b11:      immext = {{12{immBitField[31]}}, immBitField[19:12],  immBitField[20], immBitField[30:21], 1'b0};// J-type (branches)
           
	    default: 	immext = 32'bx; // undefined
       endcase
endmodule

//MUX
module mux02 #(parameter WIDTH = 32)(input [WIDTH-1:0] d0, d1,input s,output [WIDTH-1:0] y);
     assign y = s ? d1 : d0;
endmodule

//ADDER
module adder(input   [31:0] a, b,output  [31:0] y);
     assign y = a + b;
endmodule

//CONTROLLER
module controller( input zeroFlag,negFlag,input [6:0]opCode,input [2:0]funct3,input [6:0]funct7,output reg pcSrc,output reg [1:0]resultSrc,output reg memWr,output reg aluSrc,output reg regWr,output reg memRead,output reg [1:0] immSrc,output reg [3:0]aluControl);
 
always @(*) begin

    aluSrc <= 1'b0;
    regWr  <= 1'b0;
    resultSrc <=1'b0;
    pcSrc <=1'b0;
    memWr <= 1'b0;
    memRead <=1'b0;
    immSrc <= 2'b00; 
    
    case(opCode)
    7'b0110011 : begin   // R_Type  
    regWr <=1'b1;
    end  
    7'b0000011 : begin  // I_Type load
    
    regWr <=1'b1;
    aluSrc <= 1'b1;
    immSrc <= 2'b00; 
      resultSrc <= 1'b1;
       memRead <=1'b1;
    end
    7'b0010011 : begin  // I-Type 
   
    regWr <=1'b1;
    aluSrc <= 1'b1; 
        
    end
    7'b1100111 : begin  // jalr
    
    regWr <=1'b1; 
    aluSrc <= 1'b1;
    pcSrc = 1'b1;  
    end
    7'b1100011 : begin  // B_Type 
     
    immSrc <= 2'b10;
    case(funct3)
    3'b000: pcSrc <=  zeroFlag; //BEQ
    3'b001: pcSrc <=  ~zeroFlag; //BNE
    3'b100: pcSrc <= negFlag;  //BLT
    3'b101: pcSrc <= ~negFlag || zeroFlag;  
    endcase
    end
     
    7'b0100011 : begin  //S_Type 
    
    memWr <= 1'b1;
    aluSrc <= 1'b1;
    immSrc =2'b01;
    end   
    7'b1101111 : begin  // J_Type 
   
    regWr <=1'b1;
    aluSrc <= 1'b1;
    immSrc <= 2'b11;
    pcSrc = 1'b1;  
    end
   endcase 
  end  
    
    always @(*)
    begin
        casex({opCode,funct3,funct7})
        17'b0110011_000_0000000  :aluControl = 4'b0000;   //ADD
        17'b0010011_000_xxxxxxx  :aluControl = 4'b0000;   //ADDI
        17'b0000011_010_xxxxxxxx : aluControl = 4'b0000;  // LW
        17'b0010011_001_0000000  : aluControl = 4'b0100;  //slli
        17'b0010011_100_0000000  : aluControl = 4'b1010;  // xor
        17'b0010011_101_0000000  : aluControl = 4'b0101;  // shift right
        17'b0010011_110_0000000  : aluControl = 4'b1001;  // or
        17'b0010011_111_0000000  : aluControl = 4'b1000;  //and
        17'b0110011_000_0100000  : aluControl = 4'b0001;   //sub
        17'b1100011_000_xxxxxxx  : aluControl = 4'b0001;   // beq
        endcase
    
    end
endmodule