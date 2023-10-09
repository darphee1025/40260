`timescale 1ns/1ps

`celldefine
module ADFM0HM( CO, S, A, B, CI , VDD, VSS);
inout VDD;
inout VSS;
input A, B, CI;
output CO, S;

   `ifdef FUNCTIONAL  //  functional //

	ADFM0HM_func ADFM0HM_behav_inst(.CO(CO),.S(S),.A(A),.B(B),.CI(CI),.VDD(VDD),.VSS(VSS));

   `else

	ADFM0HM_func ADFM0HM_inst(.CO(CO),.S(S),.A(A),.B(B),.CI(CI),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	if(B===1'b0 && CI===1'b1)
	// comb arc A --> CO
	 (A => CO) = (1.0,1.0);

	if(B===1'b1 && CI===1'b0)
	// comb arc A --> CO
	 (A => CO) = (1.0,1.0);

	ifnone
	// comb arc A --> CO
	 (A => CO) = (1.0,1.0);

	if(A===1'b0 && CI===1'b1)
	// comb arc B --> CO
	 (B => CO) = (1.0,1.0);

	if(A===1'b1 && CI===1'b0)
	// comb arc B --> CO
	 (B => CO) = (1.0,1.0);

	ifnone
	// comb arc B --> CO
	 (B => CO) = (1.0,1.0);

	if(A===1'b0 && B===1'b1)
	// comb arc CI --> CO
	 (CI => CO) = (1.0,1.0);

	if(A===1'b1 && B===1'b0)
	// comb arc CI --> CO
	 (CI => CO) = (1.0,1.0);

	ifnone
	// comb arc CI --> CO
	 (CI => CO) = (1.0,1.0);

	if(B===1'b0 && CI===1'b1)
	// comb arc A --> S
	 (A => S) = (1.0,1.0);

	if(B===1'b1 && CI===1'b0)
	// comb arc A --> S
	 (A => S) = (1.0,1.0);

	ifnone
	// comb arc posedge A --> (S:A)
	 (posedge A => (S:A)) = (1.0,1.0);

	ifnone
	// comb arc negedge A --> (S:A)
	 (negedge A => (S:A)) = (1.0,1.0);

	if(B===1'b0 && CI===1'b0)
	// comb arc A --> S
	 (A => S) = (1.0,1.0);

	if(B===1'b1 && CI===1'b1)
	// comb arc A --> S
	 (A => S) = (1.0,1.0);

	if(A===1'b0 && CI===1'b1)
	// comb arc B --> S
	 (B => S) = (1.0,1.0);

	if(A===1'b1 && CI===1'b0)
	// comb arc B --> S
	 (B => S) = (1.0,1.0);

	ifnone
	// comb arc posedge B --> (S:B)
	 (posedge B => (S:B)) = (1.0,1.0);

	ifnone
	// comb arc negedge B --> (S:B)
	 (negedge B => (S:B)) = (1.0,1.0);

	if(A===1'b0 && CI===1'b0)
	// comb arc B --> S
	 (B => S) = (1.0,1.0);

	if(A===1'b1 && CI===1'b1)
	// comb arc B --> S
	 (B => S) = (1.0,1.0);

	if(A===1'b0 && B===1'b1)
	// comb arc CI --> S
	 (CI => S) = (1.0,1.0);

	if(A===1'b1 && B===1'b0)
	// comb arc CI --> S
	 (CI => S) = (1.0,1.0);

	ifnone
	// comb arc posedge CI --> (S:CI)
	 (posedge CI => (S:CI)) = (1.0,1.0);

	ifnone
	// comb arc negedge CI --> (S:CI)
	 (negedge CI => (S:CI)) = (1.0,1.0);

	if(A===1'b0 && B===1'b0)
	// comb arc CI --> S
	 (CI => S) = (1.0,1.0);

	if(A===1'b1 && B===1'b1)
	// comb arc CI --> S
	 (CI => S) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module ADFM1HM( CO, S, A, B, CI , VDD, VSS);
inout VDD;
inout VSS;
input A, B, CI;
output CO, S;

   `ifdef FUNCTIONAL  //  functional //

	ADFM1HM_func ADFM1HM_behav_inst(.CO(CO),.S(S),.A(A),.B(B),.CI(CI),.VDD(VDD),.VSS(VSS));

   `else

	ADFM1HM_func ADFM1HM_inst(.CO(CO),.S(S),.A(A),.B(B),.CI(CI),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	if(B===1'b0 && CI===1'b1)
	// comb arc A --> CO
	 (A => CO) = (1.0,1.0);

	if(B===1'b1 && CI===1'b0)
	// comb arc A --> CO
	 (A => CO) = (1.0,1.0);

	ifnone
	// comb arc A --> CO
	 (A => CO) = (1.0,1.0);

	if(A===1'b0 && CI===1'b1)
	// comb arc B --> CO
	 (B => CO) = (1.0,1.0);

	if(A===1'b1 && CI===1'b0)
	// comb arc B --> CO
	 (B => CO) = (1.0,1.0);

	ifnone
	// comb arc B --> CO
	 (B => CO) = (1.0,1.0);

	if(A===1'b0 && B===1'b1)
	// comb arc CI --> CO
	 (CI => CO) = (1.0,1.0);

	if(A===1'b1 && B===1'b0)
	// comb arc CI --> CO
	 (CI => CO) = (1.0,1.0);

	ifnone
	// comb arc CI --> CO
	 (CI => CO) = (1.0,1.0);

	if(B===1'b0 && CI===1'b1)
	// comb arc A --> S
	 (A => S) = (1.0,1.0);

	if(B===1'b1 && CI===1'b0)
	// comb arc A --> S
	 (A => S) = (1.0,1.0);

	ifnone
	// comb arc posedge A --> (S:A)
	 (posedge A => (S:A)) = (1.0,1.0);

	ifnone
	// comb arc negedge A --> (S:A)
	 (negedge A => (S:A)) = (1.0,1.0);

	if(B===1'b0 && CI===1'b0)
	// comb arc A --> S
	 (A => S) = (1.0,1.0);

	if(B===1'b1 && CI===1'b1)
	// comb arc A --> S
	 (A => S) = (1.0,1.0);

	if(A===1'b0 && CI===1'b1)
	// comb arc B --> S
	 (B => S) = (1.0,1.0);

	if(A===1'b1 && CI===1'b0)
	// comb arc B --> S
	 (B => S) = (1.0,1.0);

	ifnone
	// comb arc posedge B --> (S:B)
	 (posedge B => (S:B)) = (1.0,1.0);

	ifnone
	// comb arc negedge B --> (S:B)
	 (negedge B => (S:B)) = (1.0,1.0);

	if(A===1'b0 && CI===1'b0)
	// comb arc B --> S
	 (B => S) = (1.0,1.0);

	if(A===1'b1 && CI===1'b1)
	// comb arc B --> S
	 (B => S) = (1.0,1.0);

	if(A===1'b0 && B===1'b1)
	// comb arc CI --> S
	 (CI => S) = (1.0,1.0);

	if(A===1'b1 && B===1'b0)
	// comb arc CI --> S
	 (CI => S) = (1.0,1.0);

	ifnone
	// comb arc posedge CI --> (S:CI)
	 (posedge CI => (S:CI)) = (1.0,1.0);

	ifnone
	// comb arc negedge CI --> (S:CI)
	 (negedge CI => (S:CI)) = (1.0,1.0);

	if(A===1'b0 && B===1'b0)
	// comb arc CI --> S
	 (CI => S) = (1.0,1.0);

	if(A===1'b1 && B===1'b1)
	// comb arc CI --> S
	 (CI => S) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module ADFM2HM( CO, S, A, B, CI , VDD, VSS);
inout VDD;
inout VSS;
input A, B, CI;
output CO, S;

   `ifdef FUNCTIONAL  //  functional //

	ADFM2HM_func ADFM2HM_behav_inst(.CO(CO),.S(S),.A(A),.B(B),.CI(CI),.VDD(VDD),.VSS(VSS));

   `else

	ADFM2HM_func ADFM2HM_inst(.CO(CO),.S(S),.A(A),.B(B),.CI(CI),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	if(B===1'b0 && CI===1'b1)
	// comb arc A --> CO
	 (A => CO) = (1.0,1.0);

	if(B===1'b1 && CI===1'b0)
	// comb arc A --> CO
	 (A => CO) = (1.0,1.0);

	ifnone
	// comb arc A --> CO
	 (A => CO) = (1.0,1.0);

	if(A===1'b0 && CI===1'b1)
	// comb arc B --> CO
	 (B => CO) = (1.0,1.0);

	if(A===1'b1 && CI===1'b0)
	// comb arc B --> CO
	 (B => CO) = (1.0,1.0);

	ifnone
	// comb arc B --> CO
	 (B => CO) = (1.0,1.0);

	if(A===1'b0 && B===1'b1)
	// comb arc CI --> CO
	 (CI => CO) = (1.0,1.0);

	if(A===1'b1 && B===1'b0)
	// comb arc CI --> CO
	 (CI => CO) = (1.0,1.0);

	ifnone
	// comb arc CI --> CO
	 (CI => CO) = (1.0,1.0);

	if(B===1'b0 && CI===1'b1)
	// comb arc A --> S
	 (A => S) = (1.0,1.0);

	if(B===1'b1 && CI===1'b0)
	// comb arc A --> S
	 (A => S) = (1.0,1.0);

	ifnone
	// comb arc posedge A --> (S:A)
	 (posedge A => (S:A)) = (1.0,1.0);

	ifnone
	// comb arc negedge A --> (S:A)
	 (negedge A => (S:A)) = (1.0,1.0);

	if(B===1'b0 && CI===1'b0)
	// comb arc A --> S
	 (A => S) = (1.0,1.0);

	if(B===1'b1 && CI===1'b1)
	// comb arc A --> S
	 (A => S) = (1.0,1.0);

	if(A===1'b0 && CI===1'b1)
	// comb arc B --> S
	 (B => S) = (1.0,1.0);

	if(A===1'b1 && CI===1'b0)
	// comb arc B --> S
	 (B => S) = (1.0,1.0);

	ifnone
	// comb arc posedge B --> (S:B)
	 (posedge B => (S:B)) = (1.0,1.0);

	ifnone
	// comb arc negedge B --> (S:B)
	 (negedge B => (S:B)) = (1.0,1.0);

	if(A===1'b0 && CI===1'b0)
	// comb arc B --> S
	 (B => S) = (1.0,1.0);

	if(A===1'b1 && CI===1'b1)
	// comb arc B --> S
	 (B => S) = (1.0,1.0);

	if(A===1'b0 && B===1'b1)
	// comb arc CI --> S
	 (CI => S) = (1.0,1.0);

	if(A===1'b1 && B===1'b0)
	// comb arc CI --> S
	 (CI => S) = (1.0,1.0);

	ifnone
	// comb arc posedge CI --> (S:CI)
	 (posedge CI => (S:CI)) = (1.0,1.0);

	ifnone
	// comb arc negedge CI --> (S:CI)
	 (negedge CI => (S:CI)) = (1.0,1.0);

	if(A===1'b0 && B===1'b0)
	// comb arc CI --> S
	 (CI => S) = (1.0,1.0);

	if(A===1'b1 && B===1'b1)
	// comb arc CI --> S
	 (CI => S) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module ADFM4HM( CO, S, A, B, CI , VDD, VSS);
inout VDD;
inout VSS;
input A, B, CI;
output CO, S;

   `ifdef FUNCTIONAL  //  functional //

	ADFM4HM_func ADFM4HM_behav_inst(.CO(CO),.S(S),.A(A),.B(B),.CI(CI),.VDD(VDD),.VSS(VSS));

   `else

	ADFM4HM_func ADFM4HM_inst(.CO(CO),.S(S),.A(A),.B(B),.CI(CI),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	if(B===1'b0 && CI===1'b1)
	// comb arc A --> CO
	 (A => CO) = (1.0,1.0);

	if(B===1'b1 && CI===1'b0)
	// comb arc A --> CO
	 (A => CO) = (1.0,1.0);

	ifnone
	// comb arc A --> CO
	 (A => CO) = (1.0,1.0);

	if(A===1'b0 && CI===1'b1)
	// comb arc B --> CO
	 (B => CO) = (1.0,1.0);

	if(A===1'b1 && CI===1'b0)
	// comb arc B --> CO
	 (B => CO) = (1.0,1.0);

	ifnone
	// comb arc B --> CO
	 (B => CO) = (1.0,1.0);

	if(A===1'b0 && B===1'b1)
	// comb arc CI --> CO
	 (CI => CO) = (1.0,1.0);

	if(A===1'b1 && B===1'b0)
	// comb arc CI --> CO
	 (CI => CO) = (1.0,1.0);

	ifnone
	// comb arc CI --> CO
	 (CI => CO) = (1.0,1.0);

	if(B===1'b0 && CI===1'b1)
	// comb arc A --> S
	 (A => S) = (1.0,1.0);

	if(B===1'b1 && CI===1'b0)
	// comb arc A --> S
	 (A => S) = (1.0,1.0);

	ifnone
	// comb arc posedge A --> (S:A)
	 (posedge A => (S:A)) = (1.0,1.0);

	ifnone
	// comb arc negedge A --> (S:A)
	 (negedge A => (S:A)) = (1.0,1.0);

	if(B===1'b0 && CI===1'b0)
	// comb arc A --> S
	 (A => S) = (1.0,1.0);

	if(B===1'b1 && CI===1'b1)
	// comb arc A --> S
	 (A => S) = (1.0,1.0);

	if(A===1'b0 && CI===1'b1)
	// comb arc B --> S
	 (B => S) = (1.0,1.0);

	if(A===1'b1 && CI===1'b0)
	// comb arc B --> S
	 (B => S) = (1.0,1.0);

	ifnone
	// comb arc posedge B --> (S:B)
	 (posedge B => (S:B)) = (1.0,1.0);

	ifnone
	// comb arc negedge B --> (S:B)
	 (negedge B => (S:B)) = (1.0,1.0);

	if(A===1'b0 && CI===1'b0)
	// comb arc B --> S
	 (B => S) = (1.0,1.0);

	if(A===1'b1 && CI===1'b1)
	// comb arc B --> S
	 (B => S) = (1.0,1.0);

	if(A===1'b0 && B===1'b1)
	// comb arc CI --> S
	 (CI => S) = (1.0,1.0);

	if(A===1'b1 && B===1'b0)
	// comb arc CI --> S
	 (CI => S) = (1.0,1.0);

	ifnone
	// comb arc posedge CI --> (S:CI)
	 (posedge CI => (S:CI)) = (1.0,1.0);

	ifnone
	// comb arc negedge CI --> (S:CI)
	 (negedge CI => (S:CI)) = (1.0,1.0);

	if(A===1'b0 && B===1'b0)
	// comb arc CI --> S
	 (CI => S) = (1.0,1.0);

	if(A===1'b1 && B===1'b1)
	// comb arc CI --> S
	 (CI => S) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module ADFM8HM( CO, S, A, B, CI , VDD, VSS);
inout VDD;
inout VSS;
input A, B, CI;
output CO, S;

   `ifdef FUNCTIONAL  //  functional //

	ADFM8HM_func ADFM8HM_behav_inst(.CO(CO),.S(S),.A(A),.B(B),.CI(CI),.VDD(VDD),.VSS(VSS));

   `else

	ADFM8HM_func ADFM8HM_inst(.CO(CO),.S(S),.A(A),.B(B),.CI(CI),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	if(B===1'b0 && CI===1'b1)
	// comb arc A --> CO
	 (A => CO) = (1.0,1.0);

	if(B===1'b1 && CI===1'b0)
	// comb arc A --> CO
	 (A => CO) = (1.0,1.0);

	ifnone
	// comb arc A --> CO
	 (A => CO) = (1.0,1.0);

	if(A===1'b0 && CI===1'b1)
	// comb arc B --> CO
	 (B => CO) = (1.0,1.0);

	if(A===1'b1 && CI===1'b0)
	// comb arc B --> CO
	 (B => CO) = (1.0,1.0);

	ifnone
	// comb arc B --> CO
	 (B => CO) = (1.0,1.0);

	if(A===1'b0 && B===1'b1)
	// comb arc CI --> CO
	 (CI => CO) = (1.0,1.0);

	if(A===1'b1 && B===1'b0)
	// comb arc CI --> CO
	 (CI => CO) = (1.0,1.0);

	ifnone
	// comb arc CI --> CO
	 (CI => CO) = (1.0,1.0);

	if(B===1'b0 && CI===1'b1)
	// comb arc A --> S
	 (A => S) = (1.0,1.0);

	if(B===1'b1 && CI===1'b0)
	// comb arc A --> S
	 (A => S) = (1.0,1.0);

	ifnone
	// comb arc posedge A --> (S:A)
	 (posedge A => (S:A)) = (1.0,1.0);

	ifnone
	// comb arc negedge A --> (S:A)
	 (negedge A => (S:A)) = (1.0,1.0);

	if(B===1'b0 && CI===1'b0)
	// comb arc A --> S
	 (A => S) = (1.0,1.0);

	if(B===1'b1 && CI===1'b1)
	// comb arc A --> S
	 (A => S) = (1.0,1.0);

	if(A===1'b0 && CI===1'b1)
	// comb arc B --> S
	 (B => S) = (1.0,1.0);

	if(A===1'b1 && CI===1'b0)
	// comb arc B --> S
	 (B => S) = (1.0,1.0);

	ifnone
	// comb arc posedge B --> (S:B)
	 (posedge B => (S:B)) = (1.0,1.0);

	ifnone
	// comb arc negedge B --> (S:B)
	 (negedge B => (S:B)) = (1.0,1.0);

	if(A===1'b0 && CI===1'b0)
	// comb arc B --> S
	 (B => S) = (1.0,1.0);

	if(A===1'b1 && CI===1'b1)
	// comb arc B --> S
	 (B => S) = (1.0,1.0);

	if(A===1'b0 && B===1'b1)
	// comb arc CI --> S
	 (CI => S) = (1.0,1.0);

	if(A===1'b1 && B===1'b0)
	// comb arc CI --> S
	 (CI => S) = (1.0,1.0);

	ifnone
	// comb arc posedge CI --> (S:CI)
	 (posedge CI => (S:CI)) = (1.0,1.0);

	ifnone
	// comb arc negedge CI --> (S:CI)
	 (negedge CI => (S:CI)) = (1.0,1.0);

	if(A===1'b0 && B===1'b0)
	// comb arc CI --> S
	 (CI => S) = (1.0,1.0);

	if(A===1'b1 && B===1'b1)
	// comb arc CI --> S
	 (CI => S) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module ADHM0HM( CO, S, A, B , VDD, VSS);
inout VDD;
inout VSS;
input A, B;
output CO, S;

   `ifdef FUNCTIONAL  //  functional //

	ADHM0HM_func ADHM0HM_behav_inst(.CO(CO),.S(S),.A(A),.B(B),.VDD(VDD),.VSS(VSS));

   `else

	ADHM0HM_func ADHM0HM_inst(.CO(CO),.S(S),.A(A),.B(B),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc A --> CO
	 (A => CO) = (1.0,1.0);

	// comb arc B --> CO
	 (B => CO) = (1.0,1.0);

	ifnone
	// comb arc posedge A --> (S:A)
	 (posedge A => (S:A)) = (1.0,1.0);

	ifnone
	// comb arc negedge A --> (S:A)
	 (negedge A => (S:A)) = (1.0,1.0);

	ifnone
	// comb arc posedge B --> (S:B)
	 (posedge B => (S:B)) = (1.0,1.0);

	ifnone
	// comb arc negedge B --> (S:B)
	 (negedge B => (S:B)) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module ADHM1HM( CO, S, A, B , VDD, VSS);
inout VDD;
inout VSS;
input A, B;
output CO, S;

   `ifdef FUNCTIONAL  //  functional //

	ADHM1HM_func ADHM1HM_behav_inst(.CO(CO),.S(S),.A(A),.B(B),.VDD(VDD),.VSS(VSS));

   `else

	ADHM1HM_func ADHM1HM_inst(.CO(CO),.S(S),.A(A),.B(B),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc A --> CO
	 (A => CO) = (1.0,1.0);

	// comb arc B --> CO
	 (B => CO) = (1.0,1.0);

	ifnone
	// comb arc posedge A --> (S:A)
	 (posedge A => (S:A)) = (1.0,1.0);

	ifnone
	// comb arc negedge A --> (S:A)
	 (negedge A => (S:A)) = (1.0,1.0);

	ifnone
	// comb arc posedge B --> (S:B)
	 (posedge B => (S:B)) = (1.0,1.0);

	ifnone
	// comb arc negedge B --> (S:B)
	 (negedge B => (S:B)) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module ADHM2HM( CO, S, A, B , VDD, VSS);
inout VDD;
inout VSS;
input A, B;
output CO, S;

   `ifdef FUNCTIONAL  //  functional //

	ADHM2HM_func ADHM2HM_behav_inst(.CO(CO),.S(S),.A(A),.B(B),.VDD(VDD),.VSS(VSS));

   `else

	ADHM2HM_func ADHM2HM_inst(.CO(CO),.S(S),.A(A),.B(B),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc A --> CO
	 (A => CO) = (1.0,1.0);

	// comb arc B --> CO
	 (B => CO) = (1.0,1.0);

	ifnone
	// comb arc posedge A --> (S:A)
	 (posedge A => (S:A)) = (1.0,1.0);

	ifnone
	// comb arc negedge A --> (S:A)
	 (negedge A => (S:A)) = (1.0,1.0);

	ifnone
	// comb arc posedge B --> (S:B)
	 (posedge B => (S:B)) = (1.0,1.0);

	ifnone
	// comb arc negedge B --> (S:B)
	 (negedge B => (S:B)) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module ADHM4HM( CO, S, A, B , VDD, VSS);
inout VDD;
inout VSS;
input A, B;
output CO, S;

   `ifdef FUNCTIONAL  //  functional //

	ADHM4HM_func ADHM4HM_behav_inst(.CO(CO),.S(S),.A(A),.B(B),.VDD(VDD),.VSS(VSS));

   `else

	ADHM4HM_func ADHM4HM_inst(.CO(CO),.S(S),.A(A),.B(B),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc A --> CO
	 (A => CO) = (1.0,1.0);

	// comb arc B --> CO
	 (B => CO) = (1.0,1.0);

	ifnone
	// comb arc posedge A --> (S:A)
	 (posedge A => (S:A)) = (1.0,1.0);

	ifnone
	// comb arc negedge A --> (S:A)
	 (negedge A => (S:A)) = (1.0,1.0);

	ifnone
	// comb arc posedge B --> (S:B)
	 (posedge B => (S:B)) = (1.0,1.0);

	ifnone
	// comb arc negedge B --> (S:B)
	 (negedge B => (S:B)) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module ADHM8HM( CO, S, A, B , VDD, VSS);
inout VDD;
inout VSS;
input A, B;
output CO, S;

   `ifdef FUNCTIONAL  //  functional //

	ADHM8HM_func ADHM8HM_behav_inst(.CO(CO),.S(S),.A(A),.B(B),.VDD(VDD),.VSS(VSS));

   `else

	ADHM8HM_func ADHM8HM_inst(.CO(CO),.S(S),.A(A),.B(B),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc A --> CO
	 (A => CO) = (1.0,1.0);

	// comb arc B --> CO
	 (B => CO) = (1.0,1.0);

	ifnone
	// comb arc posedge A --> (S:A)
	 (posedge A => (S:A)) = (1.0,1.0);

	ifnone
	// comb arc negedge A --> (S:A)
	 (negedge A => (S:A)) = (1.0,1.0);

	ifnone
	// comb arc posedge B --> (S:B)
	 (posedge B => (S:B)) = (1.0,1.0);

	ifnone
	// comb arc negedge B --> (S:B)
	 (negedge B => (S:B)) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module AN2M0HM( Z, A, B , VDD, VSS);
inout VDD;
inout VSS;
input A, B;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	AN2M0HM_func AN2M0HM_behav_inst(.Z(Z),.A(A),.B(B),.VDD(VDD),.VSS(VSS));

   `else

	AN2M0HM_func AN2M0HM_inst(.Z(Z),.A(A),.B(B),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module AN2M12HM( Z, A, B , VDD, VSS);
inout VDD;
inout VSS;
input A, B;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	AN2M12HM_func AN2M12HM_behav_inst(.Z(Z),.A(A),.B(B),.VDD(VDD),.VSS(VSS));

   `else

	AN2M12HM_func AN2M12HM_inst(.Z(Z),.A(A),.B(B),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module AN2M16HM( Z, A, B , VDD, VSS);
inout VDD;
inout VSS;
input A, B;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	AN2M16HM_func AN2M16HM_behav_inst(.Z(Z),.A(A),.B(B),.VDD(VDD),.VSS(VSS));

   `else

	AN2M16HM_func AN2M16HM_inst(.Z(Z),.A(A),.B(B),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module AN2M1HM( Z, A, B , VDD, VSS);
inout VDD;
inout VSS;
input A, B;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	AN2M1HM_func AN2M1HM_behav_inst(.Z(Z),.A(A),.B(B),.VDD(VDD),.VSS(VSS));

   `else

	AN2M1HM_func AN2M1HM_inst(.Z(Z),.A(A),.B(B),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module AN2M2HM( Z, A, B , VDD, VSS);
inout VDD;
inout VSS;
input A, B;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	AN2M2HM_func AN2M2HM_behav_inst(.Z(Z),.A(A),.B(B),.VDD(VDD),.VSS(VSS));

   `else

	AN2M2HM_func AN2M2HM_inst(.Z(Z),.A(A),.B(B),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module AN2M4HM( Z, A, B , VDD, VSS);
inout VDD;
inout VSS;
input A, B;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	AN2M4HM_func AN2M4HM_behav_inst(.Z(Z),.A(A),.B(B),.VDD(VDD),.VSS(VSS));

   `else

	AN2M4HM_func AN2M4HM_inst(.Z(Z),.A(A),.B(B),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module AN2M6HM( Z, A, B , VDD, VSS);
inout VDD;
inout VSS;
input A, B;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	AN2M6HM_func AN2M6HM_behav_inst(.Z(Z),.A(A),.B(B),.VDD(VDD),.VSS(VSS));

   `else

	AN2M6HM_func AN2M6HM_inst(.Z(Z),.A(A),.B(B),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module AN2M8HM( Z, A, B , VDD, VSS);
inout VDD;
inout VSS;
input A, B;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	AN2M8HM_func AN2M8HM_behav_inst(.Z(Z),.A(A),.B(B),.VDD(VDD),.VSS(VSS));

   `else

	AN2M8HM_func AN2M8HM_inst(.Z(Z),.A(A),.B(B),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module AN3M0HM( Z, A, B, C , VDD, VSS);
inout VDD;
inout VSS;
input A, B, C;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	AN3M0HM_func AN3M0HM_behav_inst(.Z(Z),.A(A),.B(B),.C(C),.VDD(VDD),.VSS(VSS));

   `else

	AN3M0HM_func AN3M0HM_inst(.Z(Z),.A(A),.B(B),.C(C),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module AN3M12HM( Z, A, B, C , VDD, VSS);
inout VDD;
inout VSS;
input A, B, C;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	AN3M12HM_func AN3M12HM_behav_inst(.Z(Z),.A(A),.B(B),.C(C),.VDD(VDD),.VSS(VSS));

   `else

	AN3M12HM_func AN3M12HM_inst(.Z(Z),.A(A),.B(B),.C(C),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module AN3M16HM( Z, A, B, C , VDD, VSS);
inout VDD;
inout VSS;
input A, B, C;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	AN3M16HM_func AN3M16HM_behav_inst(.Z(Z),.A(A),.B(B),.C(C),.VDD(VDD),.VSS(VSS));

   `else

	AN3M16HM_func AN3M16HM_inst(.Z(Z),.A(A),.B(B),.C(C),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module AN3M1HM( Z, A, B, C , VDD, VSS);
inout VDD;
inout VSS;
input A, B, C;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	AN3M1HM_func AN3M1HM_behav_inst(.Z(Z),.A(A),.B(B),.C(C),.VDD(VDD),.VSS(VSS));

   `else

	AN3M1HM_func AN3M1HM_inst(.Z(Z),.A(A),.B(B),.C(C),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module AN3M2HM( Z, A, B, C , VDD, VSS);
inout VDD;
inout VSS;
input A, B, C;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	AN3M2HM_func AN3M2HM_behav_inst(.Z(Z),.A(A),.B(B),.C(C),.VDD(VDD),.VSS(VSS));

   `else

	AN3M2HM_func AN3M2HM_inst(.Z(Z),.A(A),.B(B),.C(C),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module AN3M4HM( Z, A, B, C , VDD, VSS);
inout VDD;
inout VSS;
input A, B, C;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	AN3M4HM_func AN3M4HM_behav_inst(.Z(Z),.A(A),.B(B),.C(C),.VDD(VDD),.VSS(VSS));

   `else

	AN3M4HM_func AN3M4HM_inst(.Z(Z),.A(A),.B(B),.C(C),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module AN3M6HM( Z, A, B, C , VDD, VSS);
inout VDD;
inout VSS;
input A, B, C;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	AN3M6HM_func AN3M6HM_behav_inst(.Z(Z),.A(A),.B(B),.C(C),.VDD(VDD),.VSS(VSS));

   `else

	AN3M6HM_func AN3M6HM_inst(.Z(Z),.A(A),.B(B),.C(C),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module AN3M8HM( Z, A, B, C , VDD, VSS);
inout VDD;
inout VSS;
input A, B, C;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	AN3M8HM_func AN3M8HM_behav_inst(.Z(Z),.A(A),.B(B),.C(C),.VDD(VDD),.VSS(VSS));

   `else

	AN3M8HM_func AN3M8HM_inst(.Z(Z),.A(A),.B(B),.C(C),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module AN4M0HM( Z, A, B, C, D , VDD, VSS);
inout VDD;
inout VSS;
input A, B, C, D;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	AN4M0HM_func AN4M0HM_behav_inst(.Z(Z),.A(A),.B(B),.C(C),.D(D),.VDD(VDD),.VSS(VSS));

   `else

	AN4M0HM_func AN4M0HM_inst(.Z(Z),.A(A),.B(B),.C(C),.D(D),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	// comb arc D --> Z
	 (D => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module AN4M12HM( Z, A, B, C, D , VDD, VSS);
inout VDD;
inout VSS;
input A, B, C, D;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	AN4M12HM_func AN4M12HM_behav_inst(.Z(Z),.A(A),.B(B),.C(C),.D(D),.VDD(VDD),.VSS(VSS));

   `else

	AN4M12HM_func AN4M12HM_inst(.Z(Z),.A(A),.B(B),.C(C),.D(D),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	// comb arc D --> Z
	 (D => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module AN4M16HM( Z, A, B, C, D , VDD, VSS);
inout VDD;
inout VSS;
input A, B, C, D;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	AN4M16HM_func AN4M16HM_behav_inst(.Z(Z),.A(A),.B(B),.C(C),.D(D),.VDD(VDD),.VSS(VSS));

   `else

	AN4M16HM_func AN4M16HM_inst(.Z(Z),.A(A),.B(B),.C(C),.D(D),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	// comb arc D --> Z
	 (D => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module AN4M1HM( Z, A, B, C, D , VDD, VSS);
inout VDD;
inout VSS;
input A, B, C, D;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	AN4M1HM_func AN4M1HM_behav_inst(.Z(Z),.A(A),.B(B),.C(C),.D(D),.VDD(VDD),.VSS(VSS));

   `else

	AN4M1HM_func AN4M1HM_inst(.Z(Z),.A(A),.B(B),.C(C),.D(D),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	// comb arc D --> Z
	 (D => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module AN4M2HM( Z, A, B, C, D , VDD, VSS);
inout VDD;
inout VSS;
input A, B, C, D;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	AN4M2HM_func AN4M2HM_behav_inst(.Z(Z),.A(A),.B(B),.C(C),.D(D),.VDD(VDD),.VSS(VSS));

   `else

	AN4M2HM_func AN4M2HM_inst(.Z(Z),.A(A),.B(B),.C(C),.D(D),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	// comb arc D --> Z
	 (D => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module AN4M4HM( Z, A, B, C, D , VDD, VSS);
inout VDD;
inout VSS;
input A, B, C, D;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	AN4M4HM_func AN4M4HM_behav_inst(.Z(Z),.A(A),.B(B),.C(C),.D(D),.VDD(VDD),.VSS(VSS));

   `else

	AN4M4HM_func AN4M4HM_inst(.Z(Z),.A(A),.B(B),.C(C),.D(D),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	// comb arc D --> Z
	 (D => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module AN4M6HM( Z, A, B, C, D , VDD, VSS);
inout VDD;
inout VSS;
input A, B, C, D;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	AN4M6HM_func AN4M6HM_behav_inst(.Z(Z),.A(A),.B(B),.C(C),.D(D),.VDD(VDD),.VSS(VSS));

   `else

	AN4M6HM_func AN4M6HM_inst(.Z(Z),.A(A),.B(B),.C(C),.D(D),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	// comb arc D --> Z
	 (D => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module AN4M8HM( Z, A, B, C, D , VDD, VSS);
inout VDD;
inout VSS;
input A, B, C, D;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	AN4M8HM_func AN4M8HM_behav_inst(.Z(Z),.A(A),.B(B),.C(C),.D(D),.VDD(VDD),.VSS(VSS));

   `else

	AN4M8HM_func AN4M8HM_inst(.Z(Z),.A(A),.B(B),.C(C),.D(D),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	// comb arc D --> Z
	 (D => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module ANTHM( A );
input A;

endmodule
`endcelldefine

`celldefine
module AO211M0HM( Z, A1, A2, B, C , VDD, VSS);
inout VDD;
inout VSS;
input A1, A2, B, C;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	AO211M0HM_func AO211M0HM_behav_inst(.Z(Z),.A1(A1),.A2(A2),.B(B),.C(C),.VDD(VDD),.VSS(VSS));

   `else

	AO211M0HM_func AO211M0HM_inst(.Z(Z),.A1(A1),.A2(A2),.B(B),.C(C),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	ifnone
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	ifnone
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module AO211M1HM( Z, A1, A2, B, C , VDD, VSS);
inout VDD;
inout VSS;
input A1, A2, B, C;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	AO211M1HM_func AO211M1HM_behav_inst(.Z(Z),.A1(A1),.A2(A2),.B(B),.C(C),.VDD(VDD),.VSS(VSS));

   `else

	AO211M1HM_func AO211M1HM_inst(.Z(Z),.A1(A1),.A2(A2),.B(B),.C(C),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	ifnone
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	ifnone
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module AO211M2HM( Z, A1, A2, B, C , VDD, VSS);
inout VDD;
inout VSS;
input A1, A2, B, C;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	AO211M2HM_func AO211M2HM_behav_inst(.Z(Z),.A1(A1),.A2(A2),.B(B),.C(C),.VDD(VDD),.VSS(VSS));

   `else

	AO211M2HM_func AO211M2HM_inst(.Z(Z),.A1(A1),.A2(A2),.B(B),.C(C),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	ifnone
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	ifnone
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module AO211M4HM( Z, A1, A2, B, C , VDD, VSS);
inout VDD;
inout VSS;
input A1, A2, B, C;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	AO211M4HM_func AO211M4HM_behav_inst(.Z(Z),.A1(A1),.A2(A2),.B(B),.C(C),.VDD(VDD),.VSS(VSS));

   `else

	AO211M4HM_func AO211M4HM_inst(.Z(Z),.A1(A1),.A2(A2),.B(B),.C(C),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	ifnone
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	ifnone
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module AO211M8HM( Z, A1, A2, B, C , VDD, VSS);
inout VDD;
inout VSS;
input A1, A2, B, C;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	AO211M8HM_func AO211M8HM_behav_inst(.Z(Z),.A1(A1),.A2(A2),.B(B),.C(C),.VDD(VDD),.VSS(VSS));

   `else

	AO211M8HM_func AO211M8HM_inst(.Z(Z),.A1(A1),.A2(A2),.B(B),.C(C),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	ifnone
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	ifnone
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module AO21M0HM( Z, A1, A2, B , VDD, VSS);
inout VDD;
inout VSS;
input A1, A2, B;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	AO21M0HM_func AO21M0HM_behav_inst(.Z(Z),.A1(A1),.A2(A2),.B(B),.VDD(VDD),.VSS(VSS));

   `else

	AO21M0HM_func AO21M0HM_inst(.Z(Z),.A1(A1),.A2(A2),.B(B),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	ifnone
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module AO21M1HM( Z, A1, A2, B , VDD, VSS);
inout VDD;
inout VSS;
input A1, A2, B;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	AO21M1HM_func AO21M1HM_behav_inst(.Z(Z),.A1(A1),.A2(A2),.B(B),.VDD(VDD),.VSS(VSS));

   `else

	AO21M1HM_func AO21M1HM_inst(.Z(Z),.A1(A1),.A2(A2),.B(B),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	ifnone
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module AO21M2HM( Z, A1, A2, B , VDD, VSS);
inout VDD;
inout VSS;
input A1, A2, B;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	AO21M2HM_func AO21M2HM_behav_inst(.Z(Z),.A1(A1),.A2(A2),.B(B),.VDD(VDD),.VSS(VSS));

   `else

	AO21M2HM_func AO21M2HM_inst(.Z(Z),.A1(A1),.A2(A2),.B(B),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	ifnone
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module AO21M4HM( Z, A1, A2, B , VDD, VSS);
inout VDD;
inout VSS;
input A1, A2, B;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	AO21M4HM_func AO21M4HM_behav_inst(.Z(Z),.A1(A1),.A2(A2),.B(B),.VDD(VDD),.VSS(VSS));

   `else

	AO21M4HM_func AO21M4HM_inst(.Z(Z),.A1(A1),.A2(A2),.B(B),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	ifnone
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module AO21M8HM( Z, A1, A2, B , VDD, VSS);
inout VDD;
inout VSS;
input A1, A2, B;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	AO21M8HM_func AO21M8HM_behav_inst(.Z(Z),.A1(A1),.A2(A2),.B(B),.VDD(VDD),.VSS(VSS));

   `else

	AO21M8HM_func AO21M8HM_inst(.Z(Z),.A1(A1),.A2(A2),.B(B),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	ifnone
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module AO221M0HM( Z, A1, A2, B1, B2, C , VDD, VSS);
inout VDD;
inout VSS;
input A1, A2, B1, B2, C;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	AO221M0HM_func AO221M0HM_behav_inst(.Z(Z),.A1(A1),.A2(A2),.B1(B1),.B2(B2),.C(C),.VDD(VDD),.VSS(VSS));

   `else

	AO221M0HM_func AO221M0HM_inst(.Z(Z),.A1(A1),.A2(A2),.B1(B1),.B2(B2),.C(C),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	if(B1===1'b0 && B2===1'b0)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b1)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b0)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	ifnone
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b0)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b1)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b0)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	ifnone
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	ifnone
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	ifnone
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && B1===1'b0 && B2===1'b0)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && B1===1'b0 && B2===1'b1)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && B1===1'b1 && B2===1'b0)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && B1===1'b0 && B2===1'b0)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && B1===1'b0 && B2===1'b1)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && B1===1'b1 && B2===1'b0)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && B1===1'b0 && B2===1'b0)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && B1===1'b0 && B2===1'b1)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && B1===1'b1 && B2===1'b0)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	ifnone
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module AO221M1HM( Z, A1, A2, B1, B2, C , VDD, VSS);
inout VDD;
inout VSS;
input A1, A2, B1, B2, C;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	AO221M1HM_func AO221M1HM_behav_inst(.Z(Z),.A1(A1),.A2(A2),.B1(B1),.B2(B2),.C(C),.VDD(VDD),.VSS(VSS));

   `else

	AO221M1HM_func AO221M1HM_inst(.Z(Z),.A1(A1),.A2(A2),.B1(B1),.B2(B2),.C(C),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	if(B1===1'b0 && B2===1'b0)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b1)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b0)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	ifnone
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b0)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b1)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b0)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	ifnone
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	ifnone
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	ifnone
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && B1===1'b0 && B2===1'b0)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && B1===1'b0 && B2===1'b1)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && B1===1'b1 && B2===1'b0)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && B1===1'b0 && B2===1'b0)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && B1===1'b0 && B2===1'b1)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && B1===1'b1 && B2===1'b0)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && B1===1'b0 && B2===1'b0)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && B1===1'b0 && B2===1'b1)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && B1===1'b1 && B2===1'b0)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	ifnone
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module AO221M2HM( Z, A1, A2, B1, B2, C , VDD, VSS);
inout VDD;
inout VSS;
input A1, A2, B1, B2, C;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	AO221M2HM_func AO221M2HM_behav_inst(.Z(Z),.A1(A1),.A2(A2),.B1(B1),.B2(B2),.C(C),.VDD(VDD),.VSS(VSS));

   `else

	AO221M2HM_func AO221M2HM_inst(.Z(Z),.A1(A1),.A2(A2),.B1(B1),.B2(B2),.C(C),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	if(B1===1'b0 && B2===1'b0)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b1)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b0)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	ifnone
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b0)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b1)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b0)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	ifnone
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	ifnone
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	ifnone
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && B1===1'b0 && B2===1'b0)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && B1===1'b0 && B2===1'b1)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && B1===1'b1 && B2===1'b0)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && B1===1'b0 && B2===1'b0)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && B1===1'b0 && B2===1'b1)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && B1===1'b1 && B2===1'b0)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && B1===1'b0 && B2===1'b0)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && B1===1'b0 && B2===1'b1)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && B1===1'b1 && B2===1'b0)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	ifnone
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module AO221M4HM( Z, A1, A2, B1, B2, C , VDD, VSS);
inout VDD;
inout VSS;
input A1, A2, B1, B2, C;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	AO221M4HM_func AO221M4HM_behav_inst(.Z(Z),.A1(A1),.A2(A2),.B1(B1),.B2(B2),.C(C),.VDD(VDD),.VSS(VSS));

   `else

	AO221M4HM_func AO221M4HM_inst(.Z(Z),.A1(A1),.A2(A2),.B1(B1),.B2(B2),.C(C),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	if(B1===1'b0 && B2===1'b0)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b1)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b0)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	ifnone
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b0)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b1)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b0)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	ifnone
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	ifnone
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	ifnone
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && B1===1'b0 && B2===1'b0)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && B1===1'b0 && B2===1'b1)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && B1===1'b1 && B2===1'b0)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && B1===1'b0 && B2===1'b0)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && B1===1'b0 && B2===1'b1)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && B1===1'b1 && B2===1'b0)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && B1===1'b0 && B2===1'b0)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && B1===1'b0 && B2===1'b1)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && B1===1'b1 && B2===1'b0)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	ifnone
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module AO221M8HM( Z, A1, A2, B1, B2, C , VDD, VSS);
inout VDD;
inout VSS;
input A1, A2, B1, B2, C;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	AO221M8HM_func AO221M8HM_behav_inst(.Z(Z),.A1(A1),.A2(A2),.B1(B1),.B2(B2),.C(C),.VDD(VDD),.VSS(VSS));

   `else

	AO221M8HM_func AO221M8HM_inst(.Z(Z),.A1(A1),.A2(A2),.B1(B1),.B2(B2),.C(C),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	if(B1===1'b0 && B2===1'b0)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b1)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b0)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	ifnone
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b0)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b1)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b0)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	ifnone
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	ifnone
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	ifnone
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && B1===1'b0 && B2===1'b0)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && B1===1'b0 && B2===1'b1)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && B1===1'b1 && B2===1'b0)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && B1===1'b0 && B2===1'b0)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && B1===1'b0 && B2===1'b1)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && B1===1'b1 && B2===1'b0)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && B1===1'b0 && B2===1'b0)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && B1===1'b0 && B2===1'b1)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && B1===1'b1 && B2===1'b0)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	ifnone
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module AO222M0HM( Z, A1, A2, B1, B2, C1, C2 , VDD, VSS);
inout VDD;
inout VSS;
input A1, A2, B1, B2, C1, C2;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	AO222M0HM_func AO222M0HM_behav_inst(.Z(Z),.A1(A1),.A2(A2),.B1(B1),.B2(B2),.C1(C1),.C2(C2),.VDD(VDD),.VSS(VSS));

   `else

	AO222M0HM_func AO222M0HM_inst(.Z(Z),.A1(A1),.A2(A2),.B1(B1),.B2(B2),.C1(C1),.C2(C2),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	if(B1===1'b0 && B2===1'b0 && C1===1'b0 && C2===1'b0)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b0 && C1===1'b0 && C2===1'b1)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b0 && C1===1'b1 && C2===1'b0)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b1 && C1===1'b0 && C2===1'b0)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b1 && C1===1'b0 && C2===1'b1)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b1 && C1===1'b1 && C2===1'b0)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b0 && C1===1'b0 && C2===1'b0)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b0 && C1===1'b0 && C2===1'b1)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b0 && C1===1'b1 && C2===1'b0)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	ifnone
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b0 && C1===1'b0 && C2===1'b0)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b0 && C1===1'b0 && C2===1'b1)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b0 && C1===1'b1 && C2===1'b0)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b1 && C1===1'b0 && C2===1'b0)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b1 && C1===1'b0 && C2===1'b1)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b1 && C1===1'b1 && C2===1'b0)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b0 && C1===1'b0 && C2===1'b0)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b0 && C1===1'b0 && C2===1'b1)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b0 && C1===1'b1 && C2===1'b0)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	ifnone
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && C1===1'b0 && C2===1'b0)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && C1===1'b0 && C2===1'b1)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && C1===1'b1 && C2===1'b0)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && C1===1'b0 && C2===1'b0)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && C1===1'b0 && C2===1'b1)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && C1===1'b1 && C2===1'b0)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && C1===1'b0 && C2===1'b0)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && C1===1'b0 && C2===1'b1)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && C1===1'b1 && C2===1'b0)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	ifnone
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && C1===1'b0 && C2===1'b0)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && C1===1'b0 && C2===1'b1)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && C1===1'b1 && C2===1'b0)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && C1===1'b0 && C2===1'b0)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && C1===1'b0 && C2===1'b1)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && C1===1'b1 && C2===1'b0)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && C1===1'b0 && C2===1'b0)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && C1===1'b0 && C2===1'b1)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && C1===1'b1 && C2===1'b0)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	ifnone
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && B1===1'b0 && B2===1'b0)
	// comb arc C1 --> Z
	 (C1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && B1===1'b0 && B2===1'b1)
	// comb arc C1 --> Z
	 (C1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && B1===1'b1 && B2===1'b0)
	// comb arc C1 --> Z
	 (C1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && B1===1'b0 && B2===1'b0)
	// comb arc C1 --> Z
	 (C1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && B1===1'b0 && B2===1'b1)
	// comb arc C1 --> Z
	 (C1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && B1===1'b1 && B2===1'b0)
	// comb arc C1 --> Z
	 (C1 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && B1===1'b0 && B2===1'b0)
	// comb arc C1 --> Z
	 (C1 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && B1===1'b0 && B2===1'b1)
	// comb arc C1 --> Z
	 (C1 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && B1===1'b1 && B2===1'b0)
	// comb arc C1 --> Z
	 (C1 => Z) = (1.0,1.0);

	ifnone
	// comb arc C1 --> Z
	 (C1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && B1===1'b0 && B2===1'b0)
	// comb arc C2 --> Z
	 (C2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && B1===1'b0 && B2===1'b1)
	// comb arc C2 --> Z
	 (C2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && B1===1'b1 && B2===1'b0)
	// comb arc C2 --> Z
	 (C2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && B1===1'b0 && B2===1'b0)
	// comb arc C2 --> Z
	 (C2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && B1===1'b0 && B2===1'b1)
	// comb arc C2 --> Z
	 (C2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && B1===1'b1 && B2===1'b0)
	// comb arc C2 --> Z
	 (C2 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && B1===1'b0 && B2===1'b0)
	// comb arc C2 --> Z
	 (C2 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && B1===1'b0 && B2===1'b1)
	// comb arc C2 --> Z
	 (C2 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && B1===1'b1 && B2===1'b0)
	// comb arc C2 --> Z
	 (C2 => Z) = (1.0,1.0);

	ifnone
	// comb arc C2 --> Z
	 (C2 => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module AO222M1HM( Z, A1, A2, B1, B2, C1, C2 , VDD, VSS);
inout VDD;
inout VSS;
input A1, A2, B1, B2, C1, C2;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	AO222M1HM_func AO222M1HM_behav_inst(.Z(Z),.A1(A1),.A2(A2),.B1(B1),.B2(B2),.C1(C1),.C2(C2),.VDD(VDD),.VSS(VSS));

   `else

	AO222M1HM_func AO222M1HM_inst(.Z(Z),.A1(A1),.A2(A2),.B1(B1),.B2(B2),.C1(C1),.C2(C2),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	if(B1===1'b0 && B2===1'b0 && C1===1'b0 && C2===1'b0)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b0 && C1===1'b0 && C2===1'b1)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b0 && C1===1'b1 && C2===1'b0)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b1 && C1===1'b0 && C2===1'b0)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b1 && C1===1'b0 && C2===1'b1)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b1 && C1===1'b1 && C2===1'b0)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b0 && C1===1'b0 && C2===1'b0)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b0 && C1===1'b0 && C2===1'b1)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b0 && C1===1'b1 && C2===1'b0)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	ifnone
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b0 && C1===1'b0 && C2===1'b0)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b0 && C1===1'b0 && C2===1'b1)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b0 && C1===1'b1 && C2===1'b0)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b1 && C1===1'b0 && C2===1'b0)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b1 && C1===1'b0 && C2===1'b1)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b1 && C1===1'b1 && C2===1'b0)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b0 && C1===1'b0 && C2===1'b0)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b0 && C1===1'b0 && C2===1'b1)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b0 && C1===1'b1 && C2===1'b0)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	ifnone
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && C1===1'b0 && C2===1'b0)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && C1===1'b0 && C2===1'b1)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && C1===1'b1 && C2===1'b0)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && C1===1'b0 && C2===1'b0)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && C1===1'b0 && C2===1'b1)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && C1===1'b1 && C2===1'b0)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && C1===1'b0 && C2===1'b0)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && C1===1'b0 && C2===1'b1)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && C1===1'b1 && C2===1'b0)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	ifnone
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && C1===1'b0 && C2===1'b0)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && C1===1'b0 && C2===1'b1)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && C1===1'b1 && C2===1'b0)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && C1===1'b0 && C2===1'b0)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && C1===1'b0 && C2===1'b1)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && C1===1'b1 && C2===1'b0)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && C1===1'b0 && C2===1'b0)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && C1===1'b0 && C2===1'b1)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && C1===1'b1 && C2===1'b0)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	ifnone
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && B1===1'b0 && B2===1'b0)
	// comb arc C1 --> Z
	 (C1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && B1===1'b0 && B2===1'b1)
	// comb arc C1 --> Z
	 (C1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && B1===1'b1 && B2===1'b0)
	// comb arc C1 --> Z
	 (C1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && B1===1'b0 && B2===1'b0)
	// comb arc C1 --> Z
	 (C1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && B1===1'b0 && B2===1'b1)
	// comb arc C1 --> Z
	 (C1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && B1===1'b1 && B2===1'b0)
	// comb arc C1 --> Z
	 (C1 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && B1===1'b0 && B2===1'b0)
	// comb arc C1 --> Z
	 (C1 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && B1===1'b0 && B2===1'b1)
	// comb arc C1 --> Z
	 (C1 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && B1===1'b1 && B2===1'b0)
	// comb arc C1 --> Z
	 (C1 => Z) = (1.0,1.0);

	ifnone
	// comb arc C1 --> Z
	 (C1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && B1===1'b0 && B2===1'b0)
	// comb arc C2 --> Z
	 (C2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && B1===1'b0 && B2===1'b1)
	// comb arc C2 --> Z
	 (C2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && B1===1'b1 && B2===1'b0)
	// comb arc C2 --> Z
	 (C2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && B1===1'b0 && B2===1'b0)
	// comb arc C2 --> Z
	 (C2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && B1===1'b0 && B2===1'b1)
	// comb arc C2 --> Z
	 (C2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && B1===1'b1 && B2===1'b0)
	// comb arc C2 --> Z
	 (C2 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && B1===1'b0 && B2===1'b0)
	// comb arc C2 --> Z
	 (C2 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && B1===1'b0 && B2===1'b1)
	// comb arc C2 --> Z
	 (C2 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && B1===1'b1 && B2===1'b0)
	// comb arc C2 --> Z
	 (C2 => Z) = (1.0,1.0);

	ifnone
	// comb arc C2 --> Z
	 (C2 => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module AO222M2HM( Z, A1, A2, B1, B2, C1, C2 , VDD, VSS);
inout VDD;
inout VSS;
input A1, A2, B1, B2, C1, C2;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	AO222M2HM_func AO222M2HM_behav_inst(.Z(Z),.A1(A1),.A2(A2),.B1(B1),.B2(B2),.C1(C1),.C2(C2),.VDD(VDD),.VSS(VSS));

   `else

	AO222M2HM_func AO222M2HM_inst(.Z(Z),.A1(A1),.A2(A2),.B1(B1),.B2(B2),.C1(C1),.C2(C2),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	if(B1===1'b0 && B2===1'b0 && C1===1'b0 && C2===1'b0)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b0 && C1===1'b0 && C2===1'b1)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b0 && C1===1'b1 && C2===1'b0)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b1 && C1===1'b0 && C2===1'b0)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b1 && C1===1'b0 && C2===1'b1)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b1 && C1===1'b1 && C2===1'b0)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b0 && C1===1'b0 && C2===1'b0)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b0 && C1===1'b0 && C2===1'b1)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b0 && C1===1'b1 && C2===1'b0)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	ifnone
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b0 && C1===1'b0 && C2===1'b0)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b0 && C1===1'b0 && C2===1'b1)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b0 && C1===1'b1 && C2===1'b0)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b1 && C1===1'b0 && C2===1'b0)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b1 && C1===1'b0 && C2===1'b1)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b1 && C1===1'b1 && C2===1'b0)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b0 && C1===1'b0 && C2===1'b0)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b0 && C1===1'b0 && C2===1'b1)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b0 && C1===1'b1 && C2===1'b0)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	ifnone
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && C1===1'b0 && C2===1'b0)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && C1===1'b0 && C2===1'b1)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && C1===1'b1 && C2===1'b0)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && C1===1'b0 && C2===1'b0)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && C1===1'b0 && C2===1'b1)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && C1===1'b1 && C2===1'b0)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && C1===1'b0 && C2===1'b0)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && C1===1'b0 && C2===1'b1)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && C1===1'b1 && C2===1'b0)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	ifnone
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && C1===1'b0 && C2===1'b0)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && C1===1'b0 && C2===1'b1)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && C1===1'b1 && C2===1'b0)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && C1===1'b0 && C2===1'b0)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && C1===1'b0 && C2===1'b1)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && C1===1'b1 && C2===1'b0)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && C1===1'b0 && C2===1'b0)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && C1===1'b0 && C2===1'b1)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && C1===1'b1 && C2===1'b0)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	ifnone
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && B1===1'b0 && B2===1'b0)
	// comb arc C1 --> Z
	 (C1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && B1===1'b0 && B2===1'b1)
	// comb arc C1 --> Z
	 (C1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && B1===1'b1 && B2===1'b0)
	// comb arc C1 --> Z
	 (C1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && B1===1'b0 && B2===1'b0)
	// comb arc C1 --> Z
	 (C1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && B1===1'b0 && B2===1'b1)
	// comb arc C1 --> Z
	 (C1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && B1===1'b1 && B2===1'b0)
	// comb arc C1 --> Z
	 (C1 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && B1===1'b0 && B2===1'b0)
	// comb arc C1 --> Z
	 (C1 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && B1===1'b0 && B2===1'b1)
	// comb arc C1 --> Z
	 (C1 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && B1===1'b1 && B2===1'b0)
	// comb arc C1 --> Z
	 (C1 => Z) = (1.0,1.0);

	ifnone
	// comb arc C1 --> Z
	 (C1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && B1===1'b0 && B2===1'b0)
	// comb arc C2 --> Z
	 (C2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && B1===1'b0 && B2===1'b1)
	// comb arc C2 --> Z
	 (C2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && B1===1'b1 && B2===1'b0)
	// comb arc C2 --> Z
	 (C2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && B1===1'b0 && B2===1'b0)
	// comb arc C2 --> Z
	 (C2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && B1===1'b0 && B2===1'b1)
	// comb arc C2 --> Z
	 (C2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && B1===1'b1 && B2===1'b0)
	// comb arc C2 --> Z
	 (C2 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && B1===1'b0 && B2===1'b0)
	// comb arc C2 --> Z
	 (C2 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && B1===1'b0 && B2===1'b1)
	// comb arc C2 --> Z
	 (C2 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && B1===1'b1 && B2===1'b0)
	// comb arc C2 --> Z
	 (C2 => Z) = (1.0,1.0);

	ifnone
	// comb arc C2 --> Z
	 (C2 => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module AO222M4HM( Z, A1, A2, B1, B2, C1, C2 , VDD, VSS);
inout VDD;
inout VSS;
input A1, A2, B1, B2, C1, C2;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	AO222M4HM_func AO222M4HM_behav_inst(.Z(Z),.A1(A1),.A2(A2),.B1(B1),.B2(B2),.C1(C1),.C2(C2),.VDD(VDD),.VSS(VSS));

   `else

	AO222M4HM_func AO222M4HM_inst(.Z(Z),.A1(A1),.A2(A2),.B1(B1),.B2(B2),.C1(C1),.C2(C2),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	if(B1===1'b0 && B2===1'b0 && C1===1'b0 && C2===1'b0)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b0 && C1===1'b0 && C2===1'b1)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b0 && C1===1'b1 && C2===1'b0)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b1 && C1===1'b0 && C2===1'b0)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b1 && C1===1'b0 && C2===1'b1)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b1 && C1===1'b1 && C2===1'b0)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b0 && C1===1'b0 && C2===1'b0)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b0 && C1===1'b0 && C2===1'b1)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b0 && C1===1'b1 && C2===1'b0)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	ifnone
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b0 && C1===1'b0 && C2===1'b0)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b0 && C1===1'b0 && C2===1'b1)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b0 && C1===1'b1 && C2===1'b0)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b1 && C1===1'b0 && C2===1'b0)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b1 && C1===1'b0 && C2===1'b1)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b1 && C1===1'b1 && C2===1'b0)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b0 && C1===1'b0 && C2===1'b0)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b0 && C1===1'b0 && C2===1'b1)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b0 && C1===1'b1 && C2===1'b0)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	ifnone
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && C1===1'b0 && C2===1'b0)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && C1===1'b0 && C2===1'b1)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && C1===1'b1 && C2===1'b0)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && C1===1'b0 && C2===1'b0)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && C1===1'b0 && C2===1'b1)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && C1===1'b1 && C2===1'b0)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && C1===1'b0 && C2===1'b0)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && C1===1'b0 && C2===1'b1)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && C1===1'b1 && C2===1'b0)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	ifnone
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && C1===1'b0 && C2===1'b0)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && C1===1'b0 && C2===1'b1)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && C1===1'b1 && C2===1'b0)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && C1===1'b0 && C2===1'b0)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && C1===1'b0 && C2===1'b1)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && C1===1'b1 && C2===1'b0)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && C1===1'b0 && C2===1'b0)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && C1===1'b0 && C2===1'b1)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && C1===1'b1 && C2===1'b0)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	ifnone
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && B1===1'b0 && B2===1'b0)
	// comb arc C1 --> Z
	 (C1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && B1===1'b0 && B2===1'b1)
	// comb arc C1 --> Z
	 (C1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && B1===1'b1 && B2===1'b0)
	// comb arc C1 --> Z
	 (C1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && B1===1'b0 && B2===1'b0)
	// comb arc C1 --> Z
	 (C1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && B1===1'b0 && B2===1'b1)
	// comb arc C1 --> Z
	 (C1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && B1===1'b1 && B2===1'b0)
	// comb arc C1 --> Z
	 (C1 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && B1===1'b0 && B2===1'b0)
	// comb arc C1 --> Z
	 (C1 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && B1===1'b0 && B2===1'b1)
	// comb arc C1 --> Z
	 (C1 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && B1===1'b1 && B2===1'b0)
	// comb arc C1 --> Z
	 (C1 => Z) = (1.0,1.0);

	ifnone
	// comb arc C1 --> Z
	 (C1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && B1===1'b0 && B2===1'b0)
	// comb arc C2 --> Z
	 (C2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && B1===1'b0 && B2===1'b1)
	// comb arc C2 --> Z
	 (C2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && B1===1'b1 && B2===1'b0)
	// comb arc C2 --> Z
	 (C2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && B1===1'b0 && B2===1'b0)
	// comb arc C2 --> Z
	 (C2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && B1===1'b0 && B2===1'b1)
	// comb arc C2 --> Z
	 (C2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && B1===1'b1 && B2===1'b0)
	// comb arc C2 --> Z
	 (C2 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && B1===1'b0 && B2===1'b0)
	// comb arc C2 --> Z
	 (C2 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && B1===1'b0 && B2===1'b1)
	// comb arc C2 --> Z
	 (C2 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && B1===1'b1 && B2===1'b0)
	// comb arc C2 --> Z
	 (C2 => Z) = (1.0,1.0);

	ifnone
	// comb arc C2 --> Z
	 (C2 => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module AO222M8HM( Z, A1, A2, B1, B2, C1, C2 , VDD, VSS);
inout VDD;
inout VSS;
input A1, A2, B1, B2, C1, C2;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	AO222M8HM_func AO222M8HM_behav_inst(.Z(Z),.A1(A1),.A2(A2),.B1(B1),.B2(B2),.C1(C1),.C2(C2),.VDD(VDD),.VSS(VSS));

   `else

	AO222M8HM_func AO222M8HM_inst(.Z(Z),.A1(A1),.A2(A2),.B1(B1),.B2(B2),.C1(C1),.C2(C2),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	if(B1===1'b0 && B2===1'b0 && C1===1'b0 && C2===1'b0)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b0 && C1===1'b0 && C2===1'b1)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b0 && C1===1'b1 && C2===1'b0)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b1 && C1===1'b0 && C2===1'b0)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b1 && C1===1'b0 && C2===1'b1)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b1 && C1===1'b1 && C2===1'b0)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b0 && C1===1'b0 && C2===1'b0)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b0 && C1===1'b0 && C2===1'b1)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b0 && C1===1'b1 && C2===1'b0)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	ifnone
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b0 && C1===1'b0 && C2===1'b0)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b0 && C1===1'b0 && C2===1'b1)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b0 && C1===1'b1 && C2===1'b0)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b1 && C1===1'b0 && C2===1'b0)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b1 && C1===1'b0 && C2===1'b1)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b1 && C1===1'b1 && C2===1'b0)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b0 && C1===1'b0 && C2===1'b0)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b0 && C1===1'b0 && C2===1'b1)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b0 && C1===1'b1 && C2===1'b0)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	ifnone
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && C1===1'b0 && C2===1'b0)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && C1===1'b0 && C2===1'b1)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && C1===1'b1 && C2===1'b0)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && C1===1'b0 && C2===1'b0)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && C1===1'b0 && C2===1'b1)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && C1===1'b1 && C2===1'b0)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && C1===1'b0 && C2===1'b0)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && C1===1'b0 && C2===1'b1)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && C1===1'b1 && C2===1'b0)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	ifnone
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && C1===1'b0 && C2===1'b0)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && C1===1'b0 && C2===1'b1)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && C1===1'b1 && C2===1'b0)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && C1===1'b0 && C2===1'b0)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && C1===1'b0 && C2===1'b1)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && C1===1'b1 && C2===1'b0)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && C1===1'b0 && C2===1'b0)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && C1===1'b0 && C2===1'b1)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && C1===1'b1 && C2===1'b0)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	ifnone
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && B1===1'b0 && B2===1'b0)
	// comb arc C1 --> Z
	 (C1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && B1===1'b0 && B2===1'b1)
	// comb arc C1 --> Z
	 (C1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && B1===1'b1 && B2===1'b0)
	// comb arc C1 --> Z
	 (C1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && B1===1'b0 && B2===1'b0)
	// comb arc C1 --> Z
	 (C1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && B1===1'b0 && B2===1'b1)
	// comb arc C1 --> Z
	 (C1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && B1===1'b1 && B2===1'b0)
	// comb arc C1 --> Z
	 (C1 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && B1===1'b0 && B2===1'b0)
	// comb arc C1 --> Z
	 (C1 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && B1===1'b0 && B2===1'b1)
	// comb arc C1 --> Z
	 (C1 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && B1===1'b1 && B2===1'b0)
	// comb arc C1 --> Z
	 (C1 => Z) = (1.0,1.0);

	ifnone
	// comb arc C1 --> Z
	 (C1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && B1===1'b0 && B2===1'b0)
	// comb arc C2 --> Z
	 (C2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && B1===1'b0 && B2===1'b1)
	// comb arc C2 --> Z
	 (C2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && B1===1'b1 && B2===1'b0)
	// comb arc C2 --> Z
	 (C2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && B1===1'b0 && B2===1'b0)
	// comb arc C2 --> Z
	 (C2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && B1===1'b0 && B2===1'b1)
	// comb arc C2 --> Z
	 (C2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && B1===1'b1 && B2===1'b0)
	// comb arc C2 --> Z
	 (C2 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && B1===1'b0 && B2===1'b0)
	// comb arc C2 --> Z
	 (C2 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && B1===1'b0 && B2===1'b1)
	// comb arc C2 --> Z
	 (C2 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && B1===1'b1 && B2===1'b0)
	// comb arc C2 --> Z
	 (C2 => Z) = (1.0,1.0);

	ifnone
	// comb arc C2 --> Z
	 (C2 => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module AO22B10M0HM( Z, A1, B1, B2, NA2 , VDD, VSS);
inout VDD;
inout VSS;
input A1, B1, B2, NA2;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	AO22B10M0HM_func AO22B10M0HM_behav_inst(.Z(Z),.A1(A1),.B1(B1),.B2(B2),.NA2(NA2),.VDD(VDD),.VSS(VSS));

   `else

	AO22B10M0HM_func AO22B10M0HM_inst(.Z(Z),.A1(A1),.B1(B1),.B2(B2),.NA2(NA2),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	if(B1===1'b0 && B2===1'b0)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b1)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b0)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	ifnone
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(A1===1'b0 && NA2===1'b0)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b0 && NA2===1'b1)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b1 && NA2===1'b1)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	ifnone
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b0 && NA2===1'b0)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b0 && NA2===1'b1)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b1 && NA2===1'b1)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	ifnone
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b0)
	// comb arc NA2 --> Z
	 (NA2 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b1)
	// comb arc NA2 --> Z
	 (NA2 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b0)
	// comb arc NA2 --> Z
	 (NA2 => Z) = (1.0,1.0);

	ifnone
	// comb arc NA2 --> Z
	 (NA2 => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module AO22B10M1HM( Z, A1, B1, B2, NA2 , VDD, VSS);
inout VDD;
inout VSS;
input A1, B1, B2, NA2;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	AO22B10M1HM_func AO22B10M1HM_behav_inst(.Z(Z),.A1(A1),.B1(B1),.B2(B2),.NA2(NA2),.VDD(VDD),.VSS(VSS));

   `else

	AO22B10M1HM_func AO22B10M1HM_inst(.Z(Z),.A1(A1),.B1(B1),.B2(B2),.NA2(NA2),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	if(B1===1'b0 && B2===1'b0)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b1)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b0)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	ifnone
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(A1===1'b0 && NA2===1'b0)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b0 && NA2===1'b1)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b1 && NA2===1'b1)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	ifnone
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b0 && NA2===1'b0)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b0 && NA2===1'b1)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b1 && NA2===1'b1)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	ifnone
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b0)
	// comb arc NA2 --> Z
	 (NA2 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b1)
	// comb arc NA2 --> Z
	 (NA2 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b0)
	// comb arc NA2 --> Z
	 (NA2 => Z) = (1.0,1.0);

	ifnone
	// comb arc NA2 --> Z
	 (NA2 => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module AO22B10M2HM( Z, A1, B1, B2, NA2 , VDD, VSS);
inout VDD;
inout VSS;
input A1, B1, B2, NA2;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	AO22B10M2HM_func AO22B10M2HM_behav_inst(.Z(Z),.A1(A1),.B1(B1),.B2(B2),.NA2(NA2),.VDD(VDD),.VSS(VSS));

   `else

	AO22B10M2HM_func AO22B10M2HM_inst(.Z(Z),.A1(A1),.B1(B1),.B2(B2),.NA2(NA2),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	if(B1===1'b0 && B2===1'b0)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b1)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b0)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	ifnone
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(A1===1'b0 && NA2===1'b0)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b0 && NA2===1'b1)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b1 && NA2===1'b1)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	ifnone
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b0 && NA2===1'b0)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b0 && NA2===1'b1)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b1 && NA2===1'b1)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	ifnone
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b0)
	// comb arc NA2 --> Z
	 (NA2 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b1)
	// comb arc NA2 --> Z
	 (NA2 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b0)
	// comb arc NA2 --> Z
	 (NA2 => Z) = (1.0,1.0);

	ifnone
	// comb arc NA2 --> Z
	 (NA2 => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module AO22B10M4HM( Z, A1, B1, B2, NA2 , VDD, VSS);
inout VDD;
inout VSS;
input A1, B1, B2, NA2;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	AO22B10M4HM_func AO22B10M4HM_behav_inst(.Z(Z),.A1(A1),.B1(B1),.B2(B2),.NA2(NA2),.VDD(VDD),.VSS(VSS));

   `else

	AO22B10M4HM_func AO22B10M4HM_inst(.Z(Z),.A1(A1),.B1(B1),.B2(B2),.NA2(NA2),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	if(B1===1'b0 && B2===1'b0)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b1)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b0)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	ifnone
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(A1===1'b0 && NA2===1'b0)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b0 && NA2===1'b1)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b1 && NA2===1'b1)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	ifnone
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b0 && NA2===1'b0)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b0 && NA2===1'b1)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b1 && NA2===1'b1)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	ifnone
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b0)
	// comb arc NA2 --> Z
	 (NA2 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b1)
	// comb arc NA2 --> Z
	 (NA2 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b0)
	// comb arc NA2 --> Z
	 (NA2 => Z) = (1.0,1.0);

	ifnone
	// comb arc NA2 --> Z
	 (NA2 => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module AO22B10M8HM( Z, A1, B1, B2, NA2 , VDD, VSS);
inout VDD;
inout VSS;
input A1, B1, B2, NA2;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	AO22B10M8HM_func AO22B10M8HM_behav_inst(.Z(Z),.A1(A1),.B1(B1),.B2(B2),.NA2(NA2),.VDD(VDD),.VSS(VSS));

   `else

	AO22B10M8HM_func AO22B10M8HM_inst(.Z(Z),.A1(A1),.B1(B1),.B2(B2),.NA2(NA2),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	if(B1===1'b0 && B2===1'b0)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b1)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b0)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	ifnone
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(A1===1'b0 && NA2===1'b0)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b0 && NA2===1'b1)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b1 && NA2===1'b1)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	ifnone
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b0 && NA2===1'b0)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b0 && NA2===1'b1)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b1 && NA2===1'b1)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	ifnone
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b0)
	// comb arc NA2 --> Z
	 (NA2 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b1)
	// comb arc NA2 --> Z
	 (NA2 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b0)
	// comb arc NA2 --> Z
	 (NA2 => Z) = (1.0,1.0);

	ifnone
	// comb arc NA2 --> Z
	 (NA2 => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module AO22B11M0HM( Z, A1, B1, NA2, NB2 , VDD, VSS);
inout VDD;
inout VSS;
input A1, B1, NA2, NB2;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	AO22B11M0HM_func AO22B11M0HM_behav_inst(.Z(Z),.A1(A1),.B1(B1),.NA2(NA2),.NB2(NB2),.VDD(VDD),.VSS(VSS));

   `else

	AO22B11M0HM_func AO22B11M0HM_inst(.Z(Z),.A1(A1),.B1(B1),.NA2(NA2),.NB2(NB2),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	if(B1===1'b0 && NB2===1'b0)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b0 && NB2===1'b1)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b1 && NB2===1'b1)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	ifnone
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(A1===1'b0 && NA2===1'b0)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b0 && NA2===1'b1)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b1 && NA2===1'b1)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	ifnone
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(B1===1'b0 && NB2===1'b0)
	// comb arc NA2 --> Z
	 (NA2 => Z) = (1.0,1.0);

	if(B1===1'b0 && NB2===1'b1)
	// comb arc NA2 --> Z
	 (NA2 => Z) = (1.0,1.0);

	if(B1===1'b1 && NB2===1'b1)
	// comb arc NA2 --> Z
	 (NA2 => Z) = (1.0,1.0);

	ifnone
	// comb arc NA2 --> Z
	 (NA2 => Z) = (1.0,1.0);

	if(A1===1'b0 && NA2===1'b0)
	// comb arc NB2 --> Z
	 (NB2 => Z) = (1.0,1.0);

	if(A1===1'b0 && NA2===1'b1)
	// comb arc NB2 --> Z
	 (NB2 => Z) = (1.0,1.0);

	if(A1===1'b1 && NA2===1'b1)
	// comb arc NB2 --> Z
	 (NB2 => Z) = (1.0,1.0);

	ifnone
	// comb arc NB2 --> Z
	 (NB2 => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module AO22B11M1HM( Z, A1, B1, NA2, NB2 , VDD, VSS);
inout VDD;
inout VSS;
input A1, B1, NA2, NB2;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	AO22B11M1HM_func AO22B11M1HM_behav_inst(.Z(Z),.A1(A1),.B1(B1),.NA2(NA2),.NB2(NB2),.VDD(VDD),.VSS(VSS));

   `else

	AO22B11M1HM_func AO22B11M1HM_inst(.Z(Z),.A1(A1),.B1(B1),.NA2(NA2),.NB2(NB2),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	if(B1===1'b0 && NB2===1'b0)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b0 && NB2===1'b1)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b1 && NB2===1'b1)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	ifnone
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(A1===1'b0 && NA2===1'b0)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b0 && NA2===1'b1)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b1 && NA2===1'b1)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	ifnone
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(B1===1'b0 && NB2===1'b0)
	// comb arc NA2 --> Z
	 (NA2 => Z) = (1.0,1.0);

	if(B1===1'b0 && NB2===1'b1)
	// comb arc NA2 --> Z
	 (NA2 => Z) = (1.0,1.0);

	if(B1===1'b1 && NB2===1'b1)
	// comb arc NA2 --> Z
	 (NA2 => Z) = (1.0,1.0);

	ifnone
	// comb arc NA2 --> Z
	 (NA2 => Z) = (1.0,1.0);

	if(A1===1'b0 && NA2===1'b0)
	// comb arc NB2 --> Z
	 (NB2 => Z) = (1.0,1.0);

	if(A1===1'b0 && NA2===1'b1)
	// comb arc NB2 --> Z
	 (NB2 => Z) = (1.0,1.0);

	if(A1===1'b1 && NA2===1'b1)
	// comb arc NB2 --> Z
	 (NB2 => Z) = (1.0,1.0);

	ifnone
	// comb arc NB2 --> Z
	 (NB2 => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module AO22B11M2HM( Z, A1, B1, NA2, NB2 , VDD, VSS);
inout VDD;
inout VSS;
input A1, B1, NA2, NB2;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	AO22B11M2HM_func AO22B11M2HM_behav_inst(.Z(Z),.A1(A1),.B1(B1),.NA2(NA2),.NB2(NB2),.VDD(VDD),.VSS(VSS));

   `else

	AO22B11M2HM_func AO22B11M2HM_inst(.Z(Z),.A1(A1),.B1(B1),.NA2(NA2),.NB2(NB2),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	if(B1===1'b0 && NB2===1'b0)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b0 && NB2===1'b1)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b1 && NB2===1'b1)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	ifnone
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(A1===1'b0 && NA2===1'b0)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b0 && NA2===1'b1)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b1 && NA2===1'b1)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	ifnone
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(B1===1'b0 && NB2===1'b0)
	// comb arc NA2 --> Z
	 (NA2 => Z) = (1.0,1.0);

	if(B1===1'b0 && NB2===1'b1)
	// comb arc NA2 --> Z
	 (NA2 => Z) = (1.0,1.0);

	if(B1===1'b1 && NB2===1'b1)
	// comb arc NA2 --> Z
	 (NA2 => Z) = (1.0,1.0);

	ifnone
	// comb arc NA2 --> Z
	 (NA2 => Z) = (1.0,1.0);

	if(A1===1'b0 && NA2===1'b0)
	// comb arc NB2 --> Z
	 (NB2 => Z) = (1.0,1.0);

	if(A1===1'b0 && NA2===1'b1)
	// comb arc NB2 --> Z
	 (NB2 => Z) = (1.0,1.0);

	if(A1===1'b1 && NA2===1'b1)
	// comb arc NB2 --> Z
	 (NB2 => Z) = (1.0,1.0);

	ifnone
	// comb arc NB2 --> Z
	 (NB2 => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module AO22B11M4HM( Z, A1, B1, NA2, NB2 , VDD, VSS);
inout VDD;
inout VSS;
input A1, B1, NA2, NB2;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	AO22B11M4HM_func AO22B11M4HM_behav_inst(.Z(Z),.A1(A1),.B1(B1),.NA2(NA2),.NB2(NB2),.VDD(VDD),.VSS(VSS));

   `else

	AO22B11M4HM_func AO22B11M4HM_inst(.Z(Z),.A1(A1),.B1(B1),.NA2(NA2),.NB2(NB2),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	if(B1===1'b0 && NB2===1'b0)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b0 && NB2===1'b1)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b1 && NB2===1'b1)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	ifnone
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(A1===1'b0 && NA2===1'b0)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b0 && NA2===1'b1)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b1 && NA2===1'b1)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	ifnone
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(B1===1'b0 && NB2===1'b0)
	// comb arc NA2 --> Z
	 (NA2 => Z) = (1.0,1.0);

	if(B1===1'b0 && NB2===1'b1)
	// comb arc NA2 --> Z
	 (NA2 => Z) = (1.0,1.0);

	if(B1===1'b1 && NB2===1'b1)
	// comb arc NA2 --> Z
	 (NA2 => Z) = (1.0,1.0);

	ifnone
	// comb arc NA2 --> Z
	 (NA2 => Z) = (1.0,1.0);

	if(A1===1'b0 && NA2===1'b0)
	// comb arc NB2 --> Z
	 (NB2 => Z) = (1.0,1.0);

	if(A1===1'b0 && NA2===1'b1)
	// comb arc NB2 --> Z
	 (NB2 => Z) = (1.0,1.0);

	if(A1===1'b1 && NA2===1'b1)
	// comb arc NB2 --> Z
	 (NB2 => Z) = (1.0,1.0);

	ifnone
	// comb arc NB2 --> Z
	 (NB2 => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module AO22B11M8HM( Z, A1, B1, NA2, NB2 , VDD, VSS);
inout VDD;
inout VSS;
input A1, B1, NA2, NB2;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	AO22B11M8HM_func AO22B11M8HM_behav_inst(.Z(Z),.A1(A1),.B1(B1),.NA2(NA2),.NB2(NB2),.VDD(VDD),.VSS(VSS));

   `else

	AO22B11M8HM_func AO22B11M8HM_inst(.Z(Z),.A1(A1),.B1(B1),.NA2(NA2),.NB2(NB2),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	if(B1===1'b0 && NB2===1'b0)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b0 && NB2===1'b1)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b1 && NB2===1'b1)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	ifnone
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(A1===1'b0 && NA2===1'b0)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b0 && NA2===1'b1)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b1 && NA2===1'b1)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	ifnone
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(B1===1'b0 && NB2===1'b0)
	// comb arc NA2 --> Z
	 (NA2 => Z) = (1.0,1.0);

	if(B1===1'b0 && NB2===1'b1)
	// comb arc NA2 --> Z
	 (NA2 => Z) = (1.0,1.0);

	if(B1===1'b1 && NB2===1'b1)
	// comb arc NA2 --> Z
	 (NA2 => Z) = (1.0,1.0);

	ifnone
	// comb arc NA2 --> Z
	 (NA2 => Z) = (1.0,1.0);

	if(A1===1'b0 && NA2===1'b0)
	// comb arc NB2 --> Z
	 (NB2 => Z) = (1.0,1.0);

	if(A1===1'b0 && NA2===1'b1)
	// comb arc NB2 --> Z
	 (NB2 => Z) = (1.0,1.0);

	if(A1===1'b1 && NA2===1'b1)
	// comb arc NB2 --> Z
	 (NB2 => Z) = (1.0,1.0);

	ifnone
	// comb arc NB2 --> Z
	 (NB2 => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module AO22M0HM( Z, A1, A2, B1, B2 , VDD, VSS);
inout VDD;
inout VSS;
input A1, A2, B1, B2;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	AO22M0HM_func AO22M0HM_behav_inst(.Z(Z),.A1(A1),.A2(A2),.B1(B1),.B2(B2),.VDD(VDD),.VSS(VSS));

   `else

	AO22M0HM_func AO22M0HM_inst(.Z(Z),.A1(A1),.A2(A2),.B1(B1),.B2(B2),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	if(B1===1'b0 && B2===1'b0)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b1)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b0)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	ifnone
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b0)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b1)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b0)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	ifnone
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	ifnone
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	ifnone
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module AO22M1HM( Z, A1, A2, B1, B2 , VDD, VSS);
inout VDD;
inout VSS;
input A1, A2, B1, B2;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	AO22M1HM_func AO22M1HM_behav_inst(.Z(Z),.A1(A1),.A2(A2),.B1(B1),.B2(B2),.VDD(VDD),.VSS(VSS));

   `else

	AO22M1HM_func AO22M1HM_inst(.Z(Z),.A1(A1),.A2(A2),.B1(B1),.B2(B2),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	if(B1===1'b0 && B2===1'b0)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b1)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b0)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	ifnone
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b0)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b1)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b0)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	ifnone
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	ifnone
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	ifnone
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module AO22M2HM( Z, A1, A2, B1, B2 , VDD, VSS);
inout VDD;
inout VSS;
input A1, A2, B1, B2;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	AO22M2HM_func AO22M2HM_behav_inst(.Z(Z),.A1(A1),.A2(A2),.B1(B1),.B2(B2),.VDD(VDD),.VSS(VSS));

   `else

	AO22M2HM_func AO22M2HM_inst(.Z(Z),.A1(A1),.A2(A2),.B1(B1),.B2(B2),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	if(B1===1'b0 && B2===1'b0)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b1)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b0)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	ifnone
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b0)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b1)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b0)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	ifnone
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	ifnone
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	ifnone
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module AO22M4HM( Z, A1, A2, B1, B2 , VDD, VSS);
inout VDD;
inout VSS;
input A1, A2, B1, B2;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	AO22M4HM_func AO22M4HM_behav_inst(.Z(Z),.A1(A1),.A2(A2),.B1(B1),.B2(B2),.VDD(VDD),.VSS(VSS));

   `else

	AO22M4HM_func AO22M4HM_inst(.Z(Z),.A1(A1),.A2(A2),.B1(B1),.B2(B2),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	if(B1===1'b0 && B2===1'b0)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b1)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b0)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	ifnone
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b0)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b1)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b0)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	ifnone
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	ifnone
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	ifnone
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module AO22M8HM( Z, A1, A2, B1, B2 , VDD, VSS);
inout VDD;
inout VSS;
input A1, A2, B1, B2;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	AO22M8HM_func AO22M8HM_behav_inst(.Z(Z),.A1(A1),.A2(A2),.B1(B1),.B2(B2),.VDD(VDD),.VSS(VSS));

   `else

	AO22M8HM_func AO22M8HM_inst(.Z(Z),.A1(A1),.A2(A2),.B1(B1),.B2(B2),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	if(B1===1'b0 && B2===1'b0)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b1)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b0)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	ifnone
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b0)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b1)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b0)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	ifnone
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	ifnone
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	ifnone
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module AO31M0HM( Z, A1, A2, A3, B , VDD, VSS);
inout VDD;
inout VSS;
input A1, A2, A3, B;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	AO31M0HM_func AO31M0HM_behav_inst(.Z(Z),.A1(A1),.A2(A2),.A3(A3),.B(B),.VDD(VDD),.VSS(VSS));

   `else

	AO31M0HM_func AO31M0HM_inst(.Z(Z),.A1(A1),.A2(A2),.A3(A3),.B(B),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	// comb arc A3 --> Z
	 (A3 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && A3===1'b0)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && A3===1'b1)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && A3===1'b0)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && A3===1'b1)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && A3===1'b0)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && A3===1'b1)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b1 && A3===1'b0)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	ifnone
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module AO31M1HM( Z, A1, A2, A3, B , VDD, VSS);
inout VDD;
inout VSS;
input A1, A2, A3, B;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	AO31M1HM_func AO31M1HM_behav_inst(.Z(Z),.A1(A1),.A2(A2),.A3(A3),.B(B),.VDD(VDD),.VSS(VSS));

   `else

	AO31M1HM_func AO31M1HM_inst(.Z(Z),.A1(A1),.A2(A2),.A3(A3),.B(B),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	// comb arc A3 --> Z
	 (A3 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && A3===1'b0)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && A3===1'b1)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && A3===1'b0)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && A3===1'b1)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && A3===1'b0)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && A3===1'b1)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b1 && A3===1'b0)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	ifnone
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module AO31M2HM( Z, A1, A2, A3, B , VDD, VSS);
inout VDD;
inout VSS;
input A1, A2, A3, B;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	AO31M2HM_func AO31M2HM_behav_inst(.Z(Z),.A1(A1),.A2(A2),.A3(A3),.B(B),.VDD(VDD),.VSS(VSS));

   `else

	AO31M2HM_func AO31M2HM_inst(.Z(Z),.A1(A1),.A2(A2),.A3(A3),.B(B),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	// comb arc A3 --> Z
	 (A3 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && A3===1'b0)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && A3===1'b1)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && A3===1'b0)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && A3===1'b1)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && A3===1'b0)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && A3===1'b1)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b1 && A3===1'b0)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	ifnone
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module AO31M4HM( Z, A1, A2, A3, B , VDD, VSS);
inout VDD;
inout VSS;
input A1, A2, A3, B;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	AO31M4HM_func AO31M4HM_behav_inst(.Z(Z),.A1(A1),.A2(A2),.A3(A3),.B(B),.VDD(VDD),.VSS(VSS));

   `else

	AO31M4HM_func AO31M4HM_inst(.Z(Z),.A1(A1),.A2(A2),.A3(A3),.B(B),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	// comb arc A3 --> Z
	 (A3 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && A3===1'b0)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && A3===1'b1)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && A3===1'b0)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && A3===1'b1)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && A3===1'b0)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && A3===1'b1)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b1 && A3===1'b0)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	ifnone
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module AO31M8HM( Z, A1, A2, A3, B , VDD, VSS);
inout VDD;
inout VSS;
input A1, A2, A3, B;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	AO31M8HM_func AO31M8HM_behav_inst(.Z(Z),.A1(A1),.A2(A2),.A3(A3),.B(B),.VDD(VDD),.VSS(VSS));

   `else

	AO31M8HM_func AO31M8HM_inst(.Z(Z),.A1(A1),.A2(A2),.A3(A3),.B(B),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	// comb arc A3 --> Z
	 (A3 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && A3===1'b0)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && A3===1'b1)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && A3===1'b0)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && A3===1'b1)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && A3===1'b0)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && A3===1'b1)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b1 && A3===1'b0)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	ifnone
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module AO32M0HM( Z, A1, A2, A3, B1, B2 , VDD, VSS);
inout VDD;
inout VSS;
input A1, A2, A3, B1, B2;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	AO32M0HM_func AO32M0HM_behav_inst(.Z(Z),.A1(A1),.A2(A2),.A3(A3),.B1(B1),.B2(B2),.VDD(VDD),.VSS(VSS));

   `else

	AO32M0HM_func AO32M0HM_inst(.Z(Z),.A1(A1),.A2(A2),.A3(A3),.B1(B1),.B2(B2),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	if(B1===1'b0 && B2===1'b0)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b1)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b0)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	ifnone
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b0)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b1)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b0)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	ifnone
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b0)
	// comb arc A3 --> Z
	 (A3 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b1)
	// comb arc A3 --> Z
	 (A3 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b0)
	// comb arc A3 --> Z
	 (A3 => Z) = (1.0,1.0);

	ifnone
	// comb arc A3 --> Z
	 (A3 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && A3===1'b0)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && A3===1'b1)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && A3===1'b0)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && A3===1'b1)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && A3===1'b0)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && A3===1'b1)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b1 && A3===1'b0)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	ifnone
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && A3===1'b0)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && A3===1'b1)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && A3===1'b0)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && A3===1'b1)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && A3===1'b0)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && A3===1'b1)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b1 && A3===1'b0)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	ifnone
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module AO32M1HM( Z, A1, A2, A3, B1, B2 , VDD, VSS);
inout VDD;
inout VSS;
input A1, A2, A3, B1, B2;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	AO32M1HM_func AO32M1HM_behav_inst(.Z(Z),.A1(A1),.A2(A2),.A3(A3),.B1(B1),.B2(B2),.VDD(VDD),.VSS(VSS));

   `else

	AO32M1HM_func AO32M1HM_inst(.Z(Z),.A1(A1),.A2(A2),.A3(A3),.B1(B1),.B2(B2),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	if(B1===1'b0 && B2===1'b0)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b1)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b0)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	ifnone
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b0)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b1)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b0)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	ifnone
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b0)
	// comb arc A3 --> Z
	 (A3 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b1)
	// comb arc A3 --> Z
	 (A3 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b0)
	// comb arc A3 --> Z
	 (A3 => Z) = (1.0,1.0);

	ifnone
	// comb arc A3 --> Z
	 (A3 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && A3===1'b0)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && A3===1'b1)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && A3===1'b0)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && A3===1'b1)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && A3===1'b0)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && A3===1'b1)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b1 && A3===1'b0)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	ifnone
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && A3===1'b0)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && A3===1'b1)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && A3===1'b0)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && A3===1'b1)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && A3===1'b0)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && A3===1'b1)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b1 && A3===1'b0)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	ifnone
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module AO32M2HM( Z, A1, A2, A3, B1, B2 , VDD, VSS);
inout VDD;
inout VSS;
input A1, A2, A3, B1, B2;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	AO32M2HM_func AO32M2HM_behav_inst(.Z(Z),.A1(A1),.A2(A2),.A3(A3),.B1(B1),.B2(B2),.VDD(VDD),.VSS(VSS));

   `else

	AO32M2HM_func AO32M2HM_inst(.Z(Z),.A1(A1),.A2(A2),.A3(A3),.B1(B1),.B2(B2),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	if(B1===1'b0 && B2===1'b0)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b1)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b0)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	ifnone
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b0)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b1)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b0)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	ifnone
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b0)
	// comb arc A3 --> Z
	 (A3 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b1)
	// comb arc A3 --> Z
	 (A3 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b0)
	// comb arc A3 --> Z
	 (A3 => Z) = (1.0,1.0);

	ifnone
	// comb arc A3 --> Z
	 (A3 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && A3===1'b0)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && A3===1'b1)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && A3===1'b0)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && A3===1'b1)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && A3===1'b0)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && A3===1'b1)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b1 && A3===1'b0)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	ifnone
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && A3===1'b0)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && A3===1'b1)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && A3===1'b0)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && A3===1'b1)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && A3===1'b0)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && A3===1'b1)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b1 && A3===1'b0)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	ifnone
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module AO32M4HM( Z, A1, A2, A3, B1, B2 , VDD, VSS);
inout VDD;
inout VSS;
input A1, A2, A3, B1, B2;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	AO32M4HM_func AO32M4HM_behav_inst(.Z(Z),.A1(A1),.A2(A2),.A3(A3),.B1(B1),.B2(B2),.VDD(VDD),.VSS(VSS));

   `else

	AO32M4HM_func AO32M4HM_inst(.Z(Z),.A1(A1),.A2(A2),.A3(A3),.B1(B1),.B2(B2),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	if(B1===1'b0 && B2===1'b0)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b1)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b0)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	ifnone
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b0)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b1)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b0)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	ifnone
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b0)
	// comb arc A3 --> Z
	 (A3 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b1)
	// comb arc A3 --> Z
	 (A3 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b0)
	// comb arc A3 --> Z
	 (A3 => Z) = (1.0,1.0);

	ifnone
	// comb arc A3 --> Z
	 (A3 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && A3===1'b0)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && A3===1'b1)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && A3===1'b0)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && A3===1'b1)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && A3===1'b0)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && A3===1'b1)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b1 && A3===1'b0)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	ifnone
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && A3===1'b0)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && A3===1'b1)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && A3===1'b0)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && A3===1'b1)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && A3===1'b0)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && A3===1'b1)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b1 && A3===1'b0)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	ifnone
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module AO32M8HM( Z, A1, A2, A3, B1, B2 , VDD, VSS);
inout VDD;
inout VSS;
input A1, A2, A3, B1, B2;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	AO32M8HM_func AO32M8HM_behav_inst(.Z(Z),.A1(A1),.A2(A2),.A3(A3),.B1(B1),.B2(B2),.VDD(VDD),.VSS(VSS));

   `else

	AO32M8HM_func AO32M8HM_inst(.Z(Z),.A1(A1),.A2(A2),.A3(A3),.B1(B1),.B2(B2),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	if(B1===1'b0 && B2===1'b0)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b1)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b0)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	ifnone
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b0)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b1)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b0)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	ifnone
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b0)
	// comb arc A3 --> Z
	 (A3 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b1)
	// comb arc A3 --> Z
	 (A3 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b0)
	// comb arc A3 --> Z
	 (A3 => Z) = (1.0,1.0);

	ifnone
	// comb arc A3 --> Z
	 (A3 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && A3===1'b0)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && A3===1'b1)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && A3===1'b0)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && A3===1'b1)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && A3===1'b0)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && A3===1'b1)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b1 && A3===1'b0)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	ifnone
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && A3===1'b0)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && A3===1'b1)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && A3===1'b0)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && A3===1'b1)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && A3===1'b0)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && A3===1'b1)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b1 && A3===1'b0)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	ifnone
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module AO33M0HM( Z, A1, A2, A3, B1, B2, B3 , VDD, VSS);
inout VDD;
inout VSS;
input A1, A2, A3, B1, B2, B3;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	AO33M0HM_func AO33M0HM_behav_inst(.Z(Z),.A1(A1),.A2(A2),.A3(A3),.B1(B1),.B2(B2),.B3(B3),.VDD(VDD),.VSS(VSS));

   `else

	AO33M0HM_func AO33M0HM_inst(.Z(Z),.A1(A1),.A2(A2),.A3(A3),.B1(B1),.B2(B2),.B3(B3),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	if(B1===1'b0 && B2===1'b0 && B3===1'b0)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b0 && B3===1'b1)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b1 && B3===1'b0)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b1 && B3===1'b1)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b0 && B3===1'b0)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b0 && B3===1'b1)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b1 && B3===1'b0)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	ifnone
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b0 && B3===1'b0)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b0 && B3===1'b1)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b1 && B3===1'b0)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b1 && B3===1'b1)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b0 && B3===1'b0)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b0 && B3===1'b1)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b1 && B3===1'b0)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	ifnone
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b0 && B3===1'b0)
	// comb arc A3 --> Z
	 (A3 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b0 && B3===1'b1)
	// comb arc A3 --> Z
	 (A3 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b1 && B3===1'b0)
	// comb arc A3 --> Z
	 (A3 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b1 && B3===1'b1)
	// comb arc A3 --> Z
	 (A3 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b0 && B3===1'b0)
	// comb arc A3 --> Z
	 (A3 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b0 && B3===1'b1)
	// comb arc A3 --> Z
	 (A3 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b1 && B3===1'b0)
	// comb arc A3 --> Z
	 (A3 => Z) = (1.0,1.0);

	ifnone
	// comb arc A3 --> Z
	 (A3 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && A3===1'b0)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && A3===1'b1)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && A3===1'b0)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && A3===1'b1)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && A3===1'b0)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && A3===1'b1)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b1 && A3===1'b0)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	ifnone
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && A3===1'b0)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && A3===1'b1)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && A3===1'b0)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && A3===1'b1)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && A3===1'b0)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && A3===1'b1)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b1 && A3===1'b0)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	ifnone
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && A3===1'b0)
	// comb arc B3 --> Z
	 (B3 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && A3===1'b1)
	// comb arc B3 --> Z
	 (B3 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && A3===1'b0)
	// comb arc B3 --> Z
	 (B3 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && A3===1'b1)
	// comb arc B3 --> Z
	 (B3 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && A3===1'b0)
	// comb arc B3 --> Z
	 (B3 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && A3===1'b1)
	// comb arc B3 --> Z
	 (B3 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b1 && A3===1'b0)
	// comb arc B3 --> Z
	 (B3 => Z) = (1.0,1.0);

	ifnone
	// comb arc B3 --> Z
	 (B3 => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module AO33M1HM( Z, A1, A2, A3, B1, B2, B3 , VDD, VSS);
inout VDD;
inout VSS;
input A1, A2, A3, B1, B2, B3;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	AO33M1HM_func AO33M1HM_behav_inst(.Z(Z),.A1(A1),.A2(A2),.A3(A3),.B1(B1),.B2(B2),.B3(B3),.VDD(VDD),.VSS(VSS));

   `else

	AO33M1HM_func AO33M1HM_inst(.Z(Z),.A1(A1),.A2(A2),.A3(A3),.B1(B1),.B2(B2),.B3(B3),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	if(B1===1'b0 && B2===1'b0 && B3===1'b0)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b0 && B3===1'b1)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b1 && B3===1'b0)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b1 && B3===1'b1)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b0 && B3===1'b0)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b0 && B3===1'b1)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b1 && B3===1'b0)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	ifnone
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b0 && B3===1'b0)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b0 && B3===1'b1)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b1 && B3===1'b0)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b1 && B3===1'b1)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b0 && B3===1'b0)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b0 && B3===1'b1)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b1 && B3===1'b0)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	ifnone
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b0 && B3===1'b0)
	// comb arc A3 --> Z
	 (A3 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b0 && B3===1'b1)
	// comb arc A3 --> Z
	 (A3 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b1 && B3===1'b0)
	// comb arc A3 --> Z
	 (A3 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b1 && B3===1'b1)
	// comb arc A3 --> Z
	 (A3 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b0 && B3===1'b0)
	// comb arc A3 --> Z
	 (A3 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b0 && B3===1'b1)
	// comb arc A3 --> Z
	 (A3 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b1 && B3===1'b0)
	// comb arc A3 --> Z
	 (A3 => Z) = (1.0,1.0);

	ifnone
	// comb arc A3 --> Z
	 (A3 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && A3===1'b0)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && A3===1'b1)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && A3===1'b0)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && A3===1'b1)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && A3===1'b0)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && A3===1'b1)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b1 && A3===1'b0)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	ifnone
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && A3===1'b0)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && A3===1'b1)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && A3===1'b0)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && A3===1'b1)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && A3===1'b0)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && A3===1'b1)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b1 && A3===1'b0)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	ifnone
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && A3===1'b0)
	// comb arc B3 --> Z
	 (B3 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && A3===1'b1)
	// comb arc B3 --> Z
	 (B3 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && A3===1'b0)
	// comb arc B3 --> Z
	 (B3 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && A3===1'b1)
	// comb arc B3 --> Z
	 (B3 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && A3===1'b0)
	// comb arc B3 --> Z
	 (B3 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && A3===1'b1)
	// comb arc B3 --> Z
	 (B3 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b1 && A3===1'b0)
	// comb arc B3 --> Z
	 (B3 => Z) = (1.0,1.0);

	ifnone
	// comb arc B3 --> Z
	 (B3 => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module AO33M2HM( Z, A1, A2, A3, B1, B2, B3 , VDD, VSS);
inout VDD;
inout VSS;
input A1, A2, A3, B1, B2, B3;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	AO33M2HM_func AO33M2HM_behav_inst(.Z(Z),.A1(A1),.A2(A2),.A3(A3),.B1(B1),.B2(B2),.B3(B3),.VDD(VDD),.VSS(VSS));

   `else

	AO33M2HM_func AO33M2HM_inst(.Z(Z),.A1(A1),.A2(A2),.A3(A3),.B1(B1),.B2(B2),.B3(B3),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	if(B1===1'b0 && B2===1'b0 && B3===1'b0)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b0 && B3===1'b1)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b1 && B3===1'b0)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b1 && B3===1'b1)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b0 && B3===1'b0)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b0 && B3===1'b1)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b1 && B3===1'b0)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	ifnone
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b0 && B3===1'b0)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b0 && B3===1'b1)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b1 && B3===1'b0)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b1 && B3===1'b1)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b0 && B3===1'b0)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b0 && B3===1'b1)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b1 && B3===1'b0)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	ifnone
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b0 && B3===1'b0)
	// comb arc A3 --> Z
	 (A3 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b0 && B3===1'b1)
	// comb arc A3 --> Z
	 (A3 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b1 && B3===1'b0)
	// comb arc A3 --> Z
	 (A3 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b1 && B3===1'b1)
	// comb arc A3 --> Z
	 (A3 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b0 && B3===1'b0)
	// comb arc A3 --> Z
	 (A3 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b0 && B3===1'b1)
	// comb arc A3 --> Z
	 (A3 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b1 && B3===1'b0)
	// comb arc A3 --> Z
	 (A3 => Z) = (1.0,1.0);

	ifnone
	// comb arc A3 --> Z
	 (A3 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && A3===1'b0)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && A3===1'b1)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && A3===1'b0)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && A3===1'b1)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && A3===1'b0)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && A3===1'b1)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b1 && A3===1'b0)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	ifnone
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && A3===1'b0)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && A3===1'b1)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && A3===1'b0)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && A3===1'b1)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && A3===1'b0)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && A3===1'b1)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b1 && A3===1'b0)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	ifnone
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && A3===1'b0)
	// comb arc B3 --> Z
	 (B3 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && A3===1'b1)
	// comb arc B3 --> Z
	 (B3 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && A3===1'b0)
	// comb arc B3 --> Z
	 (B3 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && A3===1'b1)
	// comb arc B3 --> Z
	 (B3 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && A3===1'b0)
	// comb arc B3 --> Z
	 (B3 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && A3===1'b1)
	// comb arc B3 --> Z
	 (B3 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b1 && A3===1'b0)
	// comb arc B3 --> Z
	 (B3 => Z) = (1.0,1.0);

	ifnone
	// comb arc B3 --> Z
	 (B3 => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module AO33M4HM( Z, A1, A2, A3, B1, B2, B3 , VDD, VSS);
inout VDD;
inout VSS;
input A1, A2, A3, B1, B2, B3;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	AO33M4HM_func AO33M4HM_behav_inst(.Z(Z),.A1(A1),.A2(A2),.A3(A3),.B1(B1),.B2(B2),.B3(B3),.VDD(VDD),.VSS(VSS));

   `else

	AO33M4HM_func AO33M4HM_inst(.Z(Z),.A1(A1),.A2(A2),.A3(A3),.B1(B1),.B2(B2),.B3(B3),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	if(B1===1'b0 && B2===1'b0 && B3===1'b0)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b0 && B3===1'b1)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b1 && B3===1'b0)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b1 && B3===1'b1)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b0 && B3===1'b0)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b0 && B3===1'b1)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b1 && B3===1'b0)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	ifnone
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b0 && B3===1'b0)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b0 && B3===1'b1)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b1 && B3===1'b0)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b1 && B3===1'b1)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b0 && B3===1'b0)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b0 && B3===1'b1)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b1 && B3===1'b0)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	ifnone
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b0 && B3===1'b0)
	// comb arc A3 --> Z
	 (A3 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b0 && B3===1'b1)
	// comb arc A3 --> Z
	 (A3 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b1 && B3===1'b0)
	// comb arc A3 --> Z
	 (A3 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b1 && B3===1'b1)
	// comb arc A3 --> Z
	 (A3 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b0 && B3===1'b0)
	// comb arc A3 --> Z
	 (A3 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b0 && B3===1'b1)
	// comb arc A3 --> Z
	 (A3 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b1 && B3===1'b0)
	// comb arc A3 --> Z
	 (A3 => Z) = (1.0,1.0);

	ifnone
	// comb arc A3 --> Z
	 (A3 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && A3===1'b0)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && A3===1'b1)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && A3===1'b0)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && A3===1'b1)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && A3===1'b0)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && A3===1'b1)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b1 && A3===1'b0)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	ifnone
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && A3===1'b0)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && A3===1'b1)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && A3===1'b0)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && A3===1'b1)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && A3===1'b0)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && A3===1'b1)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b1 && A3===1'b0)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	ifnone
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && A3===1'b0)
	// comb arc B3 --> Z
	 (B3 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && A3===1'b1)
	// comb arc B3 --> Z
	 (B3 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && A3===1'b0)
	// comb arc B3 --> Z
	 (B3 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && A3===1'b1)
	// comb arc B3 --> Z
	 (B3 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && A3===1'b0)
	// comb arc B3 --> Z
	 (B3 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && A3===1'b1)
	// comb arc B3 --> Z
	 (B3 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b1 && A3===1'b0)
	// comb arc B3 --> Z
	 (B3 => Z) = (1.0,1.0);

	ifnone
	// comb arc B3 --> Z
	 (B3 => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module AO33M8HM( Z, A1, A2, A3, B1, B2, B3 , VDD, VSS);
inout VDD;
inout VSS;
input A1, A2, A3, B1, B2, B3;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	AO33M8HM_func AO33M8HM_behav_inst(.Z(Z),.A1(A1),.A2(A2),.A3(A3),.B1(B1),.B2(B2),.B3(B3),.VDD(VDD),.VSS(VSS));

   `else

	AO33M8HM_func AO33M8HM_inst(.Z(Z),.A1(A1),.A2(A2),.A3(A3),.B1(B1),.B2(B2),.B3(B3),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	if(B1===1'b0 && B2===1'b0 && B3===1'b0)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b0 && B3===1'b1)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b1 && B3===1'b0)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b1 && B3===1'b1)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b0 && B3===1'b0)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b0 && B3===1'b1)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b1 && B3===1'b0)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	ifnone
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b0 && B3===1'b0)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b0 && B3===1'b1)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b1 && B3===1'b0)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b1 && B3===1'b1)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b0 && B3===1'b0)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b0 && B3===1'b1)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b1 && B3===1'b0)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	ifnone
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b0 && B3===1'b0)
	// comb arc A3 --> Z
	 (A3 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b0 && B3===1'b1)
	// comb arc A3 --> Z
	 (A3 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b1 && B3===1'b0)
	// comb arc A3 --> Z
	 (A3 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b1 && B3===1'b1)
	// comb arc A3 --> Z
	 (A3 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b0 && B3===1'b0)
	// comb arc A3 --> Z
	 (A3 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b0 && B3===1'b1)
	// comb arc A3 --> Z
	 (A3 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b1 && B3===1'b0)
	// comb arc A3 --> Z
	 (A3 => Z) = (1.0,1.0);

	ifnone
	// comb arc A3 --> Z
	 (A3 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && A3===1'b0)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && A3===1'b1)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && A3===1'b0)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && A3===1'b1)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && A3===1'b0)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && A3===1'b1)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b1 && A3===1'b0)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	ifnone
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && A3===1'b0)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && A3===1'b1)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && A3===1'b0)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && A3===1'b1)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && A3===1'b0)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && A3===1'b1)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b1 && A3===1'b0)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	ifnone
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && A3===1'b0)
	// comb arc B3 --> Z
	 (B3 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && A3===1'b1)
	// comb arc B3 --> Z
	 (B3 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && A3===1'b0)
	// comb arc B3 --> Z
	 (B3 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && A3===1'b1)
	// comb arc B3 --> Z
	 (B3 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && A3===1'b0)
	// comb arc B3 --> Z
	 (B3 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && A3===1'b1)
	// comb arc B3 --> Z
	 (B3 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b1 && A3===1'b0)
	// comb arc B3 --> Z
	 (B3 => Z) = (1.0,1.0);

	ifnone
	// comb arc B3 --> Z
	 (B3 => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module AOI211M0HM( Z, A1, A2, B, C , VDD, VSS);
inout VDD;
inout VSS;
input A1, A2, B, C;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	AOI211M0HM_func AOI211M0HM_behav_inst(.Z(Z),.A1(A1),.A2(A2),.B(B),.C(C),.VDD(VDD),.VSS(VSS));

   `else

	AOI211M0HM_func AOI211M0HM_inst(.Z(Z),.A1(A1),.A2(A2),.B(B),.C(C),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	ifnone
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	ifnone
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module AOI211M1HM( Z, A1, A2, B, C , VDD, VSS);
inout VDD;
inout VSS;
input A1, A2, B, C;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	AOI211M1HM_func AOI211M1HM_behav_inst(.Z(Z),.A1(A1),.A2(A2),.B(B),.C(C),.VDD(VDD),.VSS(VSS));

   `else

	AOI211M1HM_func AOI211M1HM_inst(.Z(Z),.A1(A1),.A2(A2),.B(B),.C(C),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	ifnone
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	ifnone
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module AOI211M2HM( Z, A1, A2, B, C , VDD, VSS);
inout VDD;
inout VSS;
input A1, A2, B, C;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	AOI211M2HM_func AOI211M2HM_behav_inst(.Z(Z),.A1(A1),.A2(A2),.B(B),.C(C),.VDD(VDD),.VSS(VSS));

   `else

	AOI211M2HM_func AOI211M2HM_inst(.Z(Z),.A1(A1),.A2(A2),.B(B),.C(C),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	ifnone
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	ifnone
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module AOI211M4HM( Z, A1, A2, B, C , VDD, VSS);
inout VDD;
inout VSS;
input A1, A2, B, C;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	AOI211M4HM_func AOI211M4HM_behav_inst(.Z(Z),.A1(A1),.A2(A2),.B(B),.C(C),.VDD(VDD),.VSS(VSS));

   `else

	AOI211M4HM_func AOI211M4HM_inst(.Z(Z),.A1(A1),.A2(A2),.B(B),.C(C),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	ifnone
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	ifnone
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module AOI211M8HM( Z, A1, A2, B, C , VDD, VSS);
inout VDD;
inout VSS;
input A1, A2, B, C;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	AOI211M8HM_func AOI211M8HM_behav_inst(.Z(Z),.A1(A1),.A2(A2),.B(B),.C(C),.VDD(VDD),.VSS(VSS));

   `else

	AOI211M8HM_func AOI211M8HM_inst(.Z(Z),.A1(A1),.A2(A2),.B(B),.C(C),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	ifnone
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	ifnone
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module AOI21B01M0HM( Z, A1, A2, NB , VDD, VSS);
inout VDD;
inout VSS;
input A1, A2, NB;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	AOI21B01M0HM_func AOI21B01M0HM_behav_inst(.Z(Z),.A1(A1),.A2(A2),.NB(NB),.VDD(VDD),.VSS(VSS));

   `else

	AOI21B01M0HM_func AOI21B01M0HM_inst(.Z(Z),.A1(A1),.A2(A2),.NB(NB),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0)
	// comb arc NB --> Z
	 (NB => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1)
	// comb arc NB --> Z
	 (NB => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0)
	// comb arc NB --> Z
	 (NB => Z) = (1.0,1.0);

	ifnone
	// comb arc NB --> Z
	 (NB => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module AOI21B01M1HM( Z, A1, A2, NB , VDD, VSS);
inout VDD;
inout VSS;
input A1, A2, NB;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	AOI21B01M1HM_func AOI21B01M1HM_behav_inst(.Z(Z),.A1(A1),.A2(A2),.NB(NB),.VDD(VDD),.VSS(VSS));

   `else

	AOI21B01M1HM_func AOI21B01M1HM_inst(.Z(Z),.A1(A1),.A2(A2),.NB(NB),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0)
	// comb arc NB --> Z
	 (NB => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1)
	// comb arc NB --> Z
	 (NB => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0)
	// comb arc NB --> Z
	 (NB => Z) = (1.0,1.0);

	ifnone
	// comb arc NB --> Z
	 (NB => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module AOI21B01M2HM( Z, A1, A2, NB , VDD, VSS);
inout VDD;
inout VSS;
input A1, A2, NB;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	AOI21B01M2HM_func AOI21B01M2HM_behav_inst(.Z(Z),.A1(A1),.A2(A2),.NB(NB),.VDD(VDD),.VSS(VSS));

   `else

	AOI21B01M2HM_func AOI21B01M2HM_inst(.Z(Z),.A1(A1),.A2(A2),.NB(NB),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0)
	// comb arc NB --> Z
	 (NB => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1)
	// comb arc NB --> Z
	 (NB => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0)
	// comb arc NB --> Z
	 (NB => Z) = (1.0,1.0);

	ifnone
	// comb arc NB --> Z
	 (NB => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module AOI21B01M4HM( Z, A1, A2, NB , VDD, VSS);
inout VDD;
inout VSS;
input A1, A2, NB;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	AOI21B01M4HM_func AOI21B01M4HM_behav_inst(.Z(Z),.A1(A1),.A2(A2),.NB(NB),.VDD(VDD),.VSS(VSS));

   `else

	AOI21B01M4HM_func AOI21B01M4HM_inst(.Z(Z),.A1(A1),.A2(A2),.NB(NB),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0)
	// comb arc NB --> Z
	 (NB => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1)
	// comb arc NB --> Z
	 (NB => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0)
	// comb arc NB --> Z
	 (NB => Z) = (1.0,1.0);

	ifnone
	// comb arc NB --> Z
	 (NB => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module AOI21B01M8HM( Z, A1, A2, NB , VDD, VSS);
inout VDD;
inout VSS;
input A1, A2, NB;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	AOI21B01M8HM_func AOI21B01M8HM_behav_inst(.Z(Z),.A1(A1),.A2(A2),.NB(NB),.VDD(VDD),.VSS(VSS));

   `else

	AOI21B01M8HM_func AOI21B01M8HM_inst(.Z(Z),.A1(A1),.A2(A2),.NB(NB),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0)
	// comb arc NB --> Z
	 (NB => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1)
	// comb arc NB --> Z
	 (NB => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0)
	// comb arc NB --> Z
	 (NB => Z) = (1.0,1.0);

	ifnone
	// comb arc NB --> Z
	 (NB => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module AOI21B10M0HM( Z, A1, B, NA2 , VDD, VSS);
inout VDD;
inout VSS;
input A1, B, NA2;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	AOI21B10M0HM_func AOI21B10M0HM_behav_inst(.Z(Z),.A1(A1),.B(B),.NA2(NA2),.VDD(VDD),.VSS(VSS));

   `else

	AOI21B10M0HM_func AOI21B10M0HM_inst(.Z(Z),.A1(A1),.B(B),.NA2(NA2),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(A1===1'b0 && NA2===1'b0)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A1===1'b0 && NA2===1'b1)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A1===1'b1 && NA2===1'b1)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	ifnone
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	// comb arc NA2 --> Z
	 (NA2 => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module AOI21B10M1HM( Z, A1, B, NA2 , VDD, VSS);
inout VDD;
inout VSS;
input A1, B, NA2;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	AOI21B10M1HM_func AOI21B10M1HM_behav_inst(.Z(Z),.A1(A1),.B(B),.NA2(NA2),.VDD(VDD),.VSS(VSS));

   `else

	AOI21B10M1HM_func AOI21B10M1HM_inst(.Z(Z),.A1(A1),.B(B),.NA2(NA2),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(A1===1'b0 && NA2===1'b0)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A1===1'b0 && NA2===1'b1)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A1===1'b1 && NA2===1'b1)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	ifnone
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	// comb arc NA2 --> Z
	 (NA2 => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module AOI21B10M2HM( Z, A1, B, NA2 , VDD, VSS);
inout VDD;
inout VSS;
input A1, B, NA2;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	AOI21B10M2HM_func AOI21B10M2HM_behav_inst(.Z(Z),.A1(A1),.B(B),.NA2(NA2),.VDD(VDD),.VSS(VSS));

   `else

	AOI21B10M2HM_func AOI21B10M2HM_inst(.Z(Z),.A1(A1),.B(B),.NA2(NA2),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(A1===1'b0 && NA2===1'b0)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A1===1'b0 && NA2===1'b1)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A1===1'b1 && NA2===1'b1)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	ifnone
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	// comb arc NA2 --> Z
	 (NA2 => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module AOI21B10M4HM( Z, A1, B, NA2 , VDD, VSS);
inout VDD;
inout VSS;
input A1, B, NA2;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	AOI21B10M4HM_func AOI21B10M4HM_behav_inst(.Z(Z),.A1(A1),.B(B),.NA2(NA2),.VDD(VDD),.VSS(VSS));

   `else

	AOI21B10M4HM_func AOI21B10M4HM_inst(.Z(Z),.A1(A1),.B(B),.NA2(NA2),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(A1===1'b0 && NA2===1'b0)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A1===1'b0 && NA2===1'b1)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A1===1'b1 && NA2===1'b1)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	ifnone
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	// comb arc NA2 --> Z
	 (NA2 => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module AOI21B10M8HM( Z, A1, B, NA2 , VDD, VSS);
inout VDD;
inout VSS;
input A1, B, NA2;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	AOI21B10M8HM_func AOI21B10M8HM_behav_inst(.Z(Z),.A1(A1),.B(B),.NA2(NA2),.VDD(VDD),.VSS(VSS));

   `else

	AOI21B10M8HM_func AOI21B10M8HM_inst(.Z(Z),.A1(A1),.B(B),.NA2(NA2),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(A1===1'b0 && NA2===1'b0)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A1===1'b0 && NA2===1'b1)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A1===1'b1 && NA2===1'b1)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	ifnone
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	// comb arc NA2 --> Z
	 (NA2 => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module AOI21B20M0HM( Z, B, NA1, NA2 , VDD, VSS);
inout VDD;
inout VSS;
input B, NA1, NA2;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	AOI21B20M0HM_func AOI21B20M0HM_behav_inst(.Z(Z),.B(B),.NA1(NA1),.NA2(NA2),.VDD(VDD),.VSS(VSS));

   `else

	AOI21B20M0HM_func AOI21B20M0HM_inst(.Z(Z),.B(B),.NA1(NA1),.NA2(NA2),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	if(NA1===1'b0 && NA2===1'b1)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(NA1===1'b1 && NA2===1'b0)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(NA1===1'b1 && NA2===1'b1)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	ifnone
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	// comb arc NA1 --> Z
	 (NA1 => Z) = (1.0,1.0);

	// comb arc NA2 --> Z
	 (NA2 => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module AOI21B20M1HM( Z, B, NA1, NA2 , VDD, VSS);
inout VDD;
inout VSS;
input B, NA1, NA2;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	AOI21B20M1HM_func AOI21B20M1HM_behav_inst(.Z(Z),.B(B),.NA1(NA1),.NA2(NA2),.VDD(VDD),.VSS(VSS));

   `else

	AOI21B20M1HM_func AOI21B20M1HM_inst(.Z(Z),.B(B),.NA1(NA1),.NA2(NA2),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	if(NA1===1'b0 && NA2===1'b1)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(NA1===1'b1 && NA2===1'b0)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(NA1===1'b1 && NA2===1'b1)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	ifnone
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	// comb arc NA1 --> Z
	 (NA1 => Z) = (1.0,1.0);

	// comb arc NA2 --> Z
	 (NA2 => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module AOI21B20M2HM( Z, B, NA1, NA2 , VDD, VSS);
inout VDD;
inout VSS;
input B, NA1, NA2;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	AOI21B20M2HM_func AOI21B20M2HM_behav_inst(.Z(Z),.B(B),.NA1(NA1),.NA2(NA2),.VDD(VDD),.VSS(VSS));

   `else

	AOI21B20M2HM_func AOI21B20M2HM_inst(.Z(Z),.B(B),.NA1(NA1),.NA2(NA2),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	if(NA1===1'b0 && NA2===1'b1)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(NA1===1'b1 && NA2===1'b0)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(NA1===1'b1 && NA2===1'b1)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	ifnone
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	// comb arc NA1 --> Z
	 (NA1 => Z) = (1.0,1.0);

	// comb arc NA2 --> Z
	 (NA2 => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module AOI21B20M4HM( Z, B, NA1, NA2 , VDD, VSS);
inout VDD;
inout VSS;
input B, NA1, NA2;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	AOI21B20M4HM_func AOI21B20M4HM_behav_inst(.Z(Z),.B(B),.NA1(NA1),.NA2(NA2),.VDD(VDD),.VSS(VSS));

   `else

	AOI21B20M4HM_func AOI21B20M4HM_inst(.Z(Z),.B(B),.NA1(NA1),.NA2(NA2),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	if(NA1===1'b0 && NA2===1'b1)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(NA1===1'b1 && NA2===1'b0)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(NA1===1'b1 && NA2===1'b1)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	ifnone
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	// comb arc NA1 --> Z
	 (NA1 => Z) = (1.0,1.0);

	// comb arc NA2 --> Z
	 (NA2 => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module AOI21B20M8HM( Z, B, NA1, NA2 , VDD, VSS);
inout VDD;
inout VSS;
input B, NA1, NA2;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	AOI21B20M8HM_func AOI21B20M8HM_behav_inst(.Z(Z),.B(B),.NA1(NA1),.NA2(NA2),.VDD(VDD),.VSS(VSS));

   `else

	AOI21B20M8HM_func AOI21B20M8HM_inst(.Z(Z),.B(B),.NA1(NA1),.NA2(NA2),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	if(NA1===1'b0 && NA2===1'b1)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(NA1===1'b1 && NA2===1'b0)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(NA1===1'b1 && NA2===1'b1)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	ifnone
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	// comb arc NA1 --> Z
	 (NA1 => Z) = (1.0,1.0);

	// comb arc NA2 --> Z
	 (NA2 => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module AOI21M0HM( Z, A1, A2, B , VDD, VSS);
inout VDD;
inout VSS;
input A1, A2, B;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	AOI21M0HM_func AOI21M0HM_behav_inst(.Z(Z),.A1(A1),.A2(A2),.B(B),.VDD(VDD),.VSS(VSS));

   `else

	AOI21M0HM_func AOI21M0HM_inst(.Z(Z),.A1(A1),.A2(A2),.B(B),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	ifnone
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module AOI21M1HM( Z, A1, A2, B , VDD, VSS);
inout VDD;
inout VSS;
input A1, A2, B;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	AOI21M1HM_func AOI21M1HM_behav_inst(.Z(Z),.A1(A1),.A2(A2),.B(B),.VDD(VDD),.VSS(VSS));

   `else

	AOI21M1HM_func AOI21M1HM_inst(.Z(Z),.A1(A1),.A2(A2),.B(B),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	ifnone
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module AOI21M2HM( Z, A1, A2, B , VDD, VSS);
inout VDD;
inout VSS;
input A1, A2, B;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	AOI21M2HM_func AOI21M2HM_behav_inst(.Z(Z),.A1(A1),.A2(A2),.B(B),.VDD(VDD),.VSS(VSS));

   `else

	AOI21M2HM_func AOI21M2HM_inst(.Z(Z),.A1(A1),.A2(A2),.B(B),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	ifnone
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module AOI21M3HM( Z, A1, A2, B , VDD, VSS);
inout VDD;
inout VSS;
input A1, A2, B;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	AOI21M3HM_func AOI21M3HM_behav_inst(.Z(Z),.A1(A1),.A2(A2),.B(B),.VDD(VDD),.VSS(VSS));

   `else

	AOI21M3HM_func AOI21M3HM_inst(.Z(Z),.A1(A1),.A2(A2),.B(B),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	ifnone
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module AOI21M4HM( Z, A1, A2, B , VDD, VSS);
inout VDD;
inout VSS;
input A1, A2, B;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	AOI21M4HM_func AOI21M4HM_behav_inst(.Z(Z),.A1(A1),.A2(A2),.B(B),.VDD(VDD),.VSS(VSS));

   `else

	AOI21M4HM_func AOI21M4HM_inst(.Z(Z),.A1(A1),.A2(A2),.B(B),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	ifnone
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module AOI21M6HM( Z, A1, A2, B , VDD, VSS);
inout VDD;
inout VSS;
input A1, A2, B;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	AOI21M6HM_func AOI21M6HM_behav_inst(.Z(Z),.A1(A1),.A2(A2),.B(B),.VDD(VDD),.VSS(VSS));

   `else

	AOI21M6HM_func AOI21M6HM_inst(.Z(Z),.A1(A1),.A2(A2),.B(B),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	ifnone
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module AOI21M8HM( Z, A1, A2, B , VDD, VSS);
inout VDD;
inout VSS;
input A1, A2, B;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	AOI21M8HM_func AOI21M8HM_behav_inst(.Z(Z),.A1(A1),.A2(A2),.B(B),.VDD(VDD),.VSS(VSS));

   `else

	AOI21M8HM_func AOI21M8HM_inst(.Z(Z),.A1(A1),.A2(A2),.B(B),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	ifnone
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module AOI221M0HM( Z, A1, A2, B1, B2, C , VDD, VSS);
inout VDD;
inout VSS;
input A1, A2, B1, B2, C;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	AOI221M0HM_func AOI221M0HM_behav_inst(.Z(Z),.A1(A1),.A2(A2),.B1(B1),.B2(B2),.C(C),.VDD(VDD),.VSS(VSS));

   `else

	AOI221M0HM_func AOI221M0HM_inst(.Z(Z),.A1(A1),.A2(A2),.B1(B1),.B2(B2),.C(C),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	if(B1===1'b0 && B2===1'b0)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b1)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b0)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	ifnone
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b0)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b1)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b0)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	ifnone
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	ifnone
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	ifnone
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && B1===1'b0 && B2===1'b0)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && B1===1'b0 && B2===1'b1)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && B1===1'b1 && B2===1'b0)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && B1===1'b0 && B2===1'b0)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && B1===1'b0 && B2===1'b1)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && B1===1'b1 && B2===1'b0)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && B1===1'b0 && B2===1'b0)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && B1===1'b0 && B2===1'b1)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && B1===1'b1 && B2===1'b0)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	ifnone
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module AOI221M1HM( Z, A1, A2, B1, B2, C , VDD, VSS);
inout VDD;
inout VSS;
input A1, A2, B1, B2, C;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	AOI221M1HM_func AOI221M1HM_behav_inst(.Z(Z),.A1(A1),.A2(A2),.B1(B1),.B2(B2),.C(C),.VDD(VDD),.VSS(VSS));

   `else

	AOI221M1HM_func AOI221M1HM_inst(.Z(Z),.A1(A1),.A2(A2),.B1(B1),.B2(B2),.C(C),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	if(B1===1'b0 && B2===1'b0)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b1)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b0)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	ifnone
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b0)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b1)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b0)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	ifnone
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	ifnone
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	ifnone
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && B1===1'b0 && B2===1'b0)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && B1===1'b0 && B2===1'b1)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && B1===1'b1 && B2===1'b0)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && B1===1'b0 && B2===1'b0)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && B1===1'b0 && B2===1'b1)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && B1===1'b1 && B2===1'b0)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && B1===1'b0 && B2===1'b0)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && B1===1'b0 && B2===1'b1)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && B1===1'b1 && B2===1'b0)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	ifnone
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module AOI221M2HM( Z, A1, A2, B1, B2, C , VDD, VSS);
inout VDD;
inout VSS;
input A1, A2, B1, B2, C;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	AOI221M2HM_func AOI221M2HM_behav_inst(.Z(Z),.A1(A1),.A2(A2),.B1(B1),.B2(B2),.C(C),.VDD(VDD),.VSS(VSS));

   `else

	AOI221M2HM_func AOI221M2HM_inst(.Z(Z),.A1(A1),.A2(A2),.B1(B1),.B2(B2),.C(C),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	if(B1===1'b0 && B2===1'b0)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b1)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b0)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	ifnone
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b0)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b1)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b0)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	ifnone
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	ifnone
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	ifnone
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && B1===1'b0 && B2===1'b0)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && B1===1'b0 && B2===1'b1)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && B1===1'b1 && B2===1'b0)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && B1===1'b0 && B2===1'b0)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && B1===1'b0 && B2===1'b1)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && B1===1'b1 && B2===1'b0)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && B1===1'b0 && B2===1'b0)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && B1===1'b0 && B2===1'b1)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && B1===1'b1 && B2===1'b0)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	ifnone
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module AOI221M4HM( Z, A1, A2, B1, B2, C , VDD, VSS);
inout VDD;
inout VSS;
input A1, A2, B1, B2, C;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	AOI221M4HM_func AOI221M4HM_behav_inst(.Z(Z),.A1(A1),.A2(A2),.B1(B1),.B2(B2),.C(C),.VDD(VDD),.VSS(VSS));

   `else

	AOI221M4HM_func AOI221M4HM_inst(.Z(Z),.A1(A1),.A2(A2),.B1(B1),.B2(B2),.C(C),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	if(B1===1'b0 && B2===1'b0)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b1)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b0)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	ifnone
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b0)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b1)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b0)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	ifnone
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	ifnone
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	ifnone
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && B1===1'b0 && B2===1'b0)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && B1===1'b0 && B2===1'b1)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && B1===1'b1 && B2===1'b0)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && B1===1'b0 && B2===1'b0)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && B1===1'b0 && B2===1'b1)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && B1===1'b1 && B2===1'b0)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && B1===1'b0 && B2===1'b0)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && B1===1'b0 && B2===1'b1)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && B1===1'b1 && B2===1'b0)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	ifnone
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module AOI221M8HM( Z, A1, A2, B1, B2, C , VDD, VSS);
inout VDD;
inout VSS;
input A1, A2, B1, B2, C;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	AOI221M8HM_func AOI221M8HM_behav_inst(.Z(Z),.A1(A1),.A2(A2),.B1(B1),.B2(B2),.C(C),.VDD(VDD),.VSS(VSS));

   `else

	AOI221M8HM_func AOI221M8HM_inst(.Z(Z),.A1(A1),.A2(A2),.B1(B1),.B2(B2),.C(C),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	if(B1===1'b0 && B2===1'b0)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b1)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b0)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	ifnone
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b0)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b1)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b0)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	ifnone
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	ifnone
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	ifnone
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && B1===1'b0 && B2===1'b0)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && B1===1'b0 && B2===1'b1)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && B1===1'b1 && B2===1'b0)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && B1===1'b0 && B2===1'b0)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && B1===1'b0 && B2===1'b1)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && B1===1'b1 && B2===1'b0)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && B1===1'b0 && B2===1'b0)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && B1===1'b0 && B2===1'b1)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && B1===1'b1 && B2===1'b0)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	ifnone
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module AOI222M0HM( Z, A1, A2, B1, B2, C1, C2 , VDD, VSS);
inout VDD;
inout VSS;
input A1, A2, B1, B2, C1, C2;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	AOI222M0HM_func AOI222M0HM_behav_inst(.Z(Z),.A1(A1),.A2(A2),.B1(B1),.B2(B2),.C1(C1),.C2(C2),.VDD(VDD),.VSS(VSS));

   `else

	AOI222M0HM_func AOI222M0HM_inst(.Z(Z),.A1(A1),.A2(A2),.B1(B1),.B2(B2),.C1(C1),.C2(C2),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	if(B1===1'b0 && B2===1'b0 && C1===1'b0 && C2===1'b0)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b0 && C1===1'b0 && C2===1'b1)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b0 && C1===1'b1 && C2===1'b0)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b1 && C1===1'b0 && C2===1'b0)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b1 && C1===1'b0 && C2===1'b1)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b1 && C1===1'b1 && C2===1'b0)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b0 && C1===1'b0 && C2===1'b0)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b0 && C1===1'b0 && C2===1'b1)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b0 && C1===1'b1 && C2===1'b0)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	ifnone
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b0 && C1===1'b0 && C2===1'b0)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b0 && C1===1'b0 && C2===1'b1)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b0 && C1===1'b1 && C2===1'b0)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b1 && C1===1'b0 && C2===1'b0)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b1 && C1===1'b0 && C2===1'b1)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b1 && C1===1'b1 && C2===1'b0)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b0 && C1===1'b0 && C2===1'b0)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b0 && C1===1'b0 && C2===1'b1)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b0 && C1===1'b1 && C2===1'b0)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	ifnone
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && C1===1'b0 && C2===1'b0)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && C1===1'b0 && C2===1'b1)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && C1===1'b1 && C2===1'b0)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && C1===1'b0 && C2===1'b0)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && C1===1'b0 && C2===1'b1)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && C1===1'b1 && C2===1'b0)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && C1===1'b0 && C2===1'b0)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && C1===1'b0 && C2===1'b1)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && C1===1'b1 && C2===1'b0)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	ifnone
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && C1===1'b0 && C2===1'b0)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && C1===1'b0 && C2===1'b1)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && C1===1'b1 && C2===1'b0)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && C1===1'b0 && C2===1'b0)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && C1===1'b0 && C2===1'b1)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && C1===1'b1 && C2===1'b0)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && C1===1'b0 && C2===1'b0)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && C1===1'b0 && C2===1'b1)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && C1===1'b1 && C2===1'b0)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	ifnone
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && B1===1'b0 && B2===1'b0)
	// comb arc C1 --> Z
	 (C1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && B1===1'b0 && B2===1'b1)
	// comb arc C1 --> Z
	 (C1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && B1===1'b1 && B2===1'b0)
	// comb arc C1 --> Z
	 (C1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && B1===1'b0 && B2===1'b0)
	// comb arc C1 --> Z
	 (C1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && B1===1'b0 && B2===1'b1)
	// comb arc C1 --> Z
	 (C1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && B1===1'b1 && B2===1'b0)
	// comb arc C1 --> Z
	 (C1 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && B1===1'b0 && B2===1'b0)
	// comb arc C1 --> Z
	 (C1 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && B1===1'b0 && B2===1'b1)
	// comb arc C1 --> Z
	 (C1 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && B1===1'b1 && B2===1'b0)
	// comb arc C1 --> Z
	 (C1 => Z) = (1.0,1.0);

	ifnone
	// comb arc C1 --> Z
	 (C1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && B1===1'b0 && B2===1'b0)
	// comb arc C2 --> Z
	 (C2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && B1===1'b0 && B2===1'b1)
	// comb arc C2 --> Z
	 (C2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && B1===1'b1 && B2===1'b0)
	// comb arc C2 --> Z
	 (C2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && B1===1'b0 && B2===1'b0)
	// comb arc C2 --> Z
	 (C2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && B1===1'b0 && B2===1'b1)
	// comb arc C2 --> Z
	 (C2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && B1===1'b1 && B2===1'b0)
	// comb arc C2 --> Z
	 (C2 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && B1===1'b0 && B2===1'b0)
	// comb arc C2 --> Z
	 (C2 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && B1===1'b0 && B2===1'b1)
	// comb arc C2 --> Z
	 (C2 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && B1===1'b1 && B2===1'b0)
	// comb arc C2 --> Z
	 (C2 => Z) = (1.0,1.0);

	ifnone
	// comb arc C2 --> Z
	 (C2 => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module AOI222M1HM( Z, A1, A2, B1, B2, C1, C2 , VDD, VSS);
inout VDD;
inout VSS;
input A1, A2, B1, B2, C1, C2;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	AOI222M1HM_func AOI222M1HM_behav_inst(.Z(Z),.A1(A1),.A2(A2),.B1(B1),.B2(B2),.C1(C1),.C2(C2),.VDD(VDD),.VSS(VSS));

   `else

	AOI222M1HM_func AOI222M1HM_inst(.Z(Z),.A1(A1),.A2(A2),.B1(B1),.B2(B2),.C1(C1),.C2(C2),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	if(B1===1'b0 && B2===1'b0 && C1===1'b0 && C2===1'b0)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b0 && C1===1'b0 && C2===1'b1)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b0 && C1===1'b1 && C2===1'b0)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b1 && C1===1'b0 && C2===1'b0)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b1 && C1===1'b0 && C2===1'b1)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b1 && C1===1'b1 && C2===1'b0)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b0 && C1===1'b0 && C2===1'b0)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b0 && C1===1'b0 && C2===1'b1)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b0 && C1===1'b1 && C2===1'b0)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	ifnone
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b0 && C1===1'b0 && C2===1'b0)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b0 && C1===1'b0 && C2===1'b1)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b0 && C1===1'b1 && C2===1'b0)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b1 && C1===1'b0 && C2===1'b0)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b1 && C1===1'b0 && C2===1'b1)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b1 && C1===1'b1 && C2===1'b0)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b0 && C1===1'b0 && C2===1'b0)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b0 && C1===1'b0 && C2===1'b1)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b0 && C1===1'b1 && C2===1'b0)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	ifnone
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && C1===1'b0 && C2===1'b0)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && C1===1'b0 && C2===1'b1)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && C1===1'b1 && C2===1'b0)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && C1===1'b0 && C2===1'b0)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && C1===1'b0 && C2===1'b1)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && C1===1'b1 && C2===1'b0)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && C1===1'b0 && C2===1'b0)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && C1===1'b0 && C2===1'b1)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && C1===1'b1 && C2===1'b0)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	ifnone
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && C1===1'b0 && C2===1'b0)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && C1===1'b0 && C2===1'b1)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && C1===1'b1 && C2===1'b0)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && C1===1'b0 && C2===1'b0)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && C1===1'b0 && C2===1'b1)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && C1===1'b1 && C2===1'b0)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && C1===1'b0 && C2===1'b0)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && C1===1'b0 && C2===1'b1)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && C1===1'b1 && C2===1'b0)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	ifnone
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && B1===1'b0 && B2===1'b0)
	// comb arc C1 --> Z
	 (C1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && B1===1'b0 && B2===1'b1)
	// comb arc C1 --> Z
	 (C1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && B1===1'b1 && B2===1'b0)
	// comb arc C1 --> Z
	 (C1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && B1===1'b0 && B2===1'b0)
	// comb arc C1 --> Z
	 (C1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && B1===1'b0 && B2===1'b1)
	// comb arc C1 --> Z
	 (C1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && B1===1'b1 && B2===1'b0)
	// comb arc C1 --> Z
	 (C1 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && B1===1'b0 && B2===1'b0)
	// comb arc C1 --> Z
	 (C1 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && B1===1'b0 && B2===1'b1)
	// comb arc C1 --> Z
	 (C1 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && B1===1'b1 && B2===1'b0)
	// comb arc C1 --> Z
	 (C1 => Z) = (1.0,1.0);

	ifnone
	// comb arc C1 --> Z
	 (C1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && B1===1'b0 && B2===1'b0)
	// comb arc C2 --> Z
	 (C2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && B1===1'b0 && B2===1'b1)
	// comb arc C2 --> Z
	 (C2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && B1===1'b1 && B2===1'b0)
	// comb arc C2 --> Z
	 (C2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && B1===1'b0 && B2===1'b0)
	// comb arc C2 --> Z
	 (C2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && B1===1'b0 && B2===1'b1)
	// comb arc C2 --> Z
	 (C2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && B1===1'b1 && B2===1'b0)
	// comb arc C2 --> Z
	 (C2 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && B1===1'b0 && B2===1'b0)
	// comb arc C2 --> Z
	 (C2 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && B1===1'b0 && B2===1'b1)
	// comb arc C2 --> Z
	 (C2 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && B1===1'b1 && B2===1'b0)
	// comb arc C2 --> Z
	 (C2 => Z) = (1.0,1.0);

	ifnone
	// comb arc C2 --> Z
	 (C2 => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module AOI222M2HM( Z, A1, A2, B1, B2, C1, C2 , VDD, VSS);
inout VDD;
inout VSS;
input A1, A2, B1, B2, C1, C2;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	AOI222M2HM_func AOI222M2HM_behav_inst(.Z(Z),.A1(A1),.A2(A2),.B1(B1),.B2(B2),.C1(C1),.C2(C2),.VDD(VDD),.VSS(VSS));

   `else

	AOI222M2HM_func AOI222M2HM_inst(.Z(Z),.A1(A1),.A2(A2),.B1(B1),.B2(B2),.C1(C1),.C2(C2),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	if(B1===1'b0 && B2===1'b0 && C1===1'b0 && C2===1'b0)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b0 && C1===1'b0 && C2===1'b1)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b0 && C1===1'b1 && C2===1'b0)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b1 && C1===1'b0 && C2===1'b0)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b1 && C1===1'b0 && C2===1'b1)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b1 && C1===1'b1 && C2===1'b0)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b0 && C1===1'b0 && C2===1'b0)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b0 && C1===1'b0 && C2===1'b1)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b0 && C1===1'b1 && C2===1'b0)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	ifnone
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b0 && C1===1'b0 && C2===1'b0)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b0 && C1===1'b0 && C2===1'b1)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b0 && C1===1'b1 && C2===1'b0)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b1 && C1===1'b0 && C2===1'b0)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b1 && C1===1'b0 && C2===1'b1)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b1 && C1===1'b1 && C2===1'b0)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b0 && C1===1'b0 && C2===1'b0)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b0 && C1===1'b0 && C2===1'b1)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b0 && C1===1'b1 && C2===1'b0)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	ifnone
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && C1===1'b0 && C2===1'b0)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && C1===1'b0 && C2===1'b1)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && C1===1'b1 && C2===1'b0)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && C1===1'b0 && C2===1'b0)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && C1===1'b0 && C2===1'b1)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && C1===1'b1 && C2===1'b0)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && C1===1'b0 && C2===1'b0)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && C1===1'b0 && C2===1'b1)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && C1===1'b1 && C2===1'b0)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	ifnone
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && C1===1'b0 && C2===1'b0)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && C1===1'b0 && C2===1'b1)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && C1===1'b1 && C2===1'b0)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && C1===1'b0 && C2===1'b0)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && C1===1'b0 && C2===1'b1)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && C1===1'b1 && C2===1'b0)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && C1===1'b0 && C2===1'b0)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && C1===1'b0 && C2===1'b1)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && C1===1'b1 && C2===1'b0)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	ifnone
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && B1===1'b0 && B2===1'b0)
	// comb arc C1 --> Z
	 (C1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && B1===1'b0 && B2===1'b1)
	// comb arc C1 --> Z
	 (C1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && B1===1'b1 && B2===1'b0)
	// comb arc C1 --> Z
	 (C1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && B1===1'b0 && B2===1'b0)
	// comb arc C1 --> Z
	 (C1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && B1===1'b0 && B2===1'b1)
	// comb arc C1 --> Z
	 (C1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && B1===1'b1 && B2===1'b0)
	// comb arc C1 --> Z
	 (C1 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && B1===1'b0 && B2===1'b0)
	// comb arc C1 --> Z
	 (C1 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && B1===1'b0 && B2===1'b1)
	// comb arc C1 --> Z
	 (C1 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && B1===1'b1 && B2===1'b0)
	// comb arc C1 --> Z
	 (C1 => Z) = (1.0,1.0);

	ifnone
	// comb arc C1 --> Z
	 (C1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && B1===1'b0 && B2===1'b0)
	// comb arc C2 --> Z
	 (C2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && B1===1'b0 && B2===1'b1)
	// comb arc C2 --> Z
	 (C2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && B1===1'b1 && B2===1'b0)
	// comb arc C2 --> Z
	 (C2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && B1===1'b0 && B2===1'b0)
	// comb arc C2 --> Z
	 (C2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && B1===1'b0 && B2===1'b1)
	// comb arc C2 --> Z
	 (C2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && B1===1'b1 && B2===1'b0)
	// comb arc C2 --> Z
	 (C2 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && B1===1'b0 && B2===1'b0)
	// comb arc C2 --> Z
	 (C2 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && B1===1'b0 && B2===1'b1)
	// comb arc C2 --> Z
	 (C2 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && B1===1'b1 && B2===1'b0)
	// comb arc C2 --> Z
	 (C2 => Z) = (1.0,1.0);

	ifnone
	// comb arc C2 --> Z
	 (C2 => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module AOI222M4HM( Z, A1, A2, B1, B2, C1, C2 , VDD, VSS);
inout VDD;
inout VSS;
input A1, A2, B1, B2, C1, C2;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	AOI222M4HM_func AOI222M4HM_behav_inst(.Z(Z),.A1(A1),.A2(A2),.B1(B1),.B2(B2),.C1(C1),.C2(C2),.VDD(VDD),.VSS(VSS));

   `else

	AOI222M4HM_func AOI222M4HM_inst(.Z(Z),.A1(A1),.A2(A2),.B1(B1),.B2(B2),.C1(C1),.C2(C2),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	if(B1===1'b0 && B2===1'b0 && C1===1'b0 && C2===1'b0)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b0 && C1===1'b0 && C2===1'b1)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b0 && C1===1'b1 && C2===1'b0)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b1 && C1===1'b0 && C2===1'b0)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b1 && C1===1'b0 && C2===1'b1)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b1 && C1===1'b1 && C2===1'b0)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b0 && C1===1'b0 && C2===1'b0)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b0 && C1===1'b0 && C2===1'b1)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b0 && C1===1'b1 && C2===1'b0)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	ifnone
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b0 && C1===1'b0 && C2===1'b0)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b0 && C1===1'b0 && C2===1'b1)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b0 && C1===1'b1 && C2===1'b0)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b1 && C1===1'b0 && C2===1'b0)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b1 && C1===1'b0 && C2===1'b1)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b1 && C1===1'b1 && C2===1'b0)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b0 && C1===1'b0 && C2===1'b0)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b0 && C1===1'b0 && C2===1'b1)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b0 && C1===1'b1 && C2===1'b0)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	ifnone
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && C1===1'b0 && C2===1'b0)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && C1===1'b0 && C2===1'b1)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && C1===1'b1 && C2===1'b0)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && C1===1'b0 && C2===1'b0)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && C1===1'b0 && C2===1'b1)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && C1===1'b1 && C2===1'b0)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && C1===1'b0 && C2===1'b0)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && C1===1'b0 && C2===1'b1)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && C1===1'b1 && C2===1'b0)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	ifnone
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && C1===1'b0 && C2===1'b0)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && C1===1'b0 && C2===1'b1)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && C1===1'b1 && C2===1'b0)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && C1===1'b0 && C2===1'b0)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && C1===1'b0 && C2===1'b1)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && C1===1'b1 && C2===1'b0)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && C1===1'b0 && C2===1'b0)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && C1===1'b0 && C2===1'b1)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && C1===1'b1 && C2===1'b0)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	ifnone
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && B1===1'b0 && B2===1'b0)
	// comb arc C1 --> Z
	 (C1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && B1===1'b0 && B2===1'b1)
	// comb arc C1 --> Z
	 (C1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && B1===1'b1 && B2===1'b0)
	// comb arc C1 --> Z
	 (C1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && B1===1'b0 && B2===1'b0)
	// comb arc C1 --> Z
	 (C1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && B1===1'b0 && B2===1'b1)
	// comb arc C1 --> Z
	 (C1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && B1===1'b1 && B2===1'b0)
	// comb arc C1 --> Z
	 (C1 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && B1===1'b0 && B2===1'b0)
	// comb arc C1 --> Z
	 (C1 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && B1===1'b0 && B2===1'b1)
	// comb arc C1 --> Z
	 (C1 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && B1===1'b1 && B2===1'b0)
	// comb arc C1 --> Z
	 (C1 => Z) = (1.0,1.0);

	ifnone
	// comb arc C1 --> Z
	 (C1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && B1===1'b0 && B2===1'b0)
	// comb arc C2 --> Z
	 (C2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && B1===1'b0 && B2===1'b1)
	// comb arc C2 --> Z
	 (C2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && B1===1'b1 && B2===1'b0)
	// comb arc C2 --> Z
	 (C2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && B1===1'b0 && B2===1'b0)
	// comb arc C2 --> Z
	 (C2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && B1===1'b0 && B2===1'b1)
	// comb arc C2 --> Z
	 (C2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && B1===1'b1 && B2===1'b0)
	// comb arc C2 --> Z
	 (C2 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && B1===1'b0 && B2===1'b0)
	// comb arc C2 --> Z
	 (C2 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && B1===1'b0 && B2===1'b1)
	// comb arc C2 --> Z
	 (C2 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && B1===1'b1 && B2===1'b0)
	// comb arc C2 --> Z
	 (C2 => Z) = (1.0,1.0);

	ifnone
	// comb arc C2 --> Z
	 (C2 => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module AOI222M8HM( Z, A1, A2, B1, B2, C1, C2 , VDD, VSS);
inout VDD;
inout VSS;
input A1, A2, B1, B2, C1, C2;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	AOI222M8HM_func AOI222M8HM_behav_inst(.Z(Z),.A1(A1),.A2(A2),.B1(B1),.B2(B2),.C1(C1),.C2(C2),.VDD(VDD),.VSS(VSS));

   `else

	AOI222M8HM_func AOI222M8HM_inst(.Z(Z),.A1(A1),.A2(A2),.B1(B1),.B2(B2),.C1(C1),.C2(C2),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	if(B1===1'b0 && B2===1'b0 && C1===1'b0 && C2===1'b0)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b0 && C1===1'b0 && C2===1'b1)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b0 && C1===1'b1 && C2===1'b0)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b1 && C1===1'b0 && C2===1'b0)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b1 && C1===1'b0 && C2===1'b1)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b1 && C1===1'b1 && C2===1'b0)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b0 && C1===1'b0 && C2===1'b0)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b0 && C1===1'b0 && C2===1'b1)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b0 && C1===1'b1 && C2===1'b0)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	ifnone
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b0 && C1===1'b0 && C2===1'b0)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b0 && C1===1'b0 && C2===1'b1)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b0 && C1===1'b1 && C2===1'b0)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b1 && C1===1'b0 && C2===1'b0)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b1 && C1===1'b0 && C2===1'b1)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b1 && C1===1'b1 && C2===1'b0)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b0 && C1===1'b0 && C2===1'b0)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b0 && C1===1'b0 && C2===1'b1)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b0 && C1===1'b1 && C2===1'b0)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	ifnone
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && C1===1'b0 && C2===1'b0)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && C1===1'b0 && C2===1'b1)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && C1===1'b1 && C2===1'b0)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && C1===1'b0 && C2===1'b0)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && C1===1'b0 && C2===1'b1)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && C1===1'b1 && C2===1'b0)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && C1===1'b0 && C2===1'b0)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && C1===1'b0 && C2===1'b1)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && C1===1'b1 && C2===1'b0)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	ifnone
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && C1===1'b0 && C2===1'b0)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && C1===1'b0 && C2===1'b1)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && C1===1'b1 && C2===1'b0)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && C1===1'b0 && C2===1'b0)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && C1===1'b0 && C2===1'b1)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && C1===1'b1 && C2===1'b0)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && C1===1'b0 && C2===1'b0)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && C1===1'b0 && C2===1'b1)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && C1===1'b1 && C2===1'b0)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	ifnone
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && B1===1'b0 && B2===1'b0)
	// comb arc C1 --> Z
	 (C1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && B1===1'b0 && B2===1'b1)
	// comb arc C1 --> Z
	 (C1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && B1===1'b1 && B2===1'b0)
	// comb arc C1 --> Z
	 (C1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && B1===1'b0 && B2===1'b0)
	// comb arc C1 --> Z
	 (C1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && B1===1'b0 && B2===1'b1)
	// comb arc C1 --> Z
	 (C1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && B1===1'b1 && B2===1'b0)
	// comb arc C1 --> Z
	 (C1 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && B1===1'b0 && B2===1'b0)
	// comb arc C1 --> Z
	 (C1 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && B1===1'b0 && B2===1'b1)
	// comb arc C1 --> Z
	 (C1 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && B1===1'b1 && B2===1'b0)
	// comb arc C1 --> Z
	 (C1 => Z) = (1.0,1.0);

	ifnone
	// comb arc C1 --> Z
	 (C1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && B1===1'b0 && B2===1'b0)
	// comb arc C2 --> Z
	 (C2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && B1===1'b0 && B2===1'b1)
	// comb arc C2 --> Z
	 (C2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && B1===1'b1 && B2===1'b0)
	// comb arc C2 --> Z
	 (C2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && B1===1'b0 && B2===1'b0)
	// comb arc C2 --> Z
	 (C2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && B1===1'b0 && B2===1'b1)
	// comb arc C2 --> Z
	 (C2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && B1===1'b1 && B2===1'b0)
	// comb arc C2 --> Z
	 (C2 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && B1===1'b0 && B2===1'b0)
	// comb arc C2 --> Z
	 (C2 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && B1===1'b0 && B2===1'b1)
	// comb arc C2 --> Z
	 (C2 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && B1===1'b1 && B2===1'b0)
	// comb arc C2 --> Z
	 (C2 => Z) = (1.0,1.0);

	ifnone
	// comb arc C2 --> Z
	 (C2 => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module AOI22B20M0HM( Z, B1, B2, NA1, NA2 , VDD, VSS);
inout VDD;
inout VSS;
input B1, B2, NA1, NA2;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	AOI22B20M0HM_func AOI22B20M0HM_behav_inst(.Z(Z),.B1(B1),.B2(B2),.NA1(NA1),.NA2(NA2),.VDD(VDD),.VSS(VSS));

   `else

	AOI22B20M0HM_func AOI22B20M0HM_inst(.Z(Z),.B1(B1),.B2(B2),.NA1(NA1),.NA2(NA2),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	if(NA1===1'b0 && NA2===1'b1)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(NA1===1'b1 && NA2===1'b0)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(NA1===1'b1 && NA2===1'b1)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	ifnone
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(NA1===1'b0 && NA2===1'b1)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(NA1===1'b1 && NA2===1'b0)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(NA1===1'b1 && NA2===1'b1)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	ifnone
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b0)
	// comb arc NA1 --> Z
	 (NA1 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b1)
	// comb arc NA1 --> Z
	 (NA1 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b0)
	// comb arc NA1 --> Z
	 (NA1 => Z) = (1.0,1.0);

	ifnone
	// comb arc NA1 --> Z
	 (NA1 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b0)
	// comb arc NA2 --> Z
	 (NA2 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b1)
	// comb arc NA2 --> Z
	 (NA2 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b0)
	// comb arc NA2 --> Z
	 (NA2 => Z) = (1.0,1.0);

	ifnone
	// comb arc NA2 --> Z
	 (NA2 => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module AOI22B20M1HM( Z, B1, B2, NA1, NA2 , VDD, VSS);
inout VDD;
inout VSS;
input B1, B2, NA1, NA2;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	AOI22B20M1HM_func AOI22B20M1HM_behav_inst(.Z(Z),.B1(B1),.B2(B2),.NA1(NA1),.NA2(NA2),.VDD(VDD),.VSS(VSS));

   `else

	AOI22B20M1HM_func AOI22B20M1HM_inst(.Z(Z),.B1(B1),.B2(B2),.NA1(NA1),.NA2(NA2),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	if(NA1===1'b0 && NA2===1'b1)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(NA1===1'b1 && NA2===1'b0)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(NA1===1'b1 && NA2===1'b1)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	ifnone
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(NA1===1'b0 && NA2===1'b1)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(NA1===1'b1 && NA2===1'b0)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(NA1===1'b1 && NA2===1'b1)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	ifnone
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b0)
	// comb arc NA1 --> Z
	 (NA1 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b1)
	// comb arc NA1 --> Z
	 (NA1 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b0)
	// comb arc NA1 --> Z
	 (NA1 => Z) = (1.0,1.0);

	ifnone
	// comb arc NA1 --> Z
	 (NA1 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b0)
	// comb arc NA2 --> Z
	 (NA2 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b1)
	// comb arc NA2 --> Z
	 (NA2 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b0)
	// comb arc NA2 --> Z
	 (NA2 => Z) = (1.0,1.0);

	ifnone
	// comb arc NA2 --> Z
	 (NA2 => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module AOI22B20M2HM( Z, B1, B2, NA1, NA2 , VDD, VSS);
inout VDD;
inout VSS;
input B1, B2, NA1, NA2;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	AOI22B20M2HM_func AOI22B20M2HM_behav_inst(.Z(Z),.B1(B1),.B2(B2),.NA1(NA1),.NA2(NA2),.VDD(VDD),.VSS(VSS));

   `else

	AOI22B20M2HM_func AOI22B20M2HM_inst(.Z(Z),.B1(B1),.B2(B2),.NA1(NA1),.NA2(NA2),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	if(NA1===1'b0 && NA2===1'b1)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(NA1===1'b1 && NA2===1'b0)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(NA1===1'b1 && NA2===1'b1)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	ifnone
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(NA1===1'b0 && NA2===1'b1)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(NA1===1'b1 && NA2===1'b0)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(NA1===1'b1 && NA2===1'b1)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	ifnone
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b0)
	// comb arc NA1 --> Z
	 (NA1 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b1)
	// comb arc NA1 --> Z
	 (NA1 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b0)
	// comb arc NA1 --> Z
	 (NA1 => Z) = (1.0,1.0);

	ifnone
	// comb arc NA1 --> Z
	 (NA1 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b0)
	// comb arc NA2 --> Z
	 (NA2 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b1)
	// comb arc NA2 --> Z
	 (NA2 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b0)
	// comb arc NA2 --> Z
	 (NA2 => Z) = (1.0,1.0);

	ifnone
	// comb arc NA2 --> Z
	 (NA2 => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module AOI22B20M4HM( Z, B1, B2, NA1, NA2 , VDD, VSS);
inout VDD;
inout VSS;
input B1, B2, NA1, NA2;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	AOI22B20M4HM_func AOI22B20M4HM_behav_inst(.Z(Z),.B1(B1),.B2(B2),.NA1(NA1),.NA2(NA2),.VDD(VDD),.VSS(VSS));

   `else

	AOI22B20M4HM_func AOI22B20M4HM_inst(.Z(Z),.B1(B1),.B2(B2),.NA1(NA1),.NA2(NA2),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	if(NA1===1'b0 && NA2===1'b1)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(NA1===1'b1 && NA2===1'b0)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(NA1===1'b1 && NA2===1'b1)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	ifnone
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(NA1===1'b0 && NA2===1'b1)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(NA1===1'b1 && NA2===1'b0)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(NA1===1'b1 && NA2===1'b1)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	ifnone
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b0)
	// comb arc NA1 --> Z
	 (NA1 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b1)
	// comb arc NA1 --> Z
	 (NA1 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b0)
	// comb arc NA1 --> Z
	 (NA1 => Z) = (1.0,1.0);

	ifnone
	// comb arc NA1 --> Z
	 (NA1 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b0)
	// comb arc NA2 --> Z
	 (NA2 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b1)
	// comb arc NA2 --> Z
	 (NA2 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b0)
	// comb arc NA2 --> Z
	 (NA2 => Z) = (1.0,1.0);

	ifnone
	// comb arc NA2 --> Z
	 (NA2 => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module AOI22B20M8HM( Z, B1, B2, NA1, NA2 , VDD, VSS);
inout VDD;
inout VSS;
input B1, B2, NA1, NA2;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	AOI22B20M8HM_func AOI22B20M8HM_behav_inst(.Z(Z),.B1(B1),.B2(B2),.NA1(NA1),.NA2(NA2),.VDD(VDD),.VSS(VSS));

   `else

	AOI22B20M8HM_func AOI22B20M8HM_inst(.Z(Z),.B1(B1),.B2(B2),.NA1(NA1),.NA2(NA2),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	if(NA1===1'b0 && NA2===1'b1)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(NA1===1'b1 && NA2===1'b0)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(NA1===1'b1 && NA2===1'b1)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	ifnone
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(NA1===1'b0 && NA2===1'b1)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(NA1===1'b1 && NA2===1'b0)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(NA1===1'b1 && NA2===1'b1)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	ifnone
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b0)
	// comb arc NA1 --> Z
	 (NA1 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b1)
	// comb arc NA1 --> Z
	 (NA1 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b0)
	// comb arc NA1 --> Z
	 (NA1 => Z) = (1.0,1.0);

	ifnone
	// comb arc NA1 --> Z
	 (NA1 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b0)
	// comb arc NA2 --> Z
	 (NA2 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b1)
	// comb arc NA2 --> Z
	 (NA2 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b0)
	// comb arc NA2 --> Z
	 (NA2 => Z) = (1.0,1.0);

	ifnone
	// comb arc NA2 --> Z
	 (NA2 => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module AOI22M0HM( Z, A1, A2, B1, B2 , VDD, VSS);
inout VDD;
inout VSS;
input A1, A2, B1, B2;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	AOI22M0HM_func AOI22M0HM_behav_inst(.Z(Z),.A1(A1),.A2(A2),.B1(B1),.B2(B2),.VDD(VDD),.VSS(VSS));

   `else

	AOI22M0HM_func AOI22M0HM_inst(.Z(Z),.A1(A1),.A2(A2),.B1(B1),.B2(B2),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	if(B1===1'b0 && B2===1'b0)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b1)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b0)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	ifnone
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b0)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b1)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b0)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	ifnone
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	ifnone
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	ifnone
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module AOI22M1HM( Z, A1, A2, B1, B2 , VDD, VSS);
inout VDD;
inout VSS;
input A1, A2, B1, B2;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	AOI22M1HM_func AOI22M1HM_behav_inst(.Z(Z),.A1(A1),.A2(A2),.B1(B1),.B2(B2),.VDD(VDD),.VSS(VSS));

   `else

	AOI22M1HM_func AOI22M1HM_inst(.Z(Z),.A1(A1),.A2(A2),.B1(B1),.B2(B2),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	if(B1===1'b0 && B2===1'b0)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b1)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b0)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	ifnone
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b0)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b1)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b0)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	ifnone
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	ifnone
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	ifnone
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module AOI22M2HM( Z, A1, A2, B1, B2 , VDD, VSS);
inout VDD;
inout VSS;
input A1, A2, B1, B2;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	AOI22M2HM_func AOI22M2HM_behav_inst(.Z(Z),.A1(A1),.A2(A2),.B1(B1),.B2(B2),.VDD(VDD),.VSS(VSS));

   `else

	AOI22M2HM_func AOI22M2HM_inst(.Z(Z),.A1(A1),.A2(A2),.B1(B1),.B2(B2),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	if(B1===1'b0 && B2===1'b0)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b1)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b0)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	ifnone
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b0)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b1)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b0)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	ifnone
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	ifnone
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	ifnone
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module AOI22M4HM( Z, A1, A2, B1, B2 , VDD, VSS);
inout VDD;
inout VSS;
input A1, A2, B1, B2;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	AOI22M4HM_func AOI22M4HM_behav_inst(.Z(Z),.A1(A1),.A2(A2),.B1(B1),.B2(B2),.VDD(VDD),.VSS(VSS));

   `else

	AOI22M4HM_func AOI22M4HM_inst(.Z(Z),.A1(A1),.A2(A2),.B1(B1),.B2(B2),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	if(B1===1'b0 && B2===1'b0)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b1)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b0)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	ifnone
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b0)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b1)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b0)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	ifnone
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	ifnone
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	ifnone
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module AOI22M8HM( Z, A1, A2, B1, B2 , VDD, VSS);
inout VDD;
inout VSS;
input A1, A2, B1, B2;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	AOI22M8HM_func AOI22M8HM_behav_inst(.Z(Z),.A1(A1),.A2(A2),.B1(B1),.B2(B2),.VDD(VDD),.VSS(VSS));

   `else

	AOI22M8HM_func AOI22M8HM_inst(.Z(Z),.A1(A1),.A2(A2),.B1(B1),.B2(B2),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	if(B1===1'b0 && B2===1'b0)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b1)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b0)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	ifnone
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b0)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b1)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b0)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	ifnone
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	ifnone
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	ifnone
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module AOI31M0HM( Z, A1, A2, A3, B , VDD, VSS);
inout VDD;
inout VSS;
input A1, A2, A3, B;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	AOI31M0HM_func AOI31M0HM_behav_inst(.Z(Z),.A1(A1),.A2(A2),.A3(A3),.B(B),.VDD(VDD),.VSS(VSS));

   `else

	AOI31M0HM_func AOI31M0HM_inst(.Z(Z),.A1(A1),.A2(A2),.A3(A3),.B(B),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	// comb arc A3 --> Z
	 (A3 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && A3===1'b0)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && A3===1'b1)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && A3===1'b0)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && A3===1'b1)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && A3===1'b0)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && A3===1'b1)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b1 && A3===1'b0)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	ifnone
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module AOI31M1HM( Z, A1, A2, A3, B , VDD, VSS);
inout VDD;
inout VSS;
input A1, A2, A3, B;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	AOI31M1HM_func AOI31M1HM_behav_inst(.Z(Z),.A1(A1),.A2(A2),.A3(A3),.B(B),.VDD(VDD),.VSS(VSS));

   `else

	AOI31M1HM_func AOI31M1HM_inst(.Z(Z),.A1(A1),.A2(A2),.A3(A3),.B(B),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	// comb arc A3 --> Z
	 (A3 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && A3===1'b0)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && A3===1'b1)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && A3===1'b0)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && A3===1'b1)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && A3===1'b0)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && A3===1'b1)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b1 && A3===1'b0)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	ifnone
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module AOI31M2HM( Z, A1, A2, A3, B , VDD, VSS);
inout VDD;
inout VSS;
input A1, A2, A3, B;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	AOI31M2HM_func AOI31M2HM_behav_inst(.Z(Z),.A1(A1),.A2(A2),.A3(A3),.B(B),.VDD(VDD),.VSS(VSS));

   `else

	AOI31M2HM_func AOI31M2HM_inst(.Z(Z),.A1(A1),.A2(A2),.A3(A3),.B(B),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	// comb arc A3 --> Z
	 (A3 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && A3===1'b0)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && A3===1'b1)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && A3===1'b0)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && A3===1'b1)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && A3===1'b0)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && A3===1'b1)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b1 && A3===1'b0)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	ifnone
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module AOI31M4HM( Z, A1, A2, A3, B , VDD, VSS);
inout VDD;
inout VSS;
input A1, A2, A3, B;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	AOI31M4HM_func AOI31M4HM_behav_inst(.Z(Z),.A1(A1),.A2(A2),.A3(A3),.B(B),.VDD(VDD),.VSS(VSS));

   `else

	AOI31M4HM_func AOI31M4HM_inst(.Z(Z),.A1(A1),.A2(A2),.A3(A3),.B(B),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	// comb arc A3 --> Z
	 (A3 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && A3===1'b0)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && A3===1'b1)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && A3===1'b0)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && A3===1'b1)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && A3===1'b0)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && A3===1'b1)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b1 && A3===1'b0)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	ifnone
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module AOI31M8HM( Z, A1, A2, A3, B , VDD, VSS);
inout VDD;
inout VSS;
input A1, A2, A3, B;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	AOI31M8HM_func AOI31M8HM_behav_inst(.Z(Z),.A1(A1),.A2(A2),.A3(A3),.B(B),.VDD(VDD),.VSS(VSS));

   `else

	AOI31M8HM_func AOI31M8HM_inst(.Z(Z),.A1(A1),.A2(A2),.A3(A3),.B(B),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	// comb arc A3 --> Z
	 (A3 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && A3===1'b0)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && A3===1'b1)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && A3===1'b0)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && A3===1'b1)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && A3===1'b0)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && A3===1'b1)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b1 && A3===1'b0)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	ifnone
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module AOI32M0HM( Z, A1, A2, A3, B1, B2 , VDD, VSS);
inout VDD;
inout VSS;
input A1, A2, A3, B1, B2;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	AOI32M0HM_func AOI32M0HM_behav_inst(.Z(Z),.A1(A1),.A2(A2),.A3(A3),.B1(B1),.B2(B2),.VDD(VDD),.VSS(VSS));

   `else

	AOI32M0HM_func AOI32M0HM_inst(.Z(Z),.A1(A1),.A2(A2),.A3(A3),.B1(B1),.B2(B2),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	if(B1===1'b0 && B2===1'b0)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b1)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b0)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	ifnone
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b0)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b1)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b0)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	ifnone
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b0)
	// comb arc A3 --> Z
	 (A3 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b1)
	// comb arc A3 --> Z
	 (A3 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b0)
	// comb arc A3 --> Z
	 (A3 => Z) = (1.0,1.0);

	ifnone
	// comb arc A3 --> Z
	 (A3 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && A3===1'b0)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && A3===1'b1)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && A3===1'b0)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && A3===1'b1)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && A3===1'b0)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && A3===1'b1)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b1 && A3===1'b0)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	ifnone
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && A3===1'b0)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && A3===1'b1)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && A3===1'b0)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && A3===1'b1)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && A3===1'b0)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && A3===1'b1)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b1 && A3===1'b0)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	ifnone
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module AOI32M1HM( Z, A1, A2, A3, B1, B2 , VDD, VSS);
inout VDD;
inout VSS;
input A1, A2, A3, B1, B2;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	AOI32M1HM_func AOI32M1HM_behav_inst(.Z(Z),.A1(A1),.A2(A2),.A3(A3),.B1(B1),.B2(B2),.VDD(VDD),.VSS(VSS));

   `else

	AOI32M1HM_func AOI32M1HM_inst(.Z(Z),.A1(A1),.A2(A2),.A3(A3),.B1(B1),.B2(B2),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	if(B1===1'b0 && B2===1'b0)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b1)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b0)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	ifnone
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b0)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b1)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b0)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	ifnone
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b0)
	// comb arc A3 --> Z
	 (A3 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b1)
	// comb arc A3 --> Z
	 (A3 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b0)
	// comb arc A3 --> Z
	 (A3 => Z) = (1.0,1.0);

	ifnone
	// comb arc A3 --> Z
	 (A3 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && A3===1'b0)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && A3===1'b1)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && A3===1'b0)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && A3===1'b1)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && A3===1'b0)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && A3===1'b1)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b1 && A3===1'b0)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	ifnone
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && A3===1'b0)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && A3===1'b1)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && A3===1'b0)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && A3===1'b1)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && A3===1'b0)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && A3===1'b1)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b1 && A3===1'b0)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	ifnone
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module AOI32M2HM( Z, A1, A2, A3, B1, B2 , VDD, VSS);
inout VDD;
inout VSS;
input A1, A2, A3, B1, B2;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	AOI32M2HM_func AOI32M2HM_behav_inst(.Z(Z),.A1(A1),.A2(A2),.A3(A3),.B1(B1),.B2(B2),.VDD(VDD),.VSS(VSS));

   `else

	AOI32M2HM_func AOI32M2HM_inst(.Z(Z),.A1(A1),.A2(A2),.A3(A3),.B1(B1),.B2(B2),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	if(B1===1'b0 && B2===1'b0)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b1)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b0)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	ifnone
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b0)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b1)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b0)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	ifnone
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b0)
	// comb arc A3 --> Z
	 (A3 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b1)
	// comb arc A3 --> Z
	 (A3 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b0)
	// comb arc A3 --> Z
	 (A3 => Z) = (1.0,1.0);

	ifnone
	// comb arc A3 --> Z
	 (A3 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && A3===1'b0)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && A3===1'b1)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && A3===1'b0)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && A3===1'b1)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && A3===1'b0)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && A3===1'b1)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b1 && A3===1'b0)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	ifnone
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && A3===1'b0)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && A3===1'b1)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && A3===1'b0)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && A3===1'b1)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && A3===1'b0)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && A3===1'b1)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b1 && A3===1'b0)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	ifnone
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module AOI32M4HM( Z, A1, A2, A3, B1, B2 , VDD, VSS);
inout VDD;
inout VSS;
input A1, A2, A3, B1, B2;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	AOI32M4HM_func AOI32M4HM_behav_inst(.Z(Z),.A1(A1),.A2(A2),.A3(A3),.B1(B1),.B2(B2),.VDD(VDD),.VSS(VSS));

   `else

	AOI32M4HM_func AOI32M4HM_inst(.Z(Z),.A1(A1),.A2(A2),.A3(A3),.B1(B1),.B2(B2),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	if(B1===1'b0 && B2===1'b0)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b1)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b0)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	ifnone
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b0)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b1)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b0)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	ifnone
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b0)
	// comb arc A3 --> Z
	 (A3 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b1)
	// comb arc A3 --> Z
	 (A3 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b0)
	// comb arc A3 --> Z
	 (A3 => Z) = (1.0,1.0);

	ifnone
	// comb arc A3 --> Z
	 (A3 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && A3===1'b0)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && A3===1'b1)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && A3===1'b0)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && A3===1'b1)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && A3===1'b0)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && A3===1'b1)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b1 && A3===1'b0)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	ifnone
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && A3===1'b0)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && A3===1'b1)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && A3===1'b0)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && A3===1'b1)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && A3===1'b0)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && A3===1'b1)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b1 && A3===1'b0)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	ifnone
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module AOI32M8HM( Z, A1, A2, A3, B1, B2 , VDD, VSS);
inout VDD;
inout VSS;
input A1, A2, A3, B1, B2;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	AOI32M8HM_func AOI32M8HM_behav_inst(.Z(Z),.A1(A1),.A2(A2),.A3(A3),.B1(B1),.B2(B2),.VDD(VDD),.VSS(VSS));

   `else

	AOI32M8HM_func AOI32M8HM_inst(.Z(Z),.A1(A1),.A2(A2),.A3(A3),.B1(B1),.B2(B2),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	if(B1===1'b0 && B2===1'b0)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b1)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b0)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	ifnone
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b0)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b1)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b0)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	ifnone
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b0)
	// comb arc A3 --> Z
	 (A3 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b1)
	// comb arc A3 --> Z
	 (A3 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b0)
	// comb arc A3 --> Z
	 (A3 => Z) = (1.0,1.0);

	ifnone
	// comb arc A3 --> Z
	 (A3 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && A3===1'b0)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && A3===1'b1)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && A3===1'b0)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && A3===1'b1)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && A3===1'b0)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && A3===1'b1)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b1 && A3===1'b0)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	ifnone
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && A3===1'b0)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && A3===1'b1)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && A3===1'b0)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && A3===1'b1)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && A3===1'b0)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && A3===1'b1)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b1 && A3===1'b0)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	ifnone
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module AOI33M0HM( Z, A1, A2, A3, B1, B2, B3 , VDD, VSS);
inout VDD;
inout VSS;
input A1, A2, A3, B1, B2, B3;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	AOI33M0HM_func AOI33M0HM_behav_inst(.Z(Z),.A1(A1),.A2(A2),.A3(A3),.B1(B1),.B2(B2),.B3(B3),.VDD(VDD),.VSS(VSS));

   `else

	AOI33M0HM_func AOI33M0HM_inst(.Z(Z),.A1(A1),.A2(A2),.A3(A3),.B1(B1),.B2(B2),.B3(B3),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	if(B1===1'b0 && B2===1'b0 && B3===1'b0)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b0 && B3===1'b1)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b1 && B3===1'b0)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b1 && B3===1'b1)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b0 && B3===1'b0)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b0 && B3===1'b1)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b1 && B3===1'b0)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	ifnone
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b0 && B3===1'b0)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b0 && B3===1'b1)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b1 && B3===1'b0)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b1 && B3===1'b1)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b0 && B3===1'b0)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b0 && B3===1'b1)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b1 && B3===1'b0)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	ifnone
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b0 && B3===1'b0)
	// comb arc A3 --> Z
	 (A3 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b0 && B3===1'b1)
	// comb arc A3 --> Z
	 (A3 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b1 && B3===1'b0)
	// comb arc A3 --> Z
	 (A3 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b1 && B3===1'b1)
	// comb arc A3 --> Z
	 (A3 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b0 && B3===1'b0)
	// comb arc A3 --> Z
	 (A3 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b0 && B3===1'b1)
	// comb arc A3 --> Z
	 (A3 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b1 && B3===1'b0)
	// comb arc A3 --> Z
	 (A3 => Z) = (1.0,1.0);

	ifnone
	// comb arc A3 --> Z
	 (A3 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && A3===1'b0)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && A3===1'b1)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && A3===1'b0)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && A3===1'b1)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && A3===1'b0)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && A3===1'b1)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b1 && A3===1'b0)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	ifnone
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && A3===1'b0)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && A3===1'b1)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && A3===1'b0)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && A3===1'b1)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && A3===1'b0)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && A3===1'b1)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b1 && A3===1'b0)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	ifnone
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && A3===1'b0)
	// comb arc B3 --> Z
	 (B3 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && A3===1'b1)
	// comb arc B3 --> Z
	 (B3 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && A3===1'b0)
	// comb arc B3 --> Z
	 (B3 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && A3===1'b1)
	// comb arc B3 --> Z
	 (B3 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && A3===1'b0)
	// comb arc B3 --> Z
	 (B3 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && A3===1'b1)
	// comb arc B3 --> Z
	 (B3 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b1 && A3===1'b0)
	// comb arc B3 --> Z
	 (B3 => Z) = (1.0,1.0);

	ifnone
	// comb arc B3 --> Z
	 (B3 => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module AOI33M1HM( Z, A1, A2, A3, B1, B2, B3 , VDD, VSS);
inout VDD;
inout VSS;
input A1, A2, A3, B1, B2, B3;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	AOI33M1HM_func AOI33M1HM_behav_inst(.Z(Z),.A1(A1),.A2(A2),.A3(A3),.B1(B1),.B2(B2),.B3(B3),.VDD(VDD),.VSS(VSS));

   `else

	AOI33M1HM_func AOI33M1HM_inst(.Z(Z),.A1(A1),.A2(A2),.A3(A3),.B1(B1),.B2(B2),.B3(B3),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	if(B1===1'b0 && B2===1'b0 && B3===1'b0)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b0 && B3===1'b1)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b1 && B3===1'b0)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b1 && B3===1'b1)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b0 && B3===1'b0)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b0 && B3===1'b1)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b1 && B3===1'b0)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	ifnone
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b0 && B3===1'b0)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b0 && B3===1'b1)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b1 && B3===1'b0)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b1 && B3===1'b1)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b0 && B3===1'b0)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b0 && B3===1'b1)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b1 && B3===1'b0)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	ifnone
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b0 && B3===1'b0)
	// comb arc A3 --> Z
	 (A3 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b0 && B3===1'b1)
	// comb arc A3 --> Z
	 (A3 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b1 && B3===1'b0)
	// comb arc A3 --> Z
	 (A3 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b1 && B3===1'b1)
	// comb arc A3 --> Z
	 (A3 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b0 && B3===1'b0)
	// comb arc A3 --> Z
	 (A3 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b0 && B3===1'b1)
	// comb arc A3 --> Z
	 (A3 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b1 && B3===1'b0)
	// comb arc A3 --> Z
	 (A3 => Z) = (1.0,1.0);

	ifnone
	// comb arc A3 --> Z
	 (A3 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && A3===1'b0)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && A3===1'b1)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && A3===1'b0)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && A3===1'b1)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && A3===1'b0)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && A3===1'b1)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b1 && A3===1'b0)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	ifnone
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && A3===1'b0)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && A3===1'b1)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && A3===1'b0)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && A3===1'b1)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && A3===1'b0)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && A3===1'b1)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b1 && A3===1'b0)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	ifnone
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && A3===1'b0)
	// comb arc B3 --> Z
	 (B3 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && A3===1'b1)
	// comb arc B3 --> Z
	 (B3 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && A3===1'b0)
	// comb arc B3 --> Z
	 (B3 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && A3===1'b1)
	// comb arc B3 --> Z
	 (B3 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && A3===1'b0)
	// comb arc B3 --> Z
	 (B3 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && A3===1'b1)
	// comb arc B3 --> Z
	 (B3 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b1 && A3===1'b0)
	// comb arc B3 --> Z
	 (B3 => Z) = (1.0,1.0);

	ifnone
	// comb arc B3 --> Z
	 (B3 => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module AOI33M2HM( Z, A1, A2, A3, B1, B2, B3 , VDD, VSS);
inout VDD;
inout VSS;
input A1, A2, A3, B1, B2, B3;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	AOI33M2HM_func AOI33M2HM_behav_inst(.Z(Z),.A1(A1),.A2(A2),.A3(A3),.B1(B1),.B2(B2),.B3(B3),.VDD(VDD),.VSS(VSS));

   `else

	AOI33M2HM_func AOI33M2HM_inst(.Z(Z),.A1(A1),.A2(A2),.A3(A3),.B1(B1),.B2(B2),.B3(B3),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	if(B1===1'b0 && B2===1'b0 && B3===1'b0)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b0 && B3===1'b1)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b1 && B3===1'b0)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b1 && B3===1'b1)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b0 && B3===1'b0)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b0 && B3===1'b1)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b1 && B3===1'b0)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	ifnone
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b0 && B3===1'b0)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b0 && B3===1'b1)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b1 && B3===1'b0)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b1 && B3===1'b1)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b0 && B3===1'b0)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b0 && B3===1'b1)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b1 && B3===1'b0)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	ifnone
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b0 && B3===1'b0)
	// comb arc A3 --> Z
	 (A3 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b0 && B3===1'b1)
	// comb arc A3 --> Z
	 (A3 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b1 && B3===1'b0)
	// comb arc A3 --> Z
	 (A3 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b1 && B3===1'b1)
	// comb arc A3 --> Z
	 (A3 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b0 && B3===1'b0)
	// comb arc A3 --> Z
	 (A3 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b0 && B3===1'b1)
	// comb arc A3 --> Z
	 (A3 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b1 && B3===1'b0)
	// comb arc A3 --> Z
	 (A3 => Z) = (1.0,1.0);

	ifnone
	// comb arc A3 --> Z
	 (A3 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && A3===1'b0)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && A3===1'b1)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && A3===1'b0)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && A3===1'b1)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && A3===1'b0)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && A3===1'b1)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b1 && A3===1'b0)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	ifnone
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && A3===1'b0)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && A3===1'b1)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && A3===1'b0)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && A3===1'b1)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && A3===1'b0)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && A3===1'b1)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b1 && A3===1'b0)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	ifnone
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && A3===1'b0)
	// comb arc B3 --> Z
	 (B3 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && A3===1'b1)
	// comb arc B3 --> Z
	 (B3 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && A3===1'b0)
	// comb arc B3 --> Z
	 (B3 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && A3===1'b1)
	// comb arc B3 --> Z
	 (B3 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && A3===1'b0)
	// comb arc B3 --> Z
	 (B3 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && A3===1'b1)
	// comb arc B3 --> Z
	 (B3 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b1 && A3===1'b0)
	// comb arc B3 --> Z
	 (B3 => Z) = (1.0,1.0);

	ifnone
	// comb arc B3 --> Z
	 (B3 => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module AOI33M4HM( Z, A1, A2, A3, B1, B2, B3 , VDD, VSS);
inout VDD;
inout VSS;
input A1, A2, A3, B1, B2, B3;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	AOI33M4HM_func AOI33M4HM_behav_inst(.Z(Z),.A1(A1),.A2(A2),.A3(A3),.B1(B1),.B2(B2),.B3(B3),.VDD(VDD),.VSS(VSS));

   `else

	AOI33M4HM_func AOI33M4HM_inst(.Z(Z),.A1(A1),.A2(A2),.A3(A3),.B1(B1),.B2(B2),.B3(B3),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	if(B1===1'b0 && B2===1'b0 && B3===1'b0)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b0 && B3===1'b1)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b1 && B3===1'b0)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b1 && B3===1'b1)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b0 && B3===1'b0)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b0 && B3===1'b1)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b1 && B3===1'b0)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	ifnone
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b0 && B3===1'b0)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b0 && B3===1'b1)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b1 && B3===1'b0)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b1 && B3===1'b1)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b0 && B3===1'b0)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b0 && B3===1'b1)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b1 && B3===1'b0)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	ifnone
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b0 && B3===1'b0)
	// comb arc A3 --> Z
	 (A3 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b0 && B3===1'b1)
	// comb arc A3 --> Z
	 (A3 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b1 && B3===1'b0)
	// comb arc A3 --> Z
	 (A3 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b1 && B3===1'b1)
	// comb arc A3 --> Z
	 (A3 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b0 && B3===1'b0)
	// comb arc A3 --> Z
	 (A3 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b0 && B3===1'b1)
	// comb arc A3 --> Z
	 (A3 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b1 && B3===1'b0)
	// comb arc A3 --> Z
	 (A3 => Z) = (1.0,1.0);

	ifnone
	// comb arc A3 --> Z
	 (A3 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && A3===1'b0)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && A3===1'b1)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && A3===1'b0)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && A3===1'b1)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && A3===1'b0)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && A3===1'b1)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b1 && A3===1'b0)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	ifnone
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && A3===1'b0)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && A3===1'b1)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && A3===1'b0)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && A3===1'b1)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && A3===1'b0)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && A3===1'b1)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b1 && A3===1'b0)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	ifnone
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && A3===1'b0)
	// comb arc B3 --> Z
	 (B3 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && A3===1'b1)
	// comb arc B3 --> Z
	 (B3 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && A3===1'b0)
	// comb arc B3 --> Z
	 (B3 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && A3===1'b1)
	// comb arc B3 --> Z
	 (B3 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && A3===1'b0)
	// comb arc B3 --> Z
	 (B3 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && A3===1'b1)
	// comb arc B3 --> Z
	 (B3 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b1 && A3===1'b0)
	// comb arc B3 --> Z
	 (B3 => Z) = (1.0,1.0);

	ifnone
	// comb arc B3 --> Z
	 (B3 => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module AOI33M8HM( Z, A1, A2, A3, B1, B2, B3 , VDD, VSS);
inout VDD;
inout VSS;
input A1, A2, A3, B1, B2, B3;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	AOI33M8HM_func AOI33M8HM_behav_inst(.Z(Z),.A1(A1),.A2(A2),.A3(A3),.B1(B1),.B2(B2),.B3(B3),.VDD(VDD),.VSS(VSS));

   `else

	AOI33M8HM_func AOI33M8HM_inst(.Z(Z),.A1(A1),.A2(A2),.A3(A3),.B1(B1),.B2(B2),.B3(B3),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	if(B1===1'b0 && B2===1'b0 && B3===1'b0)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b0 && B3===1'b1)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b1 && B3===1'b0)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b1 && B3===1'b1)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b0 && B3===1'b0)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b0 && B3===1'b1)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b1 && B3===1'b0)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	ifnone
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b0 && B3===1'b0)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b0 && B3===1'b1)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b1 && B3===1'b0)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b1 && B3===1'b1)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b0 && B3===1'b0)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b0 && B3===1'b1)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b1 && B3===1'b0)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	ifnone
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b0 && B3===1'b0)
	// comb arc A3 --> Z
	 (A3 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b0 && B3===1'b1)
	// comb arc A3 --> Z
	 (A3 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b1 && B3===1'b0)
	// comb arc A3 --> Z
	 (A3 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b1 && B3===1'b1)
	// comb arc A3 --> Z
	 (A3 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b0 && B3===1'b0)
	// comb arc A3 --> Z
	 (A3 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b0 && B3===1'b1)
	// comb arc A3 --> Z
	 (A3 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b1 && B3===1'b0)
	// comb arc A3 --> Z
	 (A3 => Z) = (1.0,1.0);

	ifnone
	// comb arc A3 --> Z
	 (A3 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && A3===1'b0)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && A3===1'b1)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && A3===1'b0)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && A3===1'b1)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && A3===1'b0)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && A3===1'b1)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b1 && A3===1'b0)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	ifnone
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && A3===1'b0)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && A3===1'b1)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && A3===1'b0)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && A3===1'b1)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && A3===1'b0)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && A3===1'b1)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b1 && A3===1'b0)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	ifnone
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && A3===1'b0)
	// comb arc B3 --> Z
	 (B3 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0 && A3===1'b1)
	// comb arc B3 --> Z
	 (B3 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && A3===1'b0)
	// comb arc B3 --> Z
	 (B3 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && A3===1'b1)
	// comb arc B3 --> Z
	 (B3 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && A3===1'b0)
	// comb arc B3 --> Z
	 (B3 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && A3===1'b1)
	// comb arc B3 --> Z
	 (B3 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b1 && A3===1'b0)
	// comb arc B3 --> Z
	 (B3 => Z) = (1.0,1.0);

	ifnone
	// comb arc B3 --> Z
	 (B3 => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module BHDM1HM( Z, VDD, VSS);
inout VDD;
inout VSS;
inout Z;

    // Busholder.
wire io_wire, Z_org;

bufif1 (Z_org, 1'bx, (VDD != 1'b1 || VSS != 1'b0 ));
bufif0 (Z_org, Z, (VDD != 1'b1 || VSS != 1'b0 ));
  buf(weak0,weak1) SMC_I0(Z, io_wire);
  buf              SMC_I1(io_wire, Z_org);
 
endmodule
`endcelldefine

`celldefine
module BUFM10HM( Z, A , VDD, VSS);
inout VDD;
inout VSS;
input A;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	BUFM10HM_func BUFM10HM_behav_inst(.Z(Z),.A(A),.VDD(VDD),.VSS(VSS));

   `else

	BUFM10HM_func BUFM10HM_inst(.Z(Z),.A(A),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module BUFM12HM( Z, A , VDD, VSS);
inout VDD;
inout VSS;
input A;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	BUFM12HM_func BUFM12HM_behav_inst(.Z(Z),.A(A),.VDD(VDD),.VSS(VSS));

   `else

	BUFM12HM_func BUFM12HM_inst(.Z(Z),.A(A),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module BUFM14HM( Z, A , VDD, VSS);
inout VDD;
inout VSS;
input A;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	BUFM14HM_func BUFM14HM_behav_inst(.Z(Z),.A(A),.VDD(VDD),.VSS(VSS));

   `else

	BUFM14HM_func BUFM14HM_inst(.Z(Z),.A(A),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module BUFM16HM( Z, A , VDD, VSS);
inout VDD;
inout VSS;
input A;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	BUFM16HM_func BUFM16HM_behav_inst(.Z(Z),.A(A),.VDD(VDD),.VSS(VSS));

   `else

	BUFM16HM_func BUFM16HM_inst(.Z(Z),.A(A),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module BUFM18HM( Z, A , VDD, VSS);
inout VDD;
inout VSS;
input A;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	BUFM18HM_func BUFM18HM_behav_inst(.Z(Z),.A(A),.VDD(VDD),.VSS(VSS));

   `else

	BUFM18HM_func BUFM18HM_inst(.Z(Z),.A(A),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module BUFM20HM( Z, A , VDD, VSS);
inout VDD;
inout VSS;
input A;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	BUFM20HM_func BUFM20HM_behav_inst(.Z(Z),.A(A),.VDD(VDD),.VSS(VSS));

   `else

	BUFM20HM_func BUFM20HM_inst(.Z(Z),.A(A),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module BUFM24HM( Z, A , VDD, VSS);
inout VDD;
inout VSS;
input A;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	BUFM24HM_func BUFM24HM_behav_inst(.Z(Z),.A(A),.VDD(VDD),.VSS(VSS));

   `else

	BUFM24HM_func BUFM24HM_inst(.Z(Z),.A(A),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module BUFM28HM( Z, A , VDD, VSS);
inout VDD;
inout VSS;
input A;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	BUFM28HM_func BUFM28HM_behav_inst(.Z(Z),.A(A),.VDD(VDD),.VSS(VSS));

   `else

	BUFM28HM_func BUFM28HM_inst(.Z(Z),.A(A),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module BUFM2HM( Z, A , VDD, VSS);
inout VDD;
inout VSS;
input A;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	BUFM2HM_func BUFM2HM_behav_inst(.Z(Z),.A(A),.VDD(VDD),.VSS(VSS));

   `else

	BUFM2HM_func BUFM2HM_inst(.Z(Z),.A(A),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module BUFM32HM( Z, A , VDD, VSS);
inout VDD;
inout VSS;
input A;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	BUFM32HM_func BUFM32HM_behav_inst(.Z(Z),.A(A),.VDD(VDD),.VSS(VSS));

   `else

	BUFM32HM_func BUFM32HM_inst(.Z(Z),.A(A),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module BUFM36HM( Z, A , VDD, VSS);
inout VDD;
inout VSS;
input A;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	BUFM36HM_func BUFM36HM_behav_inst(.Z(Z),.A(A),.VDD(VDD),.VSS(VSS));

   `else

	BUFM36HM_func BUFM36HM_inst(.Z(Z),.A(A),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module BUFM3HM( Z, A , VDD, VSS);
inout VDD;
inout VSS;
input A;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	BUFM3HM_func BUFM3HM_behav_inst(.Z(Z),.A(A),.VDD(VDD),.VSS(VSS));

   `else

	BUFM3HM_func BUFM3HM_inst(.Z(Z),.A(A),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module BUFM40HM( Z, A , VDD, VSS);
inout VDD;
inout VSS;
input A;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	BUFM40HM_func BUFM40HM_behav_inst(.Z(Z),.A(A),.VDD(VDD),.VSS(VSS));

   `else

	BUFM40HM_func BUFM40HM_inst(.Z(Z),.A(A),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module BUFM48HM( Z, A , VDD, VSS);
inout VDD;
inout VSS;
input A;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	BUFM48HM_func BUFM48HM_behav_inst(.Z(Z),.A(A),.VDD(VDD),.VSS(VSS));

   `else

	BUFM48HM_func BUFM48HM_inst(.Z(Z),.A(A),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module BUFM4HM( Z, A , VDD, VSS);
inout VDD;
inout VSS;
input A;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	BUFM4HM_func BUFM4HM_behav_inst(.Z(Z),.A(A),.VDD(VDD),.VSS(VSS));

   `else

	BUFM4HM_func BUFM4HM_inst(.Z(Z),.A(A),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module BUFM5HM( Z, A , VDD, VSS);
inout VDD;
inout VSS;
input A;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	BUFM5HM_func BUFM5HM_behav_inst(.Z(Z),.A(A),.VDD(VDD),.VSS(VSS));

   `else

	BUFM5HM_func BUFM5HM_inst(.Z(Z),.A(A),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module BUFM6HM( Z, A , VDD, VSS);
inout VDD;
inout VSS;
input A;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	BUFM6HM_func BUFM6HM_behav_inst(.Z(Z),.A(A),.VDD(VDD),.VSS(VSS));

   `else

	BUFM6HM_func BUFM6HM_inst(.Z(Z),.A(A),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module BUFM8HM( Z, A , VDD, VSS);
inout VDD;
inout VSS;
input A;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	BUFM8HM_func BUFM8HM_behav_inst(.Z(Z),.A(A),.VDD(VDD),.VSS(VSS));

   `else

	BUFM8HM_func BUFM8HM_inst(.Z(Z),.A(A),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module BUFTM12HM( Z, A, E , VDD, VSS);
inout VDD;
inout VSS;
input A, E;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	BUFTM12HM_func BUFTM12HM_behav_inst(.Z(Z),.A(A),.E(E),.VDD(VDD),.VSS(VSS));

   `else

	BUFTM12HM_func BUFTM12HM_inst(.Z(Z),.A(A),.E(E),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	// comb arc E --> Z
	 (E => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module BUFTM16HM( Z, A, E , VDD, VSS);
inout VDD;
inout VSS;
input A, E;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	BUFTM16HM_func BUFTM16HM_behav_inst(.Z(Z),.A(A),.E(E),.VDD(VDD),.VSS(VSS));

   `else

	BUFTM16HM_func BUFTM16HM_inst(.Z(Z),.A(A),.E(E),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	// comb arc E --> Z
	 (E => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module BUFTM1HM( Z, A, E , VDD, VSS);
inout VDD;
inout VSS;
input A, E;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	BUFTM1HM_func BUFTM1HM_behav_inst(.Z(Z),.A(A),.E(E),.VDD(VDD),.VSS(VSS));

   `else

	BUFTM1HM_func BUFTM1HM_inst(.Z(Z),.A(A),.E(E),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	// comb arc E --> Z
	 (E => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module BUFTM20HM( Z, A, E , VDD, VSS);
inout VDD;
inout VSS;
input A, E;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	BUFTM20HM_func BUFTM20HM_behav_inst(.Z(Z),.A(A),.E(E),.VDD(VDD),.VSS(VSS));

   `else

	BUFTM20HM_func BUFTM20HM_inst(.Z(Z),.A(A),.E(E),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	// comb arc E --> Z
	 (E => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module BUFTM24HM( Z, A, E , VDD, VSS);
inout VDD;
inout VSS;
input A, E;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	BUFTM24HM_func BUFTM24HM_behav_inst(.Z(Z),.A(A),.E(E),.VDD(VDD),.VSS(VSS));

   `else

	BUFTM24HM_func BUFTM24HM_inst(.Z(Z),.A(A),.E(E),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	// comb arc E --> Z
	 (E => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module BUFTM2HM( Z, A, E , VDD, VSS);
inout VDD;
inout VSS;
input A, E;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	BUFTM2HM_func BUFTM2HM_behav_inst(.Z(Z),.A(A),.E(E),.VDD(VDD),.VSS(VSS));

   `else

	BUFTM2HM_func BUFTM2HM_inst(.Z(Z),.A(A),.E(E),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	// comb arc E --> Z
	 (E => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module BUFTM3HM( Z, A, E , VDD, VSS);
inout VDD;
inout VSS;
input A, E;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	BUFTM3HM_func BUFTM3HM_behav_inst(.Z(Z),.A(A),.E(E),.VDD(VDD),.VSS(VSS));

   `else

	BUFTM3HM_func BUFTM3HM_inst(.Z(Z),.A(A),.E(E),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	// comb arc E --> Z
	 (E => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module BUFTM4HM( Z, A, E , VDD, VSS);
inout VDD;
inout VSS;
input A, E;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	BUFTM4HM_func BUFTM4HM_behav_inst(.Z(Z),.A(A),.E(E),.VDD(VDD),.VSS(VSS));

   `else

	BUFTM4HM_func BUFTM4HM_inst(.Z(Z),.A(A),.E(E),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	// comb arc E --> Z
	 (E => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module BUFTM6HM( Z, A, E , VDD, VSS);
inout VDD;
inout VSS;
input A, E;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	BUFTM6HM_func BUFTM6HM_behav_inst(.Z(Z),.A(A),.E(E),.VDD(VDD),.VSS(VSS));

   `else

	BUFTM6HM_func BUFTM6HM_inst(.Z(Z),.A(A),.E(E),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	// comb arc E --> Z
	 (E => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module BUFTM8HM( Z, A, E , VDD, VSS);
inout VDD;
inout VSS;
input A, E;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	BUFTM8HM_func BUFTM8HM_behav_inst(.Z(Z),.A(A),.E(E),.VDD(VDD),.VSS(VSS));

   `else

	BUFTM8HM_func BUFTM8HM_inst(.Z(Z),.A(A),.E(E),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	// comb arc E --> Z
	 (E => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module CKAN2M12HM( Z, A, B , VDD, VSS);
inout VDD;
inout VSS;
input A, B;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	CKAN2M12HM_func CKAN2M12HM_behav_inst(.Z(Z),.A(A),.B(B),.VDD(VDD),.VSS(VSS));

   `else

	CKAN2M12HM_func CKAN2M12HM_inst(.Z(Z),.A(A),.B(B),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module CKAN2M16HM( Z, A, B , VDD, VSS);
inout VDD;
inout VSS;
input A, B;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	CKAN2M16HM_func CKAN2M16HM_behav_inst(.Z(Z),.A(A),.B(B),.VDD(VDD),.VSS(VSS));

   `else

	CKAN2M16HM_func CKAN2M16HM_inst(.Z(Z),.A(A),.B(B),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module CKAN2M2HM( Z, A, B , VDD, VSS);
inout VDD;
inout VSS;
input A, B;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	CKAN2M2HM_func CKAN2M2HM_behav_inst(.Z(Z),.A(A),.B(B),.VDD(VDD),.VSS(VSS));

   `else

	CKAN2M2HM_func CKAN2M2HM_inst(.Z(Z),.A(A),.B(B),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module CKAN2M3HM( Z, A, B , VDD, VSS);
inout VDD;
inout VSS;
input A, B;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	CKAN2M3HM_func CKAN2M3HM_behav_inst(.Z(Z),.A(A),.B(B),.VDD(VDD),.VSS(VSS));

   `else

	CKAN2M3HM_func CKAN2M3HM_inst(.Z(Z),.A(A),.B(B),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module CKAN2M4HM( Z, A, B , VDD, VSS);
inout VDD;
inout VSS;
input A, B;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	CKAN2M4HM_func CKAN2M4HM_behav_inst(.Z(Z),.A(A),.B(B),.VDD(VDD),.VSS(VSS));

   `else

	CKAN2M4HM_func CKAN2M4HM_inst(.Z(Z),.A(A),.B(B),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module CKAN2M6HM( Z, A, B , VDD, VSS);
inout VDD;
inout VSS;
input A, B;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	CKAN2M6HM_func CKAN2M6HM_behav_inst(.Z(Z),.A(A),.B(B),.VDD(VDD),.VSS(VSS));

   `else

	CKAN2M6HM_func CKAN2M6HM_inst(.Z(Z),.A(A),.B(B),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module CKAN2M8HM( Z, A, B , VDD, VSS);
inout VDD;
inout VSS;
input A, B;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	CKAN2M8HM_func CKAN2M8HM_behav_inst(.Z(Z),.A(A),.B(B),.VDD(VDD),.VSS(VSS));

   `else

	CKAN2M8HM_func CKAN2M8HM_inst(.Z(Z),.A(A),.B(B),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module CKBUFM12HM( Z, A , VDD, VSS);
inout VDD;
inout VSS;
input A;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	CKBUFM12HM_func CKBUFM12HM_behav_inst(.Z(Z),.A(A),.VDD(VDD),.VSS(VSS));

   `else

	CKBUFM12HM_func CKBUFM12HM_inst(.Z(Z),.A(A),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module CKBUFM16HM( Z, A , VDD, VSS);
inout VDD;
inout VSS;
input A;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	CKBUFM16HM_func CKBUFM16HM_behav_inst(.Z(Z),.A(A),.VDD(VDD),.VSS(VSS));

   `else

	CKBUFM16HM_func CKBUFM16HM_inst(.Z(Z),.A(A),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module CKBUFM1HM( Z, A , VDD, VSS);
inout VDD;
inout VSS;
input A;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	CKBUFM1HM_func CKBUFM1HM_behav_inst(.Z(Z),.A(A),.VDD(VDD),.VSS(VSS));

   `else

	CKBUFM1HM_func CKBUFM1HM_inst(.Z(Z),.A(A),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module CKBUFM20HM( Z, A , VDD, VSS);
inout VDD;
inout VSS;
input A;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	CKBUFM20HM_func CKBUFM20HM_behav_inst(.Z(Z),.A(A),.VDD(VDD),.VSS(VSS));

   `else

	CKBUFM20HM_func CKBUFM20HM_inst(.Z(Z),.A(A),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module CKBUFM24HM( Z, A , VDD, VSS);
inout VDD;
inout VSS;
input A;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	CKBUFM24HM_func CKBUFM24HM_behav_inst(.Z(Z),.A(A),.VDD(VDD),.VSS(VSS));

   `else

	CKBUFM24HM_func CKBUFM24HM_inst(.Z(Z),.A(A),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module CKBUFM2HM( Z, A , VDD, VSS);
inout VDD;
inout VSS;
input A;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	CKBUFM2HM_func CKBUFM2HM_behav_inst(.Z(Z),.A(A),.VDD(VDD),.VSS(VSS));

   `else

	CKBUFM2HM_func CKBUFM2HM_inst(.Z(Z),.A(A),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module CKBUFM32HM( Z, A , VDD, VSS);
inout VDD;
inout VSS;
input A;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	CKBUFM32HM_func CKBUFM32HM_behav_inst(.Z(Z),.A(A),.VDD(VDD),.VSS(VSS));

   `else

	CKBUFM32HM_func CKBUFM32HM_inst(.Z(Z),.A(A),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module CKBUFM3HM( Z, A , VDD, VSS);
inout VDD;
inout VSS;
input A;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	CKBUFM3HM_func CKBUFM3HM_behav_inst(.Z(Z),.A(A),.VDD(VDD),.VSS(VSS));

   `else

	CKBUFM3HM_func CKBUFM3HM_inst(.Z(Z),.A(A),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module CKBUFM40HM( Z, A , VDD, VSS);
inout VDD;
inout VSS;
input A;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	CKBUFM40HM_func CKBUFM40HM_behav_inst(.Z(Z),.A(A),.VDD(VDD),.VSS(VSS));

   `else

	CKBUFM40HM_func CKBUFM40HM_inst(.Z(Z),.A(A),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module CKBUFM48HM( Z, A , VDD, VSS);
inout VDD;
inout VSS;
input A;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	CKBUFM48HM_func CKBUFM48HM_behav_inst(.Z(Z),.A(A),.VDD(VDD),.VSS(VSS));

   `else

	CKBUFM48HM_func CKBUFM48HM_inst(.Z(Z),.A(A),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module CKBUFM4HM( Z, A , VDD, VSS);
inout VDD;
inout VSS;
input A;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	CKBUFM4HM_func CKBUFM4HM_behav_inst(.Z(Z),.A(A),.VDD(VDD),.VSS(VSS));

   `else

	CKBUFM4HM_func CKBUFM4HM_inst(.Z(Z),.A(A),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module CKBUFM6HM( Z, A , VDD, VSS);
inout VDD;
inout VSS;
input A;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	CKBUFM6HM_func CKBUFM6HM_behav_inst(.Z(Z),.A(A),.VDD(VDD),.VSS(VSS));

   `else

	CKBUFM6HM_func CKBUFM6HM_inst(.Z(Z),.A(A),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module CKBUFM8HM( Z, A , VDD, VSS);
inout VDD;
inout VSS;
input A;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	CKBUFM8HM_func CKBUFM8HM_behav_inst(.Z(Z),.A(A),.VDD(VDD),.VSS(VSS));

   `else

	CKBUFM8HM_func CKBUFM8HM_inst(.Z(Z),.A(A),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module CKINVM12HM( Z, A , VDD, VSS);
inout VDD;
inout VSS;
input A;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	CKINVM12HM_func CKINVM12HM_behav_inst(.Z(Z),.A(A),.VDD(VDD),.VSS(VSS));

   `else

	CKINVM12HM_func CKINVM12HM_inst(.Z(Z),.A(A),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module CKINVM16HM( Z, A , VDD, VSS);
inout VDD;
inout VSS;
input A;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	CKINVM16HM_func CKINVM16HM_behav_inst(.Z(Z),.A(A),.VDD(VDD),.VSS(VSS));

   `else

	CKINVM16HM_func CKINVM16HM_inst(.Z(Z),.A(A),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module CKINVM1HM( Z, A , VDD, VSS);
inout VDD;
inout VSS;
input A;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	CKINVM1HM_func CKINVM1HM_behav_inst(.Z(Z),.A(A),.VDD(VDD),.VSS(VSS));

   `else

	CKINVM1HM_func CKINVM1HM_inst(.Z(Z),.A(A),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module CKINVM20HM( Z, A , VDD, VSS);
inout VDD;
inout VSS;
input A;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	CKINVM20HM_func CKINVM20HM_behav_inst(.Z(Z),.A(A),.VDD(VDD),.VSS(VSS));

   `else

	CKINVM20HM_func CKINVM20HM_inst(.Z(Z),.A(A),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module CKINVM24HM( Z, A , VDD, VSS);
inout VDD;
inout VSS;
input A;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	CKINVM24HM_func CKINVM24HM_behav_inst(.Z(Z),.A(A),.VDD(VDD),.VSS(VSS));

   `else

	CKINVM24HM_func CKINVM24HM_inst(.Z(Z),.A(A),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module CKINVM2HM( Z, A , VDD, VSS);
inout VDD;
inout VSS;
input A;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	CKINVM2HM_func CKINVM2HM_behav_inst(.Z(Z),.A(A),.VDD(VDD),.VSS(VSS));

   `else

	CKINVM2HM_func CKINVM2HM_inst(.Z(Z),.A(A),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module CKINVM32HM( Z, A , VDD, VSS);
inout VDD;
inout VSS;
input A;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	CKINVM32HM_func CKINVM32HM_behav_inst(.Z(Z),.A(A),.VDD(VDD),.VSS(VSS));

   `else

	CKINVM32HM_func CKINVM32HM_inst(.Z(Z),.A(A),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module CKINVM3HM( Z, A , VDD, VSS);
inout VDD;
inout VSS;
input A;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	CKINVM3HM_func CKINVM3HM_behav_inst(.Z(Z),.A(A),.VDD(VDD),.VSS(VSS));

   `else

	CKINVM3HM_func CKINVM3HM_inst(.Z(Z),.A(A),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module CKINVM40HM( Z, A , VDD, VSS);
inout VDD;
inout VSS;
input A;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	CKINVM40HM_func CKINVM40HM_behav_inst(.Z(Z),.A(A),.VDD(VDD),.VSS(VSS));

   `else

	CKINVM40HM_func CKINVM40HM_inst(.Z(Z),.A(A),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module CKINVM48HM( Z, A , VDD, VSS);
inout VDD;
inout VSS;
input A;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	CKINVM48HM_func CKINVM48HM_behav_inst(.Z(Z),.A(A),.VDD(VDD),.VSS(VSS));

   `else

	CKINVM48HM_func CKINVM48HM_inst(.Z(Z),.A(A),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module CKINVM4HM( Z, A , VDD, VSS);
inout VDD;
inout VSS;
input A;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	CKINVM4HM_func CKINVM4HM_behav_inst(.Z(Z),.A(A),.VDD(VDD),.VSS(VSS));

   `else

	CKINVM4HM_func CKINVM4HM_inst(.Z(Z),.A(A),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module CKINVM6HM( Z, A , VDD, VSS);
inout VDD;
inout VSS;
input A;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	CKINVM6HM_func CKINVM6HM_behav_inst(.Z(Z),.A(A),.VDD(VDD),.VSS(VSS));

   `else

	CKINVM6HM_func CKINVM6HM_inst(.Z(Z),.A(A),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module CKINVM8HM( Z, A , VDD, VSS);
inout VDD;
inout VSS;
input A;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	CKINVM8HM_func CKINVM8HM_behav_inst(.Z(Z),.A(A),.VDD(VDD),.VSS(VSS));

   `else

	CKINVM8HM_func CKINVM8HM_inst(.Z(Z),.A(A),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module CKMUX2M12HM( Z, A, B, S , VDD, VSS);
inout VDD;
inout VSS;
input A, B, S;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	CKMUX2M12HM_func CKMUX2M12HM_behav_inst(.Z(Z),.A(A),.B(B),.S(S),.VDD(VDD),.VSS(VSS));

   `else

	CKMUX2M12HM_func CKMUX2M12HM_inst(.Z(Z),.A(A),.B(B),.S(S),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	if(B===1'b0)
	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	if(B===1'b1)
	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	ifnone
	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	if(A===1'b0)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A===1'b1)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	ifnone
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	ifnone
	// comb arc posedge S --> (Z:S)
	 (posedge S => (Z:S)) = (1.0,1.0);

	ifnone
	// comb arc negedge S --> (Z:S)
	 (negedge S => (Z:S)) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module CKMUX2M2HM( Z, A, B, S , VDD, VSS);
inout VDD;
inout VSS;
input A, B, S;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	CKMUX2M2HM_func CKMUX2M2HM_behav_inst(.Z(Z),.A(A),.B(B),.S(S),.VDD(VDD),.VSS(VSS));

   `else

	CKMUX2M2HM_func CKMUX2M2HM_inst(.Z(Z),.A(A),.B(B),.S(S),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	if(B===1'b0)
	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	if(B===1'b1)
	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	ifnone
	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	if(A===1'b0)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A===1'b1)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	ifnone
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	ifnone
	// comb arc posedge S --> (Z:S)
	 (posedge S => (Z:S)) = (1.0,1.0);

	ifnone
	// comb arc negedge S --> (Z:S)
	 (negedge S => (Z:S)) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module CKMUX2M3HM( Z, A, B, S , VDD, VSS);
inout VDD;
inout VSS;
input A, B, S;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	CKMUX2M3HM_func CKMUX2M3HM_behav_inst(.Z(Z),.A(A),.B(B),.S(S),.VDD(VDD),.VSS(VSS));

   `else

	CKMUX2M3HM_func CKMUX2M3HM_inst(.Z(Z),.A(A),.B(B),.S(S),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	if(B===1'b0)
	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	if(B===1'b1)
	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	ifnone
	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	if(A===1'b0)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A===1'b1)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	ifnone
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	ifnone
	// comb arc posedge S --> (Z:S)
	 (posedge S => (Z:S)) = (1.0,1.0);

	ifnone
	// comb arc negedge S --> (Z:S)
	 (negedge S => (Z:S)) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module CKMUX2M4HM( Z, A, B, S , VDD, VSS);
inout VDD;
inout VSS;
input A, B, S;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	CKMUX2M4HM_func CKMUX2M4HM_behav_inst(.Z(Z),.A(A),.B(B),.S(S),.VDD(VDD),.VSS(VSS));

   `else

	CKMUX2M4HM_func CKMUX2M4HM_inst(.Z(Z),.A(A),.B(B),.S(S),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	if(B===1'b0)
	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	if(B===1'b1)
	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	ifnone
	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	if(A===1'b0)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A===1'b1)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	ifnone
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	ifnone
	// comb arc posedge S --> (Z:S)
	 (posedge S => (Z:S)) = (1.0,1.0);

	ifnone
	// comb arc negedge S --> (Z:S)
	 (negedge S => (Z:S)) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module CKMUX2M6HM( Z, A, B, S , VDD, VSS);
inout VDD;
inout VSS;
input A, B, S;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	CKMUX2M6HM_func CKMUX2M6HM_behav_inst(.Z(Z),.A(A),.B(B),.S(S),.VDD(VDD),.VSS(VSS));

   `else

	CKMUX2M6HM_func CKMUX2M6HM_inst(.Z(Z),.A(A),.B(B),.S(S),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	if(B===1'b0)
	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	if(B===1'b1)
	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	ifnone
	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	if(A===1'b0)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A===1'b1)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	ifnone
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	ifnone
	// comb arc posedge S --> (Z:S)
	 (posedge S => (Z:S)) = (1.0,1.0);

	ifnone
	// comb arc negedge S --> (Z:S)
	 (negedge S => (Z:S)) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module CKMUX2M8HM( Z, A, B, S , VDD, VSS);
inout VDD;
inout VSS;
input A, B, S;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	CKMUX2M8HM_func CKMUX2M8HM_behav_inst(.Z(Z),.A(A),.B(B),.S(S),.VDD(VDD),.VSS(VSS));

   `else

	CKMUX2M8HM_func CKMUX2M8HM_inst(.Z(Z),.A(A),.B(B),.S(S),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	if(B===1'b0)
	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	if(B===1'b1)
	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	ifnone
	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	if(A===1'b0)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A===1'b1)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	ifnone
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	ifnone
	// comb arc posedge S --> (Z:S)
	 (posedge S => (Z:S)) = (1.0,1.0);

	ifnone
	// comb arc negedge S --> (Z:S)
	 (negedge S => (Z:S)) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module CKND2M12HM( Z, A, B , VDD, VSS);
inout VDD;
inout VSS;
input A, B;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	CKND2M12HM_func CKND2M12HM_behav_inst(.Z(Z),.A(A),.B(B),.VDD(VDD),.VSS(VSS));

   `else

	CKND2M12HM_func CKND2M12HM_inst(.Z(Z),.A(A),.B(B),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module CKND2M16HM( Z, A, B , VDD, VSS);
inout VDD;
inout VSS;
input A, B;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	CKND2M16HM_func CKND2M16HM_behav_inst(.Z(Z),.A(A),.B(B),.VDD(VDD),.VSS(VSS));

   `else

	CKND2M16HM_func CKND2M16HM_inst(.Z(Z),.A(A),.B(B),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module CKND2M2HM( Z, A, B , VDD, VSS);
inout VDD;
inout VSS;
input A, B;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	CKND2M2HM_func CKND2M2HM_behav_inst(.Z(Z),.A(A),.B(B),.VDD(VDD),.VSS(VSS));

   `else

	CKND2M2HM_func CKND2M2HM_inst(.Z(Z),.A(A),.B(B),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module CKND2M4HM( Z, A, B , VDD, VSS);
inout VDD;
inout VSS;
input A, B;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	CKND2M4HM_func CKND2M4HM_behav_inst(.Z(Z),.A(A),.B(B),.VDD(VDD),.VSS(VSS));

   `else

	CKND2M4HM_func CKND2M4HM_inst(.Z(Z),.A(A),.B(B),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module CKND2M6HM( Z, A, B , VDD, VSS);
inout VDD;
inout VSS;
input A, B;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	CKND2M6HM_func CKND2M6HM_behav_inst(.Z(Z),.A(A),.B(B),.VDD(VDD),.VSS(VSS));

   `else

	CKND2M6HM_func CKND2M6HM_inst(.Z(Z),.A(A),.B(B),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module CKND2M8HM( Z, A, B , VDD, VSS);
inout VDD;
inout VSS;
input A, B;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	CKND2M8HM_func CKND2M8HM_behav_inst(.Z(Z),.A(A),.B(B),.VDD(VDD),.VSS(VSS));

   `else

	CKND2M8HM_func CKND2M8HM_inst(.Z(Z),.A(A),.B(B),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module CKXOR2M12HM( Z, A, B , VDD, VSS);
inout VDD;
inout VSS;
input A, B;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	CKXOR2M12HM_func CKXOR2M12HM_behav_inst(.Z(Z),.A(A),.B(B),.VDD(VDD),.VSS(VSS));

   `else

	CKXOR2M12HM_func CKXOR2M12HM_inst(.Z(Z),.A(A),.B(B),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	ifnone
	// comb arc posedge A --> (Z:A)
	 (posedge A => (Z:A)) = (1.0,1.0);

	ifnone
	// comb arc negedge A --> (Z:A)
	 (negedge A => (Z:A)) = (1.0,1.0);

	ifnone
	// comb arc posedge B --> (Z:B)
	 (posedge B => (Z:B)) = (1.0,1.0);

	ifnone
	// comb arc negedge B --> (Z:B)
	 (negedge B => (Z:B)) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module CKXOR2M1HM( Z, A, B , VDD, VSS);
inout VDD;
inout VSS;
input A, B;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	CKXOR2M1HM_func CKXOR2M1HM_behav_inst(.Z(Z),.A(A),.B(B),.VDD(VDD),.VSS(VSS));

   `else

	CKXOR2M1HM_func CKXOR2M1HM_inst(.Z(Z),.A(A),.B(B),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	ifnone
	// comb arc posedge A --> (Z:A)
	 (posedge A => (Z:A)) = (1.0,1.0);

	ifnone
	// comb arc negedge A --> (Z:A)
	 (negedge A => (Z:A)) = (1.0,1.0);

	ifnone
	// comb arc posedge B --> (Z:B)
	 (posedge B => (Z:B)) = (1.0,1.0);

	ifnone
	// comb arc negedge B --> (Z:B)
	 (negedge B => (Z:B)) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module CKXOR2M2HM( Z, A, B , VDD, VSS);
inout VDD;
inout VSS;
input A, B;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	CKXOR2M2HM_func CKXOR2M2HM_behav_inst(.Z(Z),.A(A),.B(B),.VDD(VDD),.VSS(VSS));

   `else

	CKXOR2M2HM_func CKXOR2M2HM_inst(.Z(Z),.A(A),.B(B),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	ifnone
	// comb arc posedge A --> (Z:A)
	 (posedge A => (Z:A)) = (1.0,1.0);

	ifnone
	// comb arc negedge A --> (Z:A)
	 (negedge A => (Z:A)) = (1.0,1.0);

	ifnone
	// comb arc posedge B --> (Z:B)
	 (posedge B => (Z:B)) = (1.0,1.0);

	ifnone
	// comb arc negedge B --> (Z:B)
	 (negedge B => (Z:B)) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module CKXOR2M4HM( Z, A, B , VDD, VSS);
inout VDD;
inout VSS;
input A, B;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	CKXOR2M4HM_func CKXOR2M4HM_behav_inst(.Z(Z),.A(A),.B(B),.VDD(VDD),.VSS(VSS));

   `else

	CKXOR2M4HM_func CKXOR2M4HM_inst(.Z(Z),.A(A),.B(B),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	ifnone
	// comb arc posedge A --> (Z:A)
	 (posedge A => (Z:A)) = (1.0,1.0);

	ifnone
	// comb arc negedge A --> (Z:A)
	 (negedge A => (Z:A)) = (1.0,1.0);

	ifnone
	// comb arc posedge B --> (Z:B)
	 (posedge B => (Z:B)) = (1.0,1.0);

	ifnone
	// comb arc negedge B --> (Z:B)
	 (negedge B => (Z:B)) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module CKXOR2M8HM( Z, A, B , VDD, VSS);
inout VDD;
inout VSS;
input A, B;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	CKXOR2M8HM_func CKXOR2M8HM_behav_inst(.Z(Z),.A(A),.B(B),.VDD(VDD),.VSS(VSS));

   `else

	CKXOR2M8HM_func CKXOR2M8HM_inst(.Z(Z),.A(A),.B(B),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	ifnone
	// comb arc posedge A --> (Z:A)
	 (posedge A => (Z:A)) = (1.0,1.0);

	ifnone
	// comb arc negedge A --> (Z:A)
	 (negedge A => (Z:A)) = (1.0,1.0);

	ifnone
	// comb arc posedge B --> (Z:B)
	 (posedge B => (Z:B)) = (1.0,1.0);

	ifnone
	// comb arc negedge B --> (Z:B)
	 (negedge B => (Z:B)) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module DEL1M1HM( Z, A , VDD, VSS);
inout VDD;
inout VSS;
input A;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	DEL1M1HM_func DEL1M1HM_behav_inst(.Z(Z),.A(A),.VDD(VDD),.VSS(VSS));

   `else

	DEL1M1HM_func DEL1M1HM_inst(.Z(Z),.A(A),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module DEL1M4HM( Z, A , VDD, VSS);
inout VDD;
inout VSS;
input A;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	DEL1M4HM_func DEL1M4HM_behav_inst(.Z(Z),.A(A),.VDD(VDD),.VSS(VSS));

   `else

	DEL1M4HM_func DEL1M4HM_inst(.Z(Z),.A(A),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module DEL2M1HM( Z, A , VDD, VSS);
inout VDD;
inout VSS;
input A;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	DEL2M1HM_func DEL2M1HM_behav_inst(.Z(Z),.A(A),.VDD(VDD),.VSS(VSS));

   `else

	DEL2M1HM_func DEL2M1HM_inst(.Z(Z),.A(A),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module DEL2M4HM( Z, A , VDD, VSS);
inout VDD;
inout VSS;
input A;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	DEL2M4HM_func DEL2M4HM_behav_inst(.Z(Z),.A(A),.VDD(VDD),.VSS(VSS));

   `else

	DEL2M4HM_func DEL2M4HM_inst(.Z(Z),.A(A),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module DEL3M1HM( Z, A , VDD, VSS);
inout VDD;
inout VSS;
input A;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	DEL3M1HM_func DEL3M1HM_behav_inst(.Z(Z),.A(A),.VDD(VDD),.VSS(VSS));

   `else

	DEL3M1HM_func DEL3M1HM_inst(.Z(Z),.A(A),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module DEL3M4HM( Z, A , VDD, VSS);
inout VDD;
inout VSS;
input A;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	DEL3M4HM_func DEL3M4HM_behav_inst(.Z(Z),.A(A),.VDD(VDD),.VSS(VSS));

   `else

	DEL3M4HM_func DEL3M4HM_inst(.Z(Z),.A(A),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module DEL4M1HM( Z, A , VDD, VSS);
inout VDD;
inout VSS;
input A;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	DEL4M1HM_func DEL4M1HM_behav_inst(.Z(Z),.A(A),.VDD(VDD),.VSS(VSS));

   `else

	DEL4M1HM_func DEL4M1HM_inst(.Z(Z),.A(A),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module DEL4M4HM( Z, A , VDD, VSS);
inout VDD;
inout VSS;
input A;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	DEL4M4HM_func DEL4M4HM_behav_inst(.Z(Z),.A(A),.VDD(VDD),.VSS(VSS));

   `else

	DEL4M4HM_func DEL4M4HM_inst(.Z(Z),.A(A),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module DFCM1HM( Q, QB, CKB, D , VDD, VSS);
inout VDD;
inout VSS;
input CKB, D;
output Q, QB;
reg notifier;

   `ifdef FUNCTIONAL  //  functional //

	DFCM1HM_func DFCM1HM_behav_inst(.Q(Q),.QB(QB),.CKB(CKB),.D(D),.notifier(notifier),.VDD(VDD),.VSS(VSS));

   `else

	wire CKB$delay ;

	wire D$delay ;

	DFCM1HM_func DFCM1HM_inst(.Q(Q),.QB(QB),.CKB(CKB$delay),.D(D$delay),.notifier(notifier),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	not MGM_G0(ENABLE_NOT_D,D$delay);


	buf MGM_G1(ENABLE_D,D$delay);


	// spec_gates_end



   specify

	// specify_block_begin 

	// seq arc CKB --> Q
	(negedge CKB => (Q : D))  = (1.0,1.0);

	// seq arc CKB --> QB
	(negedge CKB => (QB : D))  = (1.0,1.0);

	$width(negedge CKB &&& (ENABLE_NOT_D === 1'b1)
		,1.0,0,notifier);

	$width(posedge CKB &&& (ENABLE_NOT_D === 1'b1)
		,1.0,0,notifier);

	$width(negedge CKB &&& (ENABLE_D === 1'b1)
		,1.0,0,notifier);

	$width(posedge CKB &&& (ENABLE_D === 1'b1)
		,1.0,0,notifier);

	// setuphold D- CKB-HL
	$setuphold(negedge CKB,posedge D,1.0,1.0,notifier,,,CKB$delay,D$delay);

	// setuphold D- CKB-HL
	$setuphold(negedge CKB,negedge D,1.0,1.0,notifier,,,CKB$delay,D$delay);

	// mpw CKB_lh 
	$width(posedge CKB,1.0,0,notifier);

	// mpw CKB_hl 
	$width(negedge CKB,1.0,0,notifier);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module DFCM2HM( Q, QB, CKB, D , VDD, VSS);
inout VDD;
inout VSS;
input CKB, D;
output Q, QB;
reg notifier;

   `ifdef FUNCTIONAL  //  functional //

	DFCM2HM_func DFCM2HM_behav_inst(.Q(Q),.QB(QB),.CKB(CKB),.D(D),.notifier(notifier),.VDD(VDD),.VSS(VSS));

   `else

	wire CKB$delay ;

	wire D$delay ;

	DFCM2HM_func DFCM2HM_inst(.Q(Q),.QB(QB),.CKB(CKB$delay),.D(D$delay),.notifier(notifier),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	not MGM_G0(ENABLE_NOT_D,D$delay);


	buf MGM_G1(ENABLE_D,D$delay);


	// spec_gates_end



   specify

	// specify_block_begin 

	// seq arc CKB --> Q
	(negedge CKB => (Q : D))  = (1.0,1.0);

	// seq arc CKB --> QB
	(negedge CKB => (QB : D))  = (1.0,1.0);

	$width(negedge CKB &&& (ENABLE_NOT_D === 1'b1)
		,1.0,0,notifier);

	$width(posedge CKB &&& (ENABLE_NOT_D === 1'b1)
		,1.0,0,notifier);

	$width(negedge CKB &&& (ENABLE_D === 1'b1)
		,1.0,0,notifier);

	$width(posedge CKB &&& (ENABLE_D === 1'b1)
		,1.0,0,notifier);

	// setuphold D- CKB-HL
	$setuphold(negedge CKB,posedge D,1.0,1.0,notifier,,,CKB$delay,D$delay);

	// setuphold D- CKB-HL
	$setuphold(negedge CKB,negedge D,1.0,1.0,notifier,,,CKB$delay,D$delay);

	// mpw CKB_lh 
	$width(posedge CKB,1.0,0,notifier);

	// mpw CKB_hl 
	$width(negedge CKB,1.0,0,notifier);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module DFCM4HM( Q, QB, CKB, D , VDD, VSS);
inout VDD;
inout VSS;
input CKB, D;
output Q, QB;
reg notifier;

   `ifdef FUNCTIONAL  //  functional //

	DFCM4HM_func DFCM4HM_behav_inst(.Q(Q),.QB(QB),.CKB(CKB),.D(D),.notifier(notifier),.VDD(VDD),.VSS(VSS));

   `else

	wire CKB$delay ;

	wire D$delay ;

	DFCM4HM_func DFCM4HM_inst(.Q(Q),.QB(QB),.CKB(CKB$delay),.D(D$delay),.notifier(notifier),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	not MGM_G0(ENABLE_NOT_D,D$delay);


	buf MGM_G1(ENABLE_D,D$delay);


	// spec_gates_end



   specify

	// specify_block_begin 

	// seq arc CKB --> Q
	(negedge CKB => (Q : D))  = (1.0,1.0);

	// seq arc CKB --> QB
	(negedge CKB => (QB : D))  = (1.0,1.0);

	$width(negedge CKB &&& (ENABLE_NOT_D === 1'b1)
		,1.0,0,notifier);

	$width(posedge CKB &&& (ENABLE_NOT_D === 1'b1)
		,1.0,0,notifier);

	$width(negedge CKB &&& (ENABLE_D === 1'b1)
		,1.0,0,notifier);

	$width(posedge CKB &&& (ENABLE_D === 1'b1)
		,1.0,0,notifier);

	// setuphold D- CKB-HL
	$setuphold(negedge CKB,posedge D,1.0,1.0,notifier,,,CKB$delay,D$delay);

	// setuphold D- CKB-HL
	$setuphold(negedge CKB,negedge D,1.0,1.0,notifier,,,CKB$delay,D$delay);

	// mpw CKB_lh 
	$width(posedge CKB,1.0,0,notifier);

	// mpw CKB_hl 
	$width(negedge CKB,1.0,0,notifier);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module DFCM8HM( Q, QB, CKB, D , VDD, VSS);
inout VDD;
inout VSS;
input CKB, D;
output Q, QB;
reg notifier;

   `ifdef FUNCTIONAL  //  functional //

	DFCM8HM_func DFCM8HM_behav_inst(.Q(Q),.QB(QB),.CKB(CKB),.D(D),.notifier(notifier),.VDD(VDD),.VSS(VSS));

   `else

	wire CKB$delay ;

	wire D$delay ;

	DFCM8HM_func DFCM8HM_inst(.Q(Q),.QB(QB),.CKB(CKB$delay),.D(D$delay),.notifier(notifier),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	not MGM_G0(ENABLE_NOT_D,D$delay);


	buf MGM_G1(ENABLE_D,D$delay);


	// spec_gates_end



   specify

	// specify_block_begin 

	// seq arc CKB --> Q
	(negedge CKB => (Q : D))  = (1.0,1.0);

	// seq arc CKB --> QB
	(negedge CKB => (QB : D))  = (1.0,1.0);

	$width(negedge CKB &&& (ENABLE_NOT_D === 1'b1)
		,1.0,0,notifier);

	$width(posedge CKB &&& (ENABLE_NOT_D === 1'b1)
		,1.0,0,notifier);

	$width(negedge CKB &&& (ENABLE_D === 1'b1)
		,1.0,0,notifier);

	$width(posedge CKB &&& (ENABLE_D === 1'b1)
		,1.0,0,notifier);

	// setuphold D- CKB-HL
	$setuphold(negedge CKB,posedge D,1.0,1.0,notifier,,,CKB$delay,D$delay);

	// setuphold D- CKB-HL
	$setuphold(negedge CKB,negedge D,1.0,1.0,notifier,,,CKB$delay,D$delay);

	// mpw CKB_lh 
	$width(posedge CKB,1.0,0,notifier);

	// mpw CKB_hl 
	$width(negedge CKB,1.0,0,notifier);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module DFCQM1HM( Q, CKB, D , VDD, VSS);
inout VDD;
inout VSS;
input CKB, D;
output Q;
reg notifier;

   `ifdef FUNCTIONAL  //  functional //

	DFCQM1HM_func DFCQM1HM_behav_inst(.Q(Q),.CKB(CKB),.D(D),.notifier(notifier),.VDD(VDD),.VSS(VSS));

   `else

	wire CKB$delay ;

	wire D$delay ;

	DFCQM1HM_func DFCQM1HM_inst(.Q(Q),.CKB(CKB$delay),.D(D$delay),.notifier(notifier),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	not MGM_G0(ENABLE_NOT_D,D$delay);


	buf MGM_G1(ENABLE_D,D$delay);


	// spec_gates_end



   specify

	// specify_block_begin 

	// seq arc CKB --> Q
	(negedge CKB => (Q : D))  = (1.0,1.0);

	$width(negedge CKB &&& (ENABLE_NOT_D === 1'b1)
		,1.0,0,notifier);

	$width(posedge CKB &&& (ENABLE_NOT_D === 1'b1)
		,1.0,0,notifier);

	$width(negedge CKB &&& (ENABLE_D === 1'b1)
		,1.0,0,notifier);

	$width(posedge CKB &&& (ENABLE_D === 1'b1)
		,1.0,0,notifier);

	// setuphold D- CKB-HL
	$setuphold(negedge CKB,posedge D,1.0,1.0,notifier,,,CKB$delay,D$delay);

	// setuphold D- CKB-HL
	$setuphold(negedge CKB,negedge D,1.0,1.0,notifier,,,CKB$delay,D$delay);

	// mpw CKB_lh 
	$width(posedge CKB,1.0,0,notifier);

	// mpw CKB_hl 
	$width(negedge CKB,1.0,0,notifier);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module DFCQM2HM( Q, CKB, D , VDD, VSS);
inout VDD;
inout VSS;
input CKB, D;
output Q;
reg notifier;

   `ifdef FUNCTIONAL  //  functional //

	DFCQM2HM_func DFCQM2HM_behav_inst(.Q(Q),.CKB(CKB),.D(D),.notifier(notifier),.VDD(VDD),.VSS(VSS));

   `else

	wire CKB$delay ;

	wire D$delay ;

	DFCQM2HM_func DFCQM2HM_inst(.Q(Q),.CKB(CKB$delay),.D(D$delay),.notifier(notifier),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	not MGM_G0(ENABLE_NOT_D,D$delay);


	buf MGM_G1(ENABLE_D,D$delay);


	// spec_gates_end



   specify

	// specify_block_begin 

	// seq arc CKB --> Q
	(negedge CKB => (Q : D))  = (1.0,1.0);

	$width(negedge CKB &&& (ENABLE_NOT_D === 1'b1)
		,1.0,0,notifier);

	$width(posedge CKB &&& (ENABLE_NOT_D === 1'b1)
		,1.0,0,notifier);

	$width(negedge CKB &&& (ENABLE_D === 1'b1)
		,1.0,0,notifier);

	$width(posedge CKB &&& (ENABLE_D === 1'b1)
		,1.0,0,notifier);

	// setuphold D- CKB-HL
	$setuphold(negedge CKB,posedge D,1.0,1.0,notifier,,,CKB$delay,D$delay);

	// setuphold D- CKB-HL
	$setuphold(negedge CKB,negedge D,1.0,1.0,notifier,,,CKB$delay,D$delay);

	// mpw CKB_lh 
	$width(posedge CKB,1.0,0,notifier);

	// mpw CKB_hl 
	$width(negedge CKB,1.0,0,notifier);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module DFCQM4HM( Q, CKB, D , VDD, VSS);
inout VDD;
inout VSS;
input CKB, D;
output Q;
reg notifier;

   `ifdef FUNCTIONAL  //  functional //

	DFCQM4HM_func DFCQM4HM_behav_inst(.Q(Q),.CKB(CKB),.D(D),.notifier(notifier),.VDD(VDD),.VSS(VSS));

   `else

	wire CKB$delay ;

	wire D$delay ;

	DFCQM4HM_func DFCQM4HM_inst(.Q(Q),.CKB(CKB$delay),.D(D$delay),.notifier(notifier),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	not MGM_G0(ENABLE_NOT_D,D$delay);


	buf MGM_G1(ENABLE_D,D$delay);


	// spec_gates_end



   specify

	// specify_block_begin 

	// seq arc CKB --> Q
	(negedge CKB => (Q : D))  = (1.0,1.0);

	$width(negedge CKB &&& (ENABLE_NOT_D === 1'b1)
		,1.0,0,notifier);

	$width(posedge CKB &&& (ENABLE_NOT_D === 1'b1)
		,1.0,0,notifier);

	$width(negedge CKB &&& (ENABLE_D === 1'b1)
		,1.0,0,notifier);

	$width(posedge CKB &&& (ENABLE_D === 1'b1)
		,1.0,0,notifier);

	// setuphold D- CKB-HL
	$setuphold(negedge CKB,posedge D,1.0,1.0,notifier,,,CKB$delay,D$delay);

	// setuphold D- CKB-HL
	$setuphold(negedge CKB,negedge D,1.0,1.0,notifier,,,CKB$delay,D$delay);

	// mpw CKB_lh 
	$width(posedge CKB,1.0,0,notifier);

	// mpw CKB_hl 
	$width(negedge CKB,1.0,0,notifier);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module DFCQM8HM( Q, CKB, D , VDD, VSS);
inout VDD;
inout VSS;
input CKB, D;
output Q;
reg notifier;

   `ifdef FUNCTIONAL  //  functional //

	DFCQM8HM_func DFCQM8HM_behav_inst(.Q(Q),.CKB(CKB),.D(D),.notifier(notifier),.VDD(VDD),.VSS(VSS));

   `else

	wire CKB$delay ;

	wire D$delay ;

	DFCQM8HM_func DFCQM8HM_inst(.Q(Q),.CKB(CKB$delay),.D(D$delay),.notifier(notifier),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	not MGM_G0(ENABLE_NOT_D,D$delay);


	buf MGM_G1(ENABLE_D,D$delay);


	// spec_gates_end



   specify

	// specify_block_begin 

	// seq arc CKB --> Q
	(negedge CKB => (Q : D))  = (1.0,1.0);

	$width(negedge CKB &&& (ENABLE_NOT_D === 1'b1)
		,1.0,0,notifier);

	$width(posedge CKB &&& (ENABLE_NOT_D === 1'b1)
		,1.0,0,notifier);

	$width(negedge CKB &&& (ENABLE_D === 1'b1)
		,1.0,0,notifier);

	$width(posedge CKB &&& (ENABLE_D === 1'b1)
		,1.0,0,notifier);

	// setuphold D- CKB-HL
	$setuphold(negedge CKB,posedge D,1.0,1.0,notifier,,,CKB$delay,D$delay);

	// setuphold D- CKB-HL
	$setuphold(negedge CKB,negedge D,1.0,1.0,notifier,,,CKB$delay,D$delay);

	// mpw CKB_lh 
	$width(posedge CKB,1.0,0,notifier);

	// mpw CKB_hl 
	$width(negedge CKB,1.0,0,notifier);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module DFCQRSM1HM( Q, CKB, D, RB, SB , VDD, VSS);
inout VDD;
inout VSS;
input CKB, D, RB, SB;
output Q;
reg notifier;

   `ifdef FUNCTIONAL  //  functional //

	DFCQRSM1HM_func DFCQRSM1HM_behav_inst(.Q(Q),.CKB(CKB),.D(D),.RB(RB),.SB(SB),.notifier(notifier),.VDD(VDD),.VSS(VSS));

   `else

	wire CKB$delay ;

	wire D$delay ;

	wire RB$delay ;

	wire SB$delay ;

	DFCQRSM1HM_func DFCQRSM1HM_inst(.Q(Q),.CKB(CKB$delay),.D(D$delay),.RB(RB$delay),.SB(SB$delay),.notifier(notifier),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	not MGM_G0(MGM_W0,D$delay);


	and MGM_G1(MGM_W1,RB$delay,MGM_W0);


	and MGM_G2(ENABLE_NOT_D_AND_RB_AND_SB,SB$delay,MGM_W1);


	and MGM_G3(MGM_W2,RB$delay,D$delay);


	and MGM_G4(ENABLE_D_AND_RB_AND_SB,SB$delay,MGM_W2);


	and MGM_G5(ENABLE_RB_AND_SB,SB$delay,RB$delay);


	buf MGM_G6(ENABLE_SB,SB$delay);


	not MGM_G7(MGM_W3,CKB$delay);


	not MGM_G8(MGM_W4,D$delay);


	and MGM_G9(MGM_W5,MGM_W4,MGM_W3);


	and MGM_G10(ENABLE_NOT_CKB_AND_NOT_D_AND_SB,SB$delay,MGM_W5);


	not MGM_G11(MGM_W6,CKB$delay);


	and MGM_G12(MGM_W7,D$delay,MGM_W6);


	and MGM_G13(ENABLE_NOT_CKB_AND_D_AND_SB,SB$delay,MGM_W7);


	not MGM_G14(MGM_W8,D$delay);


	and MGM_G15(MGM_W9,MGM_W8,CKB$delay);


	and MGM_G16(ENABLE_CKB_AND_NOT_D_AND_SB,SB$delay,MGM_W9);


	and MGM_G17(MGM_W10,D$delay,CKB$delay);


	and MGM_G18(ENABLE_CKB_AND_D_AND_SB,SB$delay,MGM_W10);


	not MGM_G19(MGM_W11,CKB$delay);


	not MGM_G20(MGM_W12,D$delay);


	and MGM_G21(ENABLE_NOT_CKB_AND_NOT_D,MGM_W12,MGM_W11);


	not MGM_G22(MGM_W13,CKB$delay);


	and MGM_G23(ENABLE_NOT_CKB_AND_D,D$delay,MGM_W13);


	not MGM_G24(MGM_W14,D$delay);


	and MGM_G25(ENABLE_CKB_AND_NOT_D,MGM_W14,CKB$delay);


	and MGM_G26(ENABLE_CKB_AND_D,D$delay,CKB$delay);


	buf MGM_G27(ENABLE_RB,RB$delay);


	not MGM_G28(MGM_W15,CKB$delay);


	not MGM_G29(MGM_W16,D$delay);


	and MGM_G30(MGM_W17,MGM_W16,MGM_W15);


	and MGM_G31(ENABLE_NOT_CKB_AND_NOT_D_AND_RB,RB$delay,MGM_W17);


	not MGM_G32(MGM_W18,CKB$delay);


	and MGM_G33(MGM_W19,D$delay,MGM_W18);


	and MGM_G34(ENABLE_NOT_CKB_AND_D_AND_RB,RB$delay,MGM_W19);


	not MGM_G35(MGM_W20,D$delay);


	and MGM_G36(MGM_W21,MGM_W20,CKB$delay);


	and MGM_G37(ENABLE_CKB_AND_NOT_D_AND_RB,RB$delay,MGM_W21);


	and MGM_G38(MGM_W22,D$delay,CKB$delay);


	and MGM_G39(ENABLE_CKB_AND_D_AND_RB,RB$delay,MGM_W22);


	// spec_gates_end



   specify

	// specify_block_begin 

	// seq arc CKB --> Q
	(negedge CKB => (Q : D))  = (1.0,1.0);

	// seq arc RB --> Q
	(RB => Q)  = (1.0,1.0);

	// seq arc SB --> Q
	(SB => Q)  = (1.0,1.0);

	$width(negedge CKB &&& (ENABLE_NOT_D_AND_RB_AND_SB === 1'b1)
		,1.0,0,notifier);

	$width(posedge CKB &&& (ENABLE_NOT_D_AND_RB_AND_SB === 1'b1)
		,1.0,0,notifier);

	$width(negedge CKB &&& (ENABLE_D_AND_RB_AND_SB === 1'b1)
		,1.0,0,notifier);

	$width(posedge CKB &&& (ENABLE_D_AND_RB_AND_SB === 1'b1)
		,1.0,0,notifier);

	// setuphold D- CKB-HL
	$setuphold(negedge CKB &&& (ENABLE_RB_AND_SB === 1'b1),
		posedge D &&& (ENABLE_RB_AND_SB === 1'b1),
		1.0,1.0,notifier,,,CKB$delay,D$delay);

	// setuphold D- CKB-HL
	$setuphold(negedge CKB &&& (ENABLE_RB_AND_SB === 1'b1),
		negedge D &&& (ENABLE_RB_AND_SB === 1'b1),
		1.0,1.0,notifier,,,CKB$delay,D$delay);

	// recrem RB-CKB-negedge
	$recrem(posedge RB &&& (ENABLE_SB === 1'b1),
		negedge CKB &&& (ENABLE_SB === 1'b1),
		1.0,1.0,notifier,,,RB$delay,CKB$delay);

	$width(negedge RB &&& (ENABLE_NOT_CKB_AND_NOT_D_AND_SB === 1'b1)
		,1.0,0,notifier);

	$width(negedge RB &&& (ENABLE_NOT_CKB_AND_D_AND_SB === 1'b1)
		,1.0,0,notifier);

	$width(negedge RB &&& (ENABLE_CKB_AND_NOT_D_AND_SB === 1'b1)
		,1.0,0,notifier);

	$width(negedge RB &&& (ENABLE_CKB_AND_D_AND_SB === 1'b1)
		,1.0,0,notifier);

	// setuphold RB- SB-LH
	$setuphold(posedge SB &&& (ENABLE_NOT_CKB_AND_NOT_D === 1'b1),
		posedge RB &&& (ENABLE_NOT_CKB_AND_NOT_D === 1'b1),
		1.0,1.0,notifier,,,SB$delay,RB$delay);

	// setuphold RB- SB-LH
	$setuphold(posedge SB &&& (ENABLE_NOT_CKB_AND_D === 1'b1),
		posedge RB &&& (ENABLE_NOT_CKB_AND_D === 1'b1),
		1.0,1.0,notifier,,,SB$delay,RB$delay);

	// setuphold RB- SB-LH
	$setuphold(posedge SB &&& (ENABLE_CKB_AND_NOT_D === 1'b1),
		posedge RB &&& (ENABLE_CKB_AND_NOT_D === 1'b1),
		1.0,1.0,notifier,,,SB$delay,RB$delay);

	// setuphold RB- SB-LH
	$setuphold(posedge SB &&& (ENABLE_CKB_AND_D === 1'b1),
		posedge RB &&& (ENABLE_CKB_AND_D === 1'b1),
		1.0,1.0,notifier,,,SB$delay,RB$delay);

	// recrem SB-CKB-negedge
	$recrem(posedge SB &&& (ENABLE_RB === 1'b1),
		negedge CKB &&& (ENABLE_RB === 1'b1),
		1.0,1.0,notifier,,,SB$delay,CKB$delay);

	$width(negedge SB &&& (ENABLE_NOT_CKB_AND_NOT_D_AND_RB === 1'b1)
		,1.0,0,notifier);

	$width(negedge SB &&& (ENABLE_NOT_CKB_AND_D_AND_RB === 1'b1)
		,1.0,0,notifier);

	$width(negedge SB &&& (ENABLE_CKB_AND_NOT_D_AND_RB === 1'b1)
		,1.0,0,notifier);

	$width(negedge SB &&& (ENABLE_CKB_AND_D_AND_RB === 1'b1)
		,1.0,0,notifier);

	// mpw CKB_lh 
	$width(posedge CKB,1.0,0,notifier);

	// mpw CKB_hl 
	$width(negedge CKB,1.0,0,notifier);

	// mpw RB_hl 
	$width(negedge RB,1.0,0,notifier);

	// mpw SB_hl 
	$width(negedge SB,1.0,0,notifier);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module DFCQRSM2HM( Q, CKB, D, RB, SB , VDD, VSS);
inout VDD;
inout VSS;
input CKB, D, RB, SB;
output Q;
reg notifier;

   `ifdef FUNCTIONAL  //  functional //

	DFCQRSM2HM_func DFCQRSM2HM_behav_inst(.Q(Q),.CKB(CKB),.D(D),.RB(RB),.SB(SB),.notifier(notifier),.VDD(VDD),.VSS(VSS));

   `else

	wire CKB$delay ;

	wire D$delay ;

	wire RB$delay ;

	wire SB$delay ;

	DFCQRSM2HM_func DFCQRSM2HM_inst(.Q(Q),.CKB(CKB$delay),.D(D$delay),.RB(RB$delay),.SB(SB$delay),.notifier(notifier),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	not MGM_G0(MGM_W0,D$delay);


	and MGM_G1(MGM_W1,RB$delay,MGM_W0);


	and MGM_G2(ENABLE_NOT_D_AND_RB_AND_SB,SB$delay,MGM_W1);


	and MGM_G3(MGM_W2,RB$delay,D$delay);


	and MGM_G4(ENABLE_D_AND_RB_AND_SB,SB$delay,MGM_W2);


	and MGM_G5(ENABLE_RB_AND_SB,SB$delay,RB$delay);


	buf MGM_G6(ENABLE_SB,SB$delay);


	not MGM_G7(MGM_W3,CKB$delay);


	not MGM_G8(MGM_W4,D$delay);


	and MGM_G9(MGM_W5,MGM_W4,MGM_W3);


	and MGM_G10(ENABLE_NOT_CKB_AND_NOT_D_AND_SB,SB$delay,MGM_W5);


	not MGM_G11(MGM_W6,CKB$delay);


	and MGM_G12(MGM_W7,D$delay,MGM_W6);


	and MGM_G13(ENABLE_NOT_CKB_AND_D_AND_SB,SB$delay,MGM_W7);


	not MGM_G14(MGM_W8,D$delay);


	and MGM_G15(MGM_W9,MGM_W8,CKB$delay);


	and MGM_G16(ENABLE_CKB_AND_NOT_D_AND_SB,SB$delay,MGM_W9);


	and MGM_G17(MGM_W10,D$delay,CKB$delay);


	and MGM_G18(ENABLE_CKB_AND_D_AND_SB,SB$delay,MGM_W10);


	not MGM_G19(MGM_W11,CKB$delay);


	not MGM_G20(MGM_W12,D$delay);


	and MGM_G21(ENABLE_NOT_CKB_AND_NOT_D,MGM_W12,MGM_W11);


	not MGM_G22(MGM_W13,CKB$delay);


	and MGM_G23(ENABLE_NOT_CKB_AND_D,D$delay,MGM_W13);


	not MGM_G24(MGM_W14,D$delay);


	and MGM_G25(ENABLE_CKB_AND_NOT_D,MGM_W14,CKB$delay);


	and MGM_G26(ENABLE_CKB_AND_D,D$delay,CKB$delay);


	buf MGM_G27(ENABLE_RB,RB$delay);


	not MGM_G28(MGM_W15,CKB$delay);


	not MGM_G29(MGM_W16,D$delay);


	and MGM_G30(MGM_W17,MGM_W16,MGM_W15);


	and MGM_G31(ENABLE_NOT_CKB_AND_NOT_D_AND_RB,RB$delay,MGM_W17);


	not MGM_G32(MGM_W18,CKB$delay);


	and MGM_G33(MGM_W19,D$delay,MGM_W18);


	and MGM_G34(ENABLE_NOT_CKB_AND_D_AND_RB,RB$delay,MGM_W19);


	not MGM_G35(MGM_W20,D$delay);


	and MGM_G36(MGM_W21,MGM_W20,CKB$delay);


	and MGM_G37(ENABLE_CKB_AND_NOT_D_AND_RB,RB$delay,MGM_W21);


	and MGM_G38(MGM_W22,D$delay,CKB$delay);


	and MGM_G39(ENABLE_CKB_AND_D_AND_RB,RB$delay,MGM_W22);


	// spec_gates_end



   specify

	// specify_block_begin 

	// seq arc CKB --> Q
	(negedge CKB => (Q : D))  = (1.0,1.0);

	// seq arc RB --> Q
	(RB => Q)  = (1.0,1.0);

	// seq arc SB --> Q
	(SB => Q)  = (1.0,1.0);

	$width(negedge CKB &&& (ENABLE_NOT_D_AND_RB_AND_SB === 1'b1)
		,1.0,0,notifier);

	$width(posedge CKB &&& (ENABLE_NOT_D_AND_RB_AND_SB === 1'b1)
		,1.0,0,notifier);

	$width(negedge CKB &&& (ENABLE_D_AND_RB_AND_SB === 1'b1)
		,1.0,0,notifier);

	$width(posedge CKB &&& (ENABLE_D_AND_RB_AND_SB === 1'b1)
		,1.0,0,notifier);

	// setuphold D- CKB-HL
	$setuphold(negedge CKB &&& (ENABLE_RB_AND_SB === 1'b1),
		posedge D &&& (ENABLE_RB_AND_SB === 1'b1),
		1.0,1.0,notifier,,,CKB$delay,D$delay);

	// setuphold D- CKB-HL
	$setuphold(negedge CKB &&& (ENABLE_RB_AND_SB === 1'b1),
		negedge D &&& (ENABLE_RB_AND_SB === 1'b1),
		1.0,1.0,notifier,,,CKB$delay,D$delay);

	// recrem RB-CKB-negedge
	$recrem(posedge RB &&& (ENABLE_SB === 1'b1),
		negedge CKB &&& (ENABLE_SB === 1'b1),
		1.0,1.0,notifier,,,RB$delay,CKB$delay);

	$width(negedge RB &&& (ENABLE_NOT_CKB_AND_NOT_D_AND_SB === 1'b1)
		,1.0,0,notifier);

	$width(negedge RB &&& (ENABLE_NOT_CKB_AND_D_AND_SB === 1'b1)
		,1.0,0,notifier);

	$width(negedge RB &&& (ENABLE_CKB_AND_NOT_D_AND_SB === 1'b1)
		,1.0,0,notifier);

	$width(negedge RB &&& (ENABLE_CKB_AND_D_AND_SB === 1'b1)
		,1.0,0,notifier);

	// setuphold RB- SB-LH
	$setuphold(posedge SB &&& (ENABLE_NOT_CKB_AND_NOT_D === 1'b1),
		posedge RB &&& (ENABLE_NOT_CKB_AND_NOT_D === 1'b1),
		1.0,1.0,notifier,,,SB$delay,RB$delay);

	// setuphold RB- SB-LH
	$setuphold(posedge SB &&& (ENABLE_NOT_CKB_AND_D === 1'b1),
		posedge RB &&& (ENABLE_NOT_CKB_AND_D === 1'b1),
		1.0,1.0,notifier,,,SB$delay,RB$delay);

	// setuphold RB- SB-LH
	$setuphold(posedge SB &&& (ENABLE_CKB_AND_NOT_D === 1'b1),
		posedge RB &&& (ENABLE_CKB_AND_NOT_D === 1'b1),
		1.0,1.0,notifier,,,SB$delay,RB$delay);

	// setuphold RB- SB-LH
	$setuphold(posedge SB &&& (ENABLE_CKB_AND_D === 1'b1),
		posedge RB &&& (ENABLE_CKB_AND_D === 1'b1),
		1.0,1.0,notifier,,,SB$delay,RB$delay);

	// recrem SB-CKB-negedge
	$recrem(posedge SB &&& (ENABLE_RB === 1'b1),
		negedge CKB &&& (ENABLE_RB === 1'b1),
		1.0,1.0,notifier,,,SB$delay,CKB$delay);

	$width(negedge SB &&& (ENABLE_NOT_CKB_AND_NOT_D_AND_RB === 1'b1)
		,1.0,0,notifier);

	$width(negedge SB &&& (ENABLE_NOT_CKB_AND_D_AND_RB === 1'b1)
		,1.0,0,notifier);

	$width(negedge SB &&& (ENABLE_CKB_AND_NOT_D_AND_RB === 1'b1)
		,1.0,0,notifier);

	$width(negedge SB &&& (ENABLE_CKB_AND_D_AND_RB === 1'b1)
		,1.0,0,notifier);

	// mpw CKB_lh 
	$width(posedge CKB,1.0,0,notifier);

	// mpw CKB_hl 
	$width(negedge CKB,1.0,0,notifier);

	// mpw RB_hl 
	$width(negedge RB,1.0,0,notifier);

	// mpw SB_hl 
	$width(negedge SB,1.0,0,notifier);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module DFCQRSM4HM( Q, CKB, D, RB, SB , VDD, VSS);
inout VDD;
inout VSS;
input CKB, D, RB, SB;
output Q;
reg notifier;

   `ifdef FUNCTIONAL  //  functional //

	DFCQRSM4HM_func DFCQRSM4HM_behav_inst(.Q(Q),.CKB(CKB),.D(D),.RB(RB),.SB(SB),.notifier(notifier),.VDD(VDD),.VSS(VSS));

   `else

	wire CKB$delay ;

	wire D$delay ;

	wire RB$delay ;

	wire SB$delay ;

	DFCQRSM4HM_func DFCQRSM4HM_inst(.Q(Q),.CKB(CKB$delay),.D(D$delay),.RB(RB$delay),.SB(SB$delay),.notifier(notifier),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	not MGM_G0(MGM_W0,D$delay);


	and MGM_G1(MGM_W1,RB$delay,MGM_W0);


	and MGM_G2(ENABLE_NOT_D_AND_RB_AND_SB,SB$delay,MGM_W1);


	and MGM_G3(MGM_W2,RB$delay,D$delay);


	and MGM_G4(ENABLE_D_AND_RB_AND_SB,SB$delay,MGM_W2);


	and MGM_G5(ENABLE_RB_AND_SB,SB$delay,RB$delay);


	buf MGM_G6(ENABLE_SB,SB$delay);


	not MGM_G7(MGM_W3,CKB$delay);


	not MGM_G8(MGM_W4,D$delay);


	and MGM_G9(MGM_W5,MGM_W4,MGM_W3);


	and MGM_G10(ENABLE_NOT_CKB_AND_NOT_D_AND_SB,SB$delay,MGM_W5);


	not MGM_G11(MGM_W6,CKB$delay);


	and MGM_G12(MGM_W7,D$delay,MGM_W6);


	and MGM_G13(ENABLE_NOT_CKB_AND_D_AND_SB,SB$delay,MGM_W7);


	not MGM_G14(MGM_W8,D$delay);


	and MGM_G15(MGM_W9,MGM_W8,CKB$delay);


	and MGM_G16(ENABLE_CKB_AND_NOT_D_AND_SB,SB$delay,MGM_W9);


	and MGM_G17(MGM_W10,D$delay,CKB$delay);


	and MGM_G18(ENABLE_CKB_AND_D_AND_SB,SB$delay,MGM_W10);


	not MGM_G19(MGM_W11,CKB$delay);


	not MGM_G20(MGM_W12,D$delay);


	and MGM_G21(ENABLE_NOT_CKB_AND_NOT_D,MGM_W12,MGM_W11);


	not MGM_G22(MGM_W13,CKB$delay);


	and MGM_G23(ENABLE_NOT_CKB_AND_D,D$delay,MGM_W13);


	not MGM_G24(MGM_W14,D$delay);


	and MGM_G25(ENABLE_CKB_AND_NOT_D,MGM_W14,CKB$delay);


	and MGM_G26(ENABLE_CKB_AND_D,D$delay,CKB$delay);


	buf MGM_G27(ENABLE_RB,RB$delay);


	not MGM_G28(MGM_W15,CKB$delay);


	not MGM_G29(MGM_W16,D$delay);


	and MGM_G30(MGM_W17,MGM_W16,MGM_W15);


	and MGM_G31(ENABLE_NOT_CKB_AND_NOT_D_AND_RB,RB$delay,MGM_W17);


	not MGM_G32(MGM_W18,CKB$delay);


	and MGM_G33(MGM_W19,D$delay,MGM_W18);


	and MGM_G34(ENABLE_NOT_CKB_AND_D_AND_RB,RB$delay,MGM_W19);


	not MGM_G35(MGM_W20,D$delay);


	and MGM_G36(MGM_W21,MGM_W20,CKB$delay);


	and MGM_G37(ENABLE_CKB_AND_NOT_D_AND_RB,RB$delay,MGM_W21);


	and MGM_G38(MGM_W22,D$delay,CKB$delay);


	and MGM_G39(ENABLE_CKB_AND_D_AND_RB,RB$delay,MGM_W22);


	// spec_gates_end



   specify

	// specify_block_begin 

	// seq arc CKB --> Q
	(negedge CKB => (Q : D))  = (1.0,1.0);

	// seq arc RB --> Q
	(RB => Q)  = (1.0,1.0);

	// seq arc SB --> Q
	(SB => Q)  = (1.0,1.0);

	$width(negedge CKB &&& (ENABLE_NOT_D_AND_RB_AND_SB === 1'b1)
		,1.0,0,notifier);

	$width(posedge CKB &&& (ENABLE_NOT_D_AND_RB_AND_SB === 1'b1)
		,1.0,0,notifier);

	$width(negedge CKB &&& (ENABLE_D_AND_RB_AND_SB === 1'b1)
		,1.0,0,notifier);

	$width(posedge CKB &&& (ENABLE_D_AND_RB_AND_SB === 1'b1)
		,1.0,0,notifier);

	// setuphold D- CKB-HL
	$setuphold(negedge CKB &&& (ENABLE_RB_AND_SB === 1'b1),
		posedge D &&& (ENABLE_RB_AND_SB === 1'b1),
		1.0,1.0,notifier,,,CKB$delay,D$delay);

	// setuphold D- CKB-HL
	$setuphold(negedge CKB &&& (ENABLE_RB_AND_SB === 1'b1),
		negedge D &&& (ENABLE_RB_AND_SB === 1'b1),
		1.0,1.0,notifier,,,CKB$delay,D$delay);

	// recrem RB-CKB-negedge
	$recrem(posedge RB &&& (ENABLE_SB === 1'b1),
		negedge CKB &&& (ENABLE_SB === 1'b1),
		1.0,1.0,notifier,,,RB$delay,CKB$delay);

	$width(negedge RB &&& (ENABLE_NOT_CKB_AND_NOT_D_AND_SB === 1'b1)
		,1.0,0,notifier);

	$width(negedge RB &&& (ENABLE_NOT_CKB_AND_D_AND_SB === 1'b1)
		,1.0,0,notifier);

	$width(negedge RB &&& (ENABLE_CKB_AND_NOT_D_AND_SB === 1'b1)
		,1.0,0,notifier);

	$width(negedge RB &&& (ENABLE_CKB_AND_D_AND_SB === 1'b1)
		,1.0,0,notifier);

	// setuphold RB- SB-LH
	$setuphold(posedge SB &&& (ENABLE_NOT_CKB_AND_NOT_D === 1'b1),
		posedge RB &&& (ENABLE_NOT_CKB_AND_NOT_D === 1'b1),
		1.0,1.0,notifier,,,SB$delay,RB$delay);

	// setuphold RB- SB-LH
	$setuphold(posedge SB &&& (ENABLE_NOT_CKB_AND_D === 1'b1),
		posedge RB &&& (ENABLE_NOT_CKB_AND_D === 1'b1),
		1.0,1.0,notifier,,,SB$delay,RB$delay);

	// setuphold RB- SB-LH
	$setuphold(posedge SB &&& (ENABLE_CKB_AND_NOT_D === 1'b1),
		posedge RB &&& (ENABLE_CKB_AND_NOT_D === 1'b1),
		1.0,1.0,notifier,,,SB$delay,RB$delay);

	// setuphold RB- SB-LH
	$setuphold(posedge SB &&& (ENABLE_CKB_AND_D === 1'b1),
		posedge RB &&& (ENABLE_CKB_AND_D === 1'b1),
		1.0,1.0,notifier,,,SB$delay,RB$delay);

	// recrem SB-CKB-negedge
	$recrem(posedge SB &&& (ENABLE_RB === 1'b1),
		negedge CKB &&& (ENABLE_RB === 1'b1),
		1.0,1.0,notifier,,,SB$delay,CKB$delay);

	$width(negedge SB &&& (ENABLE_NOT_CKB_AND_NOT_D_AND_RB === 1'b1)
		,1.0,0,notifier);

	$width(negedge SB &&& (ENABLE_NOT_CKB_AND_D_AND_RB === 1'b1)
		,1.0,0,notifier);

	$width(negedge SB &&& (ENABLE_CKB_AND_NOT_D_AND_RB === 1'b1)
		,1.0,0,notifier);

	$width(negedge SB &&& (ENABLE_CKB_AND_D_AND_RB === 1'b1)
		,1.0,0,notifier);

	// mpw CKB_lh 
	$width(posedge CKB,1.0,0,notifier);

	// mpw CKB_hl 
	$width(negedge CKB,1.0,0,notifier);

	// mpw RB_hl 
	$width(negedge RB,1.0,0,notifier);

	// mpw SB_hl 
	$width(negedge SB,1.0,0,notifier);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module DFCQRSM8HM( Q, CKB, D, RB, SB , VDD, VSS);
inout VDD;
inout VSS;
input CKB, D, RB, SB;
output Q;
reg notifier;

   `ifdef FUNCTIONAL  //  functional //

	DFCQRSM8HM_func DFCQRSM8HM_behav_inst(.Q(Q),.CKB(CKB),.D(D),.RB(RB),.SB(SB),.notifier(notifier),.VDD(VDD),.VSS(VSS));

   `else

	wire CKB$delay ;

	wire D$delay ;

	wire RB$delay ;

	wire SB$delay ;

	DFCQRSM8HM_func DFCQRSM8HM_inst(.Q(Q),.CKB(CKB$delay),.D(D$delay),.RB(RB$delay),.SB(SB$delay),.notifier(notifier),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	not MGM_G0(MGM_W0,D$delay);


	and MGM_G1(MGM_W1,RB$delay,MGM_W0);


	and MGM_G2(ENABLE_NOT_D_AND_RB_AND_SB,SB$delay,MGM_W1);


	and MGM_G3(MGM_W2,RB$delay,D$delay);


	and MGM_G4(ENABLE_D_AND_RB_AND_SB,SB$delay,MGM_W2);


	and MGM_G5(ENABLE_RB_AND_SB,SB$delay,RB$delay);


	buf MGM_G6(ENABLE_SB,SB$delay);


	not MGM_G7(MGM_W3,CKB$delay);


	not MGM_G8(MGM_W4,D$delay);


	and MGM_G9(MGM_W5,MGM_W4,MGM_W3);


	and MGM_G10(ENABLE_NOT_CKB_AND_NOT_D_AND_SB,SB$delay,MGM_W5);


	not MGM_G11(MGM_W6,CKB$delay);


	and MGM_G12(MGM_W7,D$delay,MGM_W6);


	and MGM_G13(ENABLE_NOT_CKB_AND_D_AND_SB,SB$delay,MGM_W7);


	not MGM_G14(MGM_W8,D$delay);


	and MGM_G15(MGM_W9,MGM_W8,CKB$delay);


	and MGM_G16(ENABLE_CKB_AND_NOT_D_AND_SB,SB$delay,MGM_W9);


	and MGM_G17(MGM_W10,D$delay,CKB$delay);


	and MGM_G18(ENABLE_CKB_AND_D_AND_SB,SB$delay,MGM_W10);


	not MGM_G19(MGM_W11,CKB$delay);


	not MGM_G20(MGM_W12,D$delay);


	and MGM_G21(ENABLE_NOT_CKB_AND_NOT_D,MGM_W12,MGM_W11);


	not MGM_G22(MGM_W13,CKB$delay);


	and MGM_G23(ENABLE_NOT_CKB_AND_D,D$delay,MGM_W13);


	not MGM_G24(MGM_W14,D$delay);


	and MGM_G25(ENABLE_CKB_AND_NOT_D,MGM_W14,CKB$delay);


	and MGM_G26(ENABLE_CKB_AND_D,D$delay,CKB$delay);


	buf MGM_G27(ENABLE_RB,RB$delay);


	not MGM_G28(MGM_W15,CKB$delay);


	not MGM_G29(MGM_W16,D$delay);


	and MGM_G30(MGM_W17,MGM_W16,MGM_W15);


	and MGM_G31(ENABLE_NOT_CKB_AND_NOT_D_AND_RB,RB$delay,MGM_W17);


	not MGM_G32(MGM_W18,CKB$delay);


	and MGM_G33(MGM_W19,D$delay,MGM_W18);


	and MGM_G34(ENABLE_NOT_CKB_AND_D_AND_RB,RB$delay,MGM_W19);


	not MGM_G35(MGM_W20,D$delay);


	and MGM_G36(MGM_W21,MGM_W20,CKB$delay);


	and MGM_G37(ENABLE_CKB_AND_NOT_D_AND_RB,RB$delay,MGM_W21);


	and MGM_G38(MGM_W22,D$delay,CKB$delay);


	and MGM_G39(ENABLE_CKB_AND_D_AND_RB,RB$delay,MGM_W22);


	// spec_gates_end



   specify

	// specify_block_begin 

	// seq arc CKB --> Q
	(negedge CKB => (Q : D))  = (1.0,1.0);

	// seq arc RB --> Q
	(RB => Q)  = (1.0,1.0);

	// seq arc SB --> Q
	(SB => Q)  = (1.0,1.0);

	$width(negedge CKB &&& (ENABLE_NOT_D_AND_RB_AND_SB === 1'b1)
		,1.0,0,notifier);

	$width(posedge CKB &&& (ENABLE_NOT_D_AND_RB_AND_SB === 1'b1)
		,1.0,0,notifier);

	$width(negedge CKB &&& (ENABLE_D_AND_RB_AND_SB === 1'b1)
		,1.0,0,notifier);

	$width(posedge CKB &&& (ENABLE_D_AND_RB_AND_SB === 1'b1)
		,1.0,0,notifier);

	// setuphold D- CKB-HL
	$setuphold(negedge CKB &&& (ENABLE_RB_AND_SB === 1'b1),
		posedge D &&& (ENABLE_RB_AND_SB === 1'b1),
		1.0,1.0,notifier,,,CKB$delay,D$delay);

	// setuphold D- CKB-HL
	$setuphold(negedge CKB &&& (ENABLE_RB_AND_SB === 1'b1),
		negedge D &&& (ENABLE_RB_AND_SB === 1'b1),
		1.0,1.0,notifier,,,CKB$delay,D$delay);

	// recrem RB-CKB-negedge
	$recrem(posedge RB &&& (ENABLE_SB === 1'b1),
		negedge CKB &&& (ENABLE_SB === 1'b1),
		1.0,1.0,notifier,,,RB$delay,CKB$delay);

	$width(negedge RB &&& (ENABLE_NOT_CKB_AND_NOT_D_AND_SB === 1'b1)
		,1.0,0,notifier);

	$width(negedge RB &&& (ENABLE_NOT_CKB_AND_D_AND_SB === 1'b1)
		,1.0,0,notifier);

	$width(negedge RB &&& (ENABLE_CKB_AND_NOT_D_AND_SB === 1'b1)
		,1.0,0,notifier);

	$width(negedge RB &&& (ENABLE_CKB_AND_D_AND_SB === 1'b1)
		,1.0,0,notifier);

	// setuphold RB- SB-LH
	$setuphold(posedge SB &&& (ENABLE_NOT_CKB_AND_NOT_D === 1'b1),
		posedge RB &&& (ENABLE_NOT_CKB_AND_NOT_D === 1'b1),
		1.0,1.0,notifier,,,SB$delay,RB$delay);

	// setuphold RB- SB-LH
	$setuphold(posedge SB &&& (ENABLE_NOT_CKB_AND_D === 1'b1),
		posedge RB &&& (ENABLE_NOT_CKB_AND_D === 1'b1),
		1.0,1.0,notifier,,,SB$delay,RB$delay);

	// setuphold RB- SB-LH
	$setuphold(posedge SB &&& (ENABLE_CKB_AND_NOT_D === 1'b1),
		posedge RB &&& (ENABLE_CKB_AND_NOT_D === 1'b1),
		1.0,1.0,notifier,,,SB$delay,RB$delay);

	// setuphold RB- SB-LH
	$setuphold(posedge SB &&& (ENABLE_CKB_AND_D === 1'b1),
		posedge RB &&& (ENABLE_CKB_AND_D === 1'b1),
		1.0,1.0,notifier,,,SB$delay,RB$delay);

	// recrem SB-CKB-negedge
	$recrem(posedge SB &&& (ENABLE_RB === 1'b1),
		negedge CKB &&& (ENABLE_RB === 1'b1),
		1.0,1.0,notifier,,,SB$delay,CKB$delay);

	$width(negedge SB &&& (ENABLE_NOT_CKB_AND_NOT_D_AND_RB === 1'b1)
		,1.0,0,notifier);

	$width(negedge SB &&& (ENABLE_NOT_CKB_AND_D_AND_RB === 1'b1)
		,1.0,0,notifier);

	$width(negedge SB &&& (ENABLE_CKB_AND_NOT_D_AND_RB === 1'b1)
		,1.0,0,notifier);

	$width(negedge SB &&& (ENABLE_CKB_AND_D_AND_RB === 1'b1)
		,1.0,0,notifier);

	// mpw CKB_lh 
	$width(posedge CKB,1.0,0,notifier);

	// mpw CKB_hl 
	$width(negedge CKB,1.0,0,notifier);

	// mpw RB_hl 
	$width(negedge RB,1.0,0,notifier);

	// mpw SB_hl 
	$width(negedge SB,1.0,0,notifier);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module DFCRSM1HM( Q, QB, CKB, D, RB, SB , VDD, VSS);
inout VDD;
inout VSS;
input CKB, D, RB, SB;
output Q, QB;
reg notifier;

   `ifdef FUNCTIONAL  //  functional //

	DFCRSM1HM_func DFCRSM1HM_behav_inst(.Q(Q),.QB(QB),.CKB(CKB),.D(D),.RB(RB),.SB(SB),.notifier(notifier),.VDD(VDD),.VSS(VSS));

   `else

	wire CKB$delay ;

	wire D$delay ;

	wire RB$delay ;

	wire SB$delay ;

	DFCRSM1HM_func DFCRSM1HM_inst(.Q(Q),.QB(QB),.CKB(CKB$delay),.D(D$delay),.RB(RB$delay),.SB(SB$delay),.notifier(notifier),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	not MGM_G0(MGM_W0,D$delay);


	and MGM_G1(MGM_W1,RB$delay,MGM_W0);


	and MGM_G2(ENABLE_NOT_D_AND_RB_AND_SB,SB$delay,MGM_W1);


	and MGM_G3(MGM_W2,RB$delay,D$delay);


	and MGM_G4(ENABLE_D_AND_RB_AND_SB,SB$delay,MGM_W2);


	and MGM_G5(ENABLE_RB_AND_SB,SB$delay,RB$delay);


	buf MGM_G6(ENABLE_SB,SB$delay);


	not MGM_G7(MGM_W3,CKB$delay);


	not MGM_G8(MGM_W4,D$delay);


	and MGM_G9(MGM_W5,MGM_W4,MGM_W3);


	and MGM_G10(ENABLE_NOT_CKB_AND_NOT_D_AND_SB,SB$delay,MGM_W5);


	not MGM_G11(MGM_W6,CKB$delay);


	and MGM_G12(MGM_W7,D$delay,MGM_W6);


	and MGM_G13(ENABLE_NOT_CKB_AND_D_AND_SB,SB$delay,MGM_W7);


	not MGM_G14(MGM_W8,D$delay);


	and MGM_G15(MGM_W9,MGM_W8,CKB$delay);


	and MGM_G16(ENABLE_CKB_AND_NOT_D_AND_SB,SB$delay,MGM_W9);


	and MGM_G17(MGM_W10,D$delay,CKB$delay);


	and MGM_G18(ENABLE_CKB_AND_D_AND_SB,SB$delay,MGM_W10);


	not MGM_G19(MGM_W11,CKB$delay);


	not MGM_G20(MGM_W12,D$delay);


	and MGM_G21(ENABLE_NOT_CKB_AND_NOT_D,MGM_W12,MGM_W11);


	not MGM_G22(MGM_W13,CKB$delay);


	and MGM_G23(ENABLE_NOT_CKB_AND_D,D$delay,MGM_W13);


	not MGM_G24(MGM_W14,D$delay);


	and MGM_G25(ENABLE_CKB_AND_NOT_D,MGM_W14,CKB$delay);


	and MGM_G26(ENABLE_CKB_AND_D,D$delay,CKB$delay);


	buf MGM_G27(ENABLE_RB,RB$delay);


	not MGM_G28(MGM_W15,CKB$delay);


	not MGM_G29(MGM_W16,D$delay);


	and MGM_G30(MGM_W17,MGM_W16,MGM_W15);


	and MGM_G31(ENABLE_NOT_CKB_AND_NOT_D_AND_RB,RB$delay,MGM_W17);


	not MGM_G32(MGM_W18,CKB$delay);


	and MGM_G33(MGM_W19,D$delay,MGM_W18);


	and MGM_G34(ENABLE_NOT_CKB_AND_D_AND_RB,RB$delay,MGM_W19);


	not MGM_G35(MGM_W20,D$delay);


	and MGM_G36(MGM_W21,MGM_W20,CKB$delay);


	and MGM_G37(ENABLE_CKB_AND_NOT_D_AND_RB,RB$delay,MGM_W21);


	and MGM_G38(MGM_W22,D$delay,CKB$delay);


	and MGM_G39(ENABLE_CKB_AND_D_AND_RB,RB$delay,MGM_W22);


	// spec_gates_end



   specify

	// specify_block_begin 

	// seq arc CKB --> Q
	(negedge CKB => (Q : D))  = (1.0,1.0);

	// seq arc RB --> Q
	(RB => Q)  = (1.0,1.0);

	// seq arc SB --> Q
	(SB => Q)  = (1.0,1.0);

	// seq arc CKB --> QB
	(negedge CKB => (QB : D))  = (1.0,1.0);

	// seq arc RB --> QB
	(RB => QB)  = (1.0,1.0);

	// seq arc SB --> QB
	(SB => QB)  = (1.0,1.0);

	$width(negedge CKB &&& (ENABLE_NOT_D_AND_RB_AND_SB === 1'b1)
		,1.0,0,notifier);

	$width(posedge CKB &&& (ENABLE_NOT_D_AND_RB_AND_SB === 1'b1)
		,1.0,0,notifier);

	$width(negedge CKB &&& (ENABLE_D_AND_RB_AND_SB === 1'b1)
		,1.0,0,notifier);

	$width(posedge CKB &&& (ENABLE_D_AND_RB_AND_SB === 1'b1)
		,1.0,0,notifier);

	// setuphold D- CKB-HL
	$setuphold(negedge CKB &&& (ENABLE_RB_AND_SB === 1'b1),
		posedge D &&& (ENABLE_RB_AND_SB === 1'b1),
		1.0,1.0,notifier,,,CKB$delay,D$delay);

	// setuphold D- CKB-HL
	$setuphold(negedge CKB &&& (ENABLE_RB_AND_SB === 1'b1),
		negedge D &&& (ENABLE_RB_AND_SB === 1'b1),
		1.0,1.0,notifier,,,CKB$delay,D$delay);

	// recrem RB-CKB-negedge
	$recrem(posedge RB &&& (ENABLE_SB === 1'b1),
		negedge CKB &&& (ENABLE_SB === 1'b1),
		1.0,1.0,notifier,,,RB$delay,CKB$delay);

	$width(negedge RB &&& (ENABLE_NOT_CKB_AND_NOT_D_AND_SB === 1'b1)
		,1.0,0,notifier);

	$width(negedge RB &&& (ENABLE_NOT_CKB_AND_D_AND_SB === 1'b1)
		,1.0,0,notifier);

	$width(negedge RB &&& (ENABLE_CKB_AND_NOT_D_AND_SB === 1'b1)
		,1.0,0,notifier);

	$width(negedge RB &&& (ENABLE_CKB_AND_D_AND_SB === 1'b1)
		,1.0,0,notifier);

	// setuphold RB- SB-LH
	$setuphold(posedge SB &&& (ENABLE_NOT_CKB_AND_NOT_D === 1'b1),
		posedge RB &&& (ENABLE_NOT_CKB_AND_NOT_D === 1'b1),
		1.0,1.0,notifier,,,SB$delay,RB$delay);

	// setuphold RB- SB-LH
	$setuphold(posedge SB &&& (ENABLE_NOT_CKB_AND_D === 1'b1),
		posedge RB &&& (ENABLE_NOT_CKB_AND_D === 1'b1),
		1.0,1.0,notifier,,,SB$delay,RB$delay);

	// setuphold RB- SB-LH
	$setuphold(posedge SB &&& (ENABLE_CKB_AND_NOT_D === 1'b1),
		posedge RB &&& (ENABLE_CKB_AND_NOT_D === 1'b1),
		1.0,1.0,notifier,,,SB$delay,RB$delay);

	// setuphold RB- SB-LH
	$setuphold(posedge SB &&& (ENABLE_CKB_AND_D === 1'b1),
		posedge RB &&& (ENABLE_CKB_AND_D === 1'b1),
		1.0,1.0,notifier,,,SB$delay,RB$delay);

	// recrem SB-CKB-negedge
	$recrem(posedge SB &&& (ENABLE_RB === 1'b1),
		negedge CKB &&& (ENABLE_RB === 1'b1),
		1.0,1.0,notifier,,,SB$delay,CKB$delay);

	// setuphold SB- RB-LH
	$setuphold(posedge RB &&& (ENABLE_NOT_CKB_AND_NOT_D === 1'b1),
		posedge SB &&& (ENABLE_NOT_CKB_AND_NOT_D === 1'b1),
		1.0,1.0,notifier,,,RB$delay,SB$delay);

	// setuphold SB- RB-LH
	$setuphold(posedge RB &&& (ENABLE_NOT_CKB_AND_D === 1'b1),
		posedge SB &&& (ENABLE_NOT_CKB_AND_D === 1'b1),
		1.0,1.0,notifier,,,RB$delay,SB$delay);

	// setuphold SB- RB-LH
	$setuphold(posedge RB &&& (ENABLE_CKB_AND_NOT_D === 1'b1),
		posedge SB &&& (ENABLE_CKB_AND_NOT_D === 1'b1),
		1.0,1.0,notifier,,,RB$delay,SB$delay);

	// setuphold SB- RB-LH
	$setuphold(posedge RB &&& (ENABLE_CKB_AND_D === 1'b1),
		posedge SB &&& (ENABLE_CKB_AND_D === 1'b1),
		1.0,1.0,notifier,,,RB$delay,SB$delay);

	$width(negedge SB &&& (ENABLE_NOT_CKB_AND_NOT_D_AND_RB === 1'b1)
		,1.0,0,notifier);

	$width(negedge SB &&& (ENABLE_NOT_CKB_AND_D_AND_RB === 1'b1)
		,1.0,0,notifier);

	$width(negedge SB &&& (ENABLE_CKB_AND_NOT_D_AND_RB === 1'b1)
		,1.0,0,notifier);

	$width(negedge SB &&& (ENABLE_CKB_AND_D_AND_RB === 1'b1)
		,1.0,0,notifier);

	// mpw CKB_lh 
	$width(posedge CKB,1.0,0,notifier);

	// mpw CKB_hl 
	$width(negedge CKB,1.0,0,notifier);

	// mpw RB_hl 
	$width(negedge RB,1.0,0,notifier);

	// mpw SB_hl 
	$width(negedge SB,1.0,0,notifier);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module DFCRSM2HM( Q, QB, CKB, D, RB, SB , VDD, VSS);
inout VDD;
inout VSS;
input CKB, D, RB, SB;
output Q, QB;
reg notifier;

   `ifdef FUNCTIONAL  //  functional //

	DFCRSM2HM_func DFCRSM2HM_behav_inst(.Q(Q),.QB(QB),.CKB(CKB),.D(D),.RB(RB),.SB(SB),.notifier(notifier),.VDD(VDD),.VSS(VSS));

   `else

	wire CKB$delay ;

	wire D$delay ;

	wire RB$delay ;

	wire SB$delay ;

	DFCRSM2HM_func DFCRSM2HM_inst(.Q(Q),.QB(QB),.CKB(CKB$delay),.D(D$delay),.RB(RB$delay),.SB(SB$delay),.notifier(notifier),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	not MGM_G0(MGM_W0,D$delay);


	and MGM_G1(MGM_W1,RB$delay,MGM_W0);


	and MGM_G2(ENABLE_NOT_D_AND_RB_AND_SB,SB$delay,MGM_W1);


	and MGM_G3(MGM_W2,RB$delay,D$delay);


	and MGM_G4(ENABLE_D_AND_RB_AND_SB,SB$delay,MGM_W2);


	and MGM_G5(ENABLE_RB_AND_SB,SB$delay,RB$delay);


	buf MGM_G6(ENABLE_SB,SB$delay);


	not MGM_G7(MGM_W3,CKB$delay);


	not MGM_G8(MGM_W4,D$delay);


	and MGM_G9(MGM_W5,MGM_W4,MGM_W3);


	and MGM_G10(ENABLE_NOT_CKB_AND_NOT_D_AND_SB,SB$delay,MGM_W5);


	not MGM_G11(MGM_W6,CKB$delay);


	and MGM_G12(MGM_W7,D$delay,MGM_W6);


	and MGM_G13(ENABLE_NOT_CKB_AND_D_AND_SB,SB$delay,MGM_W7);


	not MGM_G14(MGM_W8,D$delay);


	and MGM_G15(MGM_W9,MGM_W8,CKB$delay);


	and MGM_G16(ENABLE_CKB_AND_NOT_D_AND_SB,SB$delay,MGM_W9);


	and MGM_G17(MGM_W10,D$delay,CKB$delay);


	and MGM_G18(ENABLE_CKB_AND_D_AND_SB,SB$delay,MGM_W10);


	not MGM_G19(MGM_W11,CKB$delay);


	not MGM_G20(MGM_W12,D$delay);


	and MGM_G21(ENABLE_NOT_CKB_AND_NOT_D,MGM_W12,MGM_W11);


	not MGM_G22(MGM_W13,CKB$delay);


	and MGM_G23(ENABLE_NOT_CKB_AND_D,D$delay,MGM_W13);


	not MGM_G24(MGM_W14,D$delay);


	and MGM_G25(ENABLE_CKB_AND_NOT_D,MGM_W14,CKB$delay);


	and MGM_G26(ENABLE_CKB_AND_D,D$delay,CKB$delay);


	buf MGM_G27(ENABLE_RB,RB$delay);


	not MGM_G28(MGM_W15,CKB$delay);


	not MGM_G29(MGM_W16,D$delay);


	and MGM_G30(MGM_W17,MGM_W16,MGM_W15);


	and MGM_G31(ENABLE_NOT_CKB_AND_NOT_D_AND_RB,RB$delay,MGM_W17);


	not MGM_G32(MGM_W18,CKB$delay);


	and MGM_G33(MGM_W19,D$delay,MGM_W18);


	and MGM_G34(ENABLE_NOT_CKB_AND_D_AND_RB,RB$delay,MGM_W19);


	not MGM_G35(MGM_W20,D$delay);


	and MGM_G36(MGM_W21,MGM_W20,CKB$delay);


	and MGM_G37(ENABLE_CKB_AND_NOT_D_AND_RB,RB$delay,MGM_W21);


	and MGM_G38(MGM_W22,D$delay,CKB$delay);


	and MGM_G39(ENABLE_CKB_AND_D_AND_RB,RB$delay,MGM_W22);


	// spec_gates_end



   specify

	// specify_block_begin 

	// seq arc CKB --> Q
	(negedge CKB => (Q : D))  = (1.0,1.0);

	// seq arc RB --> Q
	(RB => Q)  = (1.0,1.0);

	// seq arc SB --> Q
	(SB => Q)  = (1.0,1.0);

	// seq arc CKB --> QB
	(negedge CKB => (QB : D))  = (1.0,1.0);

	// seq arc RB --> QB
	(RB => QB)  = (1.0,1.0);

	// seq arc SB --> QB
	(SB => QB)  = (1.0,1.0);

	$width(negedge CKB &&& (ENABLE_NOT_D_AND_RB_AND_SB === 1'b1)
		,1.0,0,notifier);

	$width(posedge CKB &&& (ENABLE_NOT_D_AND_RB_AND_SB === 1'b1)
		,1.0,0,notifier);

	$width(negedge CKB &&& (ENABLE_D_AND_RB_AND_SB === 1'b1)
		,1.0,0,notifier);

	$width(posedge CKB &&& (ENABLE_D_AND_RB_AND_SB === 1'b1)
		,1.0,0,notifier);

	// setuphold D- CKB-HL
	$setuphold(negedge CKB &&& (ENABLE_RB_AND_SB === 1'b1),
		posedge D &&& (ENABLE_RB_AND_SB === 1'b1),
		1.0,1.0,notifier,,,CKB$delay,D$delay);

	// setuphold D- CKB-HL
	$setuphold(negedge CKB &&& (ENABLE_RB_AND_SB === 1'b1),
		negedge D &&& (ENABLE_RB_AND_SB === 1'b1),
		1.0,1.0,notifier,,,CKB$delay,D$delay);

	// recrem RB-CKB-negedge
	$recrem(posedge RB &&& (ENABLE_SB === 1'b1),
		negedge CKB &&& (ENABLE_SB === 1'b1),
		1.0,1.0,notifier,,,RB$delay,CKB$delay);

	$width(negedge RB &&& (ENABLE_NOT_CKB_AND_NOT_D_AND_SB === 1'b1)
		,1.0,0,notifier);

	$width(negedge RB &&& (ENABLE_NOT_CKB_AND_D_AND_SB === 1'b1)
		,1.0,0,notifier);

	$width(negedge RB &&& (ENABLE_CKB_AND_NOT_D_AND_SB === 1'b1)
		,1.0,0,notifier);

	$width(negedge RB &&& (ENABLE_CKB_AND_D_AND_SB === 1'b1)
		,1.0,0,notifier);

	// setuphold RB- SB-LH
	$setuphold(posedge SB &&& (ENABLE_NOT_CKB_AND_NOT_D === 1'b1),
		posedge RB &&& (ENABLE_NOT_CKB_AND_NOT_D === 1'b1),
		1.0,1.0,notifier,,,SB$delay,RB$delay);

	// setuphold RB- SB-LH
	$setuphold(posedge SB &&& (ENABLE_NOT_CKB_AND_D === 1'b1),
		posedge RB &&& (ENABLE_NOT_CKB_AND_D === 1'b1),
		1.0,1.0,notifier,,,SB$delay,RB$delay);

	// setuphold RB- SB-LH
	$setuphold(posedge SB &&& (ENABLE_CKB_AND_NOT_D === 1'b1),
		posedge RB &&& (ENABLE_CKB_AND_NOT_D === 1'b1),
		1.0,1.0,notifier,,,SB$delay,RB$delay);

	// setuphold RB- SB-LH
	$setuphold(posedge SB &&& (ENABLE_CKB_AND_D === 1'b1),
		posedge RB &&& (ENABLE_CKB_AND_D === 1'b1),
		1.0,1.0,notifier,,,SB$delay,RB$delay);

	// recrem SB-CKB-negedge
	$recrem(posedge SB &&& (ENABLE_RB === 1'b1),
		negedge CKB &&& (ENABLE_RB === 1'b1),
		1.0,1.0,notifier,,,SB$delay,CKB$delay);

	// setuphold SB- RB-LH
	$setuphold(posedge RB &&& (ENABLE_NOT_CKB_AND_NOT_D === 1'b1),
		posedge SB &&& (ENABLE_NOT_CKB_AND_NOT_D === 1'b1),
		1.0,1.0,notifier,,,RB$delay,SB$delay);

	// setuphold SB- RB-LH
	$setuphold(posedge RB &&& (ENABLE_NOT_CKB_AND_D === 1'b1),
		posedge SB &&& (ENABLE_NOT_CKB_AND_D === 1'b1),
		1.0,1.0,notifier,,,RB$delay,SB$delay);

	// setuphold SB- RB-LH
	$setuphold(posedge RB &&& (ENABLE_CKB_AND_NOT_D === 1'b1),
		posedge SB &&& (ENABLE_CKB_AND_NOT_D === 1'b1),
		1.0,1.0,notifier,,,RB$delay,SB$delay);

	// setuphold SB- RB-LH
	$setuphold(posedge RB &&& (ENABLE_CKB_AND_D === 1'b1),
		posedge SB &&& (ENABLE_CKB_AND_D === 1'b1),
		1.0,1.0,notifier,,,RB$delay,SB$delay);

	$width(negedge SB &&& (ENABLE_NOT_CKB_AND_NOT_D_AND_RB === 1'b1)
		,1.0,0,notifier);

	$width(negedge SB &&& (ENABLE_NOT_CKB_AND_D_AND_RB === 1'b1)
		,1.0,0,notifier);

	$width(negedge SB &&& (ENABLE_CKB_AND_NOT_D_AND_RB === 1'b1)
		,1.0,0,notifier);

	$width(negedge SB &&& (ENABLE_CKB_AND_D_AND_RB === 1'b1)
		,1.0,0,notifier);

	// mpw CKB_lh 
	$width(posedge CKB,1.0,0,notifier);

	// mpw CKB_hl 
	$width(negedge CKB,1.0,0,notifier);

	// mpw RB_hl 
	$width(negedge RB,1.0,0,notifier);

	// mpw SB_hl 
	$width(negedge SB,1.0,0,notifier);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module DFCRSM4HM( Q, QB, CKB, D, RB, SB , VDD, VSS);
inout VDD;
inout VSS;
input CKB, D, RB, SB;
output Q, QB;
reg notifier;

   `ifdef FUNCTIONAL  //  functional //

	DFCRSM4HM_func DFCRSM4HM_behav_inst(.Q(Q),.QB(QB),.CKB(CKB),.D(D),.RB(RB),.SB(SB),.notifier(notifier),.VDD(VDD),.VSS(VSS));

   `else

	wire CKB$delay ;

	wire D$delay ;

	wire RB$delay ;

	wire SB$delay ;

	DFCRSM4HM_func DFCRSM4HM_inst(.Q(Q),.QB(QB),.CKB(CKB$delay),.D(D$delay),.RB(RB$delay),.SB(SB$delay),.notifier(notifier),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	not MGM_G0(MGM_W0,D$delay);


	and MGM_G1(MGM_W1,RB$delay,MGM_W0);


	and MGM_G2(ENABLE_NOT_D_AND_RB_AND_SB,SB$delay,MGM_W1);


	and MGM_G3(MGM_W2,RB$delay,D$delay);


	and MGM_G4(ENABLE_D_AND_RB_AND_SB,SB$delay,MGM_W2);


	and MGM_G5(ENABLE_RB_AND_SB,SB$delay,RB$delay);


	buf MGM_G6(ENABLE_SB,SB$delay);


	not MGM_G7(MGM_W3,CKB$delay);


	not MGM_G8(MGM_W4,D$delay);


	and MGM_G9(MGM_W5,MGM_W4,MGM_W3);


	and MGM_G10(ENABLE_NOT_CKB_AND_NOT_D_AND_SB,SB$delay,MGM_W5);


	not MGM_G11(MGM_W6,CKB$delay);


	and MGM_G12(MGM_W7,D$delay,MGM_W6);


	and MGM_G13(ENABLE_NOT_CKB_AND_D_AND_SB,SB$delay,MGM_W7);


	not MGM_G14(MGM_W8,D$delay);


	and MGM_G15(MGM_W9,MGM_W8,CKB$delay);


	and MGM_G16(ENABLE_CKB_AND_NOT_D_AND_SB,SB$delay,MGM_W9);


	and MGM_G17(MGM_W10,D$delay,CKB$delay);


	and MGM_G18(ENABLE_CKB_AND_D_AND_SB,SB$delay,MGM_W10);


	not MGM_G19(MGM_W11,CKB$delay);


	not MGM_G20(MGM_W12,D$delay);


	and MGM_G21(ENABLE_NOT_CKB_AND_NOT_D,MGM_W12,MGM_W11);


	not MGM_G22(MGM_W13,CKB$delay);


	and MGM_G23(ENABLE_NOT_CKB_AND_D,D$delay,MGM_W13);


	not MGM_G24(MGM_W14,D$delay);


	and MGM_G25(ENABLE_CKB_AND_NOT_D,MGM_W14,CKB$delay);


	and MGM_G26(ENABLE_CKB_AND_D,D$delay,CKB$delay);


	buf MGM_G27(ENABLE_RB,RB$delay);


	not MGM_G28(MGM_W15,CKB$delay);


	not MGM_G29(MGM_W16,D$delay);


	and MGM_G30(MGM_W17,MGM_W16,MGM_W15);


	and MGM_G31(ENABLE_NOT_CKB_AND_NOT_D_AND_RB,RB$delay,MGM_W17);


	not MGM_G32(MGM_W18,CKB$delay);


	and MGM_G33(MGM_W19,D$delay,MGM_W18);


	and MGM_G34(ENABLE_NOT_CKB_AND_D_AND_RB,RB$delay,MGM_W19);


	not MGM_G35(MGM_W20,D$delay);


	and MGM_G36(MGM_W21,MGM_W20,CKB$delay);


	and MGM_G37(ENABLE_CKB_AND_NOT_D_AND_RB,RB$delay,MGM_W21);


	and MGM_G38(MGM_W22,D$delay,CKB$delay);


	and MGM_G39(ENABLE_CKB_AND_D_AND_RB,RB$delay,MGM_W22);


	// spec_gates_end



   specify

	// specify_block_begin 

	// seq arc CKB --> Q
	(negedge CKB => (Q : D))  = (1.0,1.0);

	// seq arc RB --> Q
	(RB => Q)  = (1.0,1.0);

	// seq arc SB --> Q
	(SB => Q)  = (1.0,1.0);

	// seq arc CKB --> QB
	(negedge CKB => (QB : D))  = (1.0,1.0);

	// seq arc RB --> QB
	(RB => QB)  = (1.0,1.0);

	// seq arc SB --> QB
	(SB => QB)  = (1.0,1.0);

	$width(negedge CKB &&& (ENABLE_NOT_D_AND_RB_AND_SB === 1'b1)
		,1.0,0,notifier);

	$width(posedge CKB &&& (ENABLE_NOT_D_AND_RB_AND_SB === 1'b1)
		,1.0,0,notifier);

	$width(negedge CKB &&& (ENABLE_D_AND_RB_AND_SB === 1'b1)
		,1.0,0,notifier);

	$width(posedge CKB &&& (ENABLE_D_AND_RB_AND_SB === 1'b1)
		,1.0,0,notifier);

	// setuphold D- CKB-HL
	$setuphold(negedge CKB &&& (ENABLE_RB_AND_SB === 1'b1),
		posedge D &&& (ENABLE_RB_AND_SB === 1'b1),
		1.0,1.0,notifier,,,CKB$delay,D$delay);

	// setuphold D- CKB-HL
	$setuphold(negedge CKB &&& (ENABLE_RB_AND_SB === 1'b1),
		negedge D &&& (ENABLE_RB_AND_SB === 1'b1),
		1.0,1.0,notifier,,,CKB$delay,D$delay);

	// recrem RB-CKB-negedge
	$recrem(posedge RB &&& (ENABLE_SB === 1'b1),
		negedge CKB &&& (ENABLE_SB === 1'b1),
		1.0,1.0,notifier,,,RB$delay,CKB$delay);

	$width(negedge RB &&& (ENABLE_NOT_CKB_AND_NOT_D_AND_SB === 1'b1)
		,1.0,0,notifier);

	$width(negedge RB &&& (ENABLE_NOT_CKB_AND_D_AND_SB === 1'b1)
		,1.0,0,notifier);

	$width(negedge RB &&& (ENABLE_CKB_AND_NOT_D_AND_SB === 1'b1)
		,1.0,0,notifier);

	$width(negedge RB &&& (ENABLE_CKB_AND_D_AND_SB === 1'b1)
		,1.0,0,notifier);

	// setuphold RB- SB-LH
	$setuphold(posedge SB &&& (ENABLE_NOT_CKB_AND_NOT_D === 1'b1),
		posedge RB &&& (ENABLE_NOT_CKB_AND_NOT_D === 1'b1),
		1.0,1.0,notifier,,,SB$delay,RB$delay);

	// setuphold RB- SB-LH
	$setuphold(posedge SB &&& (ENABLE_NOT_CKB_AND_D === 1'b1),
		posedge RB &&& (ENABLE_NOT_CKB_AND_D === 1'b1),
		1.0,1.0,notifier,,,SB$delay,RB$delay);

	// setuphold RB- SB-LH
	$setuphold(posedge SB &&& (ENABLE_CKB_AND_NOT_D === 1'b1),
		posedge RB &&& (ENABLE_CKB_AND_NOT_D === 1'b1),
		1.0,1.0,notifier,,,SB$delay,RB$delay);

	// setuphold RB- SB-LH
	$setuphold(posedge SB &&& (ENABLE_CKB_AND_D === 1'b1),
		posedge RB &&& (ENABLE_CKB_AND_D === 1'b1),
		1.0,1.0,notifier,,,SB$delay,RB$delay);

	// recrem SB-CKB-negedge
	$recrem(posedge SB &&& (ENABLE_RB === 1'b1),
		negedge CKB &&& (ENABLE_RB === 1'b1),
		1.0,1.0,notifier,,,SB$delay,CKB$delay);

	// setuphold SB- RB-LH
	$setuphold(posedge RB &&& (ENABLE_NOT_CKB_AND_NOT_D === 1'b1),
		posedge SB &&& (ENABLE_NOT_CKB_AND_NOT_D === 1'b1),
		1.0,1.0,notifier,,,RB$delay,SB$delay);

	// setuphold SB- RB-LH
	$setuphold(posedge RB &&& (ENABLE_NOT_CKB_AND_D === 1'b1),
		posedge SB &&& (ENABLE_NOT_CKB_AND_D === 1'b1),
		1.0,1.0,notifier,,,RB$delay,SB$delay);

	// setuphold SB- RB-LH
	$setuphold(posedge RB &&& (ENABLE_CKB_AND_NOT_D === 1'b1),
		posedge SB &&& (ENABLE_CKB_AND_NOT_D === 1'b1),
		1.0,1.0,notifier,,,RB$delay,SB$delay);

	// setuphold SB- RB-LH
	$setuphold(posedge RB &&& (ENABLE_CKB_AND_D === 1'b1),
		posedge SB &&& (ENABLE_CKB_AND_D === 1'b1),
		1.0,1.0,notifier,,,RB$delay,SB$delay);

	$width(negedge SB &&& (ENABLE_NOT_CKB_AND_NOT_D_AND_RB === 1'b1)
		,1.0,0,notifier);

	$width(negedge SB &&& (ENABLE_NOT_CKB_AND_D_AND_RB === 1'b1)
		,1.0,0,notifier);

	$width(negedge SB &&& (ENABLE_CKB_AND_NOT_D_AND_RB === 1'b1)
		,1.0,0,notifier);

	$width(negedge SB &&& (ENABLE_CKB_AND_D_AND_RB === 1'b1)
		,1.0,0,notifier);

	// mpw CKB_lh 
	$width(posedge CKB,1.0,0,notifier);

	// mpw CKB_hl 
	$width(negedge CKB,1.0,0,notifier);

	// mpw RB_hl 
	$width(negedge RB,1.0,0,notifier);

	// mpw SB_hl 
	$width(negedge SB,1.0,0,notifier);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module DFCRSM8HM( Q, QB, CKB, D, RB, SB , VDD, VSS);
inout VDD;
inout VSS;
input CKB, D, RB, SB;
output Q, QB;
reg notifier;

   `ifdef FUNCTIONAL  //  functional //

	DFCRSM8HM_func DFCRSM8HM_behav_inst(.Q(Q),.QB(QB),.CKB(CKB),.D(D),.RB(RB),.SB(SB),.notifier(notifier),.VDD(VDD),.VSS(VSS));

   `else

	wire CKB$delay ;

	wire D$delay ;

	wire RB$delay ;

	wire SB$delay ;

	DFCRSM8HM_func DFCRSM8HM_inst(.Q(Q),.QB(QB),.CKB(CKB$delay),.D(D$delay),.RB(RB$delay),.SB(SB$delay),.notifier(notifier),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	not MGM_G0(MGM_W0,D$delay);


	and MGM_G1(MGM_W1,RB$delay,MGM_W0);


	and MGM_G2(ENABLE_NOT_D_AND_RB_AND_SB,SB$delay,MGM_W1);


	and MGM_G3(MGM_W2,RB$delay,D$delay);


	and MGM_G4(ENABLE_D_AND_RB_AND_SB,SB$delay,MGM_W2);


	and MGM_G5(ENABLE_RB_AND_SB,SB$delay,RB$delay);


	buf MGM_G6(ENABLE_SB,SB$delay);


	not MGM_G7(MGM_W3,CKB$delay);


	not MGM_G8(MGM_W4,D$delay);


	and MGM_G9(MGM_W5,MGM_W4,MGM_W3);


	and MGM_G10(ENABLE_NOT_CKB_AND_NOT_D_AND_SB,SB$delay,MGM_W5);


	not MGM_G11(MGM_W6,CKB$delay);


	and MGM_G12(MGM_W7,D$delay,MGM_W6);


	and MGM_G13(ENABLE_NOT_CKB_AND_D_AND_SB,SB$delay,MGM_W7);


	not MGM_G14(MGM_W8,D$delay);


	and MGM_G15(MGM_W9,MGM_W8,CKB$delay);


	and MGM_G16(ENABLE_CKB_AND_NOT_D_AND_SB,SB$delay,MGM_W9);


	and MGM_G17(MGM_W10,D$delay,CKB$delay);


	and MGM_G18(ENABLE_CKB_AND_D_AND_SB,SB$delay,MGM_W10);


	not MGM_G19(MGM_W11,CKB$delay);


	not MGM_G20(MGM_W12,D$delay);


	and MGM_G21(ENABLE_NOT_CKB_AND_NOT_D,MGM_W12,MGM_W11);


	not MGM_G22(MGM_W13,CKB$delay);


	and MGM_G23(ENABLE_NOT_CKB_AND_D,D$delay,MGM_W13);


	not MGM_G24(MGM_W14,D$delay);


	and MGM_G25(ENABLE_CKB_AND_NOT_D,MGM_W14,CKB$delay);


	and MGM_G26(ENABLE_CKB_AND_D,D$delay,CKB$delay);


	buf MGM_G27(ENABLE_RB,RB$delay);


	not MGM_G28(MGM_W15,CKB$delay);


	not MGM_G29(MGM_W16,D$delay);


	and MGM_G30(MGM_W17,MGM_W16,MGM_W15);


	and MGM_G31(ENABLE_NOT_CKB_AND_NOT_D_AND_RB,RB$delay,MGM_W17);


	not MGM_G32(MGM_W18,CKB$delay);


	and MGM_G33(MGM_W19,D$delay,MGM_W18);


	and MGM_G34(ENABLE_NOT_CKB_AND_D_AND_RB,RB$delay,MGM_W19);


	not MGM_G35(MGM_W20,D$delay);


	and MGM_G36(MGM_W21,MGM_W20,CKB$delay);


	and MGM_G37(ENABLE_CKB_AND_NOT_D_AND_RB,RB$delay,MGM_W21);


	and MGM_G38(MGM_W22,D$delay,CKB$delay);


	and MGM_G39(ENABLE_CKB_AND_D_AND_RB,RB$delay,MGM_W22);


	// spec_gates_end



   specify

	// specify_block_begin 

	// seq arc CKB --> Q
	(negedge CKB => (Q : D))  = (1.0,1.0);

	// seq arc RB --> Q
	(RB => Q)  = (1.0,1.0);

	// seq arc SB --> Q
	(SB => Q)  = (1.0,1.0);

	// seq arc CKB --> QB
	(negedge CKB => (QB : D))  = (1.0,1.0);

	// seq arc RB --> QB
	(RB => QB)  = (1.0,1.0);

	// seq arc SB --> QB
	(SB => QB)  = (1.0,1.0);

	$width(negedge CKB &&& (ENABLE_NOT_D_AND_RB_AND_SB === 1'b1)
		,1.0,0,notifier);

	$width(posedge CKB &&& (ENABLE_NOT_D_AND_RB_AND_SB === 1'b1)
		,1.0,0,notifier);

	$width(negedge CKB &&& (ENABLE_D_AND_RB_AND_SB === 1'b1)
		,1.0,0,notifier);

	$width(posedge CKB &&& (ENABLE_D_AND_RB_AND_SB === 1'b1)
		,1.0,0,notifier);

	// setuphold D- CKB-HL
	$setuphold(negedge CKB &&& (ENABLE_RB_AND_SB === 1'b1),
		posedge D &&& (ENABLE_RB_AND_SB === 1'b1),
		1.0,1.0,notifier,,,CKB$delay,D$delay);

	// setuphold D- CKB-HL
	$setuphold(negedge CKB &&& (ENABLE_RB_AND_SB === 1'b1),
		negedge D &&& (ENABLE_RB_AND_SB === 1'b1),
		1.0,1.0,notifier,,,CKB$delay,D$delay);

	// recrem RB-CKB-negedge
	$recrem(posedge RB &&& (ENABLE_SB === 1'b1),
		negedge CKB &&& (ENABLE_SB === 1'b1),
		1.0,1.0,notifier,,,RB$delay,CKB$delay);

	$width(negedge RB &&& (ENABLE_NOT_CKB_AND_NOT_D_AND_SB === 1'b1)
		,1.0,0,notifier);

	$width(negedge RB &&& (ENABLE_NOT_CKB_AND_D_AND_SB === 1'b1)
		,1.0,0,notifier);

	$width(negedge RB &&& (ENABLE_CKB_AND_NOT_D_AND_SB === 1'b1)
		,1.0,0,notifier);

	$width(negedge RB &&& (ENABLE_CKB_AND_D_AND_SB === 1'b1)
		,1.0,0,notifier);

	// setuphold RB- SB-LH
	$setuphold(posedge SB &&& (ENABLE_NOT_CKB_AND_NOT_D === 1'b1),
		posedge RB &&& (ENABLE_NOT_CKB_AND_NOT_D === 1'b1),
		1.0,1.0,notifier,,,SB$delay,RB$delay);

	// setuphold RB- SB-LH
	$setuphold(posedge SB &&& (ENABLE_NOT_CKB_AND_D === 1'b1),
		posedge RB &&& (ENABLE_NOT_CKB_AND_D === 1'b1),
		1.0,1.0,notifier,,,SB$delay,RB$delay);

	// setuphold RB- SB-LH
	$setuphold(posedge SB &&& (ENABLE_CKB_AND_NOT_D === 1'b1),
		posedge RB &&& (ENABLE_CKB_AND_NOT_D === 1'b1),
		1.0,1.0,notifier,,,SB$delay,RB$delay);

	// setuphold RB- SB-LH
	$setuphold(posedge SB &&& (ENABLE_CKB_AND_D === 1'b1),
		posedge RB &&& (ENABLE_CKB_AND_D === 1'b1),
		1.0,1.0,notifier,,,SB$delay,RB$delay);

	// recrem SB-CKB-negedge
	$recrem(posedge SB &&& (ENABLE_RB === 1'b1),
		negedge CKB &&& (ENABLE_RB === 1'b1),
		1.0,1.0,notifier,,,SB$delay,CKB$delay);

	// setuphold SB- RB-LH
	$setuphold(posedge RB &&& (ENABLE_NOT_CKB_AND_NOT_D === 1'b1),
		posedge SB &&& (ENABLE_NOT_CKB_AND_NOT_D === 1'b1),
		1.0,1.0,notifier,,,RB$delay,SB$delay);

	// setuphold SB- RB-LH
	$setuphold(posedge RB &&& (ENABLE_NOT_CKB_AND_D === 1'b1),
		posedge SB &&& (ENABLE_NOT_CKB_AND_D === 1'b1),
		1.0,1.0,notifier,,,RB$delay,SB$delay);

	// setuphold SB- RB-LH
	$setuphold(posedge RB &&& (ENABLE_CKB_AND_NOT_D === 1'b1),
		posedge SB &&& (ENABLE_CKB_AND_NOT_D === 1'b1),
		1.0,1.0,notifier,,,RB$delay,SB$delay);

	// setuphold SB- RB-LH
	$setuphold(posedge RB &&& (ENABLE_CKB_AND_D === 1'b1),
		posedge SB &&& (ENABLE_CKB_AND_D === 1'b1),
		1.0,1.0,notifier,,,RB$delay,SB$delay);

	$width(negedge SB &&& (ENABLE_NOT_CKB_AND_NOT_D_AND_RB === 1'b1)
		,1.0,0,notifier);

	$width(negedge SB &&& (ENABLE_NOT_CKB_AND_D_AND_RB === 1'b1)
		,1.0,0,notifier);

	$width(negedge SB &&& (ENABLE_CKB_AND_NOT_D_AND_RB === 1'b1)
		,1.0,0,notifier);

	$width(negedge SB &&& (ENABLE_CKB_AND_D_AND_RB === 1'b1)
		,1.0,0,notifier);

	// mpw CKB_lh 
	$width(posedge CKB,1.0,0,notifier);

	// mpw CKB_hl 
	$width(negedge CKB,1.0,0,notifier);

	// mpw RB_hl 
	$width(negedge RB,1.0,0,notifier);

	// mpw SB_hl 
	$width(negedge SB,1.0,0,notifier);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module DFEM1HM( Q, QB, CK, D, E , VDD, VSS);
inout VDD;
inout VSS;
input CK, D, E;
output Q, QB;
reg notifier;

   `ifdef FUNCTIONAL  //  functional //

	DFEM1HM_func DFEM1HM_behav_inst(.Q(Q),.QB(QB),.CK(CK),.D(D),.E(E),.notifier(notifier),.VDD(VDD),.VSS(VSS));

   `else

	wire CK$delay ;

	wire D$delay ;

	wire E$delay ;

	DFEM1HM_func DFEM1HM_inst(.Q(Q),.QB(QB),.CK(CK$delay),.D(D$delay),.E(E$delay),.notifier(notifier),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	not MGM_G0(MGM_W0,D$delay);


	and MGM_G1(ENABLE_NOT_D_AND_E,E$delay,MGM_W0);


	and MGM_G2(ENABLE_D_AND_E,E$delay,D$delay);


	buf MGM_G3(ENABLE_E,E$delay);


	not MGM_G4(ENABLE_NOT_D,D$delay);


	buf MGM_G5(ENABLE_D,D$delay);


	// spec_gates_end



   specify

	// specify_block_begin 

	// seq arc CK --> Q
	(posedge CK => (Q : D))  = (1.0,1.0);

	// seq arc CK --> QB
	(posedge CK => (QB : D))  = (1.0,1.0);

	$width(negedge CK &&& (ENABLE_NOT_D_AND_E === 1'b1)
		,1.0,0,notifier);

	$width(posedge CK &&& (ENABLE_NOT_D_AND_E === 1'b1)
		,1.0,0,notifier);

	$width(negedge CK &&& (ENABLE_D_AND_E === 1'b1)
		,1.0,0,notifier);

	$width(posedge CK &&& (ENABLE_D_AND_E === 1'b1)
		,1.0,0,notifier);

	// setuphold D- CK-LH
	$setuphold(posedge CK &&& (ENABLE_E === 1'b1),
		posedge D &&& (ENABLE_E === 1'b1),
		1.0,1.0,notifier,,,CK$delay,D$delay);

	// setuphold D- CK-LH
	$setuphold(posedge CK &&& (ENABLE_E === 1'b1),
		negedge D &&& (ENABLE_E === 1'b1),
		1.0,1.0,notifier,,,CK$delay,D$delay);

	// setuphold E- CK-LH
	$setuphold(posedge CK &&& (ENABLE_NOT_D === 1'b1),
		posedge E &&& (ENABLE_NOT_D === 1'b1),
		1.0,1.0,notifier,,,CK$delay,E$delay);

	// setuphold E- CK-LH
	$setuphold(posedge CK &&& (ENABLE_NOT_D === 1'b1),
		negedge E &&& (ENABLE_NOT_D === 1'b1),
		1.0,1.0,notifier,,,CK$delay,E$delay);

	// setuphold E- CK-LH
	$setuphold(posedge CK &&& (ENABLE_D === 1'b1),
		posedge E &&& (ENABLE_D === 1'b1),
		1.0,1.0,notifier,,,CK$delay,E$delay);

	// setuphold E- CK-LH
	$setuphold(posedge CK &&& (ENABLE_D === 1'b1),
		negedge E &&& (ENABLE_D === 1'b1),
		1.0,1.0,notifier,,,CK$delay,E$delay);

	// mpw CK_lh 
	$width(posedge CK,1.0,0,notifier);

	// mpw CK_hl 
	$width(negedge CK,1.0,0,notifier);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module DFEM2HM( Q, QB, CK, D, E , VDD, VSS);
inout VDD;
inout VSS;
input CK, D, E;
output Q, QB;
reg notifier;

   `ifdef FUNCTIONAL  //  functional //

	DFEM2HM_func DFEM2HM_behav_inst(.Q(Q),.QB(QB),.CK(CK),.D(D),.E(E),.notifier(notifier),.VDD(VDD),.VSS(VSS));

   `else

	wire CK$delay ;

	wire D$delay ;

	wire E$delay ;

	DFEM2HM_func DFEM2HM_inst(.Q(Q),.QB(QB),.CK(CK$delay),.D(D$delay),.E(E$delay),.notifier(notifier),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	not MGM_G0(MGM_W0,D$delay);


	and MGM_G1(ENABLE_NOT_D_AND_E,E$delay,MGM_W0);


	and MGM_G2(ENABLE_D_AND_E,E$delay,D$delay);


	buf MGM_G3(ENABLE_E,E$delay);


	not MGM_G4(ENABLE_NOT_D,D$delay);


	buf MGM_G5(ENABLE_D,D$delay);


	// spec_gates_end



   specify

	// specify_block_begin 

	// seq arc CK --> Q
	(posedge CK => (Q : D))  = (1.0,1.0);

	// seq arc CK --> QB
	(posedge CK => (QB : D))  = (1.0,1.0);

	$width(negedge CK &&& (ENABLE_NOT_D_AND_E === 1'b1)
		,1.0,0,notifier);

	$width(posedge CK &&& (ENABLE_NOT_D_AND_E === 1'b1)
		,1.0,0,notifier);

	$width(negedge CK &&& (ENABLE_D_AND_E === 1'b1)
		,1.0,0,notifier);

	$width(posedge CK &&& (ENABLE_D_AND_E === 1'b1)
		,1.0,0,notifier);

	// setuphold D- CK-LH
	$setuphold(posedge CK &&& (ENABLE_E === 1'b1),
		posedge D &&& (ENABLE_E === 1'b1),
		1.0,1.0,notifier,,,CK$delay,D$delay);

	// setuphold D- CK-LH
	$setuphold(posedge CK &&& (ENABLE_E === 1'b1),
		negedge D &&& (ENABLE_E === 1'b1),
		1.0,1.0,notifier,,,CK$delay,D$delay);

	// setuphold E- CK-LH
	$setuphold(posedge CK &&& (ENABLE_NOT_D === 1'b1),
		posedge E &&& (ENABLE_NOT_D === 1'b1),
		1.0,1.0,notifier,,,CK$delay,E$delay);

	// setuphold E- CK-LH
	$setuphold(posedge CK &&& (ENABLE_NOT_D === 1'b1),
		negedge E &&& (ENABLE_NOT_D === 1'b1),
		1.0,1.0,notifier,,,CK$delay,E$delay);

	// setuphold E- CK-LH
	$setuphold(posedge CK &&& (ENABLE_D === 1'b1),
		posedge E &&& (ENABLE_D === 1'b1),
		1.0,1.0,notifier,,,CK$delay,E$delay);

	// setuphold E- CK-LH
	$setuphold(posedge CK &&& (ENABLE_D === 1'b1),
		negedge E &&& (ENABLE_D === 1'b1),
		1.0,1.0,notifier,,,CK$delay,E$delay);

	// mpw CK_lh 
	$width(posedge CK,1.0,0,notifier);

	// mpw CK_hl 
	$width(negedge CK,1.0,0,notifier);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module DFEM4HM( Q, QB, CK, D, E , VDD, VSS);
inout VDD;
inout VSS;
input CK, D, E;
output Q, QB;
reg notifier;

   `ifdef FUNCTIONAL  //  functional //

	DFEM4HM_func DFEM4HM_behav_inst(.Q(Q),.QB(QB),.CK(CK),.D(D),.E(E),.notifier(notifier),.VDD(VDD),.VSS(VSS));

   `else

	wire CK$delay ;

	wire D$delay ;

	wire E$delay ;

	DFEM4HM_func DFEM4HM_inst(.Q(Q),.QB(QB),.CK(CK$delay),.D(D$delay),.E(E$delay),.notifier(notifier),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	not MGM_G0(MGM_W0,D$delay);


	and MGM_G1(ENABLE_NOT_D_AND_E,E$delay,MGM_W0);


	and MGM_G2(ENABLE_D_AND_E,E$delay,D$delay);


	buf MGM_G3(ENABLE_E,E$delay);


	not MGM_G4(ENABLE_NOT_D,D$delay);


	buf MGM_G5(ENABLE_D,D$delay);


	// spec_gates_end



   specify

	// specify_block_begin 

	// seq arc CK --> Q
	(posedge CK => (Q : D))  = (1.0,1.0);

	// seq arc CK --> QB
	(posedge CK => (QB : D))  = (1.0,1.0);

	$width(negedge CK &&& (ENABLE_NOT_D_AND_E === 1'b1)
		,1.0,0,notifier);

	$width(posedge CK &&& (ENABLE_NOT_D_AND_E === 1'b1)
		,1.0,0,notifier);

	$width(negedge CK &&& (ENABLE_D_AND_E === 1'b1)
		,1.0,0,notifier);

	$width(posedge CK &&& (ENABLE_D_AND_E === 1'b1)
		,1.0,0,notifier);

	// setuphold D- CK-LH
	$setuphold(posedge CK &&& (ENABLE_E === 1'b1),
		posedge D &&& (ENABLE_E === 1'b1),
		1.0,1.0,notifier,,,CK$delay,D$delay);

	// setuphold D- CK-LH
	$setuphold(posedge CK &&& (ENABLE_E === 1'b1),
		negedge D &&& (ENABLE_E === 1'b1),
		1.0,1.0,notifier,,,CK$delay,D$delay);

	// setuphold E- CK-LH
	$setuphold(posedge CK &&& (ENABLE_NOT_D === 1'b1),
		posedge E &&& (ENABLE_NOT_D === 1'b1),
		1.0,1.0,notifier,,,CK$delay,E$delay);

	// setuphold E- CK-LH
	$setuphold(posedge CK &&& (ENABLE_NOT_D === 1'b1),
		negedge E &&& (ENABLE_NOT_D === 1'b1),
		1.0,1.0,notifier,,,CK$delay,E$delay);

	// setuphold E- CK-LH
	$setuphold(posedge CK &&& (ENABLE_D === 1'b1),
		posedge E &&& (ENABLE_D === 1'b1),
		1.0,1.0,notifier,,,CK$delay,E$delay);

	// setuphold E- CK-LH
	$setuphold(posedge CK &&& (ENABLE_D === 1'b1),
		negedge E &&& (ENABLE_D === 1'b1),
		1.0,1.0,notifier,,,CK$delay,E$delay);

	// mpw CK_lh 
	$width(posedge CK,1.0,0,notifier);

	// mpw CK_hl 
	$width(negedge CK,1.0,0,notifier);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module DFEM8HM( Q, QB, CK, D, E , VDD, VSS);
inout VDD;
inout VSS;
input CK, D, E;
output Q, QB;
reg notifier;

   `ifdef FUNCTIONAL  //  functional //

	DFEM8HM_func DFEM8HM_behav_inst(.Q(Q),.QB(QB),.CK(CK),.D(D),.E(E),.notifier(notifier),.VDD(VDD),.VSS(VSS));

   `else

	wire CK$delay ;

	wire D$delay ;

	wire E$delay ;

	DFEM8HM_func DFEM8HM_inst(.Q(Q),.QB(QB),.CK(CK$delay),.D(D$delay),.E(E$delay),.notifier(notifier),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	not MGM_G0(MGM_W0,D$delay);


	and MGM_G1(ENABLE_NOT_D_AND_E,E$delay,MGM_W0);


	and MGM_G2(ENABLE_D_AND_E,E$delay,D$delay);


	buf MGM_G3(ENABLE_E,E$delay);


	not MGM_G4(ENABLE_NOT_D,D$delay);


	buf MGM_G5(ENABLE_D,D$delay);


	// spec_gates_end



   specify

	// specify_block_begin 

	// seq arc CK --> Q
	(posedge CK => (Q : D))  = (1.0,1.0);

	// seq arc CK --> QB
	(posedge CK => (QB : D))  = (1.0,1.0);

	$width(negedge CK &&& (ENABLE_NOT_D_AND_E === 1'b1)
		,1.0,0,notifier);

	$width(posedge CK &&& (ENABLE_NOT_D_AND_E === 1'b1)
		,1.0,0,notifier);

	$width(negedge CK &&& (ENABLE_D_AND_E === 1'b1)
		,1.0,0,notifier);

	$width(posedge CK &&& (ENABLE_D_AND_E === 1'b1)
		,1.0,0,notifier);

	// setuphold D- CK-LH
	$setuphold(posedge CK &&& (ENABLE_E === 1'b1),
		posedge D &&& (ENABLE_E === 1'b1),
		1.0,1.0,notifier,,,CK$delay,D$delay);

	// setuphold D- CK-LH
	$setuphold(posedge CK &&& (ENABLE_E === 1'b1),
		negedge D &&& (ENABLE_E === 1'b1),
		1.0,1.0,notifier,,,CK$delay,D$delay);

	// setuphold E- CK-LH
	$setuphold(posedge CK &&& (ENABLE_NOT_D === 1'b1),
		posedge E &&& (ENABLE_NOT_D === 1'b1),
		1.0,1.0,notifier,,,CK$delay,E$delay);

	// setuphold E- CK-LH
	$setuphold(posedge CK &&& (ENABLE_NOT_D === 1'b1),
		negedge E &&& (ENABLE_NOT_D === 1'b1),
		1.0,1.0,notifier,,,CK$delay,E$delay);

	// setuphold E- CK-LH
	$setuphold(posedge CK &&& (ENABLE_D === 1'b1),
		posedge E &&& (ENABLE_D === 1'b1),
		1.0,1.0,notifier,,,CK$delay,E$delay);

	// setuphold E- CK-LH
	$setuphold(posedge CK &&& (ENABLE_D === 1'b1),
		negedge E &&& (ENABLE_D === 1'b1),
		1.0,1.0,notifier,,,CK$delay,E$delay);

	// mpw CK_lh 
	$width(posedge CK,1.0,0,notifier);

	// mpw CK_hl 
	$width(negedge CK,1.0,0,notifier);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module DFEQM1HM( Q, CK, D, E , VDD, VSS);
inout VDD;
inout VSS;
input CK, D, E;
output Q;
reg notifier;

   `ifdef FUNCTIONAL  //  functional //

	DFEQM1HM_func DFEQM1HM_behav_inst(.Q(Q),.CK(CK),.D(D),.E(E),.notifier(notifier),.VDD(VDD),.VSS(VSS));

   `else

	wire CK$delay ;

	wire D$delay ;

	wire E$delay ;

	DFEQM1HM_func DFEQM1HM_inst(.Q(Q),.CK(CK$delay),.D(D$delay),.E(E$delay),.notifier(notifier),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	not MGM_G0(MGM_W0,D$delay);


	and MGM_G1(ENABLE_NOT_D_AND_E,E$delay,MGM_W0);


	and MGM_G2(ENABLE_D_AND_E,E$delay,D$delay);


	buf MGM_G3(ENABLE_E,E$delay);


	not MGM_G4(ENABLE_NOT_D,D$delay);


	buf MGM_G5(ENABLE_D,D$delay);


	// spec_gates_end



   specify

	// specify_block_begin 

	// seq arc CK --> Q
	(posedge CK => (Q : D))  = (1.0,1.0);

	$width(negedge CK &&& (ENABLE_NOT_D_AND_E === 1'b1)
		,1.0,0,notifier);

	$width(posedge CK &&& (ENABLE_NOT_D_AND_E === 1'b1)
		,1.0,0,notifier);

	$width(negedge CK &&& (ENABLE_D_AND_E === 1'b1)
		,1.0,0,notifier);

	$width(posedge CK &&& (ENABLE_D_AND_E === 1'b1)
		,1.0,0,notifier);

	// setuphold D- CK-LH
	$setuphold(posedge CK &&& (ENABLE_E === 1'b1),
		posedge D &&& (ENABLE_E === 1'b1),
		1.0,1.0,notifier,,,CK$delay,D$delay);

	// setuphold D- CK-LH
	$setuphold(posedge CK &&& (ENABLE_E === 1'b1),
		negedge D &&& (ENABLE_E === 1'b1),
		1.0,1.0,notifier,,,CK$delay,D$delay);

	// setuphold E- CK-LH
	$setuphold(posedge CK &&& (ENABLE_NOT_D === 1'b1),
		posedge E &&& (ENABLE_NOT_D === 1'b1),
		1.0,1.0,notifier,,,CK$delay,E$delay);

	// setuphold E- CK-LH
	$setuphold(posedge CK &&& (ENABLE_NOT_D === 1'b1),
		negedge E &&& (ENABLE_NOT_D === 1'b1),
		1.0,1.0,notifier,,,CK$delay,E$delay);

	// setuphold E- CK-LH
	$setuphold(posedge CK &&& (ENABLE_D === 1'b1),
		posedge E &&& (ENABLE_D === 1'b1),
		1.0,1.0,notifier,,,CK$delay,E$delay);

	// setuphold E- CK-LH
	$setuphold(posedge CK &&& (ENABLE_D === 1'b1),
		negedge E &&& (ENABLE_D === 1'b1),
		1.0,1.0,notifier,,,CK$delay,E$delay);

	// mpw CK_lh 
	$width(posedge CK,1.0,0,notifier);

	// mpw CK_hl 
	$width(negedge CK,1.0,0,notifier);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module DFEQM2HM( Q, CK, D, E , VDD, VSS);
inout VDD;
inout VSS;
input CK, D, E;
output Q;
reg notifier;

   `ifdef FUNCTIONAL  //  functional //

	DFEQM2HM_func DFEQM2HM_behav_inst(.Q(Q),.CK(CK),.D(D),.E(E),.notifier(notifier),.VDD(VDD),.VSS(VSS));

   `else

	wire CK$delay ;

	wire D$delay ;

	wire E$delay ;

	DFEQM2HM_func DFEQM2HM_inst(.Q(Q),.CK(CK$delay),.D(D$delay),.E(E$delay),.notifier(notifier),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	not MGM_G0(MGM_W0,D$delay);


	and MGM_G1(ENABLE_NOT_D_AND_E,E$delay,MGM_W0);


	and MGM_G2(ENABLE_D_AND_E,E$delay,D$delay);


	buf MGM_G3(ENABLE_E,E$delay);


	not MGM_G4(ENABLE_NOT_D,D$delay);


	buf MGM_G5(ENABLE_D,D$delay);


	// spec_gates_end



   specify

	// specify_block_begin 

	// seq arc CK --> Q
	(posedge CK => (Q : D))  = (1.0,1.0);

	$width(negedge CK &&& (ENABLE_NOT_D_AND_E === 1'b1)
		,1.0,0,notifier);

	$width(posedge CK &&& (ENABLE_NOT_D_AND_E === 1'b1)
		,1.0,0,notifier);

	$width(negedge CK &&& (ENABLE_D_AND_E === 1'b1)
		,1.0,0,notifier);

	$width(posedge CK &&& (ENABLE_D_AND_E === 1'b1)
		,1.0,0,notifier);

	// setuphold D- CK-LH
	$setuphold(posedge CK &&& (ENABLE_E === 1'b1),
		posedge D &&& (ENABLE_E === 1'b1),
		1.0,1.0,notifier,,,CK$delay,D$delay);

	// setuphold D- CK-LH
	$setuphold(posedge CK &&& (ENABLE_E === 1'b1),
		negedge D &&& (ENABLE_E === 1'b1),
		1.0,1.0,notifier,,,CK$delay,D$delay);

	// setuphold E- CK-LH
	$setuphold(posedge CK &&& (ENABLE_NOT_D === 1'b1),
		posedge E &&& (ENABLE_NOT_D === 1'b1),
		1.0,1.0,notifier,,,CK$delay,E$delay);

	// setuphold E- CK-LH
	$setuphold(posedge CK &&& (ENABLE_NOT_D === 1'b1),
		negedge E &&& (ENABLE_NOT_D === 1'b1),
		1.0,1.0,notifier,,,CK$delay,E$delay);

	// setuphold E- CK-LH
	$setuphold(posedge CK &&& (ENABLE_D === 1'b1),
		posedge E &&& (ENABLE_D === 1'b1),
		1.0,1.0,notifier,,,CK$delay,E$delay);

	// setuphold E- CK-LH
	$setuphold(posedge CK &&& (ENABLE_D === 1'b1),
		negedge E &&& (ENABLE_D === 1'b1),
		1.0,1.0,notifier,,,CK$delay,E$delay);

	// mpw CK_lh 
	$width(posedge CK,1.0,0,notifier);

	// mpw CK_hl 
	$width(negedge CK,1.0,0,notifier);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module DFEQM4HM( Q, CK, D, E , VDD, VSS);
inout VDD;
inout VSS;
input CK, D, E;
output Q;
reg notifier;

   `ifdef FUNCTIONAL  //  functional //

	DFEQM4HM_func DFEQM4HM_behav_inst(.Q(Q),.CK(CK),.D(D),.E(E),.notifier(notifier),.VDD(VDD),.VSS(VSS));

   `else

	wire CK$delay ;

	wire D$delay ;

	wire E$delay ;

	DFEQM4HM_func DFEQM4HM_inst(.Q(Q),.CK(CK$delay),.D(D$delay),.E(E$delay),.notifier(notifier),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	not MGM_G0(MGM_W0,D$delay);


	and MGM_G1(ENABLE_NOT_D_AND_E,E$delay,MGM_W0);


	and MGM_G2(ENABLE_D_AND_E,E$delay,D$delay);


	buf MGM_G3(ENABLE_E,E$delay);


	not MGM_G4(ENABLE_NOT_D,D$delay);


	buf MGM_G5(ENABLE_D,D$delay);


	// spec_gates_end



   specify

	// specify_block_begin 

	// seq arc CK --> Q
	(posedge CK => (Q : D))  = (1.0,1.0);

	$width(negedge CK &&& (ENABLE_NOT_D_AND_E === 1'b1)
		,1.0,0,notifier);

	$width(posedge CK &&& (ENABLE_NOT_D_AND_E === 1'b1)
		,1.0,0,notifier);

	$width(negedge CK &&& (ENABLE_D_AND_E === 1'b1)
		,1.0,0,notifier);

	$width(posedge CK &&& (ENABLE_D_AND_E === 1'b1)
		,1.0,0,notifier);

	// setuphold D- CK-LH
	$setuphold(posedge CK &&& (ENABLE_E === 1'b1),
		posedge D &&& (ENABLE_E === 1'b1),
		1.0,1.0,notifier,,,CK$delay,D$delay);

	// setuphold D- CK-LH
	$setuphold(posedge CK &&& (ENABLE_E === 1'b1),
		negedge D &&& (ENABLE_E === 1'b1),
		1.0,1.0,notifier,,,CK$delay,D$delay);

	// setuphold E- CK-LH
	$setuphold(posedge CK &&& (ENABLE_NOT_D === 1'b1),
		posedge E &&& (ENABLE_NOT_D === 1'b1),
		1.0,1.0,notifier,,,CK$delay,E$delay);

	// setuphold E- CK-LH
	$setuphold(posedge CK &&& (ENABLE_NOT_D === 1'b1),
		negedge E &&& (ENABLE_NOT_D === 1'b1),
		1.0,1.0,notifier,,,CK$delay,E$delay);

	// setuphold E- CK-LH
	$setuphold(posedge CK &&& (ENABLE_D === 1'b1),
		posedge E &&& (ENABLE_D === 1'b1),
		1.0,1.0,notifier,,,CK$delay,E$delay);

	// setuphold E- CK-LH
	$setuphold(posedge CK &&& (ENABLE_D === 1'b1),
		negedge E &&& (ENABLE_D === 1'b1),
		1.0,1.0,notifier,,,CK$delay,E$delay);

	// mpw CK_lh 
	$width(posedge CK,1.0,0,notifier);

	// mpw CK_hl 
	$width(negedge CK,1.0,0,notifier);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module DFEQM8HM( Q, CK, D, E , VDD, VSS);
inout VDD;
inout VSS;
input CK, D, E;
output Q;
reg notifier;

   `ifdef FUNCTIONAL  //  functional //

	DFEQM8HM_func DFEQM8HM_behav_inst(.Q(Q),.CK(CK),.D(D),.E(E),.notifier(notifier),.VDD(VDD),.VSS(VSS));

   `else

	wire CK$delay ;

	wire D$delay ;

	wire E$delay ;

	DFEQM8HM_func DFEQM8HM_inst(.Q(Q),.CK(CK$delay),.D(D$delay),.E(E$delay),.notifier(notifier),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	not MGM_G0(MGM_W0,D$delay);


	and MGM_G1(ENABLE_NOT_D_AND_E,E$delay,MGM_W0);


	and MGM_G2(ENABLE_D_AND_E,E$delay,D$delay);


	buf MGM_G3(ENABLE_E,E$delay);


	not MGM_G4(ENABLE_NOT_D,D$delay);


	buf MGM_G5(ENABLE_D,D$delay);


	// spec_gates_end



   specify

	// specify_block_begin 

	// seq arc CK --> Q
	(posedge CK => (Q : D))  = (1.0,1.0);

	$width(negedge CK &&& (ENABLE_NOT_D_AND_E === 1'b1)
		,1.0,0,notifier);

	$width(posedge CK &&& (ENABLE_NOT_D_AND_E === 1'b1)
		,1.0,0,notifier);

	$width(negedge CK &&& (ENABLE_D_AND_E === 1'b1)
		,1.0,0,notifier);

	$width(posedge CK &&& (ENABLE_D_AND_E === 1'b1)
		,1.0,0,notifier);

	// setuphold D- CK-LH
	$setuphold(posedge CK &&& (ENABLE_E === 1'b1),
		posedge D &&& (ENABLE_E === 1'b1),
		1.0,1.0,notifier,,,CK$delay,D$delay);

	// setuphold D- CK-LH
	$setuphold(posedge CK &&& (ENABLE_E === 1'b1),
		negedge D &&& (ENABLE_E === 1'b1),
		1.0,1.0,notifier,,,CK$delay,D$delay);

	// setuphold E- CK-LH
	$setuphold(posedge CK &&& (ENABLE_NOT_D === 1'b1),
		posedge E &&& (ENABLE_NOT_D === 1'b1),
		1.0,1.0,notifier,,,CK$delay,E$delay);

	// setuphold E- CK-LH
	$setuphold(posedge CK &&& (ENABLE_NOT_D === 1'b1),
		negedge E &&& (ENABLE_NOT_D === 1'b1),
		1.0,1.0,notifier,,,CK$delay,E$delay);

	// setuphold E- CK-LH
	$setuphold(posedge CK &&& (ENABLE_D === 1'b1),
		posedge E &&& (ENABLE_D === 1'b1),
		1.0,1.0,notifier,,,CK$delay,E$delay);

	// setuphold E- CK-LH
	$setuphold(posedge CK &&& (ENABLE_D === 1'b1),
		negedge E &&& (ENABLE_D === 1'b1),
		1.0,1.0,notifier,,,CK$delay,E$delay);

	// mpw CK_lh 
	$width(posedge CK,1.0,0,notifier);

	// mpw CK_hl 
	$width(negedge CK,1.0,0,notifier);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module DFEQRM1HM( Q, CK, D, E, RB , VDD, VSS);
inout VDD;
inout VSS;
input CK, D, E, RB;
output Q;
reg notifier;

   `ifdef FUNCTIONAL  //  functional //

	DFEQRM1HM_func DFEQRM1HM_behav_inst(.Q(Q),.CK(CK),.D(D),.E(E),.RB(RB),.notifier(notifier),.VDD(VDD),.VSS(VSS));

   `else

	wire CK$delay ;

	wire D$delay ;

	wire E$delay ;

	wire RB$delay ;

	DFEQRM1HM_func DFEQRM1HM_inst(.Q(Q),.CK(CK$delay),.D(D$delay),.E(E$delay),.RB(RB$delay),.notifier(notifier),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	not MGM_G0(MGM_W0,D$delay);


	and MGM_G1(MGM_W1,E$delay,MGM_W0);


	and MGM_G2(ENABLE_NOT_D_AND_E_AND_RB,RB$delay,MGM_W1);


	and MGM_G3(MGM_W2,E$delay,D$delay);


	and MGM_G4(ENABLE_D_AND_E_AND_RB,RB$delay,MGM_W2);


	and MGM_G5(ENABLE_E_AND_RB,RB$delay,E$delay);


	not MGM_G6(MGM_W3,D$delay);


	and MGM_G7(ENABLE_NOT_D_AND_RB,RB$delay,MGM_W3);


	and MGM_G8(ENABLE_D_AND_RB,RB$delay,D$delay);


	buf MGM_G9(ENABLE_E,E$delay);


	not MGM_G10(MGM_W4,CK$delay);


	not MGM_G11(MGM_W5,D$delay);


	and MGM_G12(MGM_W6,MGM_W5,MGM_W4);


	not MGM_G13(MGM_W7,E$delay);


	and MGM_G14(ENABLE_NOT_CK_AND_NOT_D_AND_NOT_E,MGM_W7,MGM_W6);


	not MGM_G15(MGM_W8,CK$delay);


	not MGM_G16(MGM_W9,D$delay);


	and MGM_G17(MGM_W10,MGM_W9,MGM_W8);


	and MGM_G18(ENABLE_NOT_CK_AND_NOT_D_AND_E,E$delay,MGM_W10);


	not MGM_G19(MGM_W11,CK$delay);


	and MGM_G20(MGM_W12,D$delay,MGM_W11);


	not MGM_G21(MGM_W13,E$delay);


	and MGM_G22(ENABLE_NOT_CK_AND_D_AND_NOT_E,MGM_W13,MGM_W12);


	not MGM_G23(MGM_W14,CK$delay);


	and MGM_G24(MGM_W15,D$delay,MGM_W14);


	and MGM_G25(ENABLE_NOT_CK_AND_D_AND_E,E$delay,MGM_W15);


	not MGM_G26(MGM_W16,D$delay);


	and MGM_G27(MGM_W17,MGM_W16,CK$delay);


	not MGM_G28(MGM_W18,E$delay);


	and MGM_G29(ENABLE_CK_AND_NOT_D_AND_NOT_E,MGM_W18,MGM_W17);


	not MGM_G30(MGM_W19,D$delay);


	and MGM_G31(MGM_W20,MGM_W19,CK$delay);


	and MGM_G32(ENABLE_CK_AND_NOT_D_AND_E,E$delay,MGM_W20);


	and MGM_G33(MGM_W21,D$delay,CK$delay);


	not MGM_G34(MGM_W22,E$delay);


	and MGM_G35(ENABLE_CK_AND_D_AND_NOT_E,MGM_W22,MGM_W21);


	and MGM_G36(MGM_W23,D$delay,CK$delay);


	and MGM_G37(ENABLE_CK_AND_D_AND_E,E$delay,MGM_W23);


	// spec_gates_end



   specify

	// specify_block_begin 

	// seq arc CK --> Q
	(posedge CK => (Q : D))  = (1.0,1.0);

	// seq arc RB --> Q
	(RB => Q)  = (1.0,1.0);

	$width(negedge CK &&& (ENABLE_NOT_D_AND_E_AND_RB === 1'b1)
		,1.0,0,notifier);

	$width(posedge CK &&& (ENABLE_NOT_D_AND_E_AND_RB === 1'b1)
		,1.0,0,notifier);

	$width(negedge CK &&& (ENABLE_D_AND_E_AND_RB === 1'b1)
		,1.0,0,notifier);

	$width(posedge CK &&& (ENABLE_D_AND_E_AND_RB === 1'b1)
		,1.0,0,notifier);

	// setuphold D- CK-LH
	$setuphold(posedge CK &&& (ENABLE_E_AND_RB === 1'b1),
		posedge D &&& (ENABLE_E_AND_RB === 1'b1),
		1.0,1.0,notifier,,,CK$delay,D$delay);

	// setuphold D- CK-LH
	$setuphold(posedge CK &&& (ENABLE_E_AND_RB === 1'b1),
		negedge D &&& (ENABLE_E_AND_RB === 1'b1),
		1.0,1.0,notifier,,,CK$delay,D$delay);

	// setuphold E- CK-LH
	$setuphold(posedge CK &&& (ENABLE_NOT_D_AND_RB === 1'b1),
		posedge E &&& (ENABLE_NOT_D_AND_RB === 1'b1),
		1.0,1.0,notifier,,,CK$delay,E$delay);

	// setuphold E- CK-LH
	$setuphold(posedge CK &&& (ENABLE_NOT_D_AND_RB === 1'b1),
		negedge E &&& (ENABLE_NOT_D_AND_RB === 1'b1),
		1.0,1.0,notifier,,,CK$delay,E$delay);

	// setuphold E- CK-LH
	$setuphold(posedge CK &&& (ENABLE_D_AND_RB === 1'b1),
		posedge E &&& (ENABLE_D_AND_RB === 1'b1),
		1.0,1.0,notifier,,,CK$delay,E$delay);

	// setuphold E- CK-LH
	$setuphold(posedge CK &&& (ENABLE_D_AND_RB === 1'b1),
		negedge E &&& (ENABLE_D_AND_RB === 1'b1),
		1.0,1.0,notifier,,,CK$delay,E$delay);

	// recrem RB-CK-posedge
	$recrem(posedge RB &&& (ENABLE_E === 1'b1),
		posedge CK &&& (ENABLE_E === 1'b1),
		1.0,1.0,notifier,,,RB$delay,CK$delay);

	$width(negedge RB &&& (ENABLE_NOT_CK_AND_NOT_D_AND_NOT_E === 1'b1)
		,1.0,0,notifier);

	$width(negedge RB &&& (ENABLE_NOT_CK_AND_NOT_D_AND_E === 1'b1)
		,1.0,0,notifier);

	$width(negedge RB &&& (ENABLE_NOT_CK_AND_D_AND_NOT_E === 1'b1)
		,1.0,0,notifier);

	$width(negedge RB &&& (ENABLE_NOT_CK_AND_D_AND_E === 1'b1)
		,1.0,0,notifier);

	$width(negedge RB &&& (ENABLE_CK_AND_NOT_D_AND_NOT_E === 1'b1)
		,1.0,0,notifier);

	$width(negedge RB &&& (ENABLE_CK_AND_NOT_D_AND_E === 1'b1)
		,1.0,0,notifier);

	$width(negedge RB &&& (ENABLE_CK_AND_D_AND_NOT_E === 1'b1)
		,1.0,0,notifier);

	$width(negedge RB &&& (ENABLE_CK_AND_D_AND_E === 1'b1)
		,1.0,0,notifier);

	// mpw CK_lh 
	$width(posedge CK,1.0,0,notifier);

	// mpw CK_hl 
	$width(negedge CK,1.0,0,notifier);

	// mpw RB_hl 
	$width(negedge RB,1.0,0,notifier);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module DFEQRM2HM( Q, CK, D, E, RB , VDD, VSS);
inout VDD;
inout VSS;
input CK, D, E, RB;
output Q;
reg notifier;

   `ifdef FUNCTIONAL  //  functional //

	DFEQRM2HM_func DFEQRM2HM_behav_inst(.Q(Q),.CK(CK),.D(D),.E(E),.RB(RB),.notifier(notifier),.VDD(VDD),.VSS(VSS));

   `else

	wire CK$delay ;

	wire D$delay ;

	wire E$delay ;

	wire RB$delay ;

	DFEQRM2HM_func DFEQRM2HM_inst(.Q(Q),.CK(CK$delay),.D(D$delay),.E(E$delay),.RB(RB$delay),.notifier(notifier),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	not MGM_G0(MGM_W0,D$delay);


	and MGM_G1(MGM_W1,E$delay,MGM_W0);


	and MGM_G2(ENABLE_NOT_D_AND_E_AND_RB,RB$delay,MGM_W1);


	and MGM_G3(MGM_W2,E$delay,D$delay);


	and MGM_G4(ENABLE_D_AND_E_AND_RB,RB$delay,MGM_W2);


	and MGM_G5(ENABLE_E_AND_RB,RB$delay,E$delay);


	not MGM_G6(MGM_W3,D$delay);


	and MGM_G7(ENABLE_NOT_D_AND_RB,RB$delay,MGM_W3);


	and MGM_G8(ENABLE_D_AND_RB,RB$delay,D$delay);


	buf MGM_G9(ENABLE_E,E$delay);


	not MGM_G10(MGM_W4,CK$delay);


	not MGM_G11(MGM_W5,D$delay);


	and MGM_G12(MGM_W6,MGM_W5,MGM_W4);


	not MGM_G13(MGM_W7,E$delay);


	and MGM_G14(ENABLE_NOT_CK_AND_NOT_D_AND_NOT_E,MGM_W7,MGM_W6);


	not MGM_G15(MGM_W8,CK$delay);


	not MGM_G16(MGM_W9,D$delay);


	and MGM_G17(MGM_W10,MGM_W9,MGM_W8);


	and MGM_G18(ENABLE_NOT_CK_AND_NOT_D_AND_E,E$delay,MGM_W10);


	not MGM_G19(MGM_W11,CK$delay);


	and MGM_G20(MGM_W12,D$delay,MGM_W11);


	not MGM_G21(MGM_W13,E$delay);


	and MGM_G22(ENABLE_NOT_CK_AND_D_AND_NOT_E,MGM_W13,MGM_W12);


	not MGM_G23(MGM_W14,CK$delay);


	and MGM_G24(MGM_W15,D$delay,MGM_W14);


	and MGM_G25(ENABLE_NOT_CK_AND_D_AND_E,E$delay,MGM_W15);


	not MGM_G26(MGM_W16,D$delay);


	and MGM_G27(MGM_W17,MGM_W16,CK$delay);


	not MGM_G28(MGM_W18,E$delay);


	and MGM_G29(ENABLE_CK_AND_NOT_D_AND_NOT_E,MGM_W18,MGM_W17);


	not MGM_G30(MGM_W19,D$delay);


	and MGM_G31(MGM_W20,MGM_W19,CK$delay);


	and MGM_G32(ENABLE_CK_AND_NOT_D_AND_E,E$delay,MGM_W20);


	and MGM_G33(MGM_W21,D$delay,CK$delay);


	not MGM_G34(MGM_W22,E$delay);


	and MGM_G35(ENABLE_CK_AND_D_AND_NOT_E,MGM_W22,MGM_W21);


	and MGM_G36(MGM_W23,D$delay,CK$delay);


	and MGM_G37(ENABLE_CK_AND_D_AND_E,E$delay,MGM_W23);


	// spec_gates_end



   specify

	// specify_block_begin 

	// seq arc CK --> Q
	(posedge CK => (Q : D))  = (1.0,1.0);

	// seq arc RB --> Q
	(RB => Q)  = (1.0,1.0);

	$width(negedge CK &&& (ENABLE_NOT_D_AND_E_AND_RB === 1'b1)
		,1.0,0,notifier);

	$width(posedge CK &&& (ENABLE_NOT_D_AND_E_AND_RB === 1'b1)
		,1.0,0,notifier);

	$width(negedge CK &&& (ENABLE_D_AND_E_AND_RB === 1'b1)
		,1.0,0,notifier);

	$width(posedge CK &&& (ENABLE_D_AND_E_AND_RB === 1'b1)
		,1.0,0,notifier);

	// setuphold D- CK-LH
	$setuphold(posedge CK &&& (ENABLE_E_AND_RB === 1'b1),
		posedge D &&& (ENABLE_E_AND_RB === 1'b1),
		1.0,1.0,notifier,,,CK$delay,D$delay);

	// setuphold D- CK-LH
	$setuphold(posedge CK &&& (ENABLE_E_AND_RB === 1'b1),
		negedge D &&& (ENABLE_E_AND_RB === 1'b1),
		1.0,1.0,notifier,,,CK$delay,D$delay);

	// setuphold E- CK-LH
	$setuphold(posedge CK &&& (ENABLE_NOT_D_AND_RB === 1'b1),
		posedge E &&& (ENABLE_NOT_D_AND_RB === 1'b1),
		1.0,1.0,notifier,,,CK$delay,E$delay);

	// setuphold E- CK-LH
	$setuphold(posedge CK &&& (ENABLE_NOT_D_AND_RB === 1'b1),
		negedge E &&& (ENABLE_NOT_D_AND_RB === 1'b1),
		1.0,1.0,notifier,,,CK$delay,E$delay);

	// setuphold E- CK-LH
	$setuphold(posedge CK &&& (ENABLE_D_AND_RB === 1'b1),
		posedge E &&& (ENABLE_D_AND_RB === 1'b1),
		1.0,1.0,notifier,,,CK$delay,E$delay);

	// setuphold E- CK-LH
	$setuphold(posedge CK &&& (ENABLE_D_AND_RB === 1'b1),
		negedge E &&& (ENABLE_D_AND_RB === 1'b1),
		1.0,1.0,notifier,,,CK$delay,E$delay);

	// recrem RB-CK-posedge
	$recrem(posedge RB &&& (ENABLE_E === 1'b1),
		posedge CK &&& (ENABLE_E === 1'b1),
		1.0,1.0,notifier,,,RB$delay,CK$delay);

	$width(negedge RB &&& (ENABLE_NOT_CK_AND_NOT_D_AND_NOT_E === 1'b1)
		,1.0,0,notifier);

	$width(negedge RB &&& (ENABLE_NOT_CK_AND_NOT_D_AND_E === 1'b1)
		,1.0,0,notifier);

	$width(negedge RB &&& (ENABLE_NOT_CK_AND_D_AND_NOT_E === 1'b1)
		,1.0,0,notifier);

	$width(negedge RB &&& (ENABLE_NOT_CK_AND_D_AND_E === 1'b1)
		,1.0,0,notifier);

	$width(negedge RB &&& (ENABLE_CK_AND_NOT_D_AND_NOT_E === 1'b1)
		,1.0,0,notifier);

	$width(negedge RB &&& (ENABLE_CK_AND_NOT_D_AND_E === 1'b1)
		,1.0,0,notifier);

	$width(negedge RB &&& (ENABLE_CK_AND_D_AND_NOT_E === 1'b1)
		,1.0,0,notifier);

	$width(negedge RB &&& (ENABLE_CK_AND_D_AND_E === 1'b1)
		,1.0,0,notifier);

	// mpw CK_lh 
	$width(posedge CK,1.0,0,notifier);

	// mpw CK_hl 
	$width(negedge CK,1.0,0,notifier);

	// mpw RB_hl 
	$width(negedge RB,1.0,0,notifier);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module DFEQRM4HM( Q, CK, D, E, RB , VDD, VSS);
inout VDD;
inout VSS;
input CK, D, E, RB;
output Q;
reg notifier;

   `ifdef FUNCTIONAL  //  functional //

	DFEQRM4HM_func DFEQRM4HM_behav_inst(.Q(Q),.CK(CK),.D(D),.E(E),.RB(RB),.notifier(notifier),.VDD(VDD),.VSS(VSS));

   `else

	wire CK$delay ;

	wire D$delay ;

	wire E$delay ;

	wire RB$delay ;

	DFEQRM4HM_func DFEQRM4HM_inst(.Q(Q),.CK(CK$delay),.D(D$delay),.E(E$delay),.RB(RB$delay),.notifier(notifier),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	not MGM_G0(MGM_W0,D$delay);


	and MGM_G1(MGM_W1,E$delay,MGM_W0);


	and MGM_G2(ENABLE_NOT_D_AND_E_AND_RB,RB$delay,MGM_W1);


	and MGM_G3(MGM_W2,E$delay,D$delay);


	and MGM_G4(ENABLE_D_AND_E_AND_RB,RB$delay,MGM_W2);


	and MGM_G5(ENABLE_E_AND_RB,RB$delay,E$delay);


	not MGM_G6(MGM_W3,D$delay);


	and MGM_G7(ENABLE_NOT_D_AND_RB,RB$delay,MGM_W3);


	and MGM_G8(ENABLE_D_AND_RB,RB$delay,D$delay);


	buf MGM_G9(ENABLE_E,E$delay);


	not MGM_G10(MGM_W4,CK$delay);


	not MGM_G11(MGM_W5,D$delay);


	and MGM_G12(MGM_W6,MGM_W5,MGM_W4);


	not MGM_G13(MGM_W7,E$delay);


	and MGM_G14(ENABLE_NOT_CK_AND_NOT_D_AND_NOT_E,MGM_W7,MGM_W6);


	not MGM_G15(MGM_W8,CK$delay);


	not MGM_G16(MGM_W9,D$delay);


	and MGM_G17(MGM_W10,MGM_W9,MGM_W8);


	and MGM_G18(ENABLE_NOT_CK_AND_NOT_D_AND_E,E$delay,MGM_W10);


	not MGM_G19(MGM_W11,CK$delay);


	and MGM_G20(MGM_W12,D$delay,MGM_W11);


	not MGM_G21(MGM_W13,E$delay);


	and MGM_G22(ENABLE_NOT_CK_AND_D_AND_NOT_E,MGM_W13,MGM_W12);


	not MGM_G23(MGM_W14,CK$delay);


	and MGM_G24(MGM_W15,D$delay,MGM_W14);


	and MGM_G25(ENABLE_NOT_CK_AND_D_AND_E,E$delay,MGM_W15);


	not MGM_G26(MGM_W16,D$delay);


	and MGM_G27(MGM_W17,MGM_W16,CK$delay);


	not MGM_G28(MGM_W18,E$delay);


	and MGM_G29(ENABLE_CK_AND_NOT_D_AND_NOT_E,MGM_W18,MGM_W17);


	not MGM_G30(MGM_W19,D$delay);


	and MGM_G31(MGM_W20,MGM_W19,CK$delay);


	and MGM_G32(ENABLE_CK_AND_NOT_D_AND_E,E$delay,MGM_W20);


	and MGM_G33(MGM_W21,D$delay,CK$delay);


	not MGM_G34(MGM_W22,E$delay);


	and MGM_G35(ENABLE_CK_AND_D_AND_NOT_E,MGM_W22,MGM_W21);


	and MGM_G36(MGM_W23,D$delay,CK$delay);


	and MGM_G37(ENABLE_CK_AND_D_AND_E,E$delay,MGM_W23);


	// spec_gates_end



   specify

	// specify_block_begin 

	// seq arc CK --> Q
	(posedge CK => (Q : D))  = (1.0,1.0);

	// seq arc RB --> Q
	(RB => Q)  = (1.0,1.0);

	$width(negedge CK &&& (ENABLE_NOT_D_AND_E_AND_RB === 1'b1)
		,1.0,0,notifier);

	$width(posedge CK &&& (ENABLE_NOT_D_AND_E_AND_RB === 1'b1)
		,1.0,0,notifier);

	$width(negedge CK &&& (ENABLE_D_AND_E_AND_RB === 1'b1)
		,1.0,0,notifier);

	$width(posedge CK &&& (ENABLE_D_AND_E_AND_RB === 1'b1)
		,1.0,0,notifier);

	// setuphold D- CK-LH
	$setuphold(posedge CK &&& (ENABLE_E_AND_RB === 1'b1),
		posedge D &&& (ENABLE_E_AND_RB === 1'b1),
		1.0,1.0,notifier,,,CK$delay,D$delay);

	// setuphold D- CK-LH
	$setuphold(posedge CK &&& (ENABLE_E_AND_RB === 1'b1),
		negedge D &&& (ENABLE_E_AND_RB === 1'b1),
		1.0,1.0,notifier,,,CK$delay,D$delay);

	// setuphold E- CK-LH
	$setuphold(posedge CK &&& (ENABLE_NOT_D_AND_RB === 1'b1),
		posedge E &&& (ENABLE_NOT_D_AND_RB === 1'b1),
		1.0,1.0,notifier,,,CK$delay,E$delay);

	// setuphold E- CK-LH
	$setuphold(posedge CK &&& (ENABLE_NOT_D_AND_RB === 1'b1),
		negedge E &&& (ENABLE_NOT_D_AND_RB === 1'b1),
		1.0,1.0,notifier,,,CK$delay,E$delay);

	// setuphold E- CK-LH
	$setuphold(posedge CK &&& (ENABLE_D_AND_RB === 1'b1),
		posedge E &&& (ENABLE_D_AND_RB === 1'b1),
		1.0,1.0,notifier,,,CK$delay,E$delay);

	// setuphold E- CK-LH
	$setuphold(posedge CK &&& (ENABLE_D_AND_RB === 1'b1),
		negedge E &&& (ENABLE_D_AND_RB === 1'b1),
		1.0,1.0,notifier,,,CK$delay,E$delay);

	// recrem RB-CK-posedge
	$recrem(posedge RB &&& (ENABLE_E === 1'b1),
		posedge CK &&& (ENABLE_E === 1'b1),
		1.0,1.0,notifier,,,RB$delay,CK$delay);

	$width(negedge RB &&& (ENABLE_NOT_CK_AND_NOT_D_AND_NOT_E === 1'b1)
		,1.0,0,notifier);

	$width(negedge RB &&& (ENABLE_NOT_CK_AND_NOT_D_AND_E === 1'b1)
		,1.0,0,notifier);

	$width(negedge RB &&& (ENABLE_NOT_CK_AND_D_AND_NOT_E === 1'b1)
		,1.0,0,notifier);

	$width(negedge RB &&& (ENABLE_NOT_CK_AND_D_AND_E === 1'b1)
		,1.0,0,notifier);

	$width(negedge RB &&& (ENABLE_CK_AND_NOT_D_AND_NOT_E === 1'b1)
		,1.0,0,notifier);

	$width(negedge RB &&& (ENABLE_CK_AND_NOT_D_AND_E === 1'b1)
		,1.0,0,notifier);

	$width(negedge RB &&& (ENABLE_CK_AND_D_AND_NOT_E === 1'b1)
		,1.0,0,notifier);

	$width(negedge RB &&& (ENABLE_CK_AND_D_AND_E === 1'b1)
		,1.0,0,notifier);

	// mpw CK_lh 
	$width(posedge CK,1.0,0,notifier);

	// mpw CK_hl 
	$width(negedge CK,1.0,0,notifier);

	// mpw RB_hl 
	$width(negedge RB,1.0,0,notifier);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module DFEQRM8HM( Q, CK, D, E, RB , VDD, VSS);
inout VDD;
inout VSS;
input CK, D, E, RB;
output Q;
reg notifier;

   `ifdef FUNCTIONAL  //  functional //

	DFEQRM8HM_func DFEQRM8HM_behav_inst(.Q(Q),.CK(CK),.D(D),.E(E),.RB(RB),.notifier(notifier),.VDD(VDD),.VSS(VSS));

   `else

	wire CK$delay ;

	wire D$delay ;

	wire E$delay ;

	wire RB$delay ;

	DFEQRM8HM_func DFEQRM8HM_inst(.Q(Q),.CK(CK$delay),.D(D$delay),.E(E$delay),.RB(RB$delay),.notifier(notifier),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	not MGM_G0(MGM_W0,D$delay);


	and MGM_G1(MGM_W1,E$delay,MGM_W0);


	and MGM_G2(ENABLE_NOT_D_AND_E_AND_RB,RB$delay,MGM_W1);


	and MGM_G3(MGM_W2,E$delay,D$delay);


	and MGM_G4(ENABLE_D_AND_E_AND_RB,RB$delay,MGM_W2);


	and MGM_G5(ENABLE_E_AND_RB,RB$delay,E$delay);


	not MGM_G6(MGM_W3,D$delay);


	and MGM_G7(ENABLE_NOT_D_AND_RB,RB$delay,MGM_W3);


	and MGM_G8(ENABLE_D_AND_RB,RB$delay,D$delay);


	buf MGM_G9(ENABLE_E,E$delay);


	not MGM_G10(MGM_W4,CK$delay);


	not MGM_G11(MGM_W5,D$delay);


	and MGM_G12(MGM_W6,MGM_W5,MGM_W4);


	not MGM_G13(MGM_W7,E$delay);


	and MGM_G14(ENABLE_NOT_CK_AND_NOT_D_AND_NOT_E,MGM_W7,MGM_W6);


	not MGM_G15(MGM_W8,CK$delay);


	not MGM_G16(MGM_W9,D$delay);


	and MGM_G17(MGM_W10,MGM_W9,MGM_W8);


	and MGM_G18(ENABLE_NOT_CK_AND_NOT_D_AND_E,E$delay,MGM_W10);


	not MGM_G19(MGM_W11,CK$delay);


	and MGM_G20(MGM_W12,D$delay,MGM_W11);


	not MGM_G21(MGM_W13,E$delay);


	and MGM_G22(ENABLE_NOT_CK_AND_D_AND_NOT_E,MGM_W13,MGM_W12);


	not MGM_G23(MGM_W14,CK$delay);


	and MGM_G24(MGM_W15,D$delay,MGM_W14);


	and MGM_G25(ENABLE_NOT_CK_AND_D_AND_E,E$delay,MGM_W15);


	not MGM_G26(MGM_W16,D$delay);


	and MGM_G27(MGM_W17,MGM_W16,CK$delay);


	not MGM_G28(MGM_W18,E$delay);


	and MGM_G29(ENABLE_CK_AND_NOT_D_AND_NOT_E,MGM_W18,MGM_W17);


	not MGM_G30(MGM_W19,D$delay);


	and MGM_G31(MGM_W20,MGM_W19,CK$delay);


	and MGM_G32(ENABLE_CK_AND_NOT_D_AND_E,E$delay,MGM_W20);


	and MGM_G33(MGM_W21,D$delay,CK$delay);


	not MGM_G34(MGM_W22,E$delay);


	and MGM_G35(ENABLE_CK_AND_D_AND_NOT_E,MGM_W22,MGM_W21);


	and MGM_G36(MGM_W23,D$delay,CK$delay);


	and MGM_G37(ENABLE_CK_AND_D_AND_E,E$delay,MGM_W23);


	// spec_gates_end



   specify

	// specify_block_begin 

	// seq arc CK --> Q
	(posedge CK => (Q : D))  = (1.0,1.0);

	// seq arc RB --> Q
	(RB => Q)  = (1.0,1.0);

	$width(negedge CK &&& (ENABLE_NOT_D_AND_E_AND_RB === 1'b1)
		,1.0,0,notifier);

	$width(posedge CK &&& (ENABLE_NOT_D_AND_E_AND_RB === 1'b1)
		,1.0,0,notifier);

	$width(negedge CK &&& (ENABLE_D_AND_E_AND_RB === 1'b1)
		,1.0,0,notifier);

	$width(posedge CK &&& (ENABLE_D_AND_E_AND_RB === 1'b1)
		,1.0,0,notifier);

	// setuphold D- CK-LH
	$setuphold(posedge CK &&& (ENABLE_E_AND_RB === 1'b1),
		posedge D &&& (ENABLE_E_AND_RB === 1'b1),
		1.0,1.0,notifier,,,CK$delay,D$delay);

	// setuphold D- CK-LH
	$setuphold(posedge CK &&& (ENABLE_E_AND_RB === 1'b1),
		negedge D &&& (ENABLE_E_AND_RB === 1'b1),
		1.0,1.0,notifier,,,CK$delay,D$delay);

	// setuphold E- CK-LH
	$setuphold(posedge CK &&& (ENABLE_NOT_D_AND_RB === 1'b1),
		posedge E &&& (ENABLE_NOT_D_AND_RB === 1'b1),
		1.0,1.0,notifier,,,CK$delay,E$delay);

	// setuphold E- CK-LH
	$setuphold(posedge CK &&& (ENABLE_NOT_D_AND_RB === 1'b1),
		negedge E &&& (ENABLE_NOT_D_AND_RB === 1'b1),
		1.0,1.0,notifier,,,CK$delay,E$delay);

	// setuphold E- CK-LH
	$setuphold(posedge CK &&& (ENABLE_D_AND_RB === 1'b1),
		posedge E &&& (ENABLE_D_AND_RB === 1'b1),
		1.0,1.0,notifier,,,CK$delay,E$delay);

	// setuphold E- CK-LH
	$setuphold(posedge CK &&& (ENABLE_D_AND_RB === 1'b1),
		negedge E &&& (ENABLE_D_AND_RB === 1'b1),
		1.0,1.0,notifier,,,CK$delay,E$delay);

	// recrem RB-CK-posedge
	$recrem(posedge RB &&& (ENABLE_E === 1'b1),
		posedge CK &&& (ENABLE_E === 1'b1),
		1.0,1.0,notifier,,,RB$delay,CK$delay);

	$width(negedge RB &&& (ENABLE_NOT_CK_AND_NOT_D_AND_NOT_E === 1'b1)
		,1.0,0,notifier);

	$width(negedge RB &&& (ENABLE_NOT_CK_AND_NOT_D_AND_E === 1'b1)
		,1.0,0,notifier);

	$width(negedge RB &&& (ENABLE_NOT_CK_AND_D_AND_NOT_E === 1'b1)
		,1.0,0,notifier);

	$width(negedge RB &&& (ENABLE_NOT_CK_AND_D_AND_E === 1'b1)
		,1.0,0,notifier);

	$width(negedge RB &&& (ENABLE_CK_AND_NOT_D_AND_NOT_E === 1'b1)
		,1.0,0,notifier);

	$width(negedge RB &&& (ENABLE_CK_AND_NOT_D_AND_E === 1'b1)
		,1.0,0,notifier);

	$width(negedge RB &&& (ENABLE_CK_AND_D_AND_NOT_E === 1'b1)
		,1.0,0,notifier);

	$width(negedge RB &&& (ENABLE_CK_AND_D_AND_E === 1'b1)
		,1.0,0,notifier);

	// mpw CK_lh 
	$width(posedge CK,1.0,0,notifier);

	// mpw CK_hl 
	$width(negedge CK,1.0,0,notifier);

	// mpw RB_hl 
	$width(negedge RB,1.0,0,notifier);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module DFEQZRM1HM( Q, CK, D, E, RB , VDD, VSS);
inout VDD;
inout VSS;
input CK, D, E, RB;
output Q;
reg notifier;

   `ifdef FUNCTIONAL  //  functional //

	DFEQZRM1HM_func DFEQZRM1HM_behav_inst(.Q(Q),.CK(CK),.D(D),.E(E),.RB(RB),.notifier(notifier),.VDD(VDD),.VSS(VSS));

   `else

	wire CK$delay ;

	wire D$delay ;

	wire E$delay ;

	wire RB$delay ;

	DFEQZRM1HM_func DFEQZRM1HM_inst(.Q(Q),.CK(CK$delay),.D(D$delay),.E(E$delay),.RB(RB$delay),.notifier(notifier),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	not MGM_G0(MGM_W0,D$delay);


	not MGM_G1(MGM_W1,E$delay);


	and MGM_G2(MGM_W2,MGM_W1,MGM_W0);


	not MGM_G3(MGM_W3,RB$delay);


	and MGM_G4(ENABLE_NOT_D_AND_NOT_E_AND_NOT_RB,MGM_W3,MGM_W2);


	not MGM_G5(MGM_W4,D$delay);


	and MGM_G6(MGM_W5,E$delay,MGM_W4);


	not MGM_G7(MGM_W6,RB$delay);


	and MGM_G8(ENABLE_NOT_D_AND_E_AND_NOT_RB,MGM_W6,MGM_W5);


	not MGM_G9(MGM_W7,D$delay);


	and MGM_G10(MGM_W8,E$delay,MGM_W7);


	and MGM_G11(ENABLE_NOT_D_AND_E_AND_RB,RB$delay,MGM_W8);


	not MGM_G12(MGM_W9,E$delay);


	and MGM_G13(MGM_W10,MGM_W9,D$delay);


	not MGM_G14(MGM_W11,RB$delay);


	and MGM_G15(ENABLE_D_AND_NOT_E_AND_NOT_RB,MGM_W11,MGM_W10);


	and MGM_G16(MGM_W12,E$delay,D$delay);


	not MGM_G17(MGM_W13,RB$delay);


	and MGM_G18(ENABLE_D_AND_E_AND_NOT_RB,MGM_W13,MGM_W12);


	and MGM_G19(MGM_W14,E$delay,D$delay);


	and MGM_G20(ENABLE_D_AND_E_AND_RB,RB$delay,MGM_W14);


	and MGM_G21(ENABLE_E_AND_RB,RB$delay,E$delay);


	not MGM_G22(MGM_W15,D$delay);


	and MGM_G23(ENABLE_NOT_D_AND_RB,RB$delay,MGM_W15);


	and MGM_G24(ENABLE_D_AND_RB,RB$delay,D$delay);


	not MGM_G25(MGM_W16,D$delay);


	not MGM_G26(MGM_W17,E$delay);


	and MGM_G27(ENABLE_NOT_D_AND_NOT_E,MGM_W17,MGM_W16);


	not MGM_G28(MGM_W18,E$delay);


	and MGM_G29(ENABLE_D_AND_NOT_E,MGM_W18,D$delay);


	and MGM_G30(ENABLE_D_AND_E,E$delay,D$delay);


	// spec_gates_end



   specify

	// specify_block_begin 

	// seq arc CK --> Q
	(posedge CK => (Q : D))  = (1.0,1.0);

	$width(negedge CK &&& (ENABLE_NOT_D_AND_NOT_E_AND_NOT_RB === 1'b1)
		,1.0,0,notifier);

	$width(posedge CK &&& (ENABLE_NOT_D_AND_NOT_E_AND_NOT_RB === 1'b1)
		,1.0,0,notifier);

	$width(negedge CK &&& (ENABLE_NOT_D_AND_E_AND_NOT_RB === 1'b1)
		,1.0,0,notifier);

	$width(posedge CK &&& (ENABLE_NOT_D_AND_E_AND_NOT_RB === 1'b1)
		,1.0,0,notifier);

	$width(negedge CK &&& (ENABLE_NOT_D_AND_E_AND_RB === 1'b1)
		,1.0,0,notifier);

	$width(posedge CK &&& (ENABLE_NOT_D_AND_E_AND_RB === 1'b1)
		,1.0,0,notifier);

	$width(negedge CK &&& (ENABLE_D_AND_NOT_E_AND_NOT_RB === 1'b1)
		,1.0,0,notifier);

	$width(posedge CK &&& (ENABLE_D_AND_NOT_E_AND_NOT_RB === 1'b1)
		,1.0,0,notifier);

	$width(negedge CK &&& (ENABLE_D_AND_E_AND_NOT_RB === 1'b1)
		,1.0,0,notifier);

	$width(posedge CK &&& (ENABLE_D_AND_E_AND_NOT_RB === 1'b1)
		,1.0,0,notifier);

	$width(negedge CK &&& (ENABLE_D_AND_E_AND_RB === 1'b1)
		,1.0,0,notifier);

	$width(posedge CK &&& (ENABLE_D_AND_E_AND_RB === 1'b1)
		,1.0,0,notifier);

	// setuphold D- CK-LH
	$setuphold(posedge CK &&& (ENABLE_E_AND_RB === 1'b1),
		posedge D &&& (ENABLE_E_AND_RB === 1'b1),
		1.0,1.0,notifier,,,CK$delay,D$delay);

	// setuphold D- CK-LH
	$setuphold(posedge CK &&& (ENABLE_E_AND_RB === 1'b1),
		negedge D &&& (ENABLE_E_AND_RB === 1'b1),
		1.0,1.0,notifier,,,CK$delay,D$delay);

	// setuphold E- CK-LH
	$setuphold(posedge CK &&& (ENABLE_NOT_D_AND_RB === 1'b1),
		posedge E &&& (ENABLE_NOT_D_AND_RB === 1'b1),
		1.0,1.0,notifier,,,CK$delay,E$delay);

	// setuphold E- CK-LH
	$setuphold(posedge CK &&& (ENABLE_NOT_D_AND_RB === 1'b1),
		negedge E &&& (ENABLE_NOT_D_AND_RB === 1'b1),
		1.0,1.0,notifier,,,CK$delay,E$delay);

	// setuphold E- CK-LH
	$setuphold(posedge CK &&& (ENABLE_D_AND_RB === 1'b1),
		posedge E &&& (ENABLE_D_AND_RB === 1'b1),
		1.0,1.0,notifier,,,CK$delay,E$delay);

	// setuphold E- CK-LH
	$setuphold(posedge CK &&& (ENABLE_D_AND_RB === 1'b1),
		negedge E &&& (ENABLE_D_AND_RB === 1'b1),
		1.0,1.0,notifier,,,CK$delay,E$delay);

	// setuphold RB- CK-LH
	$setuphold(posedge CK &&& (ENABLE_NOT_D_AND_NOT_E === 1'b1),
		posedge RB &&& (ENABLE_NOT_D_AND_NOT_E === 1'b1),
		1.0,1.0,notifier,,,CK$delay,RB$delay);

	// setuphold RB- CK-LH
	$setuphold(posedge CK &&& (ENABLE_NOT_D_AND_NOT_E === 1'b1),
		negedge RB &&& (ENABLE_NOT_D_AND_NOT_E === 1'b1),
		1.0,1.0,notifier,,,CK$delay,RB$delay);

	// setuphold RB- CK-LH
	$setuphold(posedge CK &&& (ENABLE_D_AND_NOT_E === 1'b1),
		posedge RB &&& (ENABLE_D_AND_NOT_E === 1'b1),
		1.0,1.0,notifier,,,CK$delay,RB$delay);

	// setuphold RB- CK-LH
	$setuphold(posedge CK &&& (ENABLE_D_AND_NOT_E === 1'b1),
		negedge RB &&& (ENABLE_D_AND_NOT_E === 1'b1),
		1.0,1.0,notifier,,,CK$delay,RB$delay);

	// setuphold RB- CK-LH
	$setuphold(posedge CK &&& (ENABLE_D_AND_E === 1'b1),
		posedge RB &&& (ENABLE_D_AND_E === 1'b1),
		1.0,1.0,notifier,,,CK$delay,RB$delay);

	// setuphold RB- CK-LH
	$setuphold(posedge CK &&& (ENABLE_D_AND_E === 1'b1),
		negedge RB &&& (ENABLE_D_AND_E === 1'b1),
		1.0,1.0,notifier,,,CK$delay,RB$delay);

	// mpw CK_lh 
	$width(posedge CK,1.0,0,notifier);

	// mpw CK_hl 
	$width(negedge CK,1.0,0,notifier);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module DFEQZRM2HM( Q, CK, D, E, RB , VDD, VSS);
inout VDD;
inout VSS;
input CK, D, E, RB;
output Q;
reg notifier;

   `ifdef FUNCTIONAL  //  functional //

	DFEQZRM2HM_func DFEQZRM2HM_behav_inst(.Q(Q),.CK(CK),.D(D),.E(E),.RB(RB),.notifier(notifier),.VDD(VDD),.VSS(VSS));

   `else

	wire CK$delay ;

	wire D$delay ;

	wire E$delay ;

	wire RB$delay ;

	DFEQZRM2HM_func DFEQZRM2HM_inst(.Q(Q),.CK(CK$delay),.D(D$delay),.E(E$delay),.RB(RB$delay),.notifier(notifier),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	not MGM_G0(MGM_W0,D$delay);


	not MGM_G1(MGM_W1,E$delay);


	and MGM_G2(MGM_W2,MGM_W1,MGM_W0);


	not MGM_G3(MGM_W3,RB$delay);


	and MGM_G4(ENABLE_NOT_D_AND_NOT_E_AND_NOT_RB,MGM_W3,MGM_W2);


	not MGM_G5(MGM_W4,D$delay);


	and MGM_G6(MGM_W5,E$delay,MGM_W4);


	not MGM_G7(MGM_W6,RB$delay);


	and MGM_G8(ENABLE_NOT_D_AND_E_AND_NOT_RB,MGM_W6,MGM_W5);


	not MGM_G9(MGM_W7,D$delay);


	and MGM_G10(MGM_W8,E$delay,MGM_W7);


	and MGM_G11(ENABLE_NOT_D_AND_E_AND_RB,RB$delay,MGM_W8);


	not MGM_G12(MGM_W9,E$delay);


	and MGM_G13(MGM_W10,MGM_W9,D$delay);


	not MGM_G14(MGM_W11,RB$delay);


	and MGM_G15(ENABLE_D_AND_NOT_E_AND_NOT_RB,MGM_W11,MGM_W10);


	and MGM_G16(MGM_W12,E$delay,D$delay);


	not MGM_G17(MGM_W13,RB$delay);


	and MGM_G18(ENABLE_D_AND_E_AND_NOT_RB,MGM_W13,MGM_W12);


	and MGM_G19(MGM_W14,E$delay,D$delay);


	and MGM_G20(ENABLE_D_AND_E_AND_RB,RB$delay,MGM_W14);


	and MGM_G21(ENABLE_E_AND_RB,RB$delay,E$delay);


	not MGM_G22(MGM_W15,D$delay);


	and MGM_G23(ENABLE_NOT_D_AND_RB,RB$delay,MGM_W15);


	and MGM_G24(ENABLE_D_AND_RB,RB$delay,D$delay);


	not MGM_G25(MGM_W16,D$delay);


	not MGM_G26(MGM_W17,E$delay);


	and MGM_G27(ENABLE_NOT_D_AND_NOT_E,MGM_W17,MGM_W16);


	not MGM_G28(MGM_W18,E$delay);


	and MGM_G29(ENABLE_D_AND_NOT_E,MGM_W18,D$delay);


	and MGM_G30(ENABLE_D_AND_E,E$delay,D$delay);


	// spec_gates_end



   specify

	// specify_block_begin 

	// seq arc CK --> Q
	(posedge CK => (Q : D))  = (1.0,1.0);

	$width(negedge CK &&& (ENABLE_NOT_D_AND_NOT_E_AND_NOT_RB === 1'b1)
		,1.0,0,notifier);

	$width(posedge CK &&& (ENABLE_NOT_D_AND_NOT_E_AND_NOT_RB === 1'b1)
		,1.0,0,notifier);

	$width(negedge CK &&& (ENABLE_NOT_D_AND_E_AND_NOT_RB === 1'b1)
		,1.0,0,notifier);

	$width(posedge CK &&& (ENABLE_NOT_D_AND_E_AND_NOT_RB === 1'b1)
		,1.0,0,notifier);

	$width(negedge CK &&& (ENABLE_NOT_D_AND_E_AND_RB === 1'b1)
		,1.0,0,notifier);

	$width(posedge CK &&& (ENABLE_NOT_D_AND_E_AND_RB === 1'b1)
		,1.0,0,notifier);

	$width(negedge CK &&& (ENABLE_D_AND_NOT_E_AND_NOT_RB === 1'b1)
		,1.0,0,notifier);

	$width(posedge CK &&& (ENABLE_D_AND_NOT_E_AND_NOT_RB === 1'b1)
		,1.0,0,notifier);

	$width(negedge CK &&& (ENABLE_D_AND_E_AND_NOT_RB === 1'b1)
		,1.0,0,notifier);

	$width(posedge CK &&& (ENABLE_D_AND_E_AND_NOT_RB === 1'b1)
		,1.0,0,notifier);

	$width(negedge CK &&& (ENABLE_D_AND_E_AND_RB === 1'b1)
		,1.0,0,notifier);

	$width(posedge CK &&& (ENABLE_D_AND_E_AND_RB === 1'b1)
		,1.0,0,notifier);

	// setuphold D- CK-LH
	$setuphold(posedge CK &&& (ENABLE_E_AND_RB === 1'b1),
		posedge D &&& (ENABLE_E_AND_RB === 1'b1),
		1.0,1.0,notifier,,,CK$delay,D$delay);

	// setuphold D- CK-LH
	$setuphold(posedge CK &&& (ENABLE_E_AND_RB === 1'b1),
		negedge D &&& (ENABLE_E_AND_RB === 1'b1),
		1.0,1.0,notifier,,,CK$delay,D$delay);

	// setuphold E- CK-LH
	$setuphold(posedge CK &&& (ENABLE_NOT_D_AND_RB === 1'b1),
		posedge E &&& (ENABLE_NOT_D_AND_RB === 1'b1),
		1.0,1.0,notifier,,,CK$delay,E$delay);

	// setuphold E- CK-LH
	$setuphold(posedge CK &&& (ENABLE_NOT_D_AND_RB === 1'b1),
		negedge E &&& (ENABLE_NOT_D_AND_RB === 1'b1),
		1.0,1.0,notifier,,,CK$delay,E$delay);

	// setuphold E- CK-LH
	$setuphold(posedge CK &&& (ENABLE_D_AND_RB === 1'b1),
		posedge E &&& (ENABLE_D_AND_RB === 1'b1),
		1.0,1.0,notifier,,,CK$delay,E$delay);

	// setuphold E- CK-LH
	$setuphold(posedge CK &&& (ENABLE_D_AND_RB === 1'b1),
		negedge E &&& (ENABLE_D_AND_RB === 1'b1),
		1.0,1.0,notifier,,,CK$delay,E$delay);

	// setuphold RB- CK-LH
	$setuphold(posedge CK &&& (ENABLE_NOT_D_AND_NOT_E === 1'b1),
		posedge RB &&& (ENABLE_NOT_D_AND_NOT_E === 1'b1),
		1.0,1.0,notifier,,,CK$delay,RB$delay);

	// setuphold RB- CK-LH
	$setuphold(posedge CK &&& (ENABLE_NOT_D_AND_NOT_E === 1'b1),
		negedge RB &&& (ENABLE_NOT_D_AND_NOT_E === 1'b1),
		1.0,1.0,notifier,,,CK$delay,RB$delay);

	// setuphold RB- CK-LH
	$setuphold(posedge CK &&& (ENABLE_D_AND_NOT_E === 1'b1),
		posedge RB &&& (ENABLE_D_AND_NOT_E === 1'b1),
		1.0,1.0,notifier,,,CK$delay,RB$delay);

	// setuphold RB- CK-LH
	$setuphold(posedge CK &&& (ENABLE_D_AND_NOT_E === 1'b1),
		negedge RB &&& (ENABLE_D_AND_NOT_E === 1'b1),
		1.0,1.0,notifier,,,CK$delay,RB$delay);

	// setuphold RB- CK-LH
	$setuphold(posedge CK &&& (ENABLE_D_AND_E === 1'b1),
		posedge RB &&& (ENABLE_D_AND_E === 1'b1),
		1.0,1.0,notifier,,,CK$delay,RB$delay);

	// setuphold RB- CK-LH
	$setuphold(posedge CK &&& (ENABLE_D_AND_E === 1'b1),
		negedge RB &&& (ENABLE_D_AND_E === 1'b1),
		1.0,1.0,notifier,,,CK$delay,RB$delay);

	// mpw CK_lh 
	$width(posedge CK,1.0,0,notifier);

	// mpw CK_hl 
	$width(negedge CK,1.0,0,notifier);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module DFEQZRM4HM( Q, CK, D, E, RB , VDD, VSS);
inout VDD;
inout VSS;
input CK, D, E, RB;
output Q;
reg notifier;

   `ifdef FUNCTIONAL  //  functional //

	DFEQZRM4HM_func DFEQZRM4HM_behav_inst(.Q(Q),.CK(CK),.D(D),.E(E),.RB(RB),.notifier(notifier),.VDD(VDD),.VSS(VSS));

   `else

	wire CK$delay ;

	wire D$delay ;

	wire E$delay ;

	wire RB$delay ;

	DFEQZRM4HM_func DFEQZRM4HM_inst(.Q(Q),.CK(CK$delay),.D(D$delay),.E(E$delay),.RB(RB$delay),.notifier(notifier),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	not MGM_G0(MGM_W0,D$delay);


	not MGM_G1(MGM_W1,E$delay);


	and MGM_G2(MGM_W2,MGM_W1,MGM_W0);


	not MGM_G3(MGM_W3,RB$delay);


	and MGM_G4(ENABLE_NOT_D_AND_NOT_E_AND_NOT_RB,MGM_W3,MGM_W2);


	not MGM_G5(MGM_W4,D$delay);


	and MGM_G6(MGM_W5,E$delay,MGM_W4);


	not MGM_G7(MGM_W6,RB$delay);


	and MGM_G8(ENABLE_NOT_D_AND_E_AND_NOT_RB,MGM_W6,MGM_W5);


	not MGM_G9(MGM_W7,D$delay);


	and MGM_G10(MGM_W8,E$delay,MGM_W7);


	and MGM_G11(ENABLE_NOT_D_AND_E_AND_RB,RB$delay,MGM_W8);


	not MGM_G12(MGM_W9,E$delay);


	and MGM_G13(MGM_W10,MGM_W9,D$delay);


	not MGM_G14(MGM_W11,RB$delay);


	and MGM_G15(ENABLE_D_AND_NOT_E_AND_NOT_RB,MGM_W11,MGM_W10);


	and MGM_G16(MGM_W12,E$delay,D$delay);


	not MGM_G17(MGM_W13,RB$delay);


	and MGM_G18(ENABLE_D_AND_E_AND_NOT_RB,MGM_W13,MGM_W12);


	and MGM_G19(MGM_W14,E$delay,D$delay);


	and MGM_G20(ENABLE_D_AND_E_AND_RB,RB$delay,MGM_W14);


	and MGM_G21(ENABLE_E_AND_RB,RB$delay,E$delay);


	not MGM_G22(MGM_W15,D$delay);


	and MGM_G23(ENABLE_NOT_D_AND_RB,RB$delay,MGM_W15);


	and MGM_G24(ENABLE_D_AND_RB,RB$delay,D$delay);


	not MGM_G25(MGM_W16,D$delay);


	not MGM_G26(MGM_W17,E$delay);


	and MGM_G27(ENABLE_NOT_D_AND_NOT_E,MGM_W17,MGM_W16);


	not MGM_G28(MGM_W18,E$delay);


	and MGM_G29(ENABLE_D_AND_NOT_E,MGM_W18,D$delay);


	and MGM_G30(ENABLE_D_AND_E,E$delay,D$delay);


	// spec_gates_end



   specify

	// specify_block_begin 

	// seq arc CK --> Q
	(posedge CK => (Q : D))  = (1.0,1.0);

	$width(negedge CK &&& (ENABLE_NOT_D_AND_NOT_E_AND_NOT_RB === 1'b1)
		,1.0,0,notifier);

	$width(posedge CK &&& (ENABLE_NOT_D_AND_NOT_E_AND_NOT_RB === 1'b1)
		,1.0,0,notifier);

	$width(negedge CK &&& (ENABLE_NOT_D_AND_E_AND_NOT_RB === 1'b1)
		,1.0,0,notifier);

	$width(posedge CK &&& (ENABLE_NOT_D_AND_E_AND_NOT_RB === 1'b1)
		,1.0,0,notifier);

	$width(negedge CK &&& (ENABLE_NOT_D_AND_E_AND_RB === 1'b1)
		,1.0,0,notifier);

	$width(posedge CK &&& (ENABLE_NOT_D_AND_E_AND_RB === 1'b1)
		,1.0,0,notifier);

	$width(negedge CK &&& (ENABLE_D_AND_NOT_E_AND_NOT_RB === 1'b1)
		,1.0,0,notifier);

	$width(posedge CK &&& (ENABLE_D_AND_NOT_E_AND_NOT_RB === 1'b1)
		,1.0,0,notifier);

	$width(negedge CK &&& (ENABLE_D_AND_E_AND_NOT_RB === 1'b1)
		,1.0,0,notifier);

	$width(posedge CK &&& (ENABLE_D_AND_E_AND_NOT_RB === 1'b1)
		,1.0,0,notifier);

	$width(negedge CK &&& (ENABLE_D_AND_E_AND_RB === 1'b1)
		,1.0,0,notifier);

	$width(posedge CK &&& (ENABLE_D_AND_E_AND_RB === 1'b1)
		,1.0,0,notifier);

	// setuphold D- CK-LH
	$setuphold(posedge CK &&& (ENABLE_E_AND_RB === 1'b1),
		posedge D &&& (ENABLE_E_AND_RB === 1'b1),
		1.0,1.0,notifier,,,CK$delay,D$delay);

	// setuphold D- CK-LH
	$setuphold(posedge CK &&& (ENABLE_E_AND_RB === 1'b1),
		negedge D &&& (ENABLE_E_AND_RB === 1'b1),
		1.0,1.0,notifier,,,CK$delay,D$delay);

	// setuphold E- CK-LH
	$setuphold(posedge CK &&& (ENABLE_NOT_D_AND_RB === 1'b1),
		posedge E &&& (ENABLE_NOT_D_AND_RB === 1'b1),
		1.0,1.0,notifier,,,CK$delay,E$delay);

	// setuphold E- CK-LH
	$setuphold(posedge CK &&& (ENABLE_NOT_D_AND_RB === 1'b1),
		negedge E &&& (ENABLE_NOT_D_AND_RB === 1'b1),
		1.0,1.0,notifier,,,CK$delay,E$delay);

	// setuphold E- CK-LH
	$setuphold(posedge CK &&& (ENABLE_D_AND_RB === 1'b1),
		posedge E &&& (ENABLE_D_AND_RB === 1'b1),
		1.0,1.0,notifier,,,CK$delay,E$delay);

	// setuphold E- CK-LH
	$setuphold(posedge CK &&& (ENABLE_D_AND_RB === 1'b1),
		negedge E &&& (ENABLE_D_AND_RB === 1'b1),
		1.0,1.0,notifier,,,CK$delay,E$delay);

	// setuphold RB- CK-LH
	$setuphold(posedge CK &&& (ENABLE_NOT_D_AND_NOT_E === 1'b1),
		posedge RB &&& (ENABLE_NOT_D_AND_NOT_E === 1'b1),
		1.0,1.0,notifier,,,CK$delay,RB$delay);

	// setuphold RB- CK-LH
	$setuphold(posedge CK &&& (ENABLE_NOT_D_AND_NOT_E === 1'b1),
		negedge RB &&& (ENABLE_NOT_D_AND_NOT_E === 1'b1),
		1.0,1.0,notifier,,,CK$delay,RB$delay);

	// setuphold RB- CK-LH
	$setuphold(posedge CK &&& (ENABLE_D_AND_NOT_E === 1'b1),
		posedge RB &&& (ENABLE_D_AND_NOT_E === 1'b1),
		1.0,1.0,notifier,,,CK$delay,RB$delay);

	// setuphold RB- CK-LH
	$setuphold(posedge CK &&& (ENABLE_D_AND_NOT_E === 1'b1),
		negedge RB &&& (ENABLE_D_AND_NOT_E === 1'b1),
		1.0,1.0,notifier,,,CK$delay,RB$delay);

	// setuphold RB- CK-LH
	$setuphold(posedge CK &&& (ENABLE_D_AND_E === 1'b1),
		posedge RB &&& (ENABLE_D_AND_E === 1'b1),
		1.0,1.0,notifier,,,CK$delay,RB$delay);

	// setuphold RB- CK-LH
	$setuphold(posedge CK &&& (ENABLE_D_AND_E === 1'b1),
		negedge RB &&& (ENABLE_D_AND_E === 1'b1),
		1.0,1.0,notifier,,,CK$delay,RB$delay);

	// mpw CK_lh 
	$width(posedge CK,1.0,0,notifier);

	// mpw CK_hl 
	$width(negedge CK,1.0,0,notifier);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module DFEQZRM8HM( Q, CK, D, E, RB , VDD, VSS);
inout VDD;
inout VSS;
input CK, D, E, RB;
output Q;
reg notifier;

   `ifdef FUNCTIONAL  //  functional //

	DFEQZRM8HM_func DFEQZRM8HM_behav_inst(.Q(Q),.CK(CK),.D(D),.E(E),.RB(RB),.notifier(notifier),.VDD(VDD),.VSS(VSS));

   `else

	wire CK$delay ;

	wire D$delay ;

	wire E$delay ;

	wire RB$delay ;

	DFEQZRM8HM_func DFEQZRM8HM_inst(.Q(Q),.CK(CK$delay),.D(D$delay),.E(E$delay),.RB(RB$delay),.notifier(notifier),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	not MGM_G0(MGM_W0,D$delay);


	not MGM_G1(MGM_W1,E$delay);


	and MGM_G2(MGM_W2,MGM_W1,MGM_W0);


	not MGM_G3(MGM_W3,RB$delay);


	and MGM_G4(ENABLE_NOT_D_AND_NOT_E_AND_NOT_RB,MGM_W3,MGM_W2);


	not MGM_G5(MGM_W4,D$delay);


	and MGM_G6(MGM_W5,E$delay,MGM_W4);


	not MGM_G7(MGM_W6,RB$delay);


	and MGM_G8(ENABLE_NOT_D_AND_E_AND_NOT_RB,MGM_W6,MGM_W5);


	not MGM_G9(MGM_W7,D$delay);


	and MGM_G10(MGM_W8,E$delay,MGM_W7);


	and MGM_G11(ENABLE_NOT_D_AND_E_AND_RB,RB$delay,MGM_W8);


	not MGM_G12(MGM_W9,E$delay);


	and MGM_G13(MGM_W10,MGM_W9,D$delay);


	not MGM_G14(MGM_W11,RB$delay);


	and MGM_G15(ENABLE_D_AND_NOT_E_AND_NOT_RB,MGM_W11,MGM_W10);


	and MGM_G16(MGM_W12,E$delay,D$delay);


	not MGM_G17(MGM_W13,RB$delay);


	and MGM_G18(ENABLE_D_AND_E_AND_NOT_RB,MGM_W13,MGM_W12);


	and MGM_G19(MGM_W14,E$delay,D$delay);


	and MGM_G20(ENABLE_D_AND_E_AND_RB,RB$delay,MGM_W14);


	and MGM_G21(ENABLE_E_AND_RB,RB$delay,E$delay);


	not MGM_G22(MGM_W15,D$delay);


	and MGM_G23(ENABLE_NOT_D_AND_RB,RB$delay,MGM_W15);


	and MGM_G24(ENABLE_D_AND_RB,RB$delay,D$delay);


	not MGM_G25(MGM_W16,D$delay);


	not MGM_G26(MGM_W17,E$delay);


	and MGM_G27(ENABLE_NOT_D_AND_NOT_E,MGM_W17,MGM_W16);


	not MGM_G28(MGM_W18,E$delay);


	and MGM_G29(ENABLE_D_AND_NOT_E,MGM_W18,D$delay);


	and MGM_G30(ENABLE_D_AND_E,E$delay,D$delay);


	// spec_gates_end



   specify

	// specify_block_begin 

	// seq arc CK --> Q
	(posedge CK => (Q : D))  = (1.0,1.0);

	$width(negedge CK &&& (ENABLE_NOT_D_AND_NOT_E_AND_NOT_RB === 1'b1)
		,1.0,0,notifier);

	$width(posedge CK &&& (ENABLE_NOT_D_AND_NOT_E_AND_NOT_RB === 1'b1)
		,1.0,0,notifier);

	$width(negedge CK &&& (ENABLE_NOT_D_AND_E_AND_NOT_RB === 1'b1)
		,1.0,0,notifier);

	$width(posedge CK &&& (ENABLE_NOT_D_AND_E_AND_NOT_RB === 1'b1)
		,1.0,0,notifier);

	$width(negedge CK &&& (ENABLE_NOT_D_AND_E_AND_RB === 1'b1)
		,1.0,0,notifier);

	$width(posedge CK &&& (ENABLE_NOT_D_AND_E_AND_RB === 1'b1)
		,1.0,0,notifier);

	$width(negedge CK &&& (ENABLE_D_AND_NOT_E_AND_NOT_RB === 1'b1)
		,1.0,0,notifier);

	$width(posedge CK &&& (ENABLE_D_AND_NOT_E_AND_NOT_RB === 1'b1)
		,1.0,0,notifier);

	$width(negedge CK &&& (ENABLE_D_AND_E_AND_NOT_RB === 1'b1)
		,1.0,0,notifier);

	$width(posedge CK &&& (ENABLE_D_AND_E_AND_NOT_RB === 1'b1)
		,1.0,0,notifier);

	$width(negedge CK &&& (ENABLE_D_AND_E_AND_RB === 1'b1)
		,1.0,0,notifier);

	$width(posedge CK &&& (ENABLE_D_AND_E_AND_RB === 1'b1)
		,1.0,0,notifier);

	// setuphold D- CK-LH
	$setuphold(posedge CK &&& (ENABLE_E_AND_RB === 1'b1),
		posedge D &&& (ENABLE_E_AND_RB === 1'b1),
		1.0,1.0,notifier,,,CK$delay,D$delay);

	// setuphold D- CK-LH
	$setuphold(posedge CK &&& (ENABLE_E_AND_RB === 1'b1),
		negedge D &&& (ENABLE_E_AND_RB === 1'b1),
		1.0,1.0,notifier,,,CK$delay,D$delay);

	// setuphold E- CK-LH
	$setuphold(posedge CK &&& (ENABLE_NOT_D_AND_RB === 1'b1),
		posedge E &&& (ENABLE_NOT_D_AND_RB === 1'b1),
		1.0,1.0,notifier,,,CK$delay,E$delay);

	// setuphold E- CK-LH
	$setuphold(posedge CK &&& (ENABLE_NOT_D_AND_RB === 1'b1),
		negedge E &&& (ENABLE_NOT_D_AND_RB === 1'b1),
		1.0,1.0,notifier,,,CK$delay,E$delay);

	// setuphold E- CK-LH
	$setuphold(posedge CK &&& (ENABLE_D_AND_RB === 1'b1),
		posedge E &&& (ENABLE_D_AND_RB === 1'b1),
		1.0,1.0,notifier,,,CK$delay,E$delay);

	// setuphold E- CK-LH
	$setuphold(posedge CK &&& (ENABLE_D_AND_RB === 1'b1),
		negedge E &&& (ENABLE_D_AND_RB === 1'b1),
		1.0,1.0,notifier,,,CK$delay,E$delay);

	// setuphold RB- CK-LH
	$setuphold(posedge CK &&& (ENABLE_NOT_D_AND_NOT_E === 1'b1),
		posedge RB &&& (ENABLE_NOT_D_AND_NOT_E === 1'b1),
		1.0,1.0,notifier,,,CK$delay,RB$delay);

	// setuphold RB- CK-LH
	$setuphold(posedge CK &&& (ENABLE_NOT_D_AND_NOT_E === 1'b1),
		negedge RB &&& (ENABLE_NOT_D_AND_NOT_E === 1'b1),
		1.0,1.0,notifier,,,CK$delay,RB$delay);

	// setuphold RB- CK-LH
	$setuphold(posedge CK &&& (ENABLE_D_AND_NOT_E === 1'b1),
		posedge RB &&& (ENABLE_D_AND_NOT_E === 1'b1),
		1.0,1.0,notifier,,,CK$delay,RB$delay);

	// setuphold RB- CK-LH
	$setuphold(posedge CK &&& (ENABLE_D_AND_NOT_E === 1'b1),
		negedge RB &&& (ENABLE_D_AND_NOT_E === 1'b1),
		1.0,1.0,notifier,,,CK$delay,RB$delay);

	// setuphold RB- CK-LH
	$setuphold(posedge CK &&& (ENABLE_D_AND_E === 1'b1),
		posedge RB &&& (ENABLE_D_AND_E === 1'b1),
		1.0,1.0,notifier,,,CK$delay,RB$delay);

	// setuphold RB- CK-LH
	$setuphold(posedge CK &&& (ENABLE_D_AND_E === 1'b1),
		negedge RB &&& (ENABLE_D_AND_E === 1'b1),
		1.0,1.0,notifier,,,CK$delay,RB$delay);

	// mpw CK_lh 
	$width(posedge CK,1.0,0,notifier);

	// mpw CK_hl 
	$width(negedge CK,1.0,0,notifier);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module DFERM1HM( Q, QB, CK, D, E, RB , VDD, VSS);
inout VDD;
inout VSS;
input CK, D, E, RB;
output Q, QB;
reg notifier;

   `ifdef FUNCTIONAL  //  functional //

	DFERM1HM_func DFERM1HM_behav_inst(.Q(Q),.QB(QB),.CK(CK),.D(D),.E(E),.RB(RB),.notifier(notifier),.VDD(VDD),.VSS(VSS));

   `else

	wire CK$delay ;

	wire D$delay ;

	wire E$delay ;

	wire RB$delay ;

	DFERM1HM_func DFERM1HM_inst(.Q(Q),.QB(QB),.CK(CK$delay),.D(D$delay),.E(E$delay),.RB(RB$delay),.notifier(notifier),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	not MGM_G0(MGM_W0,D$delay);


	and MGM_G1(MGM_W1,E$delay,MGM_W0);


	and MGM_G2(ENABLE_NOT_D_AND_E_AND_RB,RB$delay,MGM_W1);


	and MGM_G3(MGM_W2,E$delay,D$delay);


	and MGM_G4(ENABLE_D_AND_E_AND_RB,RB$delay,MGM_W2);


	and MGM_G5(ENABLE_E_AND_RB,RB$delay,E$delay);


	not MGM_G6(MGM_W3,D$delay);


	and MGM_G7(ENABLE_NOT_D_AND_RB,RB$delay,MGM_W3);


	and MGM_G8(ENABLE_D_AND_RB,RB$delay,D$delay);


	buf MGM_G9(ENABLE_E,E$delay);


	not MGM_G10(MGM_W4,CK$delay);


	not MGM_G11(MGM_W5,D$delay);


	and MGM_G12(MGM_W6,MGM_W5,MGM_W4);


	not MGM_G13(MGM_W7,E$delay);


	and MGM_G14(ENABLE_NOT_CK_AND_NOT_D_AND_NOT_E,MGM_W7,MGM_W6);


	not MGM_G15(MGM_W8,CK$delay);


	not MGM_G16(MGM_W9,D$delay);


	and MGM_G17(MGM_W10,MGM_W9,MGM_W8);


	and MGM_G18(ENABLE_NOT_CK_AND_NOT_D_AND_E,E$delay,MGM_W10);


	not MGM_G19(MGM_W11,CK$delay);


	and MGM_G20(MGM_W12,D$delay,MGM_W11);


	not MGM_G21(MGM_W13,E$delay);


	and MGM_G22(ENABLE_NOT_CK_AND_D_AND_NOT_E,MGM_W13,MGM_W12);


	not MGM_G23(MGM_W14,CK$delay);


	and MGM_G24(MGM_W15,D$delay,MGM_W14);


	and MGM_G25(ENABLE_NOT_CK_AND_D_AND_E,E$delay,MGM_W15);


	not MGM_G26(MGM_W16,D$delay);


	and MGM_G27(MGM_W17,MGM_W16,CK$delay);


	not MGM_G28(MGM_W18,E$delay);


	and MGM_G29(ENABLE_CK_AND_NOT_D_AND_NOT_E,MGM_W18,MGM_W17);


	not MGM_G30(MGM_W19,D$delay);


	and MGM_G31(MGM_W20,MGM_W19,CK$delay);


	and MGM_G32(ENABLE_CK_AND_NOT_D_AND_E,E$delay,MGM_W20);


	and MGM_G33(MGM_W21,D$delay,CK$delay);


	not MGM_G34(MGM_W22,E$delay);


	and MGM_G35(ENABLE_CK_AND_D_AND_NOT_E,MGM_W22,MGM_W21);


	and MGM_G36(MGM_W23,D$delay,CK$delay);


	and MGM_G37(ENABLE_CK_AND_D_AND_E,E$delay,MGM_W23);


	// spec_gates_end



   specify

	// specify_block_begin 

	// seq arc CK --> Q
	(posedge CK => (Q : D))  = (1.0,1.0);

	// seq arc RB --> Q
	(RB => Q)  = (1.0,1.0);

	// seq arc CK --> QB
	(posedge CK => (QB : D))  = (1.0,1.0);

	// seq arc RB --> QB
	(RB => QB)  = (1.0,1.0);

	$width(negedge CK &&& (ENABLE_NOT_D_AND_E_AND_RB === 1'b1)
		,1.0,0,notifier);

	$width(posedge CK &&& (ENABLE_NOT_D_AND_E_AND_RB === 1'b1)
		,1.0,0,notifier);

	$width(negedge CK &&& (ENABLE_D_AND_E_AND_RB === 1'b1)
		,1.0,0,notifier);

	$width(posedge CK &&& (ENABLE_D_AND_E_AND_RB === 1'b1)
		,1.0,0,notifier);

	// setuphold D- CK-LH
	$setuphold(posedge CK &&& (ENABLE_E_AND_RB === 1'b1),
		posedge D &&& (ENABLE_E_AND_RB === 1'b1),
		1.0,1.0,notifier,,,CK$delay,D$delay);

	// setuphold D- CK-LH
	$setuphold(posedge CK &&& (ENABLE_E_AND_RB === 1'b1),
		negedge D &&& (ENABLE_E_AND_RB === 1'b1),
		1.0,1.0,notifier,,,CK$delay,D$delay);

	// setuphold E- CK-LH
	$setuphold(posedge CK &&& (ENABLE_NOT_D_AND_RB === 1'b1),
		posedge E &&& (ENABLE_NOT_D_AND_RB === 1'b1),
		1.0,1.0,notifier,,,CK$delay,E$delay);

	// setuphold E- CK-LH
	$setuphold(posedge CK &&& (ENABLE_NOT_D_AND_RB === 1'b1),
		negedge E &&& (ENABLE_NOT_D_AND_RB === 1'b1),
		1.0,1.0,notifier,,,CK$delay,E$delay);

	// setuphold E- CK-LH
	$setuphold(posedge CK &&& (ENABLE_D_AND_RB === 1'b1),
		posedge E &&& (ENABLE_D_AND_RB === 1'b1),
		1.0,1.0,notifier,,,CK$delay,E$delay);

	// setuphold E- CK-LH
	$setuphold(posedge CK &&& (ENABLE_D_AND_RB === 1'b1),
		negedge E &&& (ENABLE_D_AND_RB === 1'b1),
		1.0,1.0,notifier,,,CK$delay,E$delay);

	// recrem RB-CK-posedge
	$recrem(posedge RB &&& (ENABLE_E === 1'b1),
		posedge CK &&& (ENABLE_E === 1'b1),
		1.0,1.0,notifier,,,RB$delay,CK$delay);

	$width(negedge RB &&& (ENABLE_NOT_CK_AND_NOT_D_AND_NOT_E === 1'b1)
		,1.0,0,notifier);

	$width(negedge RB &&& (ENABLE_NOT_CK_AND_NOT_D_AND_E === 1'b1)
		,1.0,0,notifier);

	$width(negedge RB &&& (ENABLE_NOT_CK_AND_D_AND_NOT_E === 1'b1)
		,1.0,0,notifier);

	$width(negedge RB &&& (ENABLE_NOT_CK_AND_D_AND_E === 1'b1)
		,1.0,0,notifier);

	$width(negedge RB &&& (ENABLE_CK_AND_NOT_D_AND_NOT_E === 1'b1)
		,1.0,0,notifier);

	$width(negedge RB &&& (ENABLE_CK_AND_NOT_D_AND_E === 1'b1)
		,1.0,0,notifier);

	$width(negedge RB &&& (ENABLE_CK_AND_D_AND_NOT_E === 1'b1)
		,1.0,0,notifier);

	$width(negedge RB &&& (ENABLE_CK_AND_D_AND_E === 1'b1)
		,1.0,0,notifier);

	// mpw CK_lh 
	$width(posedge CK,1.0,0,notifier);

	// mpw CK_hl 
	$width(negedge CK,1.0,0,notifier);

	// mpw RB_hl 
	$width(negedge RB,1.0,0,notifier);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module DFERM2HM( Q, QB, CK, D, E, RB , VDD, VSS);
inout VDD;
inout VSS;
input CK, D, E, RB;
output Q, QB;
reg notifier;

   `ifdef FUNCTIONAL  //  functional //

	DFERM2HM_func DFERM2HM_behav_inst(.Q(Q),.QB(QB),.CK(CK),.D(D),.E(E),.RB(RB),.notifier(notifier),.VDD(VDD),.VSS(VSS));

   `else

	wire CK$delay ;

	wire D$delay ;

	wire E$delay ;

	wire RB$delay ;

	DFERM2HM_func DFERM2HM_inst(.Q(Q),.QB(QB),.CK(CK$delay),.D(D$delay),.E(E$delay),.RB(RB$delay),.notifier(notifier),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	not MGM_G0(MGM_W0,D$delay);


	and MGM_G1(MGM_W1,E$delay,MGM_W0);


	and MGM_G2(ENABLE_NOT_D_AND_E_AND_RB,RB$delay,MGM_W1);


	and MGM_G3(MGM_W2,E$delay,D$delay);


	and MGM_G4(ENABLE_D_AND_E_AND_RB,RB$delay,MGM_W2);


	and MGM_G5(ENABLE_E_AND_RB,RB$delay,E$delay);


	not MGM_G6(MGM_W3,D$delay);


	and MGM_G7(ENABLE_NOT_D_AND_RB,RB$delay,MGM_W3);


	and MGM_G8(ENABLE_D_AND_RB,RB$delay,D$delay);


	buf MGM_G9(ENABLE_E,E$delay);


	not MGM_G10(MGM_W4,CK$delay);


	not MGM_G11(MGM_W5,D$delay);


	and MGM_G12(MGM_W6,MGM_W5,MGM_W4);


	not MGM_G13(MGM_W7,E$delay);


	and MGM_G14(ENABLE_NOT_CK_AND_NOT_D_AND_NOT_E,MGM_W7,MGM_W6);


	not MGM_G15(MGM_W8,CK$delay);


	not MGM_G16(MGM_W9,D$delay);


	and MGM_G17(MGM_W10,MGM_W9,MGM_W8);


	and MGM_G18(ENABLE_NOT_CK_AND_NOT_D_AND_E,E$delay,MGM_W10);


	not MGM_G19(MGM_W11,CK$delay);


	and MGM_G20(MGM_W12,D$delay,MGM_W11);


	not MGM_G21(MGM_W13,E$delay);


	and MGM_G22(ENABLE_NOT_CK_AND_D_AND_NOT_E,MGM_W13,MGM_W12);


	not MGM_G23(MGM_W14,CK$delay);


	and MGM_G24(MGM_W15,D$delay,MGM_W14);


	and MGM_G25(ENABLE_NOT_CK_AND_D_AND_E,E$delay,MGM_W15);


	not MGM_G26(MGM_W16,D$delay);


	and MGM_G27(MGM_W17,MGM_W16,CK$delay);


	not MGM_G28(MGM_W18,E$delay);


	and MGM_G29(ENABLE_CK_AND_NOT_D_AND_NOT_E,MGM_W18,MGM_W17);


	not MGM_G30(MGM_W19,D$delay);


	and MGM_G31(MGM_W20,MGM_W19,CK$delay);


	and MGM_G32(ENABLE_CK_AND_NOT_D_AND_E,E$delay,MGM_W20);


	and MGM_G33(MGM_W21,D$delay,CK$delay);


	not MGM_G34(MGM_W22,E$delay);


	and MGM_G35(ENABLE_CK_AND_D_AND_NOT_E,MGM_W22,MGM_W21);


	and MGM_G36(MGM_W23,D$delay,CK$delay);


	and MGM_G37(ENABLE_CK_AND_D_AND_E,E$delay,MGM_W23);


	// spec_gates_end



   specify

	// specify_block_begin 

	// seq arc CK --> Q
	(posedge CK => (Q : D))  = (1.0,1.0);

	// seq arc RB --> Q
	(RB => Q)  = (1.0,1.0);

	// seq arc CK --> QB
	(posedge CK => (QB : D))  = (1.0,1.0);

	// seq arc RB --> QB
	(RB => QB)  = (1.0,1.0);

	$width(negedge CK &&& (ENABLE_NOT_D_AND_E_AND_RB === 1'b1)
		,1.0,0,notifier);

	$width(posedge CK &&& (ENABLE_NOT_D_AND_E_AND_RB === 1'b1)
		,1.0,0,notifier);

	$width(negedge CK &&& (ENABLE_D_AND_E_AND_RB === 1'b1)
		,1.0,0,notifier);

	$width(posedge CK &&& (ENABLE_D_AND_E_AND_RB === 1'b1)
		,1.0,0,notifier);

	// setuphold D- CK-LH
	$setuphold(posedge CK &&& (ENABLE_E_AND_RB === 1'b1),
		posedge D &&& (ENABLE_E_AND_RB === 1'b1),
		1.0,1.0,notifier,,,CK$delay,D$delay);

	// setuphold D- CK-LH
	$setuphold(posedge CK &&& (ENABLE_E_AND_RB === 1'b1),
		negedge D &&& (ENABLE_E_AND_RB === 1'b1),
		1.0,1.0,notifier,,,CK$delay,D$delay);

	// setuphold E- CK-LH
	$setuphold(posedge CK &&& (ENABLE_NOT_D_AND_RB === 1'b1),
		posedge E &&& (ENABLE_NOT_D_AND_RB === 1'b1),
		1.0,1.0,notifier,,,CK$delay,E$delay);

	// setuphold E- CK-LH
	$setuphold(posedge CK &&& (ENABLE_NOT_D_AND_RB === 1'b1),
		negedge E &&& (ENABLE_NOT_D_AND_RB === 1'b1),
		1.0,1.0,notifier,,,CK$delay,E$delay);

	// setuphold E- CK-LH
	$setuphold(posedge CK &&& (ENABLE_D_AND_RB === 1'b1),
		posedge E &&& (ENABLE_D_AND_RB === 1'b1),
		1.0,1.0,notifier,,,CK$delay,E$delay);

	// setuphold E- CK-LH
	$setuphold(posedge CK &&& (ENABLE_D_AND_RB === 1'b1),
		negedge E &&& (ENABLE_D_AND_RB === 1'b1),
		1.0,1.0,notifier,,,CK$delay,E$delay);

	// recrem RB-CK-posedge
	$recrem(posedge RB &&& (ENABLE_E === 1'b1),
		posedge CK &&& (ENABLE_E === 1'b1),
		1.0,1.0,notifier,,,RB$delay,CK$delay);

	$width(negedge RB &&& (ENABLE_NOT_CK_AND_NOT_D_AND_NOT_E === 1'b1)
		,1.0,0,notifier);

	$width(negedge RB &&& (ENABLE_NOT_CK_AND_NOT_D_AND_E === 1'b1)
		,1.0,0,notifier);

	$width(negedge RB &&& (ENABLE_NOT_CK_AND_D_AND_NOT_E === 1'b1)
		,1.0,0,notifier);

	$width(negedge RB &&& (ENABLE_NOT_CK_AND_D_AND_E === 1'b1)
		,1.0,0,notifier);

	$width(negedge RB &&& (ENABLE_CK_AND_NOT_D_AND_NOT_E === 1'b1)
		,1.0,0,notifier);

	$width(negedge RB &&& (ENABLE_CK_AND_NOT_D_AND_E === 1'b1)
		,1.0,0,notifier);

	$width(negedge RB &&& (ENABLE_CK_AND_D_AND_NOT_E === 1'b1)
		,1.0,0,notifier);

	$width(negedge RB &&& (ENABLE_CK_AND_D_AND_E === 1'b1)
		,1.0,0,notifier);

	// mpw CK_lh 
	$width(posedge CK,1.0,0,notifier);

	// mpw CK_hl 
	$width(negedge CK,1.0,0,notifier);

	// mpw RB_hl 
	$width(negedge RB,1.0,0,notifier);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module DFERM4HM( Q, QB, CK, D, E, RB , VDD, VSS);
inout VDD;
inout VSS;
input CK, D, E, RB;
output Q, QB;
reg notifier;

   `ifdef FUNCTIONAL  //  functional //

	DFERM4HM_func DFERM4HM_behav_inst(.Q(Q),.QB(QB),.CK(CK),.D(D),.E(E),.RB(RB),.notifier(notifier),.VDD(VDD),.VSS(VSS));

   `else

	wire CK$delay ;

	wire D$delay ;

	wire E$delay ;

	wire RB$delay ;

	DFERM4HM_func DFERM4HM_inst(.Q(Q),.QB(QB),.CK(CK$delay),.D(D$delay),.E(E$delay),.RB(RB$delay),.notifier(notifier),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	not MGM_G0(MGM_W0,D$delay);


	and MGM_G1(MGM_W1,E$delay,MGM_W0);


	and MGM_G2(ENABLE_NOT_D_AND_E_AND_RB,RB$delay,MGM_W1);


	and MGM_G3(MGM_W2,E$delay,D$delay);


	and MGM_G4(ENABLE_D_AND_E_AND_RB,RB$delay,MGM_W2);


	and MGM_G5(ENABLE_E_AND_RB,RB$delay,E$delay);


	not MGM_G6(MGM_W3,D$delay);


	and MGM_G7(ENABLE_NOT_D_AND_RB,RB$delay,MGM_W3);


	and MGM_G8(ENABLE_D_AND_RB,RB$delay,D$delay);


	buf MGM_G9(ENABLE_E,E$delay);


	not MGM_G10(MGM_W4,CK$delay);


	not MGM_G11(MGM_W5,D$delay);


	and MGM_G12(MGM_W6,MGM_W5,MGM_W4);


	not MGM_G13(MGM_W7,E$delay);


	and MGM_G14(ENABLE_NOT_CK_AND_NOT_D_AND_NOT_E,MGM_W7,MGM_W6);


	not MGM_G15(MGM_W8,CK$delay);


	not MGM_G16(MGM_W9,D$delay);


	and MGM_G17(MGM_W10,MGM_W9,MGM_W8);


	and MGM_G18(ENABLE_NOT_CK_AND_NOT_D_AND_E,E$delay,MGM_W10);


	not MGM_G19(MGM_W11,CK$delay);


	and MGM_G20(MGM_W12,D$delay,MGM_W11);


	not MGM_G21(MGM_W13,E$delay);


	and MGM_G22(ENABLE_NOT_CK_AND_D_AND_NOT_E,MGM_W13,MGM_W12);


	not MGM_G23(MGM_W14,CK$delay);


	and MGM_G24(MGM_W15,D$delay,MGM_W14);


	and MGM_G25(ENABLE_NOT_CK_AND_D_AND_E,E$delay,MGM_W15);


	not MGM_G26(MGM_W16,D$delay);


	and MGM_G27(MGM_W17,MGM_W16,CK$delay);


	not MGM_G28(MGM_W18,E$delay);


	and MGM_G29(ENABLE_CK_AND_NOT_D_AND_NOT_E,MGM_W18,MGM_W17);


	not MGM_G30(MGM_W19,D$delay);


	and MGM_G31(MGM_W20,MGM_W19,CK$delay);


	and MGM_G32(ENABLE_CK_AND_NOT_D_AND_E,E$delay,MGM_W20);


	and MGM_G33(MGM_W21,D$delay,CK$delay);


	not MGM_G34(MGM_W22,E$delay);


	and MGM_G35(ENABLE_CK_AND_D_AND_NOT_E,MGM_W22,MGM_W21);


	and MGM_G36(MGM_W23,D$delay,CK$delay);


	and MGM_G37(ENABLE_CK_AND_D_AND_E,E$delay,MGM_W23);


	// spec_gates_end



   specify

	// specify_block_begin 

	// seq arc CK --> Q
	(posedge CK => (Q : D))  = (1.0,1.0);

	// seq arc RB --> Q
	(RB => Q)  = (1.0,1.0);

	// seq arc CK --> QB
	(posedge CK => (QB : D))  = (1.0,1.0);

	// seq arc RB --> QB
	(RB => QB)  = (1.0,1.0);

	$width(negedge CK &&& (ENABLE_NOT_D_AND_E_AND_RB === 1'b1)
		,1.0,0,notifier);

	$width(posedge CK &&& (ENABLE_NOT_D_AND_E_AND_RB === 1'b1)
		,1.0,0,notifier);

	$width(negedge CK &&& (ENABLE_D_AND_E_AND_RB === 1'b1)
		,1.0,0,notifier);

	$width(posedge CK &&& (ENABLE_D_AND_E_AND_RB === 1'b1)
		,1.0,0,notifier);

	// setuphold D- CK-LH
	$setuphold(posedge CK &&& (ENABLE_E_AND_RB === 1'b1),
		posedge D &&& (ENABLE_E_AND_RB === 1'b1),
		1.0,1.0,notifier,,,CK$delay,D$delay);

	// setuphold D- CK-LH
	$setuphold(posedge CK &&& (ENABLE_E_AND_RB === 1'b1),
		negedge D &&& (ENABLE_E_AND_RB === 1'b1),
		1.0,1.0,notifier,,,CK$delay,D$delay);

	// setuphold E- CK-LH
	$setuphold(posedge CK &&& (ENABLE_NOT_D_AND_RB === 1'b1),
		posedge E &&& (ENABLE_NOT_D_AND_RB === 1'b1),
		1.0,1.0,notifier,,,CK$delay,E$delay);

	// setuphold E- CK-LH
	$setuphold(posedge CK &&& (ENABLE_NOT_D_AND_RB === 1'b1),
		negedge E &&& (ENABLE_NOT_D_AND_RB === 1'b1),
		1.0,1.0,notifier,,,CK$delay,E$delay);

	// setuphold E- CK-LH
	$setuphold(posedge CK &&& (ENABLE_D_AND_RB === 1'b1),
		posedge E &&& (ENABLE_D_AND_RB === 1'b1),
		1.0,1.0,notifier,,,CK$delay,E$delay);

	// setuphold E- CK-LH
	$setuphold(posedge CK &&& (ENABLE_D_AND_RB === 1'b1),
		negedge E &&& (ENABLE_D_AND_RB === 1'b1),
		1.0,1.0,notifier,,,CK$delay,E$delay);

	// recrem RB-CK-posedge
	$recrem(posedge RB &&& (ENABLE_E === 1'b1),
		posedge CK &&& (ENABLE_E === 1'b1),
		1.0,1.0,notifier,,,RB$delay,CK$delay);

	$width(negedge RB &&& (ENABLE_NOT_CK_AND_NOT_D_AND_NOT_E === 1'b1)
		,1.0,0,notifier);

	$width(negedge RB &&& (ENABLE_NOT_CK_AND_NOT_D_AND_E === 1'b1)
		,1.0,0,notifier);

	$width(negedge RB &&& (ENABLE_NOT_CK_AND_D_AND_NOT_E === 1'b1)
		,1.0,0,notifier);

	$width(negedge RB &&& (ENABLE_NOT_CK_AND_D_AND_E === 1'b1)
		,1.0,0,notifier);

	$width(negedge RB &&& (ENABLE_CK_AND_NOT_D_AND_NOT_E === 1'b1)
		,1.0,0,notifier);

	$width(negedge RB &&& (ENABLE_CK_AND_NOT_D_AND_E === 1'b1)
		,1.0,0,notifier);

	$width(negedge RB &&& (ENABLE_CK_AND_D_AND_NOT_E === 1'b1)
		,1.0,0,notifier);

	$width(negedge RB &&& (ENABLE_CK_AND_D_AND_E === 1'b1)
		,1.0,0,notifier);

	// mpw CK_lh 
	$width(posedge CK,1.0,0,notifier);

	// mpw CK_hl 
	$width(negedge CK,1.0,0,notifier);

	// mpw RB_hl 
	$width(negedge RB,1.0,0,notifier);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module DFERM8HM( Q, QB, CK, D, E, RB , VDD, VSS);
inout VDD;
inout VSS;
input CK, D, E, RB;
output Q, QB;
reg notifier;

   `ifdef FUNCTIONAL  //  functional //

	DFERM8HM_func DFERM8HM_behav_inst(.Q(Q),.QB(QB),.CK(CK),.D(D),.E(E),.RB(RB),.notifier(notifier),.VDD(VDD),.VSS(VSS));

   `else

	wire CK$delay ;

	wire D$delay ;

	wire E$delay ;

	wire RB$delay ;

	DFERM8HM_func DFERM8HM_inst(.Q(Q),.QB(QB),.CK(CK$delay),.D(D$delay),.E(E$delay),.RB(RB$delay),.notifier(notifier),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	not MGM_G0(MGM_W0,D$delay);


	and MGM_G1(MGM_W1,E$delay,MGM_W0);


	and MGM_G2(ENABLE_NOT_D_AND_E_AND_RB,RB$delay,MGM_W1);


	and MGM_G3(MGM_W2,E$delay,D$delay);


	and MGM_G4(ENABLE_D_AND_E_AND_RB,RB$delay,MGM_W2);


	and MGM_G5(ENABLE_E_AND_RB,RB$delay,E$delay);


	not MGM_G6(MGM_W3,D$delay);


	and MGM_G7(ENABLE_NOT_D_AND_RB,RB$delay,MGM_W3);


	and MGM_G8(ENABLE_D_AND_RB,RB$delay,D$delay);


	buf MGM_G9(ENABLE_E,E$delay);


	not MGM_G10(MGM_W4,CK$delay);


	not MGM_G11(MGM_W5,D$delay);


	and MGM_G12(MGM_W6,MGM_W5,MGM_W4);


	not MGM_G13(MGM_W7,E$delay);


	and MGM_G14(ENABLE_NOT_CK_AND_NOT_D_AND_NOT_E,MGM_W7,MGM_W6);


	not MGM_G15(MGM_W8,CK$delay);


	not MGM_G16(MGM_W9,D$delay);


	and MGM_G17(MGM_W10,MGM_W9,MGM_W8);


	and MGM_G18(ENABLE_NOT_CK_AND_NOT_D_AND_E,E$delay,MGM_W10);


	not MGM_G19(MGM_W11,CK$delay);


	and MGM_G20(MGM_W12,D$delay,MGM_W11);


	not MGM_G21(MGM_W13,E$delay);


	and MGM_G22(ENABLE_NOT_CK_AND_D_AND_NOT_E,MGM_W13,MGM_W12);


	not MGM_G23(MGM_W14,CK$delay);


	and MGM_G24(MGM_W15,D$delay,MGM_W14);


	and MGM_G25(ENABLE_NOT_CK_AND_D_AND_E,E$delay,MGM_W15);


	not MGM_G26(MGM_W16,D$delay);


	and MGM_G27(MGM_W17,MGM_W16,CK$delay);


	not MGM_G28(MGM_W18,E$delay);


	and MGM_G29(ENABLE_CK_AND_NOT_D_AND_NOT_E,MGM_W18,MGM_W17);


	not MGM_G30(MGM_W19,D$delay);


	and MGM_G31(MGM_W20,MGM_W19,CK$delay);


	and MGM_G32(ENABLE_CK_AND_NOT_D_AND_E,E$delay,MGM_W20);


	and MGM_G33(MGM_W21,D$delay,CK$delay);


	not MGM_G34(MGM_W22,E$delay);


	and MGM_G35(ENABLE_CK_AND_D_AND_NOT_E,MGM_W22,MGM_W21);


	and MGM_G36(MGM_W23,D$delay,CK$delay);


	and MGM_G37(ENABLE_CK_AND_D_AND_E,E$delay,MGM_W23);


	// spec_gates_end



   specify

	// specify_block_begin 

	// seq arc CK --> Q
	(posedge CK => (Q : D))  = (1.0,1.0);

	// seq arc RB --> Q
	(RB => Q)  = (1.0,1.0);

	// seq arc CK --> QB
	(posedge CK => (QB : D))  = (1.0,1.0);

	// seq arc RB --> QB
	(RB => QB)  = (1.0,1.0);

	$width(negedge CK &&& (ENABLE_NOT_D_AND_E_AND_RB === 1'b1)
		,1.0,0,notifier);

	$width(posedge CK &&& (ENABLE_NOT_D_AND_E_AND_RB === 1'b1)
		,1.0,0,notifier);

	$width(negedge CK &&& (ENABLE_D_AND_E_AND_RB === 1'b1)
		,1.0,0,notifier);

	$width(posedge CK &&& (ENABLE_D_AND_E_AND_RB === 1'b1)
		,1.0,0,notifier);

	// setuphold D- CK-LH
	$setuphold(posedge CK &&& (ENABLE_E_AND_RB === 1'b1),
		posedge D &&& (ENABLE_E_AND_RB === 1'b1),
		1.0,1.0,notifier,,,CK$delay,D$delay);

	// setuphold D- CK-LH
	$setuphold(posedge CK &&& (ENABLE_E_AND_RB === 1'b1),
		negedge D &&& (ENABLE_E_AND_RB === 1'b1),
		1.0,1.0,notifier,,,CK$delay,D$delay);

	// setuphold E- CK-LH
	$setuphold(posedge CK &&& (ENABLE_NOT_D_AND_RB === 1'b1),
		posedge E &&& (ENABLE_NOT_D_AND_RB === 1'b1),
		1.0,1.0,notifier,,,CK$delay,E$delay);

	// setuphold E- CK-LH
	$setuphold(posedge CK &&& (ENABLE_NOT_D_AND_RB === 1'b1),
		negedge E &&& (ENABLE_NOT_D_AND_RB === 1'b1),
		1.0,1.0,notifier,,,CK$delay,E$delay);

	// setuphold E- CK-LH
	$setuphold(posedge CK &&& (ENABLE_D_AND_RB === 1'b1),
		posedge E &&& (ENABLE_D_AND_RB === 1'b1),
		1.0,1.0,notifier,,,CK$delay,E$delay);

	// setuphold E- CK-LH
	$setuphold(posedge CK &&& (ENABLE_D_AND_RB === 1'b1),
		negedge E &&& (ENABLE_D_AND_RB === 1'b1),
		1.0,1.0,notifier,,,CK$delay,E$delay);

	// recrem RB-CK-posedge
	$recrem(posedge RB &&& (ENABLE_E === 1'b1),
		posedge CK &&& (ENABLE_E === 1'b1),
		1.0,1.0,notifier,,,RB$delay,CK$delay);

	$width(negedge RB &&& (ENABLE_NOT_CK_AND_NOT_D_AND_NOT_E === 1'b1)
		,1.0,0,notifier);

	$width(negedge RB &&& (ENABLE_NOT_CK_AND_NOT_D_AND_E === 1'b1)
		,1.0,0,notifier);

	$width(negedge RB &&& (ENABLE_NOT_CK_AND_D_AND_NOT_E === 1'b1)
		,1.0,0,notifier);

	$width(negedge RB &&& (ENABLE_NOT_CK_AND_D_AND_E === 1'b1)
		,1.0,0,notifier);

	$width(negedge RB &&& (ENABLE_CK_AND_NOT_D_AND_NOT_E === 1'b1)
		,1.0,0,notifier);

	$width(negedge RB &&& (ENABLE_CK_AND_NOT_D_AND_E === 1'b1)
		,1.0,0,notifier);

	$width(negedge RB &&& (ENABLE_CK_AND_D_AND_NOT_E === 1'b1)
		,1.0,0,notifier);

	$width(negedge RB &&& (ENABLE_CK_AND_D_AND_E === 1'b1)
		,1.0,0,notifier);

	// mpw CK_lh 
	$width(posedge CK,1.0,0,notifier);

	// mpw CK_hl 
	$width(negedge CK,1.0,0,notifier);

	// mpw RB_hl 
	$width(negedge RB,1.0,0,notifier);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module DFEZRM1HM( Q, QB, CK, D, E, RB , VDD, VSS);
inout VDD;
inout VSS;
input CK, D, E, RB;
output Q, QB;
reg notifier;

   `ifdef FUNCTIONAL  //  functional //

	DFEZRM1HM_func DFEZRM1HM_behav_inst(.Q(Q),.QB(QB),.CK(CK),.D(D),.E(E),.RB(RB),.notifier(notifier),.VDD(VDD),.VSS(VSS));

   `else

	wire CK$delay ;

	wire D$delay ;

	wire E$delay ;

	wire RB$delay ;

	DFEZRM1HM_func DFEZRM1HM_inst(.Q(Q),.QB(QB),.CK(CK$delay),.D(D$delay),.E(E$delay),.RB(RB$delay),.notifier(notifier),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	not MGM_G0(MGM_W0,D$delay);


	not MGM_G1(MGM_W1,E$delay);


	and MGM_G2(MGM_W2,MGM_W1,MGM_W0);


	not MGM_G3(MGM_W3,RB$delay);


	and MGM_G4(ENABLE_NOT_D_AND_NOT_E_AND_NOT_RB,MGM_W3,MGM_W2);


	not MGM_G5(MGM_W4,D$delay);


	and MGM_G6(MGM_W5,E$delay,MGM_W4);


	not MGM_G7(MGM_W6,RB$delay);


	and MGM_G8(ENABLE_NOT_D_AND_E_AND_NOT_RB,MGM_W6,MGM_W5);


	not MGM_G9(MGM_W7,D$delay);


	and MGM_G10(MGM_W8,E$delay,MGM_W7);


	and MGM_G11(ENABLE_NOT_D_AND_E_AND_RB,RB$delay,MGM_W8);


	not MGM_G12(MGM_W9,E$delay);


	and MGM_G13(MGM_W10,MGM_W9,D$delay);


	not MGM_G14(MGM_W11,RB$delay);


	and MGM_G15(ENABLE_D_AND_NOT_E_AND_NOT_RB,MGM_W11,MGM_W10);


	and MGM_G16(MGM_W12,E$delay,D$delay);


	not MGM_G17(MGM_W13,RB$delay);


	and MGM_G18(ENABLE_D_AND_E_AND_NOT_RB,MGM_W13,MGM_W12);


	and MGM_G19(MGM_W14,E$delay,D$delay);


	and MGM_G20(ENABLE_D_AND_E_AND_RB,RB$delay,MGM_W14);


	and MGM_G21(ENABLE_E_AND_RB,RB$delay,E$delay);


	not MGM_G22(MGM_W15,D$delay);


	and MGM_G23(ENABLE_NOT_D_AND_RB,RB$delay,MGM_W15);


	and MGM_G24(ENABLE_D_AND_RB,RB$delay,D$delay);


	not MGM_G25(MGM_W16,D$delay);


	not MGM_G26(MGM_W17,E$delay);


	and MGM_G27(ENABLE_NOT_D_AND_NOT_E,MGM_W17,MGM_W16);


	not MGM_G28(MGM_W18,E$delay);


	and MGM_G29(ENABLE_D_AND_NOT_E,MGM_W18,D$delay);


	and MGM_G30(ENABLE_D_AND_E,E$delay,D$delay);


	// spec_gates_end



   specify

	// specify_block_begin 

	// seq arc CK --> Q
	(posedge CK => (Q : D))  = (1.0,1.0);

	// seq arc CK --> QB
	(posedge CK => (QB : D))  = (1.0,1.0);

	$width(negedge CK &&& (ENABLE_NOT_D_AND_NOT_E_AND_NOT_RB === 1'b1)
		,1.0,0,notifier);

	$width(posedge CK &&& (ENABLE_NOT_D_AND_NOT_E_AND_NOT_RB === 1'b1)
		,1.0,0,notifier);

	$width(negedge CK &&& (ENABLE_NOT_D_AND_E_AND_NOT_RB === 1'b1)
		,1.0,0,notifier);

	$width(posedge CK &&& (ENABLE_NOT_D_AND_E_AND_NOT_RB === 1'b1)
		,1.0,0,notifier);

	$width(negedge CK &&& (ENABLE_NOT_D_AND_E_AND_RB === 1'b1)
		,1.0,0,notifier);

	$width(posedge CK &&& (ENABLE_NOT_D_AND_E_AND_RB === 1'b1)
		,1.0,0,notifier);

	$width(negedge CK &&& (ENABLE_D_AND_NOT_E_AND_NOT_RB === 1'b1)
		,1.0,0,notifier);

	$width(posedge CK &&& (ENABLE_D_AND_NOT_E_AND_NOT_RB === 1'b1)
		,1.0,0,notifier);

	$width(negedge CK &&& (ENABLE_D_AND_E_AND_NOT_RB === 1'b1)
		,1.0,0,notifier);

	$width(posedge CK &&& (ENABLE_D_AND_E_AND_NOT_RB === 1'b1)
		,1.0,0,notifier);

	$width(negedge CK &&& (ENABLE_D_AND_E_AND_RB === 1'b1)
		,1.0,0,notifier);

	$width(posedge CK &&& (ENABLE_D_AND_E_AND_RB === 1'b1)
		,1.0,0,notifier);

	// setuphold D- CK-LH
	$setuphold(posedge CK &&& (ENABLE_E_AND_RB === 1'b1),
		posedge D &&& (ENABLE_E_AND_RB === 1'b1),
		1.0,1.0,notifier,,,CK$delay,D$delay);

	// setuphold D- CK-LH
	$setuphold(posedge CK &&& (ENABLE_E_AND_RB === 1'b1),
		negedge D &&& (ENABLE_E_AND_RB === 1'b1),
		1.0,1.0,notifier,,,CK$delay,D$delay);

	// setuphold E- CK-LH
	$setuphold(posedge CK &&& (ENABLE_NOT_D_AND_RB === 1'b1),
		posedge E &&& (ENABLE_NOT_D_AND_RB === 1'b1),
		1.0,1.0,notifier,,,CK$delay,E$delay);

	// setuphold E- CK-LH
	$setuphold(posedge CK &&& (ENABLE_NOT_D_AND_RB === 1'b1),
		negedge E &&& (ENABLE_NOT_D_AND_RB === 1'b1),
		1.0,1.0,notifier,,,CK$delay,E$delay);

	// setuphold E- CK-LH
	$setuphold(posedge CK &&& (ENABLE_D_AND_RB === 1'b1),
		posedge E &&& (ENABLE_D_AND_RB === 1'b1),
		1.0,1.0,notifier,,,CK$delay,E$delay);

	// setuphold E- CK-LH
	$setuphold(posedge CK &&& (ENABLE_D_AND_RB === 1'b1),
		negedge E &&& (ENABLE_D_AND_RB === 1'b1),
		1.0,1.0,notifier,,,CK$delay,E$delay);

	// setuphold RB- CK-LH
	$setuphold(posedge CK &&& (ENABLE_NOT_D_AND_NOT_E === 1'b1),
		posedge RB &&& (ENABLE_NOT_D_AND_NOT_E === 1'b1),
		1.0,1.0,notifier,,,CK$delay,RB$delay);

	// setuphold RB- CK-LH
	$setuphold(posedge CK &&& (ENABLE_NOT_D_AND_NOT_E === 1'b1),
		negedge RB &&& (ENABLE_NOT_D_AND_NOT_E === 1'b1),
		1.0,1.0,notifier,,,CK$delay,RB$delay);

	// setuphold RB- CK-LH
	$setuphold(posedge CK &&& (ENABLE_D_AND_NOT_E === 1'b1),
		posedge RB &&& (ENABLE_D_AND_NOT_E === 1'b1),
		1.0,1.0,notifier,,,CK$delay,RB$delay);

	// setuphold RB- CK-LH
	$setuphold(posedge CK &&& (ENABLE_D_AND_NOT_E === 1'b1),
		negedge RB &&& (ENABLE_D_AND_NOT_E === 1'b1),
		1.0,1.0,notifier,,,CK$delay,RB$delay);

	// setuphold RB- CK-LH
	$setuphold(posedge CK &&& (ENABLE_D_AND_E === 1'b1),
		posedge RB &&& (ENABLE_D_AND_E === 1'b1),
		1.0,1.0,notifier,,,CK$delay,RB$delay);

	// setuphold RB- CK-LH
	$setuphold(posedge CK &&& (ENABLE_D_AND_E === 1'b1),
		negedge RB &&& (ENABLE_D_AND_E === 1'b1),
		1.0,1.0,notifier,,,CK$delay,RB$delay);

	// mpw CK_lh 
	$width(posedge CK,1.0,0,notifier);

	// mpw CK_hl 
	$width(negedge CK,1.0,0,notifier);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module DFEZRM2HM( Q, QB, CK, D, E, RB , VDD, VSS);
inout VDD;
inout VSS;
input CK, D, E, RB;
output Q, QB;
reg notifier;

   `ifdef FUNCTIONAL  //  functional //

	DFEZRM2HM_func DFEZRM2HM_behav_inst(.Q(Q),.QB(QB),.CK(CK),.D(D),.E(E),.RB(RB),.notifier(notifier),.VDD(VDD),.VSS(VSS));

   `else

	wire CK$delay ;

	wire D$delay ;

	wire E$delay ;

	wire RB$delay ;

	DFEZRM2HM_func DFEZRM2HM_inst(.Q(Q),.QB(QB),.CK(CK$delay),.D(D$delay),.E(E$delay),.RB(RB$delay),.notifier(notifier),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	not MGM_G0(MGM_W0,D$delay);


	not MGM_G1(MGM_W1,E$delay);


	and MGM_G2(MGM_W2,MGM_W1,MGM_W0);


	not MGM_G3(MGM_W3,RB$delay);


	and MGM_G4(ENABLE_NOT_D_AND_NOT_E_AND_NOT_RB,MGM_W3,MGM_W2);


	not MGM_G5(MGM_W4,D$delay);


	and MGM_G6(MGM_W5,E$delay,MGM_W4);


	not MGM_G7(MGM_W6,RB$delay);


	and MGM_G8(ENABLE_NOT_D_AND_E_AND_NOT_RB,MGM_W6,MGM_W5);


	not MGM_G9(MGM_W7,D$delay);


	and MGM_G10(MGM_W8,E$delay,MGM_W7);


	and MGM_G11(ENABLE_NOT_D_AND_E_AND_RB,RB$delay,MGM_W8);


	not MGM_G12(MGM_W9,E$delay);


	and MGM_G13(MGM_W10,MGM_W9,D$delay);


	not MGM_G14(MGM_W11,RB$delay);


	and MGM_G15(ENABLE_D_AND_NOT_E_AND_NOT_RB,MGM_W11,MGM_W10);


	and MGM_G16(MGM_W12,E$delay,D$delay);


	not MGM_G17(MGM_W13,RB$delay);


	and MGM_G18(ENABLE_D_AND_E_AND_NOT_RB,MGM_W13,MGM_W12);


	and MGM_G19(MGM_W14,E$delay,D$delay);


	and MGM_G20(ENABLE_D_AND_E_AND_RB,RB$delay,MGM_W14);


	and MGM_G21(ENABLE_E_AND_RB,RB$delay,E$delay);


	not MGM_G22(MGM_W15,D$delay);


	and MGM_G23(ENABLE_NOT_D_AND_RB,RB$delay,MGM_W15);


	and MGM_G24(ENABLE_D_AND_RB,RB$delay,D$delay);


	not MGM_G25(MGM_W16,D$delay);


	not MGM_G26(MGM_W17,E$delay);


	and MGM_G27(ENABLE_NOT_D_AND_NOT_E,MGM_W17,MGM_W16);


	not MGM_G28(MGM_W18,E$delay);


	and MGM_G29(ENABLE_D_AND_NOT_E,MGM_W18,D$delay);


	and MGM_G30(ENABLE_D_AND_E,E$delay,D$delay);


	// spec_gates_end



   specify

	// specify_block_begin 

	// seq arc CK --> Q
	(posedge CK => (Q : D))  = (1.0,1.0);

	// seq arc CK --> QB
	(posedge CK => (QB : D))  = (1.0,1.0);

	$width(negedge CK &&& (ENABLE_NOT_D_AND_NOT_E_AND_NOT_RB === 1'b1)
		,1.0,0,notifier);

	$width(posedge CK &&& (ENABLE_NOT_D_AND_NOT_E_AND_NOT_RB === 1'b1)
		,1.0,0,notifier);

	$width(negedge CK &&& (ENABLE_NOT_D_AND_E_AND_NOT_RB === 1'b1)
		,1.0,0,notifier);

	$width(posedge CK &&& (ENABLE_NOT_D_AND_E_AND_NOT_RB === 1'b1)
		,1.0,0,notifier);

	$width(negedge CK &&& (ENABLE_NOT_D_AND_E_AND_RB === 1'b1)
		,1.0,0,notifier);

	$width(posedge CK &&& (ENABLE_NOT_D_AND_E_AND_RB === 1'b1)
		,1.0,0,notifier);

	$width(negedge CK &&& (ENABLE_D_AND_NOT_E_AND_NOT_RB === 1'b1)
		,1.0,0,notifier);

	$width(posedge CK &&& (ENABLE_D_AND_NOT_E_AND_NOT_RB === 1'b1)
		,1.0,0,notifier);

	$width(negedge CK &&& (ENABLE_D_AND_E_AND_NOT_RB === 1'b1)
		,1.0,0,notifier);

	$width(posedge CK &&& (ENABLE_D_AND_E_AND_NOT_RB === 1'b1)
		,1.0,0,notifier);

	$width(negedge CK &&& (ENABLE_D_AND_E_AND_RB === 1'b1)
		,1.0,0,notifier);

	$width(posedge CK &&& (ENABLE_D_AND_E_AND_RB === 1'b1)
		,1.0,0,notifier);

	// setuphold D- CK-LH
	$setuphold(posedge CK &&& (ENABLE_E_AND_RB === 1'b1),
		posedge D &&& (ENABLE_E_AND_RB === 1'b1),
		1.0,1.0,notifier,,,CK$delay,D$delay);

	// setuphold D- CK-LH
	$setuphold(posedge CK &&& (ENABLE_E_AND_RB === 1'b1),
		negedge D &&& (ENABLE_E_AND_RB === 1'b1),
		1.0,1.0,notifier,,,CK$delay,D$delay);

	// setuphold E- CK-LH
	$setuphold(posedge CK &&& (ENABLE_NOT_D_AND_RB === 1'b1),
		posedge E &&& (ENABLE_NOT_D_AND_RB === 1'b1),
		1.0,1.0,notifier,,,CK$delay,E$delay);

	// setuphold E- CK-LH
	$setuphold(posedge CK &&& (ENABLE_NOT_D_AND_RB === 1'b1),
		negedge E &&& (ENABLE_NOT_D_AND_RB === 1'b1),
		1.0,1.0,notifier,,,CK$delay,E$delay);

	// setuphold E- CK-LH
	$setuphold(posedge CK &&& (ENABLE_D_AND_RB === 1'b1),
		posedge E &&& (ENABLE_D_AND_RB === 1'b1),
		1.0,1.0,notifier,,,CK$delay,E$delay);

	// setuphold E- CK-LH
	$setuphold(posedge CK &&& (ENABLE_D_AND_RB === 1'b1),
		negedge E &&& (ENABLE_D_AND_RB === 1'b1),
		1.0,1.0,notifier,,,CK$delay,E$delay);

	// setuphold RB- CK-LH
	$setuphold(posedge CK &&& (ENABLE_NOT_D_AND_NOT_E === 1'b1),
		posedge RB &&& (ENABLE_NOT_D_AND_NOT_E === 1'b1),
		1.0,1.0,notifier,,,CK$delay,RB$delay);

	// setuphold RB- CK-LH
	$setuphold(posedge CK &&& (ENABLE_NOT_D_AND_NOT_E === 1'b1),
		negedge RB &&& (ENABLE_NOT_D_AND_NOT_E === 1'b1),
		1.0,1.0,notifier,,,CK$delay,RB$delay);

	// setuphold RB- CK-LH
	$setuphold(posedge CK &&& (ENABLE_D_AND_NOT_E === 1'b1),
		posedge RB &&& (ENABLE_D_AND_NOT_E === 1'b1),
		1.0,1.0,notifier,,,CK$delay,RB$delay);

	// setuphold RB- CK-LH
	$setuphold(posedge CK &&& (ENABLE_D_AND_NOT_E === 1'b1),
		negedge RB &&& (ENABLE_D_AND_NOT_E === 1'b1),
		1.0,1.0,notifier,,,CK$delay,RB$delay);

	// setuphold RB- CK-LH
	$setuphold(posedge CK &&& (ENABLE_D_AND_E === 1'b1),
		posedge RB &&& (ENABLE_D_AND_E === 1'b1),
		1.0,1.0,notifier,,,CK$delay,RB$delay);

	// setuphold RB- CK-LH
	$setuphold(posedge CK &&& (ENABLE_D_AND_E === 1'b1),
		negedge RB &&& (ENABLE_D_AND_E === 1'b1),
		1.0,1.0,notifier,,,CK$delay,RB$delay);

	// mpw CK_lh 
	$width(posedge CK,1.0,0,notifier);

	// mpw CK_hl 
	$width(negedge CK,1.0,0,notifier);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module DFEZRM4HM( Q, QB, CK, D, E, RB , VDD, VSS);
inout VDD;
inout VSS;
input CK, D, E, RB;
output Q, QB;
reg notifier;

   `ifdef FUNCTIONAL  //  functional //

	DFEZRM4HM_func DFEZRM4HM_behav_inst(.Q(Q),.QB(QB),.CK(CK),.D(D),.E(E),.RB(RB),.notifier(notifier),.VDD(VDD),.VSS(VSS));

   `else

	wire CK$delay ;

	wire D$delay ;

	wire E$delay ;

	wire RB$delay ;

	DFEZRM4HM_func DFEZRM4HM_inst(.Q(Q),.QB(QB),.CK(CK$delay),.D(D$delay),.E(E$delay),.RB(RB$delay),.notifier(notifier),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	not MGM_G0(MGM_W0,D$delay);


	not MGM_G1(MGM_W1,E$delay);


	and MGM_G2(MGM_W2,MGM_W1,MGM_W0);


	not MGM_G3(MGM_W3,RB$delay);


	and MGM_G4(ENABLE_NOT_D_AND_NOT_E_AND_NOT_RB,MGM_W3,MGM_W2);


	not MGM_G5(MGM_W4,D$delay);


	and MGM_G6(MGM_W5,E$delay,MGM_W4);


	not MGM_G7(MGM_W6,RB$delay);


	and MGM_G8(ENABLE_NOT_D_AND_E_AND_NOT_RB,MGM_W6,MGM_W5);


	not MGM_G9(MGM_W7,D$delay);


	and MGM_G10(MGM_W8,E$delay,MGM_W7);


	and MGM_G11(ENABLE_NOT_D_AND_E_AND_RB,RB$delay,MGM_W8);


	not MGM_G12(MGM_W9,E$delay);


	and MGM_G13(MGM_W10,MGM_W9,D$delay);


	not MGM_G14(MGM_W11,RB$delay);


	and MGM_G15(ENABLE_D_AND_NOT_E_AND_NOT_RB,MGM_W11,MGM_W10);


	and MGM_G16(MGM_W12,E$delay,D$delay);


	not MGM_G17(MGM_W13,RB$delay);


	and MGM_G18(ENABLE_D_AND_E_AND_NOT_RB,MGM_W13,MGM_W12);


	and MGM_G19(MGM_W14,E$delay,D$delay);


	and MGM_G20(ENABLE_D_AND_E_AND_RB,RB$delay,MGM_W14);


	and MGM_G21(ENABLE_E_AND_RB,RB$delay,E$delay);


	not MGM_G22(MGM_W15,D$delay);


	and MGM_G23(ENABLE_NOT_D_AND_RB,RB$delay,MGM_W15);


	and MGM_G24(ENABLE_D_AND_RB,RB$delay,D$delay);


	not MGM_G25(MGM_W16,D$delay);


	not MGM_G26(MGM_W17,E$delay);


	and MGM_G27(ENABLE_NOT_D_AND_NOT_E,MGM_W17,MGM_W16);


	not MGM_G28(MGM_W18,E$delay);


	and MGM_G29(ENABLE_D_AND_NOT_E,MGM_W18,D$delay);


	and MGM_G30(ENABLE_D_AND_E,E$delay,D$delay);


	// spec_gates_end



   specify

	// specify_block_begin 

	// seq arc CK --> Q
	(posedge CK => (Q : D))  = (1.0,1.0);

	// seq arc CK --> QB
	(posedge CK => (QB : D))  = (1.0,1.0);

	$width(negedge CK &&& (ENABLE_NOT_D_AND_NOT_E_AND_NOT_RB === 1'b1)
		,1.0,0,notifier);

	$width(posedge CK &&& (ENABLE_NOT_D_AND_NOT_E_AND_NOT_RB === 1'b1)
		,1.0,0,notifier);

	$width(negedge CK &&& (ENABLE_NOT_D_AND_E_AND_NOT_RB === 1'b1)
		,1.0,0,notifier);

	$width(posedge CK &&& (ENABLE_NOT_D_AND_E_AND_NOT_RB === 1'b1)
		,1.0,0,notifier);

	$width(negedge CK &&& (ENABLE_NOT_D_AND_E_AND_RB === 1'b1)
		,1.0,0,notifier);

	$width(posedge CK &&& (ENABLE_NOT_D_AND_E_AND_RB === 1'b1)
		,1.0,0,notifier);

	$width(negedge CK &&& (ENABLE_D_AND_NOT_E_AND_NOT_RB === 1'b1)
		,1.0,0,notifier);

	$width(posedge CK &&& (ENABLE_D_AND_NOT_E_AND_NOT_RB === 1'b1)
		,1.0,0,notifier);

	$width(negedge CK &&& (ENABLE_D_AND_E_AND_NOT_RB === 1'b1)
		,1.0,0,notifier);

	$width(posedge CK &&& (ENABLE_D_AND_E_AND_NOT_RB === 1'b1)
		,1.0,0,notifier);

	$width(negedge CK &&& (ENABLE_D_AND_E_AND_RB === 1'b1)
		,1.0,0,notifier);

	$width(posedge CK &&& (ENABLE_D_AND_E_AND_RB === 1'b1)
		,1.0,0,notifier);

	// setuphold D- CK-LH
	$setuphold(posedge CK &&& (ENABLE_E_AND_RB === 1'b1),
		posedge D &&& (ENABLE_E_AND_RB === 1'b1),
		1.0,1.0,notifier,,,CK$delay,D$delay);

	// setuphold D- CK-LH
	$setuphold(posedge CK &&& (ENABLE_E_AND_RB === 1'b1),
		negedge D &&& (ENABLE_E_AND_RB === 1'b1),
		1.0,1.0,notifier,,,CK$delay,D$delay);

	// setuphold E- CK-LH
	$setuphold(posedge CK &&& (ENABLE_NOT_D_AND_RB === 1'b1),
		posedge E &&& (ENABLE_NOT_D_AND_RB === 1'b1),
		1.0,1.0,notifier,,,CK$delay,E$delay);

	// setuphold E- CK-LH
	$setuphold(posedge CK &&& (ENABLE_NOT_D_AND_RB === 1'b1),
		negedge E &&& (ENABLE_NOT_D_AND_RB === 1'b1),
		1.0,1.0,notifier,,,CK$delay,E$delay);

	// setuphold E- CK-LH
	$setuphold(posedge CK &&& (ENABLE_D_AND_RB === 1'b1),
		posedge E &&& (ENABLE_D_AND_RB === 1'b1),
		1.0,1.0,notifier,,,CK$delay,E$delay);

	// setuphold E- CK-LH
	$setuphold(posedge CK &&& (ENABLE_D_AND_RB === 1'b1),
		negedge E &&& (ENABLE_D_AND_RB === 1'b1),
		1.0,1.0,notifier,,,CK$delay,E$delay);

	// setuphold RB- CK-LH
	$setuphold(posedge CK &&& (ENABLE_NOT_D_AND_NOT_E === 1'b1),
		posedge RB &&& (ENABLE_NOT_D_AND_NOT_E === 1'b1),
		1.0,1.0,notifier,,,CK$delay,RB$delay);

	// setuphold RB- CK-LH
	$setuphold(posedge CK &&& (ENABLE_NOT_D_AND_NOT_E === 1'b1),
		negedge RB &&& (ENABLE_NOT_D_AND_NOT_E === 1'b1),
		1.0,1.0,notifier,,,CK$delay,RB$delay);

	// setuphold RB- CK-LH
	$setuphold(posedge CK &&& (ENABLE_D_AND_NOT_E === 1'b1),
		posedge RB &&& (ENABLE_D_AND_NOT_E === 1'b1),
		1.0,1.0,notifier,,,CK$delay,RB$delay);

	// setuphold RB- CK-LH
	$setuphold(posedge CK &&& (ENABLE_D_AND_NOT_E === 1'b1),
		negedge RB &&& (ENABLE_D_AND_NOT_E === 1'b1),
		1.0,1.0,notifier,,,CK$delay,RB$delay);

	// setuphold RB- CK-LH
	$setuphold(posedge CK &&& (ENABLE_D_AND_E === 1'b1),
		posedge RB &&& (ENABLE_D_AND_E === 1'b1),
		1.0,1.0,notifier,,,CK$delay,RB$delay);

	// setuphold RB- CK-LH
	$setuphold(posedge CK &&& (ENABLE_D_AND_E === 1'b1),
		negedge RB &&& (ENABLE_D_AND_E === 1'b1),
		1.0,1.0,notifier,,,CK$delay,RB$delay);

	// mpw CK_lh 
	$width(posedge CK,1.0,0,notifier);

	// mpw CK_hl 
	$width(negedge CK,1.0,0,notifier);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module DFEZRM8HM( Q, QB, CK, D, E, RB , VDD, VSS);
inout VDD;
inout VSS;
input CK, D, E, RB;
output Q, QB;
reg notifier;

   `ifdef FUNCTIONAL  //  functional //

	DFEZRM8HM_func DFEZRM8HM_behav_inst(.Q(Q),.QB(QB),.CK(CK),.D(D),.E(E),.RB(RB),.notifier(notifier),.VDD(VDD),.VSS(VSS));

   `else

	wire CK$delay ;

	wire D$delay ;

	wire E$delay ;

	wire RB$delay ;

	DFEZRM8HM_func DFEZRM8HM_inst(.Q(Q),.QB(QB),.CK(CK$delay),.D(D$delay),.E(E$delay),.RB(RB$delay),.notifier(notifier),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	not MGM_G0(MGM_W0,D$delay);


	not MGM_G1(MGM_W1,E$delay);


	and MGM_G2(MGM_W2,MGM_W1,MGM_W0);


	not MGM_G3(MGM_W3,RB$delay);


	and MGM_G4(ENABLE_NOT_D_AND_NOT_E_AND_NOT_RB,MGM_W3,MGM_W2);


	not MGM_G5(MGM_W4,D$delay);


	and MGM_G6(MGM_W5,E$delay,MGM_W4);


	not MGM_G7(MGM_W6,RB$delay);


	and MGM_G8(ENABLE_NOT_D_AND_E_AND_NOT_RB,MGM_W6,MGM_W5);


	not MGM_G9(MGM_W7,D$delay);


	and MGM_G10(MGM_W8,E$delay,MGM_W7);


	and MGM_G11(ENABLE_NOT_D_AND_E_AND_RB,RB$delay,MGM_W8);


	not MGM_G12(MGM_W9,E$delay);


	and MGM_G13(MGM_W10,MGM_W9,D$delay);


	not MGM_G14(MGM_W11,RB$delay);


	and MGM_G15(ENABLE_D_AND_NOT_E_AND_NOT_RB,MGM_W11,MGM_W10);


	and MGM_G16(MGM_W12,E$delay,D$delay);


	not MGM_G17(MGM_W13,RB$delay);


	and MGM_G18(ENABLE_D_AND_E_AND_NOT_RB,MGM_W13,MGM_W12);


	and MGM_G19(MGM_W14,E$delay,D$delay);


	and MGM_G20(ENABLE_D_AND_E_AND_RB,RB$delay,MGM_W14);


	and MGM_G21(ENABLE_E_AND_RB,RB$delay,E$delay);


	not MGM_G22(MGM_W15,D$delay);


	and MGM_G23(ENABLE_NOT_D_AND_RB,RB$delay,MGM_W15);


	and MGM_G24(ENABLE_D_AND_RB,RB$delay,D$delay);


	not MGM_G25(MGM_W16,D$delay);


	not MGM_G26(MGM_W17,E$delay);


	and MGM_G27(ENABLE_NOT_D_AND_NOT_E,MGM_W17,MGM_W16);


	not MGM_G28(MGM_W18,E$delay);


	and MGM_G29(ENABLE_D_AND_NOT_E,MGM_W18,D$delay);


	and MGM_G30(ENABLE_D_AND_E,E$delay,D$delay);


	// spec_gates_end



   specify

	// specify_block_begin 

	// seq arc CK --> Q
	(posedge CK => (Q : D))  = (1.0,1.0);

	// seq arc CK --> QB
	(posedge CK => (QB : D))  = (1.0,1.0);

	$width(negedge CK &&& (ENABLE_NOT_D_AND_NOT_E_AND_NOT_RB === 1'b1)
		,1.0,0,notifier);

	$width(posedge CK &&& (ENABLE_NOT_D_AND_NOT_E_AND_NOT_RB === 1'b1)
		,1.0,0,notifier);

	$width(negedge CK &&& (ENABLE_NOT_D_AND_E_AND_NOT_RB === 1'b1)
		,1.0,0,notifier);

	$width(posedge CK &&& (ENABLE_NOT_D_AND_E_AND_NOT_RB === 1'b1)
		,1.0,0,notifier);

	$width(negedge CK &&& (ENABLE_NOT_D_AND_E_AND_RB === 1'b1)
		,1.0,0,notifier);

	$width(posedge CK &&& (ENABLE_NOT_D_AND_E_AND_RB === 1'b1)
		,1.0,0,notifier);

	$width(negedge CK &&& (ENABLE_D_AND_NOT_E_AND_NOT_RB === 1'b1)
		,1.0,0,notifier);

	$width(posedge CK &&& (ENABLE_D_AND_NOT_E_AND_NOT_RB === 1'b1)
		,1.0,0,notifier);

	$width(negedge CK &&& (ENABLE_D_AND_E_AND_NOT_RB === 1'b1)
		,1.0,0,notifier);

	$width(posedge CK &&& (ENABLE_D_AND_E_AND_NOT_RB === 1'b1)
		,1.0,0,notifier);

	$width(negedge CK &&& (ENABLE_D_AND_E_AND_RB === 1'b1)
		,1.0,0,notifier);

	$width(posedge CK &&& (ENABLE_D_AND_E_AND_RB === 1'b1)
		,1.0,0,notifier);

	// setuphold D- CK-LH
	$setuphold(posedge CK &&& (ENABLE_E_AND_RB === 1'b1),
		posedge D &&& (ENABLE_E_AND_RB === 1'b1),
		1.0,1.0,notifier,,,CK$delay,D$delay);

	// setuphold D- CK-LH
	$setuphold(posedge CK &&& (ENABLE_E_AND_RB === 1'b1),
		negedge D &&& (ENABLE_E_AND_RB === 1'b1),
		1.0,1.0,notifier,,,CK$delay,D$delay);

	// setuphold E- CK-LH
	$setuphold(posedge CK &&& (ENABLE_NOT_D_AND_RB === 1'b1),
		posedge E &&& (ENABLE_NOT_D_AND_RB === 1'b1),
		1.0,1.0,notifier,,,CK$delay,E$delay);

	// setuphold E- CK-LH
	$setuphold(posedge CK &&& (ENABLE_NOT_D_AND_RB === 1'b1),
		negedge E &&& (ENABLE_NOT_D_AND_RB === 1'b1),
		1.0,1.0,notifier,,,CK$delay,E$delay);

	// setuphold E- CK-LH
	$setuphold(posedge CK &&& (ENABLE_D_AND_RB === 1'b1),
		posedge E &&& (ENABLE_D_AND_RB === 1'b1),
		1.0,1.0,notifier,,,CK$delay,E$delay);

	// setuphold E- CK-LH
	$setuphold(posedge CK &&& (ENABLE_D_AND_RB === 1'b1),
		negedge E &&& (ENABLE_D_AND_RB === 1'b1),
		1.0,1.0,notifier,,,CK$delay,E$delay);

	// setuphold RB- CK-LH
	$setuphold(posedge CK &&& (ENABLE_NOT_D_AND_NOT_E === 1'b1),
		posedge RB &&& (ENABLE_NOT_D_AND_NOT_E === 1'b1),
		1.0,1.0,notifier,,,CK$delay,RB$delay);

	// setuphold RB- CK-LH
	$setuphold(posedge CK &&& (ENABLE_NOT_D_AND_NOT_E === 1'b1),
		negedge RB &&& (ENABLE_NOT_D_AND_NOT_E === 1'b1),
		1.0,1.0,notifier,,,CK$delay,RB$delay);

	// setuphold RB- CK-LH
	$setuphold(posedge CK &&& (ENABLE_D_AND_NOT_E === 1'b1),
		posedge RB &&& (ENABLE_D_AND_NOT_E === 1'b1),
		1.0,1.0,notifier,,,CK$delay,RB$delay);

	// setuphold RB- CK-LH
	$setuphold(posedge CK &&& (ENABLE_D_AND_NOT_E === 1'b1),
		negedge RB &&& (ENABLE_D_AND_NOT_E === 1'b1),
		1.0,1.0,notifier,,,CK$delay,RB$delay);

	// setuphold RB- CK-LH
	$setuphold(posedge CK &&& (ENABLE_D_AND_E === 1'b1),
		posedge RB &&& (ENABLE_D_AND_E === 1'b1),
		1.0,1.0,notifier,,,CK$delay,RB$delay);

	// setuphold RB- CK-LH
	$setuphold(posedge CK &&& (ENABLE_D_AND_E === 1'b1),
		negedge RB &&& (ENABLE_D_AND_E === 1'b1),
		1.0,1.0,notifier,,,CK$delay,RB$delay);

	// mpw CK_lh 
	$width(posedge CK,1.0,0,notifier);

	// mpw CK_hl 
	$width(negedge CK,1.0,0,notifier);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module DFM1HM( Q, QB, CK, D , VDD, VSS);
inout VDD;
inout VSS;
input CK, D;
output Q, QB;
reg notifier;

   `ifdef FUNCTIONAL  //  functional //

	DFM1HM_func DFM1HM_behav_inst(.Q(Q),.QB(QB),.CK(CK),.D(D),.notifier(notifier),.VDD(VDD),.VSS(VSS));

   `else

	wire CK$delay ;

	wire D$delay ;

	DFM1HM_func DFM1HM_inst(.Q(Q),.QB(QB),.CK(CK$delay),.D(D$delay),.notifier(notifier),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	not MGM_G0(ENABLE_NOT_D,D$delay);


	buf MGM_G1(ENABLE_D,D$delay);


	// spec_gates_end



   specify

	// specify_block_begin 

	// seq arc CK --> Q
	(posedge CK => (Q : D))  = (1.0,1.0);

	// seq arc CK --> QB
	(posedge CK => (QB : D))  = (1.0,1.0);

	$width(negedge CK &&& (ENABLE_NOT_D === 1'b1)
		,1.0,0,notifier);

	$width(posedge CK &&& (ENABLE_NOT_D === 1'b1)
		,1.0,0,notifier);

	$width(negedge CK &&& (ENABLE_D === 1'b1)
		,1.0,0,notifier);

	$width(posedge CK &&& (ENABLE_D === 1'b1)
		,1.0,0,notifier);

	// setuphold D- CK-LH
	$setuphold(posedge CK,posedge D,1.0,1.0,notifier,,,CK$delay,D$delay);

	// setuphold D- CK-LH
	$setuphold(posedge CK,negedge D,1.0,1.0,notifier,,,CK$delay,D$delay);

	// mpw CK_lh 
	$width(posedge CK,1.0,0,notifier);

	// mpw CK_hl 
	$width(negedge CK,1.0,0,notifier);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module DFM2HM( Q, QB, CK, D , VDD, VSS);
inout VDD;
inout VSS;
input CK, D;
output Q, QB;
reg notifier;

   `ifdef FUNCTIONAL  //  functional //

	DFM2HM_func DFM2HM_behav_inst(.Q(Q),.QB(QB),.CK(CK),.D(D),.notifier(notifier),.VDD(VDD),.VSS(VSS));

   `else

	wire CK$delay ;

	wire D$delay ;

	DFM2HM_func DFM2HM_inst(.Q(Q),.QB(QB),.CK(CK$delay),.D(D$delay),.notifier(notifier),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	not MGM_G0(ENABLE_NOT_D,D$delay);


	buf MGM_G1(ENABLE_D,D$delay);


	// spec_gates_end



   specify

	// specify_block_begin 

	// seq arc CK --> Q
	(posedge CK => (Q : D))  = (1.0,1.0);

	// seq arc CK --> QB
	(posedge CK => (QB : D))  = (1.0,1.0);

	$width(negedge CK &&& (ENABLE_NOT_D === 1'b1)
		,1.0,0,notifier);

	$width(posedge CK &&& (ENABLE_NOT_D === 1'b1)
		,1.0,0,notifier);

	$width(negedge CK &&& (ENABLE_D === 1'b1)
		,1.0,0,notifier);

	$width(posedge CK &&& (ENABLE_D === 1'b1)
		,1.0,0,notifier);

	// setuphold D- CK-LH
	$setuphold(posedge CK,posedge D,1.0,1.0,notifier,,,CK$delay,D$delay);

	// setuphold D- CK-LH
	$setuphold(posedge CK,negedge D,1.0,1.0,notifier,,,CK$delay,D$delay);

	// mpw CK_lh 
	$width(posedge CK,1.0,0,notifier);

	// mpw CK_hl 
	$width(negedge CK,1.0,0,notifier);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module DFM4HM( Q, QB, CK, D , VDD, VSS);
inout VDD;
inout VSS;
input CK, D;
output Q, QB;
reg notifier;

   `ifdef FUNCTIONAL  //  functional //

	DFM4HM_func DFM4HM_behav_inst(.Q(Q),.QB(QB),.CK(CK),.D(D),.notifier(notifier),.VDD(VDD),.VSS(VSS));

   `else

	wire CK$delay ;

	wire D$delay ;

	DFM4HM_func DFM4HM_inst(.Q(Q),.QB(QB),.CK(CK$delay),.D(D$delay),.notifier(notifier),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	not MGM_G0(ENABLE_NOT_D,D$delay);


	buf MGM_G1(ENABLE_D,D$delay);


	// spec_gates_end



   specify

	// specify_block_begin 

	// seq arc CK --> Q
	(posedge CK => (Q : D))  = (1.0,1.0);

	// seq arc CK --> QB
	(posedge CK => (QB : D))  = (1.0,1.0);

	$width(negedge CK &&& (ENABLE_NOT_D === 1'b1)
		,1.0,0,notifier);

	$width(posedge CK &&& (ENABLE_NOT_D === 1'b1)
		,1.0,0,notifier);

	$width(negedge CK &&& (ENABLE_D === 1'b1)
		,1.0,0,notifier);

	$width(posedge CK &&& (ENABLE_D === 1'b1)
		,1.0,0,notifier);

	// setuphold D- CK-LH
	$setuphold(posedge CK,posedge D,1.0,1.0,notifier,,,CK$delay,D$delay);

	// setuphold D- CK-LH
	$setuphold(posedge CK,negedge D,1.0,1.0,notifier,,,CK$delay,D$delay);

	// mpw CK_lh 
	$width(posedge CK,1.0,0,notifier);

	// mpw CK_hl 
	$width(negedge CK,1.0,0,notifier);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module DFM8HM( Q, QB, CK, D , VDD, VSS);
inout VDD;
inout VSS;
input CK, D;
output Q, QB;
reg notifier;

   `ifdef FUNCTIONAL  //  functional //

	DFM8HM_func DFM8HM_behav_inst(.Q(Q),.QB(QB),.CK(CK),.D(D),.notifier(notifier),.VDD(VDD),.VSS(VSS));

   `else

	wire CK$delay ;

	wire D$delay ;

	DFM8HM_func DFM8HM_inst(.Q(Q),.QB(QB),.CK(CK$delay),.D(D$delay),.notifier(notifier),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	not MGM_G0(ENABLE_NOT_D,D$delay);


	buf MGM_G1(ENABLE_D,D$delay);


	// spec_gates_end



   specify

	// specify_block_begin 

	// seq arc CK --> Q
	(posedge CK => (Q : D))  = (1.0,1.0);

	// seq arc CK --> QB
	(posedge CK => (QB : D))  = (1.0,1.0);

	$width(negedge CK &&& (ENABLE_NOT_D === 1'b1)
		,1.0,0,notifier);

	$width(posedge CK &&& (ENABLE_NOT_D === 1'b1)
		,1.0,0,notifier);

	$width(negedge CK &&& (ENABLE_D === 1'b1)
		,1.0,0,notifier);

	$width(posedge CK &&& (ENABLE_D === 1'b1)
		,1.0,0,notifier);

	// setuphold D- CK-LH
	$setuphold(posedge CK,posedge D,1.0,1.0,notifier,,,CK$delay,D$delay);

	// setuphold D- CK-LH
	$setuphold(posedge CK,negedge D,1.0,1.0,notifier,,,CK$delay,D$delay);

	// mpw CK_lh 
	$width(posedge CK,1.0,0,notifier);

	// mpw CK_hl 
	$width(negedge CK,1.0,0,notifier);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module DFMM1HM( Q, QB, CK, D1, D2, S , VDD, VSS);
inout VDD;
inout VSS;
input CK, D1, D2, S;
output Q, QB;
reg notifier;

   `ifdef FUNCTIONAL  //  functional //

	DFMM1HM_func DFMM1HM_behav_inst(.Q(Q),.QB(QB),.CK(CK),.D1(D1),.D2(D2),.S(S),.notifier(notifier),.VDD(VDD),.VSS(VSS));

   `else

	wire CK$delay ;

	wire D1$delay ;

	wire D2$delay ;

	wire S$delay ;

	DFMM1HM_func DFMM1HM_inst(.Q(Q),.QB(QB),.CK(CK$delay),.D1(D1$delay),.D2(D2$delay),.S(S$delay),.notifier(notifier),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	not MGM_G0(MGM_W0,D1$delay);


	not MGM_G1(MGM_W1,D2$delay);


	and MGM_G2(MGM_W2,MGM_W1,MGM_W0);


	not MGM_G3(MGM_W3,S$delay);


	and MGM_G4(ENABLE_NOT_D1_AND_NOT_D2_AND_NOT_S,MGM_W3,MGM_W2);


	not MGM_G5(MGM_W4,D1$delay);


	not MGM_G6(MGM_W5,D2$delay);


	and MGM_G7(MGM_W6,MGM_W5,MGM_W4);


	and MGM_G8(ENABLE_NOT_D1_AND_NOT_D2_AND_S,S$delay,MGM_W6);


	not MGM_G9(MGM_W7,D1$delay);


	and MGM_G10(MGM_W8,D2$delay,MGM_W7);


	not MGM_G11(MGM_W9,S$delay);


	and MGM_G12(ENABLE_NOT_D1_AND_D2_AND_NOT_S,MGM_W9,MGM_W8);


	not MGM_G13(MGM_W10,D1$delay);


	and MGM_G14(MGM_W11,D2$delay,MGM_W10);


	and MGM_G15(ENABLE_NOT_D1_AND_D2_AND_S,S$delay,MGM_W11);


	not MGM_G16(MGM_W12,D2$delay);


	and MGM_G17(MGM_W13,MGM_W12,D1$delay);


	not MGM_G18(MGM_W14,S$delay);


	and MGM_G19(ENABLE_D1_AND_NOT_D2_AND_NOT_S,MGM_W14,MGM_W13);


	not MGM_G20(MGM_W15,D2$delay);


	and MGM_G21(MGM_W16,MGM_W15,D1$delay);


	and MGM_G22(ENABLE_D1_AND_NOT_D2_AND_S,S$delay,MGM_W16);


	and MGM_G23(MGM_W17,D2$delay,D1$delay);


	not MGM_G24(MGM_W18,S$delay);


	and MGM_G25(ENABLE_D1_AND_D2_AND_NOT_S,MGM_W18,MGM_W17);


	and MGM_G26(MGM_W19,D2$delay,D1$delay);


	and MGM_G27(ENABLE_D1_AND_D2_AND_S,S$delay,MGM_W19);


	not MGM_G28(MGM_W20,D2$delay);


	and MGM_G29(ENABLE_NOT_D2_AND_S,S$delay,MGM_W20);


	and MGM_G30(ENABLE_D2_AND_S,S$delay,D2$delay);


	not MGM_G31(MGM_W21,D1$delay);


	not MGM_G32(MGM_W22,S$delay);


	and MGM_G33(ENABLE_NOT_D1_AND_NOT_S,MGM_W22,MGM_W21);


	not MGM_G34(MGM_W23,S$delay);


	and MGM_G35(ENABLE_D1_AND_NOT_S,MGM_W23,D1$delay);


	not MGM_G36(MGM_W24,D1$delay);


	and MGM_G37(ENABLE_NOT_D1_AND_D2,D2$delay,MGM_W24);


	not MGM_G38(MGM_W25,D2$delay);


	and MGM_G39(ENABLE_D1_AND_NOT_D2,MGM_W25,D1$delay);


	// spec_gates_end



   specify

	// specify_block_begin 

	// seq arc CK --> Q
	(posedge CK => (Q : D1))  = (1.0,1.0);

	// seq arc CK --> QB
	(posedge CK => (QB : D1))  = (1.0,1.0);

	$width(negedge CK &&& (ENABLE_NOT_D1_AND_NOT_D2_AND_NOT_S === 1'b1)
		,1.0,0,notifier);

	$width(posedge CK &&& (ENABLE_NOT_D1_AND_NOT_D2_AND_NOT_S === 1'b1)
		,1.0,0,notifier);

	$width(negedge CK &&& (ENABLE_NOT_D1_AND_NOT_D2_AND_S === 1'b1)
		,1.0,0,notifier);

	$width(posedge CK &&& (ENABLE_NOT_D1_AND_NOT_D2_AND_S === 1'b1)
		,1.0,0,notifier);

	$width(negedge CK &&& (ENABLE_NOT_D1_AND_D2_AND_NOT_S === 1'b1)
		,1.0,0,notifier);

	$width(posedge CK &&& (ENABLE_NOT_D1_AND_D2_AND_NOT_S === 1'b1)
		,1.0,0,notifier);

	$width(negedge CK &&& (ENABLE_NOT_D1_AND_D2_AND_S === 1'b1)
		,1.0,0,notifier);

	$width(posedge CK &&& (ENABLE_NOT_D1_AND_D2_AND_S === 1'b1)
		,1.0,0,notifier);

	$width(negedge CK &&& (ENABLE_D1_AND_NOT_D2_AND_NOT_S === 1'b1)
		,1.0,0,notifier);

	$width(posedge CK &&& (ENABLE_D1_AND_NOT_D2_AND_NOT_S === 1'b1)
		,1.0,0,notifier);

	$width(negedge CK &&& (ENABLE_D1_AND_NOT_D2_AND_S === 1'b1)
		,1.0,0,notifier);

	$width(posedge CK &&& (ENABLE_D1_AND_NOT_D2_AND_S === 1'b1)
		,1.0,0,notifier);

	$width(negedge CK &&& (ENABLE_D1_AND_D2_AND_NOT_S === 1'b1)
		,1.0,0,notifier);

	$width(posedge CK &&& (ENABLE_D1_AND_D2_AND_NOT_S === 1'b1)
		,1.0,0,notifier);

	$width(negedge CK &&& (ENABLE_D1_AND_D2_AND_S === 1'b1)
		,1.0,0,notifier);

	$width(posedge CK &&& (ENABLE_D1_AND_D2_AND_S === 1'b1)
		,1.0,0,notifier);

	// setuphold D1- CK-LH
	$setuphold(posedge CK &&& (ENABLE_NOT_D2_AND_S === 1'b1),
		posedge D1 &&& (ENABLE_NOT_D2_AND_S === 1'b1),
		1.0,1.0,notifier,,,CK$delay,D1$delay);

	// setuphold D1- CK-LH
	$setuphold(posedge CK &&& (ENABLE_NOT_D2_AND_S === 1'b1),
		negedge D1 &&& (ENABLE_NOT_D2_AND_S === 1'b1),
		1.0,1.0,notifier,,,CK$delay,D1$delay);

	// setuphold D1- CK-LH
	$setuphold(posedge CK &&& (ENABLE_D2_AND_S === 1'b1),
		posedge D1 &&& (ENABLE_D2_AND_S === 1'b1),
		1.0,1.0,notifier,,,CK$delay,D1$delay);

	// setuphold D1- CK-LH
	$setuphold(posedge CK &&& (ENABLE_D2_AND_S === 1'b1),
		negedge D1 &&& (ENABLE_D2_AND_S === 1'b1),
		1.0,1.0,notifier,,,CK$delay,D1$delay);

	// setuphold D2- CK-LH
	$setuphold(posedge CK &&& (ENABLE_NOT_D1_AND_NOT_S === 1'b1),
		posedge D2 &&& (ENABLE_NOT_D1_AND_NOT_S === 1'b1),
		1.0,1.0,notifier,,,CK$delay,D2$delay);

	// setuphold D2- CK-LH
	$setuphold(posedge CK &&& (ENABLE_NOT_D1_AND_NOT_S === 1'b1),
		negedge D2 &&& (ENABLE_NOT_D1_AND_NOT_S === 1'b1),
		1.0,1.0,notifier,,,CK$delay,D2$delay);

	// setuphold D2- CK-LH
	$setuphold(posedge CK &&& (ENABLE_D1_AND_NOT_S === 1'b1),
		posedge D2 &&& (ENABLE_D1_AND_NOT_S === 1'b1),
		1.0,1.0,notifier,,,CK$delay,D2$delay);

	// setuphold D2- CK-LH
	$setuphold(posedge CK &&& (ENABLE_D1_AND_NOT_S === 1'b1),
		negedge D2 &&& (ENABLE_D1_AND_NOT_S === 1'b1),
		1.0,1.0,notifier,,,CK$delay,D2$delay);

	// setuphold S- CK-LH
	$setuphold(posedge CK &&& (ENABLE_NOT_D1_AND_D2 === 1'b1),
		posedge S &&& (ENABLE_NOT_D1_AND_D2 === 1'b1),
		1.0,1.0,notifier,,,CK$delay,S$delay);

	// setuphold S- CK-LH
	$setuphold(posedge CK &&& (ENABLE_NOT_D1_AND_D2 === 1'b1),
		negedge S &&& (ENABLE_NOT_D1_AND_D2 === 1'b1),
		1.0,1.0,notifier,,,CK$delay,S$delay);

	// setuphold S- CK-LH
	$setuphold(posedge CK &&& (ENABLE_D1_AND_NOT_D2 === 1'b1),
		posedge S &&& (ENABLE_D1_AND_NOT_D2 === 1'b1),
		1.0,1.0,notifier,,,CK$delay,S$delay);

	// setuphold S- CK-LH
	$setuphold(posedge CK &&& (ENABLE_D1_AND_NOT_D2 === 1'b1),
		negedge S &&& (ENABLE_D1_AND_NOT_D2 === 1'b1),
		1.0,1.0,notifier,,,CK$delay,S$delay);

	// mpw CK_lh 
	$width(posedge CK,1.0,0,notifier);

	// mpw CK_hl 
	$width(negedge CK,1.0,0,notifier);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module DFMM2HM( Q, QB, CK, D1, D2, S , VDD, VSS);
inout VDD;
inout VSS;
input CK, D1, D2, S;
output Q, QB;
reg notifier;

   `ifdef FUNCTIONAL  //  functional //

	DFMM2HM_func DFMM2HM_behav_inst(.Q(Q),.QB(QB),.CK(CK),.D1(D1),.D2(D2),.S(S),.notifier(notifier),.VDD(VDD),.VSS(VSS));

   `else

	wire CK$delay ;

	wire D1$delay ;

	wire D2$delay ;

	wire S$delay ;

	DFMM2HM_func DFMM2HM_inst(.Q(Q),.QB(QB),.CK(CK$delay),.D1(D1$delay),.D2(D2$delay),.S(S$delay),.notifier(notifier),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	not MGM_G0(MGM_W0,D1$delay);


	not MGM_G1(MGM_W1,D2$delay);


	and MGM_G2(MGM_W2,MGM_W1,MGM_W0);


	not MGM_G3(MGM_W3,S$delay);


	and MGM_G4(ENABLE_NOT_D1_AND_NOT_D2_AND_NOT_S,MGM_W3,MGM_W2);


	not MGM_G5(MGM_W4,D1$delay);


	not MGM_G6(MGM_W5,D2$delay);


	and MGM_G7(MGM_W6,MGM_W5,MGM_W4);


	and MGM_G8(ENABLE_NOT_D1_AND_NOT_D2_AND_S,S$delay,MGM_W6);


	not MGM_G9(MGM_W7,D1$delay);


	and MGM_G10(MGM_W8,D2$delay,MGM_W7);


	not MGM_G11(MGM_W9,S$delay);


	and MGM_G12(ENABLE_NOT_D1_AND_D2_AND_NOT_S,MGM_W9,MGM_W8);


	not MGM_G13(MGM_W10,D1$delay);


	and MGM_G14(MGM_W11,D2$delay,MGM_W10);


	and MGM_G15(ENABLE_NOT_D1_AND_D2_AND_S,S$delay,MGM_W11);


	not MGM_G16(MGM_W12,D2$delay);


	and MGM_G17(MGM_W13,MGM_W12,D1$delay);


	not MGM_G18(MGM_W14,S$delay);


	and MGM_G19(ENABLE_D1_AND_NOT_D2_AND_NOT_S,MGM_W14,MGM_W13);


	not MGM_G20(MGM_W15,D2$delay);


	and MGM_G21(MGM_W16,MGM_W15,D1$delay);


	and MGM_G22(ENABLE_D1_AND_NOT_D2_AND_S,S$delay,MGM_W16);


	and MGM_G23(MGM_W17,D2$delay,D1$delay);


	not MGM_G24(MGM_W18,S$delay);


	and MGM_G25(ENABLE_D1_AND_D2_AND_NOT_S,MGM_W18,MGM_W17);


	and MGM_G26(MGM_W19,D2$delay,D1$delay);


	and MGM_G27(ENABLE_D1_AND_D2_AND_S,S$delay,MGM_W19);


	not MGM_G28(MGM_W20,D2$delay);


	and MGM_G29(ENABLE_NOT_D2_AND_S,S$delay,MGM_W20);


	and MGM_G30(ENABLE_D2_AND_S,S$delay,D2$delay);


	not MGM_G31(MGM_W21,D1$delay);


	not MGM_G32(MGM_W22,S$delay);


	and MGM_G33(ENABLE_NOT_D1_AND_NOT_S,MGM_W22,MGM_W21);


	not MGM_G34(MGM_W23,S$delay);


	and MGM_G35(ENABLE_D1_AND_NOT_S,MGM_W23,D1$delay);


	not MGM_G36(MGM_W24,D1$delay);


	and MGM_G37(ENABLE_NOT_D1_AND_D2,D2$delay,MGM_W24);


	not MGM_G38(MGM_W25,D2$delay);


	and MGM_G39(ENABLE_D1_AND_NOT_D2,MGM_W25,D1$delay);


	// spec_gates_end



   specify

	// specify_block_begin 

	// seq arc CK --> Q
	(posedge CK => (Q : D1))  = (1.0,1.0);

	// seq arc CK --> QB
	(posedge CK => (QB : D1))  = (1.0,1.0);

	$width(negedge CK &&& (ENABLE_NOT_D1_AND_NOT_D2_AND_NOT_S === 1'b1)
		,1.0,0,notifier);

	$width(posedge CK &&& (ENABLE_NOT_D1_AND_NOT_D2_AND_NOT_S === 1'b1)
		,1.0,0,notifier);

	$width(negedge CK &&& (ENABLE_NOT_D1_AND_NOT_D2_AND_S === 1'b1)
		,1.0,0,notifier);

	$width(posedge CK &&& (ENABLE_NOT_D1_AND_NOT_D2_AND_S === 1'b1)
		,1.0,0,notifier);

	$width(negedge CK &&& (ENABLE_NOT_D1_AND_D2_AND_NOT_S === 1'b1)
		,1.0,0,notifier);

	$width(posedge CK &&& (ENABLE_NOT_D1_AND_D2_AND_NOT_S === 1'b1)
		,1.0,0,notifier);

	$width(negedge CK &&& (ENABLE_NOT_D1_AND_D2_AND_S === 1'b1)
		,1.0,0,notifier);

	$width(posedge CK &&& (ENABLE_NOT_D1_AND_D2_AND_S === 1'b1)
		,1.0,0,notifier);

	$width(negedge CK &&& (ENABLE_D1_AND_NOT_D2_AND_NOT_S === 1'b1)
		,1.0,0,notifier);

	$width(posedge CK &&& (ENABLE_D1_AND_NOT_D2_AND_NOT_S === 1'b1)
		,1.0,0,notifier);

	$width(negedge CK &&& (ENABLE_D1_AND_NOT_D2_AND_S === 1'b1)
		,1.0,0,notifier);

	$width(posedge CK &&& (ENABLE_D1_AND_NOT_D2_AND_S === 1'b1)
		,1.0,0,notifier);

	$width(negedge CK &&& (ENABLE_D1_AND_D2_AND_NOT_S === 1'b1)
		,1.0,0,notifier);

	$width(posedge CK &&& (ENABLE_D1_AND_D2_AND_NOT_S === 1'b1)
		,1.0,0,notifier);

	$width(negedge CK &&& (ENABLE_D1_AND_D2_AND_S === 1'b1)
		,1.0,0,notifier);

	$width(posedge CK &&& (ENABLE_D1_AND_D2_AND_S === 1'b1)
		,1.0,0,notifier);

	// setuphold D1- CK-LH
	$setuphold(posedge CK &&& (ENABLE_NOT_D2_AND_S === 1'b1),
		posedge D1 &&& (ENABLE_NOT_D2_AND_S === 1'b1),
		1.0,1.0,notifier,,,CK$delay,D1$delay);

	// setuphold D1- CK-LH
	$setuphold(posedge CK &&& (ENABLE_NOT_D2_AND_S === 1'b1),
		negedge D1 &&& (ENABLE_NOT_D2_AND_S === 1'b1),
		1.0,1.0,notifier,,,CK$delay,D1$delay);

	// setuphold D1- CK-LH
	$setuphold(posedge CK &&& (ENABLE_D2_AND_S === 1'b1),
		posedge D1 &&& (ENABLE_D2_AND_S === 1'b1),
		1.0,1.0,notifier,,,CK$delay,D1$delay);

	// setuphold D1- CK-LH
	$setuphold(posedge CK &&& (ENABLE_D2_AND_S === 1'b1),
		negedge D1 &&& (ENABLE_D2_AND_S === 1'b1),
		1.0,1.0,notifier,,,CK$delay,D1$delay);

	// setuphold D2- CK-LH
	$setuphold(posedge CK &&& (ENABLE_NOT_D1_AND_NOT_S === 1'b1),
		posedge D2 &&& (ENABLE_NOT_D1_AND_NOT_S === 1'b1),
		1.0,1.0,notifier,,,CK$delay,D2$delay);

	// setuphold D2- CK-LH
	$setuphold(posedge CK &&& (ENABLE_NOT_D1_AND_NOT_S === 1'b1),
		negedge D2 &&& (ENABLE_NOT_D1_AND_NOT_S === 1'b1),
		1.0,1.0,notifier,,,CK$delay,D2$delay);

	// setuphold D2- CK-LH
	$setuphold(posedge CK &&& (ENABLE_D1_AND_NOT_S === 1'b1),
		posedge D2 &&& (ENABLE_D1_AND_NOT_S === 1'b1),
		1.0,1.0,notifier,,,CK$delay,D2$delay);

	// setuphold D2- CK-LH
	$setuphold(posedge CK &&& (ENABLE_D1_AND_NOT_S === 1'b1),
		negedge D2 &&& (ENABLE_D1_AND_NOT_S === 1'b1),
		1.0,1.0,notifier,,,CK$delay,D2$delay);

	// setuphold S- CK-LH
	$setuphold(posedge CK &&& (ENABLE_NOT_D1_AND_D2 === 1'b1),
		posedge S &&& (ENABLE_NOT_D1_AND_D2 === 1'b1),
		1.0,1.0,notifier,,,CK$delay,S$delay);

	// setuphold S- CK-LH
	$setuphold(posedge CK &&& (ENABLE_NOT_D1_AND_D2 === 1'b1),
		negedge S &&& (ENABLE_NOT_D1_AND_D2 === 1'b1),
		1.0,1.0,notifier,,,CK$delay,S$delay);

	// setuphold S- CK-LH
	$setuphold(posedge CK &&& (ENABLE_D1_AND_NOT_D2 === 1'b1),
		posedge S &&& (ENABLE_D1_AND_NOT_D2 === 1'b1),
		1.0,1.0,notifier,,,CK$delay,S$delay);

	// setuphold S- CK-LH
	$setuphold(posedge CK &&& (ENABLE_D1_AND_NOT_D2 === 1'b1),
		negedge S &&& (ENABLE_D1_AND_NOT_D2 === 1'b1),
		1.0,1.0,notifier,,,CK$delay,S$delay);

	// mpw CK_lh 
	$width(posedge CK,1.0,0,notifier);

	// mpw CK_hl 
	$width(negedge CK,1.0,0,notifier);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module DFMM4HM( Q, QB, CK, D1, D2, S , VDD, VSS);
inout VDD;
inout VSS;
input CK, D1, D2, S;
output Q, QB;
reg notifier;

   `ifdef FUNCTIONAL  //  functional //

	DFMM4HM_func DFMM4HM_behav_inst(.Q(Q),.QB(QB),.CK(CK),.D1(D1),.D2(D2),.S(S),.notifier(notifier),.VDD(VDD),.VSS(VSS));

   `else

	wire CK$delay ;

	wire D1$delay ;

	wire D2$delay ;

	wire S$delay ;

	DFMM4HM_func DFMM4HM_inst(.Q(Q),.QB(QB),.CK(CK$delay),.D1(D1$delay),.D2(D2$delay),.S(S$delay),.notifier(notifier),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	not MGM_G0(MGM_W0,D1$delay);


	not MGM_G1(MGM_W1,D2$delay);


	and MGM_G2(MGM_W2,MGM_W1,MGM_W0);


	not MGM_G3(MGM_W3,S$delay);


	and MGM_G4(ENABLE_NOT_D1_AND_NOT_D2_AND_NOT_S,MGM_W3,MGM_W2);


	not MGM_G5(MGM_W4,D1$delay);


	not MGM_G6(MGM_W5,D2$delay);


	and MGM_G7(MGM_W6,MGM_W5,MGM_W4);


	and MGM_G8(ENABLE_NOT_D1_AND_NOT_D2_AND_S,S$delay,MGM_W6);


	not MGM_G9(MGM_W7,D1$delay);


	and MGM_G10(MGM_W8,D2$delay,MGM_W7);


	not MGM_G11(MGM_W9,S$delay);


	and MGM_G12(ENABLE_NOT_D1_AND_D2_AND_NOT_S,MGM_W9,MGM_W8);


	not MGM_G13(MGM_W10,D1$delay);


	and MGM_G14(MGM_W11,D2$delay,MGM_W10);


	and MGM_G15(ENABLE_NOT_D1_AND_D2_AND_S,S$delay,MGM_W11);


	not MGM_G16(MGM_W12,D2$delay);


	and MGM_G17(MGM_W13,MGM_W12,D1$delay);


	not MGM_G18(MGM_W14,S$delay);


	and MGM_G19(ENABLE_D1_AND_NOT_D2_AND_NOT_S,MGM_W14,MGM_W13);


	not MGM_G20(MGM_W15,D2$delay);


	and MGM_G21(MGM_W16,MGM_W15,D1$delay);


	and MGM_G22(ENABLE_D1_AND_NOT_D2_AND_S,S$delay,MGM_W16);


	and MGM_G23(MGM_W17,D2$delay,D1$delay);


	not MGM_G24(MGM_W18,S$delay);


	and MGM_G25(ENABLE_D1_AND_D2_AND_NOT_S,MGM_W18,MGM_W17);


	and MGM_G26(MGM_W19,D2$delay,D1$delay);


	and MGM_G27(ENABLE_D1_AND_D2_AND_S,S$delay,MGM_W19);


	not MGM_G28(MGM_W20,D2$delay);


	and MGM_G29(ENABLE_NOT_D2_AND_S,S$delay,MGM_W20);


	and MGM_G30(ENABLE_D2_AND_S,S$delay,D2$delay);


	not MGM_G31(MGM_W21,D1$delay);


	not MGM_G32(MGM_W22,S$delay);


	and MGM_G33(ENABLE_NOT_D1_AND_NOT_S,MGM_W22,MGM_W21);


	not MGM_G34(MGM_W23,S$delay);


	and MGM_G35(ENABLE_D1_AND_NOT_S,MGM_W23,D1$delay);


	not MGM_G36(MGM_W24,D1$delay);


	and MGM_G37(ENABLE_NOT_D1_AND_D2,D2$delay,MGM_W24);


	not MGM_G38(MGM_W25,D2$delay);


	and MGM_G39(ENABLE_D1_AND_NOT_D2,MGM_W25,D1$delay);


	// spec_gates_end



   specify

	// specify_block_begin 

	// seq arc CK --> Q
	(posedge CK => (Q : D1))  = (1.0,1.0);

	// seq arc CK --> QB
	(posedge CK => (QB : D1))  = (1.0,1.0);

	$width(negedge CK &&& (ENABLE_NOT_D1_AND_NOT_D2_AND_NOT_S === 1'b1)
		,1.0,0,notifier);

	$width(posedge CK &&& (ENABLE_NOT_D1_AND_NOT_D2_AND_NOT_S === 1'b1)
		,1.0,0,notifier);

	$width(negedge CK &&& (ENABLE_NOT_D1_AND_NOT_D2_AND_S === 1'b1)
		,1.0,0,notifier);

	$width(posedge CK &&& (ENABLE_NOT_D1_AND_NOT_D2_AND_S === 1'b1)
		,1.0,0,notifier);

	$width(negedge CK &&& (ENABLE_NOT_D1_AND_D2_AND_NOT_S === 1'b1)
		,1.0,0,notifier);

	$width(posedge CK &&& (ENABLE_NOT_D1_AND_D2_AND_NOT_S === 1'b1)
		,1.0,0,notifier);

	$width(negedge CK &&& (ENABLE_NOT_D1_AND_D2_AND_S === 1'b1)
		,1.0,0,notifier);

	$width(posedge CK &&& (ENABLE_NOT_D1_AND_D2_AND_S === 1'b1)
		,1.0,0,notifier);

	$width(negedge CK &&& (ENABLE_D1_AND_NOT_D2_AND_NOT_S === 1'b1)
		,1.0,0,notifier);

	$width(posedge CK &&& (ENABLE_D1_AND_NOT_D2_AND_NOT_S === 1'b1)
		,1.0,0,notifier);

	$width(negedge CK &&& (ENABLE_D1_AND_NOT_D2_AND_S === 1'b1)
		,1.0,0,notifier);

	$width(posedge CK &&& (ENABLE_D1_AND_NOT_D2_AND_S === 1'b1)
		,1.0,0,notifier);

	$width(negedge CK &&& (ENABLE_D1_AND_D2_AND_NOT_S === 1'b1)
		,1.0,0,notifier);

	$width(posedge CK &&& (ENABLE_D1_AND_D2_AND_NOT_S === 1'b1)
		,1.0,0,notifier);

	$width(negedge CK &&& (ENABLE_D1_AND_D2_AND_S === 1'b1)
		,1.0,0,notifier);

	$width(posedge CK &&& (ENABLE_D1_AND_D2_AND_S === 1'b1)
		,1.0,0,notifier);

	// setuphold D1- CK-LH
	$setuphold(posedge CK &&& (ENABLE_NOT_D2_AND_S === 1'b1),
		posedge D1 &&& (ENABLE_NOT_D2_AND_S === 1'b1),
		1.0,1.0,notifier,,,CK$delay,D1$delay);

	// setuphold D1- CK-LH
	$setuphold(posedge CK &&& (ENABLE_NOT_D2_AND_S === 1'b1),
		negedge D1 &&& (ENABLE_NOT_D2_AND_S === 1'b1),
		1.0,1.0,notifier,,,CK$delay,D1$delay);

	// setuphold D1- CK-LH
	$setuphold(posedge CK &&& (ENABLE_D2_AND_S === 1'b1),
		posedge D1 &&& (ENABLE_D2_AND_S === 1'b1),
		1.0,1.0,notifier,,,CK$delay,D1$delay);

	// setuphold D1- CK-LH
	$setuphold(posedge CK &&& (ENABLE_D2_AND_S === 1'b1),
		negedge D1 &&& (ENABLE_D2_AND_S === 1'b1),
		1.0,1.0,notifier,,,CK$delay,D1$delay);

	// setuphold D2- CK-LH
	$setuphold(posedge CK &&& (ENABLE_NOT_D1_AND_NOT_S === 1'b1),
		posedge D2 &&& (ENABLE_NOT_D1_AND_NOT_S === 1'b1),
		1.0,1.0,notifier,,,CK$delay,D2$delay);

	// setuphold D2- CK-LH
	$setuphold(posedge CK &&& (ENABLE_NOT_D1_AND_NOT_S === 1'b1),
		negedge D2 &&& (ENABLE_NOT_D1_AND_NOT_S === 1'b1),
		1.0,1.0,notifier,,,CK$delay,D2$delay);

	// setuphold D2- CK-LH
	$setuphold(posedge CK &&& (ENABLE_D1_AND_NOT_S === 1'b1),
		posedge D2 &&& (ENABLE_D1_AND_NOT_S === 1'b1),
		1.0,1.0,notifier,,,CK$delay,D2$delay);

	// setuphold D2- CK-LH
	$setuphold(posedge CK &&& (ENABLE_D1_AND_NOT_S === 1'b1),
		negedge D2 &&& (ENABLE_D1_AND_NOT_S === 1'b1),
		1.0,1.0,notifier,,,CK$delay,D2$delay);

	// setuphold S- CK-LH
	$setuphold(posedge CK &&& (ENABLE_NOT_D1_AND_D2 === 1'b1),
		posedge S &&& (ENABLE_NOT_D1_AND_D2 === 1'b1),
		1.0,1.0,notifier,,,CK$delay,S$delay);

	// setuphold S- CK-LH
	$setuphold(posedge CK &&& (ENABLE_NOT_D1_AND_D2 === 1'b1),
		negedge S &&& (ENABLE_NOT_D1_AND_D2 === 1'b1),
		1.0,1.0,notifier,,,CK$delay,S$delay);

	// setuphold S- CK-LH
	$setuphold(posedge CK &&& (ENABLE_D1_AND_NOT_D2 === 1'b1),
		posedge S &&& (ENABLE_D1_AND_NOT_D2 === 1'b1),
		1.0,1.0,notifier,,,CK$delay,S$delay);

	// setuphold S- CK-LH
	$setuphold(posedge CK &&& (ENABLE_D1_AND_NOT_D2 === 1'b1),
		negedge S &&& (ENABLE_D1_AND_NOT_D2 === 1'b1),
		1.0,1.0,notifier,,,CK$delay,S$delay);

	// mpw CK_lh 
	$width(posedge CK,1.0,0,notifier);

	// mpw CK_hl 
	$width(negedge CK,1.0,0,notifier);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module DFMM8HM( Q, QB, CK, D1, D2, S , VDD, VSS);
inout VDD;
inout VSS;
input CK, D1, D2, S;
output Q, QB;
reg notifier;

   `ifdef FUNCTIONAL  //  functional //

	DFMM8HM_func DFMM8HM_behav_inst(.Q(Q),.QB(QB),.CK(CK),.D1(D1),.D2(D2),.S(S),.notifier(notifier),.VDD(VDD),.VSS(VSS));

   `else

	wire CK$delay ;

	wire D1$delay ;

	wire D2$delay ;

	wire S$delay ;

	DFMM8HM_func DFMM8HM_inst(.Q(Q),.QB(QB),.CK(CK$delay),.D1(D1$delay),.D2(D2$delay),.S(S$delay),.notifier(notifier),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	not MGM_G0(MGM_W0,D1$delay);


	not MGM_G1(MGM_W1,D2$delay);


	and MGM_G2(MGM_W2,MGM_W1,MGM_W0);


	not MGM_G3(MGM_W3,S$delay);


	and MGM_G4(ENABLE_NOT_D1_AND_NOT_D2_AND_NOT_S,MGM_W3,MGM_W2);


	not MGM_G5(MGM_W4,D1$delay);


	not MGM_G6(MGM_W5,D2$delay);


	and MGM_G7(MGM_W6,MGM_W5,MGM_W4);


	and MGM_G8(ENABLE_NOT_D1_AND_NOT_D2_AND_S,S$delay,MGM_W6);


	not MGM_G9(MGM_W7,D1$delay);


	and MGM_G10(MGM_W8,D2$delay,MGM_W7);


	not MGM_G11(MGM_W9,S$delay);


	and MGM_G12(ENABLE_NOT_D1_AND_D2_AND_NOT_S,MGM_W9,MGM_W8);


	not MGM_G13(MGM_W10,D1$delay);


	and MGM_G14(MGM_W11,D2$delay,MGM_W10);


	and MGM_G15(ENABLE_NOT_D1_AND_D2_AND_S,S$delay,MGM_W11);


	not MGM_G16(MGM_W12,D2$delay);


	and MGM_G17(MGM_W13,MGM_W12,D1$delay);


	not MGM_G18(MGM_W14,S$delay);


	and MGM_G19(ENABLE_D1_AND_NOT_D2_AND_NOT_S,MGM_W14,MGM_W13);


	not MGM_G20(MGM_W15,D2$delay);


	and MGM_G21(MGM_W16,MGM_W15,D1$delay);


	and MGM_G22(ENABLE_D1_AND_NOT_D2_AND_S,S$delay,MGM_W16);


	and MGM_G23(MGM_W17,D2$delay,D1$delay);


	not MGM_G24(MGM_W18,S$delay);


	and MGM_G25(ENABLE_D1_AND_D2_AND_NOT_S,MGM_W18,MGM_W17);


	and MGM_G26(MGM_W19,D2$delay,D1$delay);


	and MGM_G27(ENABLE_D1_AND_D2_AND_S,S$delay,MGM_W19);


	not MGM_G28(MGM_W20,D2$delay);


	and MGM_G29(ENABLE_NOT_D2_AND_S,S$delay,MGM_W20);


	and MGM_G30(ENABLE_D2_AND_S,S$delay,D2$delay);


	not MGM_G31(MGM_W21,D1$delay);


	not MGM_G32(MGM_W22,S$delay);


	and MGM_G33(ENABLE_NOT_D1_AND_NOT_S,MGM_W22,MGM_W21);


	not MGM_G34(MGM_W23,S$delay);


	and MGM_G35(ENABLE_D1_AND_NOT_S,MGM_W23,D1$delay);


	not MGM_G36(MGM_W24,D1$delay);


	and MGM_G37(ENABLE_NOT_D1_AND_D2,D2$delay,MGM_W24);


	not MGM_G38(MGM_W25,D2$delay);


	and MGM_G39(ENABLE_D1_AND_NOT_D2,MGM_W25,D1$delay);


	// spec_gates_end



   specify

	// specify_block_begin 

	// seq arc CK --> Q
	(posedge CK => (Q : D1))  = (1.0,1.0);

	// seq arc CK --> QB
	(posedge CK => (QB : D1))  = (1.0,1.0);

	$width(negedge CK &&& (ENABLE_NOT_D1_AND_NOT_D2_AND_NOT_S === 1'b1)
		,1.0,0,notifier);

	$width(posedge CK &&& (ENABLE_NOT_D1_AND_NOT_D2_AND_NOT_S === 1'b1)
		,1.0,0,notifier);

	$width(negedge CK &&& (ENABLE_NOT_D1_AND_NOT_D2_AND_S === 1'b1)
		,1.0,0,notifier);

	$width(posedge CK &&& (ENABLE_NOT_D1_AND_NOT_D2_AND_S === 1'b1)
		,1.0,0,notifier);

	$width(negedge CK &&& (ENABLE_NOT_D1_AND_D2_AND_NOT_S === 1'b1)
		,1.0,0,notifier);

	$width(posedge CK &&& (ENABLE_NOT_D1_AND_D2_AND_NOT_S === 1'b1)
		,1.0,0,notifier);

	$width(negedge CK &&& (ENABLE_NOT_D1_AND_D2_AND_S === 1'b1)
		,1.0,0,notifier);

	$width(posedge CK &&& (ENABLE_NOT_D1_AND_D2_AND_S === 1'b1)
		,1.0,0,notifier);

	$width(negedge CK &&& (ENABLE_D1_AND_NOT_D2_AND_NOT_S === 1'b1)
		,1.0,0,notifier);

	$width(posedge CK &&& (ENABLE_D1_AND_NOT_D2_AND_NOT_S === 1'b1)
		,1.0,0,notifier);

	$width(negedge CK &&& (ENABLE_D1_AND_NOT_D2_AND_S === 1'b1)
		,1.0,0,notifier);

	$width(posedge CK &&& (ENABLE_D1_AND_NOT_D2_AND_S === 1'b1)
		,1.0,0,notifier);

	$width(negedge CK &&& (ENABLE_D1_AND_D2_AND_NOT_S === 1'b1)
		,1.0,0,notifier);

	$width(posedge CK &&& (ENABLE_D1_AND_D2_AND_NOT_S === 1'b1)
		,1.0,0,notifier);

	$width(negedge CK &&& (ENABLE_D1_AND_D2_AND_S === 1'b1)
		,1.0,0,notifier);

	$width(posedge CK &&& (ENABLE_D1_AND_D2_AND_S === 1'b1)
		,1.0,0,notifier);

	// setuphold D1- CK-LH
	$setuphold(posedge CK &&& (ENABLE_NOT_D2_AND_S === 1'b1),
		posedge D1 &&& (ENABLE_NOT_D2_AND_S === 1'b1),
		1.0,1.0,notifier,,,CK$delay,D1$delay);

	// setuphold D1- CK-LH
	$setuphold(posedge CK &&& (ENABLE_NOT_D2_AND_S === 1'b1),
		negedge D1 &&& (ENABLE_NOT_D2_AND_S === 1'b1),
		1.0,1.0,notifier,,,CK$delay,D1$delay);

	// setuphold D1- CK-LH
	$setuphold(posedge CK &&& (ENABLE_D2_AND_S === 1'b1),
		posedge D1 &&& (ENABLE_D2_AND_S === 1'b1),
		1.0,1.0,notifier,,,CK$delay,D1$delay);

	// setuphold D1- CK-LH
	$setuphold(posedge CK &&& (ENABLE_D2_AND_S === 1'b1),
		negedge D1 &&& (ENABLE_D2_AND_S === 1'b1),
		1.0,1.0,notifier,,,CK$delay,D1$delay);

	// setuphold D2- CK-LH
	$setuphold(posedge CK &&& (ENABLE_NOT_D1_AND_NOT_S === 1'b1),
		posedge D2 &&& (ENABLE_NOT_D1_AND_NOT_S === 1'b1),
		1.0,1.0,notifier,,,CK$delay,D2$delay);

	// setuphold D2- CK-LH
	$setuphold(posedge CK &&& (ENABLE_NOT_D1_AND_NOT_S === 1'b1),
		negedge D2 &&& (ENABLE_NOT_D1_AND_NOT_S === 1'b1),
		1.0,1.0,notifier,,,CK$delay,D2$delay);

	// setuphold D2- CK-LH
	$setuphold(posedge CK &&& (ENABLE_D1_AND_NOT_S === 1'b1),
		posedge D2 &&& (ENABLE_D1_AND_NOT_S === 1'b1),
		1.0,1.0,notifier,,,CK$delay,D2$delay);

	// setuphold D2- CK-LH
	$setuphold(posedge CK &&& (ENABLE_D1_AND_NOT_S === 1'b1),
		negedge D2 &&& (ENABLE_D1_AND_NOT_S === 1'b1),
		1.0,1.0,notifier,,,CK$delay,D2$delay);

	// setuphold S- CK-LH
	$setuphold(posedge CK &&& (ENABLE_NOT_D1_AND_D2 === 1'b1),
		posedge S &&& (ENABLE_NOT_D1_AND_D2 === 1'b1),
		1.0,1.0,notifier,,,CK$delay,S$delay);

	// setuphold S- CK-LH
	$setuphold(posedge CK &&& (ENABLE_NOT_D1_AND_D2 === 1'b1),
		negedge S &&& (ENABLE_NOT_D1_AND_D2 === 1'b1),
		1.0,1.0,notifier,,,CK$delay,S$delay);

	// setuphold S- CK-LH
	$setuphold(posedge CK &&& (ENABLE_D1_AND_NOT_D2 === 1'b1),
		posedge S &&& (ENABLE_D1_AND_NOT_D2 === 1'b1),
		1.0,1.0,notifier,,,CK$delay,S$delay);

	// setuphold S- CK-LH
	$setuphold(posedge CK &&& (ENABLE_D1_AND_NOT_D2 === 1'b1),
		negedge S &&& (ENABLE_D1_AND_NOT_D2 === 1'b1),
		1.0,1.0,notifier,,,CK$delay,S$delay);

	// mpw CK_lh 
	$width(posedge CK,1.0,0,notifier);

	// mpw CK_hl 
	$width(negedge CK,1.0,0,notifier);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module DFMQM1HM( Q, CK, D1, D2, S , VDD, VSS);
inout VDD;
inout VSS;
input CK, D1, D2, S;
output Q;
reg notifier;

   `ifdef FUNCTIONAL  //  functional //

	DFMQM1HM_func DFMQM1HM_behav_inst(.Q(Q),.CK(CK),.D1(D1),.D2(D2),.S(S),.notifier(notifier),.VDD(VDD),.VSS(VSS));

   `else

	wire CK$delay ;

	wire D1$delay ;

	wire D2$delay ;

	wire S$delay ;

	DFMQM1HM_func DFMQM1HM_inst(.Q(Q),.CK(CK$delay),.D1(D1$delay),.D2(D2$delay),.S(S$delay),.notifier(notifier),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	not MGM_G0(MGM_W0,D1$delay);


	not MGM_G1(MGM_W1,D2$delay);


	and MGM_G2(MGM_W2,MGM_W1,MGM_W0);


	not MGM_G3(MGM_W3,S$delay);


	and MGM_G4(ENABLE_NOT_D1_AND_NOT_D2_AND_NOT_S,MGM_W3,MGM_W2);


	not MGM_G5(MGM_W4,D1$delay);


	not MGM_G6(MGM_W5,D2$delay);


	and MGM_G7(MGM_W6,MGM_W5,MGM_W4);


	and MGM_G8(ENABLE_NOT_D1_AND_NOT_D2_AND_S,S$delay,MGM_W6);


	not MGM_G9(MGM_W7,D1$delay);


	and MGM_G10(MGM_W8,D2$delay,MGM_W7);


	not MGM_G11(MGM_W9,S$delay);


	and MGM_G12(ENABLE_NOT_D1_AND_D2_AND_NOT_S,MGM_W9,MGM_W8);


	not MGM_G13(MGM_W10,D1$delay);


	and MGM_G14(MGM_W11,D2$delay,MGM_W10);


	and MGM_G15(ENABLE_NOT_D1_AND_D2_AND_S,S$delay,MGM_W11);


	not MGM_G16(MGM_W12,D2$delay);


	and MGM_G17(MGM_W13,MGM_W12,D1$delay);


	not MGM_G18(MGM_W14,S$delay);


	and MGM_G19(ENABLE_D1_AND_NOT_D2_AND_NOT_S,MGM_W14,MGM_W13);


	not MGM_G20(MGM_W15,D2$delay);


	and MGM_G21(MGM_W16,MGM_W15,D1$delay);


	and MGM_G22(ENABLE_D1_AND_NOT_D2_AND_S,S$delay,MGM_W16);


	and MGM_G23(MGM_W17,D2$delay,D1$delay);


	not MGM_G24(MGM_W18,S$delay);


	and MGM_G25(ENABLE_D1_AND_D2_AND_NOT_S,MGM_W18,MGM_W17);


	and MGM_G26(MGM_W19,D2$delay,D1$delay);


	and MGM_G27(ENABLE_D1_AND_D2_AND_S,S$delay,MGM_W19);


	not MGM_G28(MGM_W20,D2$delay);


	and MGM_G29(ENABLE_NOT_D2_AND_S,S$delay,MGM_W20);


	and MGM_G30(ENABLE_D2_AND_S,S$delay,D2$delay);


	not MGM_G31(MGM_W21,D1$delay);


	not MGM_G32(MGM_W22,S$delay);


	and MGM_G33(ENABLE_NOT_D1_AND_NOT_S,MGM_W22,MGM_W21);


	not MGM_G34(MGM_W23,S$delay);


	and MGM_G35(ENABLE_D1_AND_NOT_S,MGM_W23,D1$delay);


	not MGM_G36(MGM_W24,D1$delay);


	and MGM_G37(ENABLE_NOT_D1_AND_D2,D2$delay,MGM_W24);


	not MGM_G38(MGM_W25,D2$delay);


	and MGM_G39(ENABLE_D1_AND_NOT_D2,MGM_W25,D1$delay);


	// spec_gates_end



   specify

	// specify_block_begin 

	// seq arc CK --> Q
	(posedge CK => (Q : D1))  = (1.0,1.0);

	$width(negedge CK &&& (ENABLE_NOT_D1_AND_NOT_D2_AND_NOT_S === 1'b1)
		,1.0,0,notifier);

	$width(posedge CK &&& (ENABLE_NOT_D1_AND_NOT_D2_AND_NOT_S === 1'b1)
		,1.0,0,notifier);

	$width(negedge CK &&& (ENABLE_NOT_D1_AND_NOT_D2_AND_S === 1'b1)
		,1.0,0,notifier);

	$width(posedge CK &&& (ENABLE_NOT_D1_AND_NOT_D2_AND_S === 1'b1)
		,1.0,0,notifier);

	$width(negedge CK &&& (ENABLE_NOT_D1_AND_D2_AND_NOT_S === 1'b1)
		,1.0,0,notifier);

	$width(posedge CK &&& (ENABLE_NOT_D1_AND_D2_AND_NOT_S === 1'b1)
		,1.0,0,notifier);

	$width(negedge CK &&& (ENABLE_NOT_D1_AND_D2_AND_S === 1'b1)
		,1.0,0,notifier);

	$width(posedge CK &&& (ENABLE_NOT_D1_AND_D2_AND_S === 1'b1)
		,1.0,0,notifier);

	$width(negedge CK &&& (ENABLE_D1_AND_NOT_D2_AND_NOT_S === 1'b1)
		,1.0,0,notifier);

	$width(posedge CK &&& (ENABLE_D1_AND_NOT_D2_AND_NOT_S === 1'b1)
		,1.0,0,notifier);

	$width(negedge CK &&& (ENABLE_D1_AND_NOT_D2_AND_S === 1'b1)
		,1.0,0,notifier);

	$width(posedge CK &&& (ENABLE_D1_AND_NOT_D2_AND_S === 1'b1)
		,1.0,0,notifier);

	$width(negedge CK &&& (ENABLE_D1_AND_D2_AND_NOT_S === 1'b1)
		,1.0,0,notifier);

	$width(posedge CK &&& (ENABLE_D1_AND_D2_AND_NOT_S === 1'b1)
		,1.0,0,notifier);

	$width(negedge CK &&& (ENABLE_D1_AND_D2_AND_S === 1'b1)
		,1.0,0,notifier);

	$width(posedge CK &&& (ENABLE_D1_AND_D2_AND_S === 1'b1)
		,1.0,0,notifier);

	// setuphold D1- CK-LH
	$setuphold(posedge CK &&& (ENABLE_NOT_D2_AND_S === 1'b1),
		posedge D1 &&& (ENABLE_NOT_D2_AND_S === 1'b1),
		1.0,1.0,notifier,,,CK$delay,D1$delay);

	// setuphold D1- CK-LH
	$setuphold(posedge CK &&& (ENABLE_NOT_D2_AND_S === 1'b1),
		negedge D1 &&& (ENABLE_NOT_D2_AND_S === 1'b1),
		1.0,1.0,notifier,,,CK$delay,D1$delay);

	// setuphold D1- CK-LH
	$setuphold(posedge CK &&& (ENABLE_D2_AND_S === 1'b1),
		posedge D1 &&& (ENABLE_D2_AND_S === 1'b1),
		1.0,1.0,notifier,,,CK$delay,D1$delay);

	// setuphold D1- CK-LH
	$setuphold(posedge CK &&& (ENABLE_D2_AND_S === 1'b1),
		negedge D1 &&& (ENABLE_D2_AND_S === 1'b1),
		1.0,1.0,notifier,,,CK$delay,D1$delay);

	// setuphold D2- CK-LH
	$setuphold(posedge CK &&& (ENABLE_NOT_D1_AND_NOT_S === 1'b1),
		posedge D2 &&& (ENABLE_NOT_D1_AND_NOT_S === 1'b1),
		1.0,1.0,notifier,,,CK$delay,D2$delay);

	// setuphold D2- CK-LH
	$setuphold(posedge CK &&& (ENABLE_NOT_D1_AND_NOT_S === 1'b1),
		negedge D2 &&& (ENABLE_NOT_D1_AND_NOT_S === 1'b1),
		1.0,1.0,notifier,,,CK$delay,D2$delay);

	// setuphold D2- CK-LH
	$setuphold(posedge CK &&& (ENABLE_D1_AND_NOT_S === 1'b1),
		posedge D2 &&& (ENABLE_D1_AND_NOT_S === 1'b1),
		1.0,1.0,notifier,,,CK$delay,D2$delay);

	// setuphold D2- CK-LH
	$setuphold(posedge CK &&& (ENABLE_D1_AND_NOT_S === 1'b1),
		negedge D2 &&& (ENABLE_D1_AND_NOT_S === 1'b1),
		1.0,1.0,notifier,,,CK$delay,D2$delay);

	// setuphold S- CK-LH
	$setuphold(posedge CK &&& (ENABLE_NOT_D1_AND_D2 === 1'b1),
		posedge S &&& (ENABLE_NOT_D1_AND_D2 === 1'b1),
		1.0,1.0,notifier,,,CK$delay,S$delay);

	// setuphold S- CK-LH
	$setuphold(posedge CK &&& (ENABLE_NOT_D1_AND_D2 === 1'b1),
		negedge S &&& (ENABLE_NOT_D1_AND_D2 === 1'b1),
		1.0,1.0,notifier,,,CK$delay,S$delay);

	// setuphold S- CK-LH
	$setuphold(posedge CK &&& (ENABLE_D1_AND_NOT_D2 === 1'b1),
		posedge S &&& (ENABLE_D1_AND_NOT_D2 === 1'b1),
		1.0,1.0,notifier,,,CK$delay,S$delay);

	// setuphold S- CK-LH
	$setuphold(posedge CK &&& (ENABLE_D1_AND_NOT_D2 === 1'b1),
		negedge S &&& (ENABLE_D1_AND_NOT_D2 === 1'b1),
		1.0,1.0,notifier,,,CK$delay,S$delay);

	// mpw CK_lh 
	$width(posedge CK,1.0,0,notifier);

	// mpw CK_hl 
	$width(negedge CK,1.0,0,notifier);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module DFMQM2HM( Q, CK, D1, D2, S , VDD, VSS);
inout VDD;
inout VSS;
input CK, D1, D2, S;
output Q;
reg notifier;

   `ifdef FUNCTIONAL  //  functional //

	DFMQM2HM_func DFMQM2HM_behav_inst(.Q(Q),.CK(CK),.D1(D1),.D2(D2),.S(S),.notifier(notifier),.VDD(VDD),.VSS(VSS));

   `else

	wire CK$delay ;

	wire D1$delay ;

	wire D2$delay ;

	wire S$delay ;

	DFMQM2HM_func DFMQM2HM_inst(.Q(Q),.CK(CK$delay),.D1(D1$delay),.D2(D2$delay),.S(S$delay),.notifier(notifier),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	not MGM_G0(MGM_W0,D1$delay);


	not MGM_G1(MGM_W1,D2$delay);


	and MGM_G2(MGM_W2,MGM_W1,MGM_W0);


	not MGM_G3(MGM_W3,S$delay);


	and MGM_G4(ENABLE_NOT_D1_AND_NOT_D2_AND_NOT_S,MGM_W3,MGM_W2);


	not MGM_G5(MGM_W4,D1$delay);


	not MGM_G6(MGM_W5,D2$delay);


	and MGM_G7(MGM_W6,MGM_W5,MGM_W4);


	and MGM_G8(ENABLE_NOT_D1_AND_NOT_D2_AND_S,S$delay,MGM_W6);


	not MGM_G9(MGM_W7,D1$delay);


	and MGM_G10(MGM_W8,D2$delay,MGM_W7);


	not MGM_G11(MGM_W9,S$delay);


	and MGM_G12(ENABLE_NOT_D1_AND_D2_AND_NOT_S,MGM_W9,MGM_W8);


	not MGM_G13(MGM_W10,D1$delay);


	and MGM_G14(MGM_W11,D2$delay,MGM_W10);


	and MGM_G15(ENABLE_NOT_D1_AND_D2_AND_S,S$delay,MGM_W11);


	not MGM_G16(MGM_W12,D2$delay);


	and MGM_G17(MGM_W13,MGM_W12,D1$delay);


	not MGM_G18(MGM_W14,S$delay);


	and MGM_G19(ENABLE_D1_AND_NOT_D2_AND_NOT_S,MGM_W14,MGM_W13);


	not MGM_G20(MGM_W15,D2$delay);


	and MGM_G21(MGM_W16,MGM_W15,D1$delay);


	and MGM_G22(ENABLE_D1_AND_NOT_D2_AND_S,S$delay,MGM_W16);


	and MGM_G23(MGM_W17,D2$delay,D1$delay);


	not MGM_G24(MGM_W18,S$delay);


	and MGM_G25(ENABLE_D1_AND_D2_AND_NOT_S,MGM_W18,MGM_W17);


	and MGM_G26(MGM_W19,D2$delay,D1$delay);


	and MGM_G27(ENABLE_D1_AND_D2_AND_S,S$delay,MGM_W19);


	not MGM_G28(MGM_W20,D2$delay);


	and MGM_G29(ENABLE_NOT_D2_AND_S,S$delay,MGM_W20);


	and MGM_G30(ENABLE_D2_AND_S,S$delay,D2$delay);


	not MGM_G31(MGM_W21,D1$delay);


	not MGM_G32(MGM_W22,S$delay);


	and MGM_G33(ENABLE_NOT_D1_AND_NOT_S,MGM_W22,MGM_W21);


	not MGM_G34(MGM_W23,S$delay);


	and MGM_G35(ENABLE_D1_AND_NOT_S,MGM_W23,D1$delay);


	not MGM_G36(MGM_W24,D1$delay);


	and MGM_G37(ENABLE_NOT_D1_AND_D2,D2$delay,MGM_W24);


	not MGM_G38(MGM_W25,D2$delay);


	and MGM_G39(ENABLE_D1_AND_NOT_D2,MGM_W25,D1$delay);


	// spec_gates_end



   specify

	// specify_block_begin 

	// seq arc CK --> Q
	(posedge CK => (Q : D1))  = (1.0,1.0);

	$width(negedge CK &&& (ENABLE_NOT_D1_AND_NOT_D2_AND_NOT_S === 1'b1)
		,1.0,0,notifier);

	$width(posedge CK &&& (ENABLE_NOT_D1_AND_NOT_D2_AND_NOT_S === 1'b1)
		,1.0,0,notifier);

	$width(negedge CK &&& (ENABLE_NOT_D1_AND_NOT_D2_AND_S === 1'b1)
		,1.0,0,notifier);

	$width(posedge CK &&& (ENABLE_NOT_D1_AND_NOT_D2_AND_S === 1'b1)
		,1.0,0,notifier);

	$width(negedge CK &&& (ENABLE_NOT_D1_AND_D2_AND_NOT_S === 1'b1)
		,1.0,0,notifier);

	$width(posedge CK &&& (ENABLE_NOT_D1_AND_D2_AND_NOT_S === 1'b1)
		,1.0,0,notifier);

	$width(negedge CK &&& (ENABLE_NOT_D1_AND_D2_AND_S === 1'b1)
		,1.0,0,notifier);

	$width(posedge CK &&& (ENABLE_NOT_D1_AND_D2_AND_S === 1'b1)
		,1.0,0,notifier);

	$width(negedge CK &&& (ENABLE_D1_AND_NOT_D2_AND_NOT_S === 1'b1)
		,1.0,0,notifier);

	$width(posedge CK &&& (ENABLE_D1_AND_NOT_D2_AND_NOT_S === 1'b1)
		,1.0,0,notifier);

	$width(negedge CK &&& (ENABLE_D1_AND_NOT_D2_AND_S === 1'b1)
		,1.0,0,notifier);

	$width(posedge CK &&& (ENABLE_D1_AND_NOT_D2_AND_S === 1'b1)
		,1.0,0,notifier);

	$width(negedge CK &&& (ENABLE_D1_AND_D2_AND_NOT_S === 1'b1)
		,1.0,0,notifier);

	$width(posedge CK &&& (ENABLE_D1_AND_D2_AND_NOT_S === 1'b1)
		,1.0,0,notifier);

	$width(negedge CK &&& (ENABLE_D1_AND_D2_AND_S === 1'b1)
		,1.0,0,notifier);

	$width(posedge CK &&& (ENABLE_D1_AND_D2_AND_S === 1'b1)
		,1.0,0,notifier);

	// setuphold D1- CK-LH
	$setuphold(posedge CK &&& (ENABLE_NOT_D2_AND_S === 1'b1),
		posedge D1 &&& (ENABLE_NOT_D2_AND_S === 1'b1),
		1.0,1.0,notifier,,,CK$delay,D1$delay);

	// setuphold D1- CK-LH
	$setuphold(posedge CK &&& (ENABLE_NOT_D2_AND_S === 1'b1),
		negedge D1 &&& (ENABLE_NOT_D2_AND_S === 1'b1),
		1.0,1.0,notifier,,,CK$delay,D1$delay);

	// setuphold D1- CK-LH
	$setuphold(posedge CK &&& (ENABLE_D2_AND_S === 1'b1),
		posedge D1 &&& (ENABLE_D2_AND_S === 1'b1),
		1.0,1.0,notifier,,,CK$delay,D1$delay);

	// setuphold D1- CK-LH
	$setuphold(posedge CK &&& (ENABLE_D2_AND_S === 1'b1),
		negedge D1 &&& (ENABLE_D2_AND_S === 1'b1),
		1.0,1.0,notifier,,,CK$delay,D1$delay);

	// setuphold D2- CK-LH
	$setuphold(posedge CK &&& (ENABLE_NOT_D1_AND_NOT_S === 1'b1),
		posedge D2 &&& (ENABLE_NOT_D1_AND_NOT_S === 1'b1),
		1.0,1.0,notifier,,,CK$delay,D2$delay);

	// setuphold D2- CK-LH
	$setuphold(posedge CK &&& (ENABLE_NOT_D1_AND_NOT_S === 1'b1),
		negedge D2 &&& (ENABLE_NOT_D1_AND_NOT_S === 1'b1),
		1.0,1.0,notifier,,,CK$delay,D2$delay);

	// setuphold D2- CK-LH
	$setuphold(posedge CK &&& (ENABLE_D1_AND_NOT_S === 1'b1),
		posedge D2 &&& (ENABLE_D1_AND_NOT_S === 1'b1),
		1.0,1.0,notifier,,,CK$delay,D2$delay);

	// setuphold D2- CK-LH
	$setuphold(posedge CK &&& (ENABLE_D1_AND_NOT_S === 1'b1),
		negedge D2 &&& (ENABLE_D1_AND_NOT_S === 1'b1),
		1.0,1.0,notifier,,,CK$delay,D2$delay);

	// setuphold S- CK-LH
	$setuphold(posedge CK &&& (ENABLE_NOT_D1_AND_D2 === 1'b1),
		posedge S &&& (ENABLE_NOT_D1_AND_D2 === 1'b1),
		1.0,1.0,notifier,,,CK$delay,S$delay);

	// setuphold S- CK-LH
	$setuphold(posedge CK &&& (ENABLE_NOT_D1_AND_D2 === 1'b1),
		negedge S &&& (ENABLE_NOT_D1_AND_D2 === 1'b1),
		1.0,1.0,notifier,,,CK$delay,S$delay);

	// setuphold S- CK-LH
	$setuphold(posedge CK &&& (ENABLE_D1_AND_NOT_D2 === 1'b1),
		posedge S &&& (ENABLE_D1_AND_NOT_D2 === 1'b1),
		1.0,1.0,notifier,,,CK$delay,S$delay);

	// setuphold S- CK-LH
	$setuphold(posedge CK &&& (ENABLE_D1_AND_NOT_D2 === 1'b1),
		negedge S &&& (ENABLE_D1_AND_NOT_D2 === 1'b1),
		1.0,1.0,notifier,,,CK$delay,S$delay);

	// mpw CK_lh 
	$width(posedge CK,1.0,0,notifier);

	// mpw CK_hl 
	$width(negedge CK,1.0,0,notifier);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module DFMQM4HM( Q, CK, D1, D2, S , VDD, VSS);
inout VDD;
inout VSS;
input CK, D1, D2, S;
output Q;
reg notifier;

   `ifdef FUNCTIONAL  //  functional //

	DFMQM4HM_func DFMQM4HM_behav_inst(.Q(Q),.CK(CK),.D1(D1),.D2(D2),.S(S),.notifier(notifier),.VDD(VDD),.VSS(VSS));

   `else

	wire CK$delay ;

	wire D1$delay ;

	wire D2$delay ;

	wire S$delay ;

	DFMQM4HM_func DFMQM4HM_inst(.Q(Q),.CK(CK$delay),.D1(D1$delay),.D2(D2$delay),.S(S$delay),.notifier(notifier),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	not MGM_G0(MGM_W0,D1$delay);


	not MGM_G1(MGM_W1,D2$delay);


	and MGM_G2(MGM_W2,MGM_W1,MGM_W0);


	not MGM_G3(MGM_W3,S$delay);


	and MGM_G4(ENABLE_NOT_D1_AND_NOT_D2_AND_NOT_S,MGM_W3,MGM_W2);


	not MGM_G5(MGM_W4,D1$delay);


	not MGM_G6(MGM_W5,D2$delay);


	and MGM_G7(MGM_W6,MGM_W5,MGM_W4);


	and MGM_G8(ENABLE_NOT_D1_AND_NOT_D2_AND_S,S$delay,MGM_W6);


	not MGM_G9(MGM_W7,D1$delay);


	and MGM_G10(MGM_W8,D2$delay,MGM_W7);


	not MGM_G11(MGM_W9,S$delay);


	and MGM_G12(ENABLE_NOT_D1_AND_D2_AND_NOT_S,MGM_W9,MGM_W8);


	not MGM_G13(MGM_W10,D1$delay);


	and MGM_G14(MGM_W11,D2$delay,MGM_W10);


	and MGM_G15(ENABLE_NOT_D1_AND_D2_AND_S,S$delay,MGM_W11);


	not MGM_G16(MGM_W12,D2$delay);


	and MGM_G17(MGM_W13,MGM_W12,D1$delay);


	not MGM_G18(MGM_W14,S$delay);


	and MGM_G19(ENABLE_D1_AND_NOT_D2_AND_NOT_S,MGM_W14,MGM_W13);


	not MGM_G20(MGM_W15,D2$delay);


	and MGM_G21(MGM_W16,MGM_W15,D1$delay);


	and MGM_G22(ENABLE_D1_AND_NOT_D2_AND_S,S$delay,MGM_W16);


	and MGM_G23(MGM_W17,D2$delay,D1$delay);


	not MGM_G24(MGM_W18,S$delay);


	and MGM_G25(ENABLE_D1_AND_D2_AND_NOT_S,MGM_W18,MGM_W17);


	and MGM_G26(MGM_W19,D2$delay,D1$delay);


	and MGM_G27(ENABLE_D1_AND_D2_AND_S,S$delay,MGM_W19);


	not MGM_G28(MGM_W20,D2$delay);


	and MGM_G29(ENABLE_NOT_D2_AND_S,S$delay,MGM_W20);


	and MGM_G30(ENABLE_D2_AND_S,S$delay,D2$delay);


	not MGM_G31(MGM_W21,D1$delay);


	not MGM_G32(MGM_W22,S$delay);


	and MGM_G33(ENABLE_NOT_D1_AND_NOT_S,MGM_W22,MGM_W21);


	not MGM_G34(MGM_W23,S$delay);


	and MGM_G35(ENABLE_D1_AND_NOT_S,MGM_W23,D1$delay);


	not MGM_G36(MGM_W24,D1$delay);


	and MGM_G37(ENABLE_NOT_D1_AND_D2,D2$delay,MGM_W24);


	not MGM_G38(MGM_W25,D2$delay);


	and MGM_G39(ENABLE_D1_AND_NOT_D2,MGM_W25,D1$delay);


	// spec_gates_end



   specify

	// specify_block_begin 

	// seq arc CK --> Q
	(posedge CK => (Q : D1))  = (1.0,1.0);

	$width(negedge CK &&& (ENABLE_NOT_D1_AND_NOT_D2_AND_NOT_S === 1'b1)
		,1.0,0,notifier);

	$width(posedge CK &&& (ENABLE_NOT_D1_AND_NOT_D2_AND_NOT_S === 1'b1)
		,1.0,0,notifier);

	$width(negedge CK &&& (ENABLE_NOT_D1_AND_NOT_D2_AND_S === 1'b1)
		,1.0,0,notifier);

	$width(posedge CK &&& (ENABLE_NOT_D1_AND_NOT_D2_AND_S === 1'b1)
		,1.0,0,notifier);

	$width(negedge CK &&& (ENABLE_NOT_D1_AND_D2_AND_NOT_S === 1'b1)
		,1.0,0,notifier);

	$width(posedge CK &&& (ENABLE_NOT_D1_AND_D2_AND_NOT_S === 1'b1)
		,1.0,0,notifier);

	$width(negedge CK &&& (ENABLE_NOT_D1_AND_D2_AND_S === 1'b1)
		,1.0,0,notifier);

	$width(posedge CK &&& (ENABLE_NOT_D1_AND_D2_AND_S === 1'b1)
		,1.0,0,notifier);

	$width(negedge CK &&& (ENABLE_D1_AND_NOT_D2_AND_NOT_S === 1'b1)
		,1.0,0,notifier);

	$width(posedge CK &&& (ENABLE_D1_AND_NOT_D2_AND_NOT_S === 1'b1)
		,1.0,0,notifier);

	$width(negedge CK &&& (ENABLE_D1_AND_NOT_D2_AND_S === 1'b1)
		,1.0,0,notifier);

	$width(posedge CK &&& (ENABLE_D1_AND_NOT_D2_AND_S === 1'b1)
		,1.0,0,notifier);

	$width(negedge CK &&& (ENABLE_D1_AND_D2_AND_NOT_S === 1'b1)
		,1.0,0,notifier);

	$width(posedge CK &&& (ENABLE_D1_AND_D2_AND_NOT_S === 1'b1)
		,1.0,0,notifier);

	$width(negedge CK &&& (ENABLE_D1_AND_D2_AND_S === 1'b1)
		,1.0,0,notifier);

	$width(posedge CK &&& (ENABLE_D1_AND_D2_AND_S === 1'b1)
		,1.0,0,notifier);

	// setuphold D1- CK-LH
	$setuphold(posedge CK &&& (ENABLE_NOT_D2_AND_S === 1'b1),
		posedge D1 &&& (ENABLE_NOT_D2_AND_S === 1'b1),
		1.0,1.0,notifier,,,CK$delay,D1$delay);

	// setuphold D1- CK-LH
	$setuphold(posedge CK &&& (ENABLE_NOT_D2_AND_S === 1'b1),
		negedge D1 &&& (ENABLE_NOT_D2_AND_S === 1'b1),
		1.0,1.0,notifier,,,CK$delay,D1$delay);

	// setuphold D1- CK-LH
	$setuphold(posedge CK &&& (ENABLE_D2_AND_S === 1'b1),
		posedge D1 &&& (ENABLE_D2_AND_S === 1'b1),
		1.0,1.0,notifier,,,CK$delay,D1$delay);

	// setuphold D1- CK-LH
	$setuphold(posedge CK &&& (ENABLE_D2_AND_S === 1'b1),
		negedge D1 &&& (ENABLE_D2_AND_S === 1'b1),
		1.0,1.0,notifier,,,CK$delay,D1$delay);

	// setuphold D2- CK-LH
	$setuphold(posedge CK &&& (ENABLE_NOT_D1_AND_NOT_S === 1'b1),
		posedge D2 &&& (ENABLE_NOT_D1_AND_NOT_S === 1'b1),
		1.0,1.0,notifier,,,CK$delay,D2$delay);

	// setuphold D2- CK-LH
	$setuphold(posedge CK &&& (ENABLE_NOT_D1_AND_NOT_S === 1'b1),
		negedge D2 &&& (ENABLE_NOT_D1_AND_NOT_S === 1'b1),
		1.0,1.0,notifier,,,CK$delay,D2$delay);

	// setuphold D2- CK-LH
	$setuphold(posedge CK &&& (ENABLE_D1_AND_NOT_S === 1'b1),
		posedge D2 &&& (ENABLE_D1_AND_NOT_S === 1'b1),
		1.0,1.0,notifier,,,CK$delay,D2$delay);

	// setuphold D2- CK-LH
	$setuphold(posedge CK &&& (ENABLE_D1_AND_NOT_S === 1'b1),
		negedge D2 &&& (ENABLE_D1_AND_NOT_S === 1'b1),
		1.0,1.0,notifier,,,CK$delay,D2$delay);

	// setuphold S- CK-LH
	$setuphold(posedge CK &&& (ENABLE_NOT_D1_AND_D2 === 1'b1),
		posedge S &&& (ENABLE_NOT_D1_AND_D2 === 1'b1),
		1.0,1.0,notifier,,,CK$delay,S$delay);

	// setuphold S- CK-LH
	$setuphold(posedge CK &&& (ENABLE_NOT_D1_AND_D2 === 1'b1),
		negedge S &&& (ENABLE_NOT_D1_AND_D2 === 1'b1),
		1.0,1.0,notifier,,,CK$delay,S$delay);

	// setuphold S- CK-LH
	$setuphold(posedge CK &&& (ENABLE_D1_AND_NOT_D2 === 1'b1),
		posedge S &&& (ENABLE_D1_AND_NOT_D2 === 1'b1),
		1.0,1.0,notifier,,,CK$delay,S$delay);

	// setuphold S- CK-LH
	$setuphold(posedge CK &&& (ENABLE_D1_AND_NOT_D2 === 1'b1),
		negedge S &&& (ENABLE_D1_AND_NOT_D2 === 1'b1),
		1.0,1.0,notifier,,,CK$delay,S$delay);

	// mpw CK_lh 
	$width(posedge CK,1.0,0,notifier);

	// mpw CK_hl 
	$width(negedge CK,1.0,0,notifier);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module DFMQM8HM( Q, CK, D1, D2, S , VDD, VSS);
inout VDD;
inout VSS;
input CK, D1, D2, S;
output Q;
reg notifier;

   `ifdef FUNCTIONAL  //  functional //

	DFMQM8HM_func DFMQM8HM_behav_inst(.Q(Q),.CK(CK),.D1(D1),.D2(D2),.S(S),.notifier(notifier),.VDD(VDD),.VSS(VSS));

   `else

	wire CK$delay ;

	wire D1$delay ;

	wire D2$delay ;

	wire S$delay ;

	DFMQM8HM_func DFMQM8HM_inst(.Q(Q),.CK(CK$delay),.D1(D1$delay),.D2(D2$delay),.S(S$delay),.notifier(notifier),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	not MGM_G0(MGM_W0,D1$delay);


	not MGM_G1(MGM_W1,D2$delay);


	and MGM_G2(MGM_W2,MGM_W1,MGM_W0);


	not MGM_G3(MGM_W3,S$delay);


	and MGM_G4(ENABLE_NOT_D1_AND_NOT_D2_AND_NOT_S,MGM_W3,MGM_W2);


	not MGM_G5(MGM_W4,D1$delay);


	not MGM_G6(MGM_W5,D2$delay);


	and MGM_G7(MGM_W6,MGM_W5,MGM_W4);


	and MGM_G8(ENABLE_NOT_D1_AND_NOT_D2_AND_S,S$delay,MGM_W6);


	not MGM_G9(MGM_W7,D1$delay);


	and MGM_G10(MGM_W8,D2$delay,MGM_W7);


	not MGM_G11(MGM_W9,S$delay);


	and MGM_G12(ENABLE_NOT_D1_AND_D2_AND_NOT_S,MGM_W9,MGM_W8);


	not MGM_G13(MGM_W10,D1$delay);


	and MGM_G14(MGM_W11,D2$delay,MGM_W10);


	and MGM_G15(ENABLE_NOT_D1_AND_D2_AND_S,S$delay,MGM_W11);


	not MGM_G16(MGM_W12,D2$delay);


	and MGM_G17(MGM_W13,MGM_W12,D1$delay);


	not MGM_G18(MGM_W14,S$delay);


	and MGM_G19(ENABLE_D1_AND_NOT_D2_AND_NOT_S,MGM_W14,MGM_W13);


	not MGM_G20(MGM_W15,D2$delay);


	and MGM_G21(MGM_W16,MGM_W15,D1$delay);


	and MGM_G22(ENABLE_D1_AND_NOT_D2_AND_S,S$delay,MGM_W16);


	and MGM_G23(MGM_W17,D2$delay,D1$delay);


	not MGM_G24(MGM_W18,S$delay);


	and MGM_G25(ENABLE_D1_AND_D2_AND_NOT_S,MGM_W18,MGM_W17);


	and MGM_G26(MGM_W19,D2$delay,D1$delay);


	and MGM_G27(ENABLE_D1_AND_D2_AND_S,S$delay,MGM_W19);


	not MGM_G28(MGM_W20,D2$delay);


	and MGM_G29(ENABLE_NOT_D2_AND_S,S$delay,MGM_W20);


	and MGM_G30(ENABLE_D2_AND_S,S$delay,D2$delay);


	not MGM_G31(MGM_W21,D1$delay);


	not MGM_G32(MGM_W22,S$delay);


	and MGM_G33(ENABLE_NOT_D1_AND_NOT_S,MGM_W22,MGM_W21);


	not MGM_G34(MGM_W23,S$delay);


	and MGM_G35(ENABLE_D1_AND_NOT_S,MGM_W23,D1$delay);


	not MGM_G36(MGM_W24,D1$delay);


	and MGM_G37(ENABLE_NOT_D1_AND_D2,D2$delay,MGM_W24);


	not MGM_G38(MGM_W25,D2$delay);


	and MGM_G39(ENABLE_D1_AND_NOT_D2,MGM_W25,D1$delay);


	// spec_gates_end



   specify

	// specify_block_begin 

	// seq arc CK --> Q
	(posedge CK => (Q : D1))  = (1.0,1.0);

	$width(negedge CK &&& (ENABLE_NOT_D1_AND_NOT_D2_AND_NOT_S === 1'b1)
		,1.0,0,notifier);

	$width(posedge CK &&& (ENABLE_NOT_D1_AND_NOT_D2_AND_NOT_S === 1'b1)
		,1.0,0,notifier);

	$width(negedge CK &&& (ENABLE_NOT_D1_AND_NOT_D2_AND_S === 1'b1)
		,1.0,0,notifier);

	$width(posedge CK &&& (ENABLE_NOT_D1_AND_NOT_D2_AND_S === 1'b1)
		,1.0,0,notifier);

	$width(negedge CK &&& (ENABLE_NOT_D1_AND_D2_AND_NOT_S === 1'b1)
		,1.0,0,notifier);

	$width(posedge CK &&& (ENABLE_NOT_D1_AND_D2_AND_NOT_S === 1'b1)
		,1.0,0,notifier);

	$width(negedge CK &&& (ENABLE_NOT_D1_AND_D2_AND_S === 1'b1)
		,1.0,0,notifier);

	$width(posedge CK &&& (ENABLE_NOT_D1_AND_D2_AND_S === 1'b1)
		,1.0,0,notifier);

	$width(negedge CK &&& (ENABLE_D1_AND_NOT_D2_AND_NOT_S === 1'b1)
		,1.0,0,notifier);

	$width(posedge CK &&& (ENABLE_D1_AND_NOT_D2_AND_NOT_S === 1'b1)
		,1.0,0,notifier);

	$width(negedge CK &&& (ENABLE_D1_AND_NOT_D2_AND_S === 1'b1)
		,1.0,0,notifier);

	$width(posedge CK &&& (ENABLE_D1_AND_NOT_D2_AND_S === 1'b1)
		,1.0,0,notifier);

	$width(negedge CK &&& (ENABLE_D1_AND_D2_AND_NOT_S === 1'b1)
		,1.0,0,notifier);

	$width(posedge CK &&& (ENABLE_D1_AND_D2_AND_NOT_S === 1'b1)
		,1.0,0,notifier);

	$width(negedge CK &&& (ENABLE_D1_AND_D2_AND_S === 1'b1)
		,1.0,0,notifier);

	$width(posedge CK &&& (ENABLE_D1_AND_D2_AND_S === 1'b1)
		,1.0,0,notifier);

	// setuphold D1- CK-LH
	$setuphold(posedge CK &&& (ENABLE_NOT_D2_AND_S === 1'b1),
		posedge D1 &&& (ENABLE_NOT_D2_AND_S === 1'b1),
		1.0,1.0,notifier,,,CK$delay,D1$delay);

	// setuphold D1- CK-LH
	$setuphold(posedge CK &&& (ENABLE_NOT_D2_AND_S === 1'b1),
		negedge D1 &&& (ENABLE_NOT_D2_AND_S === 1'b1),
		1.0,1.0,notifier,,,CK$delay,D1$delay);

	// setuphold D1- CK-LH
	$setuphold(posedge CK &&& (ENABLE_D2_AND_S === 1'b1),
		posedge D1 &&& (ENABLE_D2_AND_S === 1'b1),
		1.0,1.0,notifier,,,CK$delay,D1$delay);

	// setuphold D1- CK-LH
	$setuphold(posedge CK &&& (ENABLE_D2_AND_S === 1'b1),
		negedge D1 &&& (ENABLE_D2_AND_S === 1'b1),
		1.0,1.0,notifier,,,CK$delay,D1$delay);

	// setuphold D2- CK-LH
	$setuphold(posedge CK &&& (ENABLE_NOT_D1_AND_NOT_S === 1'b1),
		posedge D2 &&& (ENABLE_NOT_D1_AND_NOT_S === 1'b1),
		1.0,1.0,notifier,,,CK$delay,D2$delay);

	// setuphold D2- CK-LH
	$setuphold(posedge CK &&& (ENABLE_NOT_D1_AND_NOT_S === 1'b1),
		negedge D2 &&& (ENABLE_NOT_D1_AND_NOT_S === 1'b1),
		1.0,1.0,notifier,,,CK$delay,D2$delay);

	// setuphold D2- CK-LH
	$setuphold(posedge CK &&& (ENABLE_D1_AND_NOT_S === 1'b1),
		posedge D2 &&& (ENABLE_D1_AND_NOT_S === 1'b1),
		1.0,1.0,notifier,,,CK$delay,D2$delay);

	// setuphold D2- CK-LH
	$setuphold(posedge CK &&& (ENABLE_D1_AND_NOT_S === 1'b1),
		negedge D2 &&& (ENABLE_D1_AND_NOT_S === 1'b1),
		1.0,1.0,notifier,,,CK$delay,D2$delay);

	// setuphold S- CK-LH
	$setuphold(posedge CK &&& (ENABLE_NOT_D1_AND_D2 === 1'b1),
		posedge S &&& (ENABLE_NOT_D1_AND_D2 === 1'b1),
		1.0,1.0,notifier,,,CK$delay,S$delay);

	// setuphold S- CK-LH
	$setuphold(posedge CK &&& (ENABLE_NOT_D1_AND_D2 === 1'b1),
		negedge S &&& (ENABLE_NOT_D1_AND_D2 === 1'b1),
		1.0,1.0,notifier,,,CK$delay,S$delay);

	// setuphold S- CK-LH
	$setuphold(posedge CK &&& (ENABLE_D1_AND_NOT_D2 === 1'b1),
		posedge S &&& (ENABLE_D1_AND_NOT_D2 === 1'b1),
		1.0,1.0,notifier,,,CK$delay,S$delay);

	// setuphold S- CK-LH
	$setuphold(posedge CK &&& (ENABLE_D1_AND_NOT_D2 === 1'b1),
		negedge S &&& (ENABLE_D1_AND_NOT_D2 === 1'b1),
		1.0,1.0,notifier,,,CK$delay,S$delay);

	// mpw CK_lh 
	$width(posedge CK,1.0,0,notifier);

	// mpw CK_hl 
	$width(negedge CK,1.0,0,notifier);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module DFQM1HM( Q, CK, D , VDD, VSS);
inout VDD;
inout VSS;
input CK, D;
output Q;
reg notifier;

   `ifdef FUNCTIONAL  //  functional //

	DFQM1HM_func DFQM1HM_behav_inst(.Q(Q),.CK(CK),.D(D),.notifier(notifier),.VDD(VDD),.VSS(VSS));

   `else

	wire CK$delay ;

	wire D$delay ;

	DFQM1HM_func DFQM1HM_inst(.Q(Q),.CK(CK$delay),.D(D$delay),.notifier(notifier),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	not MGM_G0(ENABLE_NOT_D,D$delay);


	buf MGM_G1(ENABLE_D,D$delay);


	// spec_gates_end



   specify

	// specify_block_begin 

	// seq arc CK --> Q
	(posedge CK => (Q : D))  = (1.0,1.0);

	$width(negedge CK &&& (ENABLE_NOT_D === 1'b1)
		,1.0,0,notifier);

	$width(posedge CK &&& (ENABLE_NOT_D === 1'b1)
		,1.0,0,notifier);

	$width(negedge CK &&& (ENABLE_D === 1'b1)
		,1.0,0,notifier);

	$width(posedge CK &&& (ENABLE_D === 1'b1)
		,1.0,0,notifier);

	// setuphold D- CK-LH
	$setuphold(posedge CK,posedge D,1.0,1.0,notifier,,,CK$delay,D$delay);

	// setuphold D- CK-LH
	$setuphold(posedge CK,negedge D,1.0,1.0,notifier,,,CK$delay,D$delay);

	// mpw CK_lh 
	$width(posedge CK,1.0,0,notifier);

	// mpw CK_hl 
	$width(negedge CK,1.0,0,notifier);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module DFQM2HM( Q, CK, D , VDD, VSS);
inout VDD;
inout VSS;
input CK, D;
output Q;
reg notifier;

   `ifdef FUNCTIONAL  //  functional //

	DFQM2HM_func DFQM2HM_behav_inst(.Q(Q),.CK(CK),.D(D),.notifier(notifier),.VDD(VDD),.VSS(VSS));

   `else

	wire CK$delay ;

	wire D$delay ;

	DFQM2HM_func DFQM2HM_inst(.Q(Q),.CK(CK$delay),.D(D$delay),.notifier(notifier),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	not MGM_G0(ENABLE_NOT_D,D$delay);


	buf MGM_G1(ENABLE_D,D$delay);


	// spec_gates_end



   specify

	// specify_block_begin 

	// seq arc CK --> Q
	(posedge CK => (Q : D))  = (1.0,1.0);

	$width(negedge CK &&& (ENABLE_NOT_D === 1'b1)
		,1.0,0,notifier);

	$width(posedge CK &&& (ENABLE_NOT_D === 1'b1)
		,1.0,0,notifier);

	$width(negedge CK &&& (ENABLE_D === 1'b1)
		,1.0,0,notifier);

	$width(posedge CK &&& (ENABLE_D === 1'b1)
		,1.0,0,notifier);

	// setuphold D- CK-LH
	$setuphold(posedge CK,posedge D,1.0,1.0,notifier,,,CK$delay,D$delay);

	// setuphold D- CK-LH
	$setuphold(posedge CK,negedge D,1.0,1.0,notifier,,,CK$delay,D$delay);

	// mpw CK_lh 
	$width(posedge CK,1.0,0,notifier);

	// mpw CK_hl 
	$width(negedge CK,1.0,0,notifier);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module DFQM4HM( Q, CK, D , VDD, VSS);
inout VDD;
inout VSS;
input CK, D;
output Q;
reg notifier;

   `ifdef FUNCTIONAL  //  functional //

	DFQM4HM_func DFQM4HM_behav_inst(.Q(Q),.CK(CK),.D(D),.notifier(notifier),.VDD(VDD),.VSS(VSS));

   `else

	wire CK$delay ;

	wire D$delay ;

	DFQM4HM_func DFQM4HM_inst(.Q(Q),.CK(CK$delay),.D(D$delay),.notifier(notifier),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	not MGM_G0(ENABLE_NOT_D,D$delay);


	buf MGM_G1(ENABLE_D,D$delay);


	// spec_gates_end



   specify

	// specify_block_begin 

	// seq arc CK --> Q
	(posedge CK => (Q : D))  = (1.0,1.0);

	$width(negedge CK &&& (ENABLE_NOT_D === 1'b1)
		,1.0,0,notifier);

	$width(posedge CK &&& (ENABLE_NOT_D === 1'b1)
		,1.0,0,notifier);

	$width(negedge CK &&& (ENABLE_D === 1'b1)
		,1.0,0,notifier);

	$width(posedge CK &&& (ENABLE_D === 1'b1)
		,1.0,0,notifier);

	// setuphold D- CK-LH
	$setuphold(posedge CK,posedge D,1.0,1.0,notifier,,,CK$delay,D$delay);

	// setuphold D- CK-LH
	$setuphold(posedge CK,negedge D,1.0,1.0,notifier,,,CK$delay,D$delay);

	// mpw CK_lh 
	$width(posedge CK,1.0,0,notifier);

	// mpw CK_hl 
	$width(negedge CK,1.0,0,notifier);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module DFQM8HM( Q, CK, D , VDD, VSS);
inout VDD;
inout VSS;
input CK, D;
output Q;
reg notifier;

   `ifdef FUNCTIONAL  //  functional //

	DFQM8HM_func DFQM8HM_behav_inst(.Q(Q),.CK(CK),.D(D),.notifier(notifier),.VDD(VDD),.VSS(VSS));

   `else

	wire CK$delay ;

	wire D$delay ;

	DFQM8HM_func DFQM8HM_inst(.Q(Q),.CK(CK$delay),.D(D$delay),.notifier(notifier),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	not MGM_G0(ENABLE_NOT_D,D$delay);


	buf MGM_G1(ENABLE_D,D$delay);


	// spec_gates_end



   specify

	// specify_block_begin 

	// seq arc CK --> Q
	(posedge CK => (Q : D))  = (1.0,1.0);

	$width(negedge CK &&& (ENABLE_NOT_D === 1'b1)
		,1.0,0,notifier);

	$width(posedge CK &&& (ENABLE_NOT_D === 1'b1)
		,1.0,0,notifier);

	$width(negedge CK &&& (ENABLE_D === 1'b1)
		,1.0,0,notifier);

	$width(posedge CK &&& (ENABLE_D === 1'b1)
		,1.0,0,notifier);

	// setuphold D- CK-LH
	$setuphold(posedge CK,posedge D,1.0,1.0,notifier,,,CK$delay,D$delay);

	// setuphold D- CK-LH
	$setuphold(posedge CK,negedge D,1.0,1.0,notifier,,,CK$delay,D$delay);

	// mpw CK_lh 
	$width(posedge CK,1.0,0,notifier);

	// mpw CK_hl 
	$width(negedge CK,1.0,0,notifier);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module DFQRM1HM( Q, CK, D, RB , VDD, VSS);
inout VDD;
inout VSS;
input CK, D, RB;
output Q;
reg notifier;

   `ifdef FUNCTIONAL  //  functional //

	DFQRM1HM_func DFQRM1HM_behav_inst(.Q(Q),.CK(CK),.D(D),.RB(RB),.notifier(notifier),.VDD(VDD),.VSS(VSS));

   `else

	wire CK$delay ;

	wire D$delay ;

	wire RB$delay ;

	DFQRM1HM_func DFQRM1HM_inst(.Q(Q),.CK(CK$delay),.D(D$delay),.RB(RB$delay),.notifier(notifier),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	not MGM_G0(MGM_W0,D$delay);


	and MGM_G1(ENABLE_NOT_D_AND_RB,RB$delay,MGM_W0);


	and MGM_G2(ENABLE_D_AND_RB,RB$delay,D$delay);


	buf MGM_G3(ENABLE_RB,RB$delay);


	not MGM_G4(MGM_W1,CK$delay);


	not MGM_G5(MGM_W2,D$delay);


	and MGM_G6(ENABLE_NOT_CK_AND_NOT_D,MGM_W2,MGM_W1);


	not MGM_G7(MGM_W3,CK$delay);


	and MGM_G8(ENABLE_NOT_CK_AND_D,D$delay,MGM_W3);


	not MGM_G9(MGM_W4,D$delay);


	and MGM_G10(ENABLE_CK_AND_NOT_D,MGM_W4,CK$delay);


	and MGM_G11(ENABLE_CK_AND_D,D$delay,CK$delay);


	// spec_gates_end



   specify

	// specify_block_begin 

	// seq arc CK --> Q
	(posedge CK => (Q : D))  = (1.0,1.0);

	// seq arc RB --> Q
	(RB => Q)  = (1.0,1.0);

	$width(negedge CK &&& (ENABLE_NOT_D_AND_RB === 1'b1)
		,1.0,0,notifier);

	$width(posedge CK &&& (ENABLE_NOT_D_AND_RB === 1'b1)
		,1.0,0,notifier);

	$width(negedge CK &&& (ENABLE_D_AND_RB === 1'b1)
		,1.0,0,notifier);

	$width(posedge CK &&& (ENABLE_D_AND_RB === 1'b1)
		,1.0,0,notifier);

	// setuphold D- CK-LH
	$setuphold(posedge CK &&& (ENABLE_RB === 1'b1),
		posedge D &&& (ENABLE_RB === 1'b1),
		1.0,1.0,notifier,,,CK$delay,D$delay);

	// setuphold D- CK-LH
	$setuphold(posedge CK &&& (ENABLE_RB === 1'b1),
		negedge D &&& (ENABLE_RB === 1'b1),
		1.0,1.0,notifier,,,CK$delay,D$delay);

	// recrem RB-CK-posedge
	$recrem(posedge RB,posedge CK,1.0,1.0,notifier,,,RB$delay,CK$delay);

	$width(negedge RB &&& (ENABLE_NOT_CK_AND_NOT_D === 1'b1)
		,1.0,0,notifier);

	$width(negedge RB &&& (ENABLE_NOT_CK_AND_D === 1'b1)
		,1.0,0,notifier);

	$width(negedge RB &&& (ENABLE_CK_AND_NOT_D === 1'b1)
		,1.0,0,notifier);

	$width(negedge RB &&& (ENABLE_CK_AND_D === 1'b1)
		,1.0,0,notifier);

	// mpw CK_lh 
	$width(posedge CK,1.0,0,notifier);

	// mpw CK_hl 
	$width(negedge CK,1.0,0,notifier);

	// mpw RB_hl 
	$width(negedge RB,1.0,0,notifier);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module DFQRM2HM( Q, CK, D, RB , VDD, VSS);
inout VDD;
inout VSS;
input CK, D, RB;
output Q;
reg notifier;

   `ifdef FUNCTIONAL  //  functional //

	DFQRM2HM_func DFQRM2HM_behav_inst(.Q(Q),.CK(CK),.D(D),.RB(RB),.notifier(notifier),.VDD(VDD),.VSS(VSS));

   `else

	wire CK$delay ;

	wire D$delay ;

	wire RB$delay ;

	DFQRM2HM_func DFQRM2HM_inst(.Q(Q),.CK(CK$delay),.D(D$delay),.RB(RB$delay),.notifier(notifier),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	not MGM_G0(MGM_W0,D$delay);


	and MGM_G1(ENABLE_NOT_D_AND_RB,RB$delay,MGM_W0);


	and MGM_G2(ENABLE_D_AND_RB,RB$delay,D$delay);


	buf MGM_G3(ENABLE_RB,RB$delay);


	not MGM_G4(MGM_W1,CK$delay);


	not MGM_G5(MGM_W2,D$delay);


	and MGM_G6(ENABLE_NOT_CK_AND_NOT_D,MGM_W2,MGM_W1);


	not MGM_G7(MGM_W3,CK$delay);


	and MGM_G8(ENABLE_NOT_CK_AND_D,D$delay,MGM_W3);


	not MGM_G9(MGM_W4,D$delay);


	and MGM_G10(ENABLE_CK_AND_NOT_D,MGM_W4,CK$delay);


	and MGM_G11(ENABLE_CK_AND_D,D$delay,CK$delay);


	// spec_gates_end



   specify

	// specify_block_begin 

	// seq arc CK --> Q
	(posedge CK => (Q : D))  = (1.0,1.0);

	// seq arc RB --> Q
	(RB => Q)  = (1.0,1.0);

	$width(negedge CK &&& (ENABLE_NOT_D_AND_RB === 1'b1)
		,1.0,0,notifier);

	$width(posedge CK &&& (ENABLE_NOT_D_AND_RB === 1'b1)
		,1.0,0,notifier);

	$width(negedge CK &&& (ENABLE_D_AND_RB === 1'b1)
		,1.0,0,notifier);

	$width(posedge CK &&& (ENABLE_D_AND_RB === 1'b1)
		,1.0,0,notifier);

	// setuphold D- CK-LH
	$setuphold(posedge CK &&& (ENABLE_RB === 1'b1),
		posedge D &&& (ENABLE_RB === 1'b1),
		1.0,1.0,notifier,,,CK$delay,D$delay);

	// setuphold D- CK-LH
	$setuphold(posedge CK &&& (ENABLE_RB === 1'b1),
		negedge D &&& (ENABLE_RB === 1'b1),
		1.0,1.0,notifier,,,CK$delay,D$delay);

	// recrem RB-CK-posedge
	$recrem(posedge RB,posedge CK,1.0,1.0,notifier,,,RB$delay,CK$delay);

	$width(negedge RB &&& (ENABLE_NOT_CK_AND_NOT_D === 1'b1)
		,1.0,0,notifier);

	$width(negedge RB &&& (ENABLE_NOT_CK_AND_D === 1'b1)
		,1.0,0,notifier);

	$width(negedge RB &&& (ENABLE_CK_AND_NOT_D === 1'b1)
		,1.0,0,notifier);

	$width(negedge RB &&& (ENABLE_CK_AND_D === 1'b1)
		,1.0,0,notifier);

	// mpw CK_lh 
	$width(posedge CK,1.0,0,notifier);

	// mpw CK_hl 
	$width(negedge CK,1.0,0,notifier);

	// mpw RB_hl 
	$width(negedge RB,1.0,0,notifier);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module DFQRM4HM( Q, CK, D, RB , VDD, VSS);
inout VDD;
inout VSS;
input CK, D, RB;
output Q;
reg notifier;

   `ifdef FUNCTIONAL  //  functional //

	DFQRM4HM_func DFQRM4HM_behav_inst(.Q(Q),.CK(CK),.D(D),.RB(RB),.notifier(notifier),.VDD(VDD),.VSS(VSS));

   `else

	wire CK$delay ;

	wire D$delay ;

	wire RB$delay ;

	DFQRM4HM_func DFQRM4HM_inst(.Q(Q),.CK(CK$delay),.D(D$delay),.RB(RB$delay),.notifier(notifier),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	not MGM_G0(MGM_W0,D$delay);


	and MGM_G1(ENABLE_NOT_D_AND_RB,RB$delay,MGM_W0);


	and MGM_G2(ENABLE_D_AND_RB,RB$delay,D$delay);


	buf MGM_G3(ENABLE_RB,RB$delay);


	not MGM_G4(MGM_W1,CK$delay);


	not MGM_G5(MGM_W2,D$delay);


	and MGM_G6(ENABLE_NOT_CK_AND_NOT_D,MGM_W2,MGM_W1);


	not MGM_G7(MGM_W3,CK$delay);


	and MGM_G8(ENABLE_NOT_CK_AND_D,D$delay,MGM_W3);


	not MGM_G9(MGM_W4,D$delay);


	and MGM_G10(ENABLE_CK_AND_NOT_D,MGM_W4,CK$delay);


	and MGM_G11(ENABLE_CK_AND_D,D$delay,CK$delay);


	// spec_gates_end



   specify

	// specify_block_begin 

	// seq arc CK --> Q
	(posedge CK => (Q : D))  = (1.0,1.0);

	// seq arc RB --> Q
	(RB => Q)  = (1.0,1.0);

	$width(negedge CK &&& (ENABLE_NOT_D_AND_RB === 1'b1)
		,1.0,0,notifier);

	$width(posedge CK &&& (ENABLE_NOT_D_AND_RB === 1'b1)
		,1.0,0,notifier);

	$width(negedge CK &&& (ENABLE_D_AND_RB === 1'b1)
		,1.0,0,notifier);

	$width(posedge CK &&& (ENABLE_D_AND_RB === 1'b1)
		,1.0,0,notifier);

	// setuphold D- CK-LH
	$setuphold(posedge CK &&& (ENABLE_RB === 1'b1),
		posedge D &&& (ENABLE_RB === 1'b1),
		1.0,1.0,notifier,,,CK$delay,D$delay);

	// setuphold D- CK-LH
	$setuphold(posedge CK &&& (ENABLE_RB === 1'b1),
		negedge D &&& (ENABLE_RB === 1'b1),
		1.0,1.0,notifier,,,CK$delay,D$delay);

	// recrem RB-CK-posedge
	$recrem(posedge RB,posedge CK,1.0,1.0,notifier,,,RB$delay,CK$delay);

	$width(negedge RB &&& (ENABLE_NOT_CK_AND_NOT_D === 1'b1)
		,1.0,0,notifier);

	$width(negedge RB &&& (ENABLE_NOT_CK_AND_D === 1'b1)
		,1.0,0,notifier);

	$width(negedge RB &&& (ENABLE_CK_AND_NOT_D === 1'b1)
		,1.0,0,notifier);

	$width(negedge RB &&& (ENABLE_CK_AND_D === 1'b1)
		,1.0,0,notifier);

	// mpw CK_lh 
	$width(posedge CK,1.0,0,notifier);

	// mpw CK_hl 
	$width(negedge CK,1.0,0,notifier);

	// mpw RB_hl 
	$width(negedge RB,1.0,0,notifier);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module DFQRM8HM( Q, CK, D, RB , VDD, VSS);
inout VDD;
inout VSS;
input CK, D, RB;
output Q;
reg notifier;

   `ifdef FUNCTIONAL  //  functional //

	DFQRM8HM_func DFQRM8HM_behav_inst(.Q(Q),.CK(CK),.D(D),.RB(RB),.notifier(notifier),.VDD(VDD),.VSS(VSS));

   `else

	wire CK$delay ;

	wire D$delay ;

	wire RB$delay ;

	DFQRM8HM_func DFQRM8HM_inst(.Q(Q),.CK(CK$delay),.D(D$delay),.RB(RB$delay),.notifier(notifier),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	not MGM_G0(MGM_W0,D$delay);


	and MGM_G1(ENABLE_NOT_D_AND_RB,RB$delay,MGM_W0);


	and MGM_G2(ENABLE_D_AND_RB,RB$delay,D$delay);


	buf MGM_G3(ENABLE_RB,RB$delay);


	not MGM_G4(MGM_W1,CK$delay);


	not MGM_G5(MGM_W2,D$delay);


	and MGM_G6(ENABLE_NOT_CK_AND_NOT_D,MGM_W2,MGM_W1);


	not MGM_G7(MGM_W3,CK$delay);


	and MGM_G8(ENABLE_NOT_CK_AND_D,D$delay,MGM_W3);


	not MGM_G9(MGM_W4,D$delay);


	and MGM_G10(ENABLE_CK_AND_NOT_D,MGM_W4,CK$delay);


	and MGM_G11(ENABLE_CK_AND_D,D$delay,CK$delay);


	// spec_gates_end



   specify

	// specify_block_begin 

	// seq arc CK --> Q
	(posedge CK => (Q : D))  = (1.0,1.0);

	// seq arc RB --> Q
	(RB => Q)  = (1.0,1.0);

	$width(negedge CK &&& (ENABLE_NOT_D_AND_RB === 1'b1)
		,1.0,0,notifier);

	$width(posedge CK &&& (ENABLE_NOT_D_AND_RB === 1'b1)
		,1.0,0,notifier);

	$width(negedge CK &&& (ENABLE_D_AND_RB === 1'b1)
		,1.0,0,notifier);

	$width(posedge CK &&& (ENABLE_D_AND_RB === 1'b1)
		,1.0,0,notifier);

	// setuphold D- CK-LH
	$setuphold(posedge CK &&& (ENABLE_RB === 1'b1),
		posedge D &&& (ENABLE_RB === 1'b1),
		1.0,1.0,notifier,,,CK$delay,D$delay);

	// setuphold D- CK-LH
	$setuphold(posedge CK &&& (ENABLE_RB === 1'b1),
		negedge D &&& (ENABLE_RB === 1'b1),
		1.0,1.0,notifier,,,CK$delay,D$delay);

	// recrem RB-CK-posedge
	$recrem(posedge RB,posedge CK,1.0,1.0,notifier,,,RB$delay,CK$delay);

	$width(negedge RB &&& (ENABLE_NOT_CK_AND_NOT_D === 1'b1)
		,1.0,0,notifier);

	$width(negedge RB &&& (ENABLE_NOT_CK_AND_D === 1'b1)
		,1.0,0,notifier);

	$width(negedge RB &&& (ENABLE_CK_AND_NOT_D === 1'b1)
		,1.0,0,notifier);

	$width(negedge RB &&& (ENABLE_CK_AND_D === 1'b1)
		,1.0,0,notifier);

	// mpw CK_lh 
	$width(posedge CK,1.0,0,notifier);

	// mpw CK_hl 
	$width(negedge CK,1.0,0,notifier);

	// mpw RB_hl 
	$width(negedge RB,1.0,0,notifier);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module DFQRSM1HM( Q, CK, D, RB, SB , VDD, VSS);
inout VDD;
inout VSS;
input CK, D, RB, SB;
output Q;
reg notifier;

   `ifdef FUNCTIONAL  //  functional //

	DFQRSM1HM_func DFQRSM1HM_behav_inst(.Q(Q),.CK(CK),.D(D),.RB(RB),.SB(SB),.notifier(notifier),.VDD(VDD),.VSS(VSS));

   `else

	wire CK$delay ;

	wire D$delay ;

	wire RB$delay ;

	wire SB$delay ;

	DFQRSM1HM_func DFQRSM1HM_inst(.Q(Q),.CK(CK$delay),.D(D$delay),.RB(RB$delay),.SB(SB$delay),.notifier(notifier),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	not MGM_G0(MGM_W0,D$delay);


	and MGM_G1(MGM_W1,RB$delay,MGM_W0);


	and MGM_G2(ENABLE_NOT_D_AND_RB_AND_SB,SB$delay,MGM_W1);


	and MGM_G3(MGM_W2,RB$delay,D$delay);


	and MGM_G4(ENABLE_D_AND_RB_AND_SB,SB$delay,MGM_W2);


	and MGM_G5(ENABLE_RB_AND_SB,SB$delay,RB$delay);


	buf MGM_G6(ENABLE_SB,SB$delay);


	not MGM_G7(MGM_W3,CK$delay);


	not MGM_G8(MGM_W4,D$delay);


	and MGM_G9(MGM_W5,MGM_W4,MGM_W3);


	and MGM_G10(ENABLE_NOT_CK_AND_NOT_D_AND_SB,SB$delay,MGM_W5);


	not MGM_G11(MGM_W6,CK$delay);


	and MGM_G12(MGM_W7,D$delay,MGM_W6);


	and MGM_G13(ENABLE_NOT_CK_AND_D_AND_SB,SB$delay,MGM_W7);


	not MGM_G14(MGM_W8,D$delay);


	and MGM_G15(MGM_W9,MGM_W8,CK$delay);


	and MGM_G16(ENABLE_CK_AND_NOT_D_AND_SB,SB$delay,MGM_W9);


	and MGM_G17(MGM_W10,D$delay,CK$delay);


	and MGM_G18(ENABLE_CK_AND_D_AND_SB,SB$delay,MGM_W10);


	not MGM_G19(MGM_W11,CK$delay);


	not MGM_G20(MGM_W12,D$delay);


	and MGM_G21(ENABLE_NOT_CK_AND_NOT_D,MGM_W12,MGM_W11);


	not MGM_G22(MGM_W13,CK$delay);


	and MGM_G23(ENABLE_NOT_CK_AND_D,D$delay,MGM_W13);


	not MGM_G24(MGM_W14,D$delay);


	and MGM_G25(ENABLE_CK_AND_NOT_D,MGM_W14,CK$delay);


	and MGM_G26(ENABLE_CK_AND_D,D$delay,CK$delay);


	buf MGM_G27(ENABLE_RB,RB$delay);


	not MGM_G28(MGM_W15,CK$delay);


	not MGM_G29(MGM_W16,D$delay);


	and MGM_G30(MGM_W17,MGM_W16,MGM_W15);


	and MGM_G31(ENABLE_NOT_CK_AND_NOT_D_AND_RB,RB$delay,MGM_W17);


	not MGM_G32(MGM_W18,CK$delay);


	and MGM_G33(MGM_W19,D$delay,MGM_W18);


	and MGM_G34(ENABLE_NOT_CK_AND_D_AND_RB,RB$delay,MGM_W19);


	not MGM_G35(MGM_W20,D$delay);


	and MGM_G36(MGM_W21,MGM_W20,CK$delay);


	and MGM_G37(ENABLE_CK_AND_NOT_D_AND_RB,RB$delay,MGM_W21);


	and MGM_G38(MGM_W22,D$delay,CK$delay);


	and MGM_G39(ENABLE_CK_AND_D_AND_RB,RB$delay,MGM_W22);


	// spec_gates_end



   specify

	// specify_block_begin 

	// seq arc CK --> Q
	(posedge CK => (Q : D))  = (1.0,1.0);

	// seq arc RB --> Q
	(RB => Q)  = (1.0,1.0);

	// seq arc SB --> Q
	(SB => Q)  = (1.0,1.0);

	$width(negedge CK &&& (ENABLE_NOT_D_AND_RB_AND_SB === 1'b1)
		,1.0,0,notifier);

	$width(posedge CK &&& (ENABLE_NOT_D_AND_RB_AND_SB === 1'b1)
		,1.0,0,notifier);

	$width(negedge CK &&& (ENABLE_D_AND_RB_AND_SB === 1'b1)
		,1.0,0,notifier);

	$width(posedge CK &&& (ENABLE_D_AND_RB_AND_SB === 1'b1)
		,1.0,0,notifier);

	// setuphold D- CK-LH
	$setuphold(posedge CK &&& (ENABLE_RB_AND_SB === 1'b1),
		posedge D &&& (ENABLE_RB_AND_SB === 1'b1),
		1.0,1.0,notifier,,,CK$delay,D$delay);

	// setuphold D- CK-LH
	$setuphold(posedge CK &&& (ENABLE_RB_AND_SB === 1'b1),
		negedge D &&& (ENABLE_RB_AND_SB === 1'b1),
		1.0,1.0,notifier,,,CK$delay,D$delay);

	// recrem RB-CK-posedge
	$recrem(posedge RB &&& (ENABLE_SB === 1'b1),
		posedge CK &&& (ENABLE_SB === 1'b1),
		1.0,1.0,notifier,,,RB$delay,CK$delay);

	$width(negedge RB &&& (ENABLE_NOT_CK_AND_NOT_D_AND_SB === 1'b1)
		,1.0,0,notifier);

	$width(negedge RB &&& (ENABLE_NOT_CK_AND_D_AND_SB === 1'b1)
		,1.0,0,notifier);

	$width(negedge RB &&& (ENABLE_CK_AND_NOT_D_AND_SB === 1'b1)
		,1.0,0,notifier);

	$width(negedge RB &&& (ENABLE_CK_AND_D_AND_SB === 1'b1)
		,1.0,0,notifier);

	// setuphold RB- SB-LH
	$setuphold(posedge SB &&& (ENABLE_NOT_CK_AND_NOT_D === 1'b1),
		posedge RB &&& (ENABLE_NOT_CK_AND_NOT_D === 1'b1),
		1.0,1.0,notifier,,,SB$delay,RB$delay);

	// setuphold RB- SB-LH
	$setuphold(posedge SB &&& (ENABLE_NOT_CK_AND_D === 1'b1),
		posedge RB &&& (ENABLE_NOT_CK_AND_D === 1'b1),
		1.0,1.0,notifier,,,SB$delay,RB$delay);

	// setuphold RB- SB-LH
	$setuphold(posedge SB &&& (ENABLE_CK_AND_NOT_D === 1'b1),
		posedge RB &&& (ENABLE_CK_AND_NOT_D === 1'b1),
		1.0,1.0,notifier,,,SB$delay,RB$delay);

	// setuphold RB- SB-LH
	$setuphold(posedge SB &&& (ENABLE_CK_AND_D === 1'b1),
		posedge RB &&& (ENABLE_CK_AND_D === 1'b1),
		1.0,1.0,notifier,,,SB$delay,RB$delay);

	// recrem SB-CK-posedge
	$recrem(posedge SB &&& (ENABLE_RB === 1'b1),
		posedge CK &&& (ENABLE_RB === 1'b1),
		1.0,1.0,notifier,,,SB$delay,CK$delay);

	$width(negedge SB &&& (ENABLE_NOT_CK_AND_NOT_D_AND_RB === 1'b1)
		,1.0,0,notifier);

	$width(negedge SB &&& (ENABLE_NOT_CK_AND_D_AND_RB === 1'b1)
		,1.0,0,notifier);

	$width(negedge SB &&& (ENABLE_CK_AND_NOT_D_AND_RB === 1'b1)
		,1.0,0,notifier);

	$width(negedge SB &&& (ENABLE_CK_AND_D_AND_RB === 1'b1)
		,1.0,0,notifier);

	// mpw CK_lh 
	$width(posedge CK,1.0,0,notifier);

	// mpw CK_hl 
	$width(negedge CK,1.0,0,notifier);

	// mpw RB_hl 
	$width(negedge RB,1.0,0,notifier);

	// mpw SB_hl 
	$width(negedge SB,1.0,0,notifier);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module DFQRSM2HM( Q, CK, D, RB, SB , VDD, VSS);
inout VDD;
inout VSS;
input CK, D, RB, SB;
output Q;
reg notifier;

   `ifdef FUNCTIONAL  //  functional //

	DFQRSM2HM_func DFQRSM2HM_behav_inst(.Q(Q),.CK(CK),.D(D),.RB(RB),.SB(SB),.notifier(notifier),.VDD(VDD),.VSS(VSS));

   `else

	wire CK$delay ;

	wire D$delay ;

	wire RB$delay ;

	wire SB$delay ;

	DFQRSM2HM_func DFQRSM2HM_inst(.Q(Q),.CK(CK$delay),.D(D$delay),.RB(RB$delay),.SB(SB$delay),.notifier(notifier),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	not MGM_G0(MGM_W0,D$delay);


	and MGM_G1(MGM_W1,RB$delay,MGM_W0);


	and MGM_G2(ENABLE_NOT_D_AND_RB_AND_SB,SB$delay,MGM_W1);


	and MGM_G3(MGM_W2,RB$delay,D$delay);


	and MGM_G4(ENABLE_D_AND_RB_AND_SB,SB$delay,MGM_W2);


	and MGM_G5(ENABLE_RB_AND_SB,SB$delay,RB$delay);


	buf MGM_G6(ENABLE_SB,SB$delay);


	not MGM_G7(MGM_W3,CK$delay);


	not MGM_G8(MGM_W4,D$delay);


	and MGM_G9(MGM_W5,MGM_W4,MGM_W3);


	and MGM_G10(ENABLE_NOT_CK_AND_NOT_D_AND_SB,SB$delay,MGM_W5);


	not MGM_G11(MGM_W6,CK$delay);


	and MGM_G12(MGM_W7,D$delay,MGM_W6);


	and MGM_G13(ENABLE_NOT_CK_AND_D_AND_SB,SB$delay,MGM_W7);


	not MGM_G14(MGM_W8,D$delay);


	and MGM_G15(MGM_W9,MGM_W8,CK$delay);


	and MGM_G16(ENABLE_CK_AND_NOT_D_AND_SB,SB$delay,MGM_W9);


	and MGM_G17(MGM_W10,D$delay,CK$delay);


	and MGM_G18(ENABLE_CK_AND_D_AND_SB,SB$delay,MGM_W10);


	not MGM_G19(MGM_W11,CK$delay);


	not MGM_G20(MGM_W12,D$delay);


	and MGM_G21(ENABLE_NOT_CK_AND_NOT_D,MGM_W12,MGM_W11);


	not MGM_G22(MGM_W13,CK$delay);


	and MGM_G23(ENABLE_NOT_CK_AND_D,D$delay,MGM_W13);


	not MGM_G24(MGM_W14,D$delay);


	and MGM_G25(ENABLE_CK_AND_NOT_D,MGM_W14,CK$delay);


	and MGM_G26(ENABLE_CK_AND_D,D$delay,CK$delay);


	buf MGM_G27(ENABLE_RB,RB$delay);


	not MGM_G28(MGM_W15,CK$delay);


	not MGM_G29(MGM_W16,D$delay);


	and MGM_G30(MGM_W17,MGM_W16,MGM_W15);


	and MGM_G31(ENABLE_NOT_CK_AND_NOT_D_AND_RB,RB$delay,MGM_W17);


	not MGM_G32(MGM_W18,CK$delay);


	and MGM_G33(MGM_W19,D$delay,MGM_W18);


	and MGM_G34(ENABLE_NOT_CK_AND_D_AND_RB,RB$delay,MGM_W19);


	not MGM_G35(MGM_W20,D$delay);


	and MGM_G36(MGM_W21,MGM_W20,CK$delay);


	and MGM_G37(ENABLE_CK_AND_NOT_D_AND_RB,RB$delay,MGM_W21);


	and MGM_G38(MGM_W22,D$delay,CK$delay);


	and MGM_G39(ENABLE_CK_AND_D_AND_RB,RB$delay,MGM_W22);


	// spec_gates_end



   specify

	// specify_block_begin 

	// seq arc CK --> Q
	(posedge CK => (Q : D))  = (1.0,1.0);

	// seq arc RB --> Q
	(RB => Q)  = (1.0,1.0);

	// seq arc SB --> Q
	(SB => Q)  = (1.0,1.0);

	$width(negedge CK &&& (ENABLE_NOT_D_AND_RB_AND_SB === 1'b1)
		,1.0,0,notifier);

	$width(posedge CK &&& (ENABLE_NOT_D_AND_RB_AND_SB === 1'b1)
		,1.0,0,notifier);

	$width(negedge CK &&& (ENABLE_D_AND_RB_AND_SB === 1'b1)
		,1.0,0,notifier);

	$width(posedge CK &&& (ENABLE_D_AND_RB_AND_SB === 1'b1)
		,1.0,0,notifier);

	// setuphold D- CK-LH
	$setuphold(posedge CK &&& (ENABLE_RB_AND_SB === 1'b1),
		posedge D &&& (ENABLE_RB_AND_SB === 1'b1),
		1.0,1.0,notifier,,,CK$delay,D$delay);

	// setuphold D- CK-LH
	$setuphold(posedge CK &&& (ENABLE_RB_AND_SB === 1'b1),
		negedge D &&& (ENABLE_RB_AND_SB === 1'b1),
		1.0,1.0,notifier,,,CK$delay,D$delay);

	// recrem RB-CK-posedge
	$recrem(posedge RB &&& (ENABLE_SB === 1'b1),
		posedge CK &&& (ENABLE_SB === 1'b1),
		1.0,1.0,notifier,,,RB$delay,CK$delay);

	$width(negedge RB &&& (ENABLE_NOT_CK_AND_NOT_D_AND_SB === 1'b1)
		,1.0,0,notifier);

	$width(negedge RB &&& (ENABLE_NOT_CK_AND_D_AND_SB === 1'b1)
		,1.0,0,notifier);

	$width(negedge RB &&& (ENABLE_CK_AND_NOT_D_AND_SB === 1'b1)
		,1.0,0,notifier);

	$width(negedge RB &&& (ENABLE_CK_AND_D_AND_SB === 1'b1)
		,1.0,0,notifier);

	// setuphold RB- SB-LH
	$setuphold(posedge SB &&& (ENABLE_NOT_CK_AND_NOT_D === 1'b1),
		posedge RB &&& (ENABLE_NOT_CK_AND_NOT_D === 1'b1),
		1.0,1.0,notifier,,,SB$delay,RB$delay);

	// setuphold RB- SB-LH
	$setuphold(posedge SB &&& (ENABLE_NOT_CK_AND_D === 1'b1),
		posedge RB &&& (ENABLE_NOT_CK_AND_D === 1'b1),
		1.0,1.0,notifier,,,SB$delay,RB$delay);

	// setuphold RB- SB-LH
	$setuphold(posedge SB &&& (ENABLE_CK_AND_NOT_D === 1'b1),
		posedge RB &&& (ENABLE_CK_AND_NOT_D === 1'b1),
		1.0,1.0,notifier,,,SB$delay,RB$delay);

	// setuphold RB- SB-LH
	$setuphold(posedge SB &&& (ENABLE_CK_AND_D === 1'b1),
		posedge RB &&& (ENABLE_CK_AND_D === 1'b1),
		1.0,1.0,notifier,,,SB$delay,RB$delay);

	// recrem SB-CK-posedge
	$recrem(posedge SB &&& (ENABLE_RB === 1'b1),
		posedge CK &&& (ENABLE_RB === 1'b1),
		1.0,1.0,notifier,,,SB$delay,CK$delay);

	$width(negedge SB &&& (ENABLE_NOT_CK_AND_NOT_D_AND_RB === 1'b1)
		,1.0,0,notifier);

	$width(negedge SB &&& (ENABLE_NOT_CK_AND_D_AND_RB === 1'b1)
		,1.0,0,notifier);

	$width(negedge SB &&& (ENABLE_CK_AND_NOT_D_AND_RB === 1'b1)
		,1.0,0,notifier);

	$width(negedge SB &&& (ENABLE_CK_AND_D_AND_RB === 1'b1)
		,1.0,0,notifier);

	// mpw CK_lh 
	$width(posedge CK,1.0,0,notifier);

	// mpw CK_hl 
	$width(negedge CK,1.0,0,notifier);

	// mpw RB_hl 
	$width(negedge RB,1.0,0,notifier);

	// mpw SB_hl 
	$width(negedge SB,1.0,0,notifier);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module DFQRSM4HM( Q, CK, D, RB, SB , VDD, VSS);
inout VDD;
inout VSS;
input CK, D, RB, SB;
output Q;
reg notifier;

   `ifdef FUNCTIONAL  //  functional //

	DFQRSM4HM_func DFQRSM4HM_behav_inst(.Q(Q),.CK(CK),.D(D),.RB(RB),.SB(SB),.notifier(notifier),.VDD(VDD),.VSS(VSS));

   `else

	wire CK$delay ;

	wire D$delay ;

	wire RB$delay ;

	wire SB$delay ;

	DFQRSM4HM_func DFQRSM4HM_inst(.Q(Q),.CK(CK$delay),.D(D$delay),.RB(RB$delay),.SB(SB$delay),.notifier(notifier),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	not MGM_G0(MGM_W0,D$delay);


	and MGM_G1(MGM_W1,RB$delay,MGM_W0);


	and MGM_G2(ENABLE_NOT_D_AND_RB_AND_SB,SB$delay,MGM_W1);


	and MGM_G3(MGM_W2,RB$delay,D$delay);


	and MGM_G4(ENABLE_D_AND_RB_AND_SB,SB$delay,MGM_W2);


	and MGM_G5(ENABLE_RB_AND_SB,SB$delay,RB$delay);


	buf MGM_G6(ENABLE_SB,SB$delay);


	not MGM_G7(MGM_W3,CK$delay);


	not MGM_G8(MGM_W4,D$delay);


	and MGM_G9(MGM_W5,MGM_W4,MGM_W3);


	and MGM_G10(ENABLE_NOT_CK_AND_NOT_D_AND_SB,SB$delay,MGM_W5);


	not MGM_G11(MGM_W6,CK$delay);


	and MGM_G12(MGM_W7,D$delay,MGM_W6);


	and MGM_G13(ENABLE_NOT_CK_AND_D_AND_SB,SB$delay,MGM_W7);


	not MGM_G14(MGM_W8,D$delay);


	and MGM_G15(MGM_W9,MGM_W8,CK$delay);


	and MGM_G16(ENABLE_CK_AND_NOT_D_AND_SB,SB$delay,MGM_W9);


	and MGM_G17(MGM_W10,D$delay,CK$delay);


	and MGM_G18(ENABLE_CK_AND_D_AND_SB,SB$delay,MGM_W10);


	not MGM_G19(MGM_W11,CK$delay);


	not MGM_G20(MGM_W12,D$delay);


	and MGM_G21(ENABLE_NOT_CK_AND_NOT_D,MGM_W12,MGM_W11);


	not MGM_G22(MGM_W13,CK$delay);


	and MGM_G23(ENABLE_NOT_CK_AND_D,D$delay,MGM_W13);


	not MGM_G24(MGM_W14,D$delay);


	and MGM_G25(ENABLE_CK_AND_NOT_D,MGM_W14,CK$delay);


	and MGM_G26(ENABLE_CK_AND_D,D$delay,CK$delay);


	buf MGM_G27(ENABLE_RB,RB$delay);


	not MGM_G28(MGM_W15,CK$delay);


	not MGM_G29(MGM_W16,D$delay);


	and MGM_G30(MGM_W17,MGM_W16,MGM_W15);


	and MGM_G31(ENABLE_NOT_CK_AND_NOT_D_AND_RB,RB$delay,MGM_W17);


	not MGM_G32(MGM_W18,CK$delay);


	and MGM_G33(MGM_W19,D$delay,MGM_W18);


	and MGM_G34(ENABLE_NOT_CK_AND_D_AND_RB,RB$delay,MGM_W19);


	not MGM_G35(MGM_W20,D$delay);


	and MGM_G36(MGM_W21,MGM_W20,CK$delay);


	and MGM_G37(ENABLE_CK_AND_NOT_D_AND_RB,RB$delay,MGM_W21);


	and MGM_G38(MGM_W22,D$delay,CK$delay);


	and MGM_G39(ENABLE_CK_AND_D_AND_RB,RB$delay,MGM_W22);


	// spec_gates_end



   specify

	// specify_block_begin 

	// seq arc CK --> Q
	(posedge CK => (Q : D))  = (1.0,1.0);

	// seq arc RB --> Q
	(RB => Q)  = (1.0,1.0);

	// seq arc SB --> Q
	(SB => Q)  = (1.0,1.0);

	$width(negedge CK &&& (ENABLE_NOT_D_AND_RB_AND_SB === 1'b1)
		,1.0,0,notifier);

	$width(posedge CK &&& (ENABLE_NOT_D_AND_RB_AND_SB === 1'b1)
		,1.0,0,notifier);

	$width(negedge CK &&& (ENABLE_D_AND_RB_AND_SB === 1'b1)
		,1.0,0,notifier);

	$width(posedge CK &&& (ENABLE_D_AND_RB_AND_SB === 1'b1)
		,1.0,0,notifier);

	// setuphold D- CK-LH
	$setuphold(posedge CK &&& (ENABLE_RB_AND_SB === 1'b1),
		posedge D &&& (ENABLE_RB_AND_SB === 1'b1),
		1.0,1.0,notifier,,,CK$delay,D$delay);

	// setuphold D- CK-LH
	$setuphold(posedge CK &&& (ENABLE_RB_AND_SB === 1'b1),
		negedge D &&& (ENABLE_RB_AND_SB === 1'b1),
		1.0,1.0,notifier,,,CK$delay,D$delay);

	// recrem RB-CK-posedge
	$recrem(posedge RB &&& (ENABLE_SB === 1'b1),
		posedge CK &&& (ENABLE_SB === 1'b1),
		1.0,1.0,notifier,,,RB$delay,CK$delay);

	$width(negedge RB &&& (ENABLE_NOT_CK_AND_NOT_D_AND_SB === 1'b1)
		,1.0,0,notifier);

	$width(negedge RB &&& (ENABLE_NOT_CK_AND_D_AND_SB === 1'b1)
		,1.0,0,notifier);

	$width(negedge RB &&& (ENABLE_CK_AND_NOT_D_AND_SB === 1'b1)
		,1.0,0,notifier);

	$width(negedge RB &&& (ENABLE_CK_AND_D_AND_SB === 1'b1)
		,1.0,0,notifier);

	// setuphold RB- SB-LH
	$setuphold(posedge SB &&& (ENABLE_NOT_CK_AND_NOT_D === 1'b1),
		posedge RB &&& (ENABLE_NOT_CK_AND_NOT_D === 1'b1),
		1.0,1.0,notifier,,,SB$delay,RB$delay);

	// setuphold RB- SB-LH
	$setuphold(posedge SB &&& (ENABLE_NOT_CK_AND_D === 1'b1),
		posedge RB &&& (ENABLE_NOT_CK_AND_D === 1'b1),
		1.0,1.0,notifier,,,SB$delay,RB$delay);

	// setuphold RB- SB-LH
	$setuphold(posedge SB &&& (ENABLE_CK_AND_NOT_D === 1'b1),
		posedge RB &&& (ENABLE_CK_AND_NOT_D === 1'b1),
		1.0,1.0,notifier,,,SB$delay,RB$delay);

	// setuphold RB- SB-LH
	$setuphold(posedge SB &&& (ENABLE_CK_AND_D === 1'b1),
		posedge RB &&& (ENABLE_CK_AND_D === 1'b1),
		1.0,1.0,notifier,,,SB$delay,RB$delay);

	// recrem SB-CK-posedge
	$recrem(posedge SB &&& (ENABLE_RB === 1'b1),
		posedge CK &&& (ENABLE_RB === 1'b1),
		1.0,1.0,notifier,,,SB$delay,CK$delay);

	$width(negedge SB &&& (ENABLE_NOT_CK_AND_NOT_D_AND_RB === 1'b1)
		,1.0,0,notifier);

	$width(negedge SB &&& (ENABLE_NOT_CK_AND_D_AND_RB === 1'b1)
		,1.0,0,notifier);

	$width(negedge SB &&& (ENABLE_CK_AND_NOT_D_AND_RB === 1'b1)
		,1.0,0,notifier);

	$width(negedge SB &&& (ENABLE_CK_AND_D_AND_RB === 1'b1)
		,1.0,0,notifier);

	// mpw CK_lh 
	$width(posedge CK,1.0,0,notifier);

	// mpw CK_hl 
	$width(negedge CK,1.0,0,notifier);

	// mpw RB_hl 
	$width(negedge RB,1.0,0,notifier);

	// mpw SB_hl 
	$width(negedge SB,1.0,0,notifier);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module DFQRSM8HM( Q, CK, D, RB, SB , VDD, VSS);
inout VDD;
inout VSS;
input CK, D, RB, SB;
output Q;
reg notifier;

   `ifdef FUNCTIONAL  //  functional //

	DFQRSM8HM_func DFQRSM8HM_behav_inst(.Q(Q),.CK(CK),.D(D),.RB(RB),.SB(SB),.notifier(notifier),.VDD(VDD),.VSS(VSS));

   `else

	wire CK$delay ;

	wire D$delay ;

	wire RB$delay ;

	wire SB$delay ;

	DFQRSM8HM_func DFQRSM8HM_inst(.Q(Q),.CK(CK$delay),.D(D$delay),.RB(RB$delay),.SB(SB$delay),.notifier(notifier),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	not MGM_G0(MGM_W0,D$delay);


	and MGM_G1(MGM_W1,RB$delay,MGM_W0);


	and MGM_G2(ENABLE_NOT_D_AND_RB_AND_SB,SB$delay,MGM_W1);


	and MGM_G3(MGM_W2,RB$delay,D$delay);


	and MGM_G4(ENABLE_D_AND_RB_AND_SB,SB$delay,MGM_W2);


	and MGM_G5(ENABLE_RB_AND_SB,SB$delay,RB$delay);


	buf MGM_G6(ENABLE_SB,SB$delay);


	not MGM_G7(MGM_W3,CK$delay);


	not MGM_G8(MGM_W4,D$delay);


	and MGM_G9(MGM_W5,MGM_W4,MGM_W3);


	and MGM_G10(ENABLE_NOT_CK_AND_NOT_D_AND_SB,SB$delay,MGM_W5);


	not MGM_G11(MGM_W6,CK$delay);


	and MGM_G12(MGM_W7,D$delay,MGM_W6);


	and MGM_G13(ENABLE_NOT_CK_AND_D_AND_SB,SB$delay,MGM_W7);


	not MGM_G14(MGM_W8,D$delay);


	and MGM_G15(MGM_W9,MGM_W8,CK$delay);


	and MGM_G16(ENABLE_CK_AND_NOT_D_AND_SB,SB$delay,MGM_W9);


	and MGM_G17(MGM_W10,D$delay,CK$delay);


	and MGM_G18(ENABLE_CK_AND_D_AND_SB,SB$delay,MGM_W10);


	not MGM_G19(MGM_W11,CK$delay);


	not MGM_G20(MGM_W12,D$delay);


	and MGM_G21(ENABLE_NOT_CK_AND_NOT_D,MGM_W12,MGM_W11);


	not MGM_G22(MGM_W13,CK$delay);


	and MGM_G23(ENABLE_NOT_CK_AND_D,D$delay,MGM_W13);


	not MGM_G24(MGM_W14,D$delay);


	and MGM_G25(ENABLE_CK_AND_NOT_D,MGM_W14,CK$delay);


	and MGM_G26(ENABLE_CK_AND_D,D$delay,CK$delay);


	buf MGM_G27(ENABLE_RB,RB$delay);


	not MGM_G28(MGM_W15,CK$delay);


	not MGM_G29(MGM_W16,D$delay);


	and MGM_G30(MGM_W17,MGM_W16,MGM_W15);


	and MGM_G31(ENABLE_NOT_CK_AND_NOT_D_AND_RB,RB$delay,MGM_W17);


	not MGM_G32(MGM_W18,CK$delay);


	and MGM_G33(MGM_W19,D$delay,MGM_W18);


	and MGM_G34(ENABLE_NOT_CK_AND_D_AND_RB,RB$delay,MGM_W19);


	not MGM_G35(MGM_W20,D$delay);


	and MGM_G36(MGM_W21,MGM_W20,CK$delay);


	and MGM_G37(ENABLE_CK_AND_NOT_D_AND_RB,RB$delay,MGM_W21);


	and MGM_G38(MGM_W22,D$delay,CK$delay);


	and MGM_G39(ENABLE_CK_AND_D_AND_RB,RB$delay,MGM_W22);


	// spec_gates_end



   specify

	// specify_block_begin 

	// seq arc CK --> Q
	(posedge CK => (Q : D))  = (1.0,1.0);

	// seq arc RB --> Q
	(RB => Q)  = (1.0,1.0);

	// seq arc SB --> Q
	(SB => Q)  = (1.0,1.0);

	$width(negedge CK &&& (ENABLE_NOT_D_AND_RB_AND_SB === 1'b1)
		,1.0,0,notifier);

	$width(posedge CK &&& (ENABLE_NOT_D_AND_RB_AND_SB === 1'b1)
		,1.0,0,notifier);

	$width(negedge CK &&& (ENABLE_D_AND_RB_AND_SB === 1'b1)
		,1.0,0,notifier);

	$width(posedge CK &&& (ENABLE_D_AND_RB_AND_SB === 1'b1)
		,1.0,0,notifier);

	// setuphold D- CK-LH
	$setuphold(posedge CK &&& (ENABLE_RB_AND_SB === 1'b1),
		posedge D &&& (ENABLE_RB_AND_SB === 1'b1),
		1.0,1.0,notifier,,,CK$delay,D$delay);

	// setuphold D- CK-LH
	$setuphold(posedge CK &&& (ENABLE_RB_AND_SB === 1'b1),
		negedge D &&& (ENABLE_RB_AND_SB === 1'b1),
		1.0,1.0,notifier,,,CK$delay,D$delay);

	// recrem RB-CK-posedge
	$recrem(posedge RB &&& (ENABLE_SB === 1'b1),
		posedge CK &&& (ENABLE_SB === 1'b1),
		1.0,1.0,notifier,,,RB$delay,CK$delay);

	$width(negedge RB &&& (ENABLE_NOT_CK_AND_NOT_D_AND_SB === 1'b1)
		,1.0,0,notifier);

	$width(negedge RB &&& (ENABLE_NOT_CK_AND_D_AND_SB === 1'b1)
		,1.0,0,notifier);

	$width(negedge RB &&& (ENABLE_CK_AND_NOT_D_AND_SB === 1'b1)
		,1.0,0,notifier);

	$width(negedge RB &&& (ENABLE_CK_AND_D_AND_SB === 1'b1)
		,1.0,0,notifier);

	// setuphold RB- SB-LH
	$setuphold(posedge SB &&& (ENABLE_NOT_CK_AND_NOT_D === 1'b1),
		posedge RB &&& (ENABLE_NOT_CK_AND_NOT_D === 1'b1),
		1.0,1.0,notifier,,,SB$delay,RB$delay);

	// setuphold RB- SB-LH
	$setuphold(posedge SB &&& (ENABLE_NOT_CK_AND_D === 1'b1),
		posedge RB &&& (ENABLE_NOT_CK_AND_D === 1'b1),
		1.0,1.0,notifier,,,SB$delay,RB$delay);

	// setuphold RB- SB-LH
	$setuphold(posedge SB &&& (ENABLE_CK_AND_NOT_D === 1'b1),
		posedge RB &&& (ENABLE_CK_AND_NOT_D === 1'b1),
		1.0,1.0,notifier,,,SB$delay,RB$delay);

	// setuphold RB- SB-LH
	$setuphold(posedge SB &&& (ENABLE_CK_AND_D === 1'b1),
		posedge RB &&& (ENABLE_CK_AND_D === 1'b1),
		1.0,1.0,notifier,,,SB$delay,RB$delay);

	// recrem SB-CK-posedge
	$recrem(posedge SB &&& (ENABLE_RB === 1'b1),
		posedge CK &&& (ENABLE_RB === 1'b1),
		1.0,1.0,notifier,,,SB$delay,CK$delay);

	$width(negedge SB &&& (ENABLE_NOT_CK_AND_NOT_D_AND_RB === 1'b1)
		,1.0,0,notifier);

	$width(negedge SB &&& (ENABLE_NOT_CK_AND_D_AND_RB === 1'b1)
		,1.0,0,notifier);

	$width(negedge SB &&& (ENABLE_CK_AND_NOT_D_AND_RB === 1'b1)
		,1.0,0,notifier);

	$width(negedge SB &&& (ENABLE_CK_AND_D_AND_RB === 1'b1)
		,1.0,0,notifier);

	// mpw CK_lh 
	$width(posedge CK,1.0,0,notifier);

	// mpw CK_hl 
	$width(negedge CK,1.0,0,notifier);

	// mpw RB_hl 
	$width(negedge RB,1.0,0,notifier);

	// mpw SB_hl 
	$width(negedge SB,1.0,0,notifier);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module DFQSM1HM( Q, CK, D, SB , VDD, VSS);
inout VDD;
inout VSS;
input CK, D, SB;
output Q;
reg notifier;

   `ifdef FUNCTIONAL  //  functional //

	DFQSM1HM_func DFQSM1HM_behav_inst(.Q(Q),.CK(CK),.D(D),.SB(SB),.notifier(notifier),.VDD(VDD),.VSS(VSS));

   `else

	wire CK$delay ;

	wire D$delay ;

	wire SB$delay ;

	DFQSM1HM_func DFQSM1HM_inst(.Q(Q),.CK(CK$delay),.D(D$delay),.SB(SB$delay),.notifier(notifier),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	not MGM_G0(MGM_W0,D$delay);


	and MGM_G1(ENABLE_NOT_D_AND_SB,SB$delay,MGM_W0);


	and MGM_G2(ENABLE_D_AND_SB,SB$delay,D$delay);


	buf MGM_G3(ENABLE_SB,SB$delay);


	not MGM_G4(MGM_W1,CK$delay);


	not MGM_G5(MGM_W2,D$delay);


	and MGM_G6(ENABLE_NOT_CK_AND_NOT_D,MGM_W2,MGM_W1);


	not MGM_G7(MGM_W3,CK$delay);


	and MGM_G8(ENABLE_NOT_CK_AND_D,D$delay,MGM_W3);


	not MGM_G9(MGM_W4,D$delay);


	and MGM_G10(ENABLE_CK_AND_NOT_D,MGM_W4,CK$delay);


	and MGM_G11(ENABLE_CK_AND_D,D$delay,CK$delay);


	// spec_gates_end



   specify

	// specify_block_begin 

	// seq arc CK --> Q
	(posedge CK => (Q : D))  = (1.0,1.0);

	// seq arc SB --> Q
	(SB => Q)  = (1.0,1.0);

	$width(negedge CK &&& (ENABLE_NOT_D_AND_SB === 1'b1)
		,1.0,0,notifier);

	$width(posedge CK &&& (ENABLE_NOT_D_AND_SB === 1'b1)
		,1.0,0,notifier);

	$width(negedge CK &&& (ENABLE_D_AND_SB === 1'b1)
		,1.0,0,notifier);

	$width(posedge CK &&& (ENABLE_D_AND_SB === 1'b1)
		,1.0,0,notifier);

	// setuphold D- CK-LH
	$setuphold(posedge CK &&& (ENABLE_SB === 1'b1),
		posedge D &&& (ENABLE_SB === 1'b1),
		1.0,1.0,notifier,,,CK$delay,D$delay);

	// setuphold D- CK-LH
	$setuphold(posedge CK &&& (ENABLE_SB === 1'b1),
		negedge D &&& (ENABLE_SB === 1'b1),
		1.0,1.0,notifier,,,CK$delay,D$delay);

	// recrem SB-CK-posedge
	$recrem(posedge SB,posedge CK,1.0,1.0,notifier,,,SB$delay,CK$delay);

	$width(negedge SB &&& (ENABLE_NOT_CK_AND_NOT_D === 1'b1)
		,1.0,0,notifier);

	$width(negedge SB &&& (ENABLE_NOT_CK_AND_D === 1'b1)
		,1.0,0,notifier);

	$width(negedge SB &&& (ENABLE_CK_AND_NOT_D === 1'b1)
		,1.0,0,notifier);

	$width(negedge SB &&& (ENABLE_CK_AND_D === 1'b1)
		,1.0,0,notifier);

	// mpw CK_lh 
	$width(posedge CK,1.0,0,notifier);

	// mpw CK_hl 
	$width(negedge CK,1.0,0,notifier);

	// mpw SB_hl 
	$width(negedge SB,1.0,0,notifier);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module DFQSM2HM( Q, CK, D, SB , VDD, VSS);
inout VDD;
inout VSS;
input CK, D, SB;
output Q;
reg notifier;

   `ifdef FUNCTIONAL  //  functional //

	DFQSM2HM_func DFQSM2HM_behav_inst(.Q(Q),.CK(CK),.D(D),.SB(SB),.notifier(notifier),.VDD(VDD),.VSS(VSS));

   `else

	wire CK$delay ;

	wire D$delay ;

	wire SB$delay ;

	DFQSM2HM_func DFQSM2HM_inst(.Q(Q),.CK(CK$delay),.D(D$delay),.SB(SB$delay),.notifier(notifier),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	not MGM_G0(MGM_W0,D$delay);


	and MGM_G1(ENABLE_NOT_D_AND_SB,SB$delay,MGM_W0);


	and MGM_G2(ENABLE_D_AND_SB,SB$delay,D$delay);


	buf MGM_G3(ENABLE_SB,SB$delay);


	not MGM_G4(MGM_W1,CK$delay);


	not MGM_G5(MGM_W2,D$delay);


	and MGM_G6(ENABLE_NOT_CK_AND_NOT_D,MGM_W2,MGM_W1);


	not MGM_G7(MGM_W3,CK$delay);


	and MGM_G8(ENABLE_NOT_CK_AND_D,D$delay,MGM_W3);


	not MGM_G9(MGM_W4,D$delay);


	and MGM_G10(ENABLE_CK_AND_NOT_D,MGM_W4,CK$delay);


	and MGM_G11(ENABLE_CK_AND_D,D$delay,CK$delay);


	// spec_gates_end



   specify

	// specify_block_begin 

	// seq arc CK --> Q
	(posedge CK => (Q : D))  = (1.0,1.0);

	// seq arc SB --> Q
	(SB => Q)  = (1.0,1.0);

	$width(negedge CK &&& (ENABLE_NOT_D_AND_SB === 1'b1)
		,1.0,0,notifier);

	$width(posedge CK &&& (ENABLE_NOT_D_AND_SB === 1'b1)
		,1.0,0,notifier);

	$width(negedge CK &&& (ENABLE_D_AND_SB === 1'b1)
		,1.0,0,notifier);

	$width(posedge CK &&& (ENABLE_D_AND_SB === 1'b1)
		,1.0,0,notifier);

	// setuphold D- CK-LH
	$setuphold(posedge CK &&& (ENABLE_SB === 1'b1),
		posedge D &&& (ENABLE_SB === 1'b1),
		1.0,1.0,notifier,,,CK$delay,D$delay);

	// setuphold D- CK-LH
	$setuphold(posedge CK &&& (ENABLE_SB === 1'b1),
		negedge D &&& (ENABLE_SB === 1'b1),
		1.0,1.0,notifier,,,CK$delay,D$delay);

	// recrem SB-CK-posedge
	$recrem(posedge SB,posedge CK,1.0,1.0,notifier,,,SB$delay,CK$delay);

	$width(negedge SB &&& (ENABLE_NOT_CK_AND_NOT_D === 1'b1)
		,1.0,0,notifier);

	$width(negedge SB &&& (ENABLE_NOT_CK_AND_D === 1'b1)
		,1.0,0,notifier);

	$width(negedge SB &&& (ENABLE_CK_AND_NOT_D === 1'b1)
		,1.0,0,notifier);

	$width(negedge SB &&& (ENABLE_CK_AND_D === 1'b1)
		,1.0,0,notifier);

	// mpw CK_lh 
	$width(posedge CK,1.0,0,notifier);

	// mpw CK_hl 
	$width(negedge CK,1.0,0,notifier);

	// mpw SB_hl 
	$width(negedge SB,1.0,0,notifier);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module DFQSM4HM( Q, CK, D, SB , VDD, VSS);
inout VDD;
inout VSS;
input CK, D, SB;
output Q;
reg notifier;

   `ifdef FUNCTIONAL  //  functional //

	DFQSM4HM_func DFQSM4HM_behav_inst(.Q(Q),.CK(CK),.D(D),.SB(SB),.notifier(notifier),.VDD(VDD),.VSS(VSS));

   `else

	wire CK$delay ;

	wire D$delay ;

	wire SB$delay ;

	DFQSM4HM_func DFQSM4HM_inst(.Q(Q),.CK(CK$delay),.D(D$delay),.SB(SB$delay),.notifier(notifier),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	not MGM_G0(MGM_W0,D$delay);


	and MGM_G1(ENABLE_NOT_D_AND_SB,SB$delay,MGM_W0);


	and MGM_G2(ENABLE_D_AND_SB,SB$delay,D$delay);


	buf MGM_G3(ENABLE_SB,SB$delay);


	not MGM_G4(MGM_W1,CK$delay);


	not MGM_G5(MGM_W2,D$delay);


	and MGM_G6(ENABLE_NOT_CK_AND_NOT_D,MGM_W2,MGM_W1);


	not MGM_G7(MGM_W3,CK$delay);


	and MGM_G8(ENABLE_NOT_CK_AND_D,D$delay,MGM_W3);


	not MGM_G9(MGM_W4,D$delay);


	and MGM_G10(ENABLE_CK_AND_NOT_D,MGM_W4,CK$delay);


	and MGM_G11(ENABLE_CK_AND_D,D$delay,CK$delay);


	// spec_gates_end



   specify

	// specify_block_begin 

	// seq arc CK --> Q
	(posedge CK => (Q : D))  = (1.0,1.0);

	// seq arc SB --> Q
	(SB => Q)  = (1.0,1.0);

	$width(negedge CK &&& (ENABLE_NOT_D_AND_SB === 1'b1)
		,1.0,0,notifier);

	$width(posedge CK &&& (ENABLE_NOT_D_AND_SB === 1'b1)
		,1.0,0,notifier);

	$width(negedge CK &&& (ENABLE_D_AND_SB === 1'b1)
		,1.0,0,notifier);

	$width(posedge CK &&& (ENABLE_D_AND_SB === 1'b1)
		,1.0,0,notifier);

	// setuphold D- CK-LH
	$setuphold(posedge CK &&& (ENABLE_SB === 1'b1),
		posedge D &&& (ENABLE_SB === 1'b1),
		1.0,1.0,notifier,,,CK$delay,D$delay);

	// setuphold D- CK-LH
	$setuphold(posedge CK &&& (ENABLE_SB === 1'b1),
		negedge D &&& (ENABLE_SB === 1'b1),
		1.0,1.0,notifier,,,CK$delay,D$delay);

	// recrem SB-CK-posedge
	$recrem(posedge SB,posedge CK,1.0,1.0,notifier,,,SB$delay,CK$delay);

	$width(negedge SB &&& (ENABLE_NOT_CK_AND_NOT_D === 1'b1)
		,1.0,0,notifier);

	$width(negedge SB &&& (ENABLE_NOT_CK_AND_D === 1'b1)
		,1.0,0,notifier);

	$width(negedge SB &&& (ENABLE_CK_AND_NOT_D === 1'b1)
		,1.0,0,notifier);

	$width(negedge SB &&& (ENABLE_CK_AND_D === 1'b1)
		,1.0,0,notifier);

	// mpw CK_lh 
	$width(posedge CK,1.0,0,notifier);

	// mpw CK_hl 
	$width(negedge CK,1.0,0,notifier);

	// mpw SB_hl 
	$width(negedge SB,1.0,0,notifier);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module DFQSM8HM( Q, CK, D, SB , VDD, VSS);
inout VDD;
inout VSS;
input CK, D, SB;
output Q;
reg notifier;

   `ifdef FUNCTIONAL  //  functional //

	DFQSM8HM_func DFQSM8HM_behav_inst(.Q(Q),.CK(CK),.D(D),.SB(SB),.notifier(notifier),.VDD(VDD),.VSS(VSS));

   `else

	wire CK$delay ;

	wire D$delay ;

	wire SB$delay ;

	DFQSM8HM_func DFQSM8HM_inst(.Q(Q),.CK(CK$delay),.D(D$delay),.SB(SB$delay),.notifier(notifier),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	not MGM_G0(MGM_W0,D$delay);


	and MGM_G1(ENABLE_NOT_D_AND_SB,SB$delay,MGM_W0);


	and MGM_G2(ENABLE_D_AND_SB,SB$delay,D$delay);


	buf MGM_G3(ENABLE_SB,SB$delay);


	not MGM_G4(MGM_W1,CK$delay);


	not MGM_G5(MGM_W2,D$delay);


	and MGM_G6(ENABLE_NOT_CK_AND_NOT_D,MGM_W2,MGM_W1);


	not MGM_G7(MGM_W3,CK$delay);


	and MGM_G8(ENABLE_NOT_CK_AND_D,D$delay,MGM_W3);


	not MGM_G9(MGM_W4,D$delay);


	and MGM_G10(ENABLE_CK_AND_NOT_D,MGM_W4,CK$delay);


	and MGM_G11(ENABLE_CK_AND_D,D$delay,CK$delay);


	// spec_gates_end



   specify

	// specify_block_begin 

	// seq arc CK --> Q
	(posedge CK => (Q : D))  = (1.0,1.0);

	// seq arc SB --> Q
	(SB => Q)  = (1.0,1.0);

	$width(negedge CK &&& (ENABLE_NOT_D_AND_SB === 1'b1)
		,1.0,0,notifier);

	$width(posedge CK &&& (ENABLE_NOT_D_AND_SB === 1'b1)
		,1.0,0,notifier);

	$width(negedge CK &&& (ENABLE_D_AND_SB === 1'b1)
		,1.0,0,notifier);

	$width(posedge CK &&& (ENABLE_D_AND_SB === 1'b1)
		,1.0,0,notifier);

	// setuphold D- CK-LH
	$setuphold(posedge CK &&& (ENABLE_SB === 1'b1),
		posedge D &&& (ENABLE_SB === 1'b1),
		1.0,1.0,notifier,,,CK$delay,D$delay);

	// setuphold D- CK-LH
	$setuphold(posedge CK &&& (ENABLE_SB === 1'b1),
		negedge D &&& (ENABLE_SB === 1'b1),
		1.0,1.0,notifier,,,CK$delay,D$delay);

	// recrem SB-CK-posedge
	$recrem(posedge SB,posedge CK,1.0,1.0,notifier,,,SB$delay,CK$delay);

	$width(negedge SB &&& (ENABLE_NOT_CK_AND_NOT_D === 1'b1)
		,1.0,0,notifier);

	$width(negedge SB &&& (ENABLE_NOT_CK_AND_D === 1'b1)
		,1.0,0,notifier);

	$width(negedge SB &&& (ENABLE_CK_AND_NOT_D === 1'b1)
		,1.0,0,notifier);

	$width(negedge SB &&& (ENABLE_CK_AND_D === 1'b1)
		,1.0,0,notifier);

	// mpw CK_lh 
	$width(posedge CK,1.0,0,notifier);

	// mpw CK_hl 
	$width(negedge CK,1.0,0,notifier);

	// mpw SB_hl 
	$width(negedge SB,1.0,0,notifier);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module DFQZRM1HM( Q, CK, D, RB , VDD, VSS);
inout VDD;
inout VSS;
input CK, D, RB;
output Q;
reg notifier;

   `ifdef FUNCTIONAL  //  functional //

	DFQZRM1HM_func DFQZRM1HM_behav_inst(.Q(Q),.CK(CK),.D(D),.RB(RB),.notifier(notifier),.VDD(VDD),.VSS(VSS));

   `else

	wire CK$delay ;

	wire D$delay ;

	wire RB$delay ;

	DFQZRM1HM_func DFQZRM1HM_inst(.Q(Q),.CK(CK$delay),.D(D$delay),.RB(RB$delay),.notifier(notifier),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	not MGM_G0(MGM_W0,D$delay);


	not MGM_G1(MGM_W1,RB$delay);


	and MGM_G2(ENABLE_NOT_D_AND_NOT_RB,MGM_W1,MGM_W0);


	not MGM_G3(MGM_W2,D$delay);


	and MGM_G4(ENABLE_NOT_D_AND_RB,RB$delay,MGM_W2);


	not MGM_G5(MGM_W3,RB$delay);


	and MGM_G6(ENABLE_D_AND_NOT_RB,MGM_W3,D$delay);


	and MGM_G7(ENABLE_D_AND_RB,RB$delay,D$delay);


	// spec_gates_end



   specify

	// specify_block_begin 

	// seq arc CK --> Q
	(posedge CK => (Q : D))  = (1.0,1.0);

	$width(negedge CK &&& (ENABLE_NOT_D_AND_NOT_RB === 1'b1)
		,1.0,0,notifier);

	$width(posedge CK &&& (ENABLE_NOT_D_AND_NOT_RB === 1'b1)
		,1.0,0,notifier);

	$width(negedge CK &&& (ENABLE_NOT_D_AND_RB === 1'b1)
		,1.0,0,notifier);

	$width(posedge CK &&& (ENABLE_NOT_D_AND_RB === 1'b1)
		,1.0,0,notifier);

	$width(negedge CK &&& (ENABLE_D_AND_NOT_RB === 1'b1)
		,1.0,0,notifier);

	$width(posedge CK &&& (ENABLE_D_AND_NOT_RB === 1'b1)
		,1.0,0,notifier);

	$width(negedge CK &&& (ENABLE_D_AND_RB === 1'b1)
		,1.0,0,notifier);

	$width(posedge CK &&& (ENABLE_D_AND_RB === 1'b1)
		,1.0,0,notifier);

	// setuphold D- CK-LH
	$setuphold(posedge CK,posedge D,1.0,1.0,notifier,,,CK$delay,D$delay);

	// setuphold D- CK-LH
	$setuphold(posedge CK,negedge D,1.0,1.0,notifier,,,CK$delay,D$delay);

	// setuphold RB- CK-LH
	$setuphold(posedge CK,posedge RB,1.0,1.0,notifier,,,CK$delay,RB$delay);

	// setuphold RB- CK-LH
	$setuphold(posedge CK,negedge RB,1.0,1.0,notifier,,,CK$delay,RB$delay);

	// mpw CK_lh 
	$width(posedge CK,1.0,0,notifier);

	// mpw CK_hl 
	$width(negedge CK,1.0,0,notifier);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module DFQZRM2HM( Q, CK, D, RB , VDD, VSS);
inout VDD;
inout VSS;
input CK, D, RB;
output Q;
reg notifier;

   `ifdef FUNCTIONAL  //  functional //

	DFQZRM2HM_func DFQZRM2HM_behav_inst(.Q(Q),.CK(CK),.D(D),.RB(RB),.notifier(notifier),.VDD(VDD),.VSS(VSS));

   `else

	wire CK$delay ;

	wire D$delay ;

	wire RB$delay ;

	DFQZRM2HM_func DFQZRM2HM_inst(.Q(Q),.CK(CK$delay),.D(D$delay),.RB(RB$delay),.notifier(notifier),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	not MGM_G0(MGM_W0,D$delay);


	not MGM_G1(MGM_W1,RB$delay);


	and MGM_G2(ENABLE_NOT_D_AND_NOT_RB,MGM_W1,MGM_W0);


	not MGM_G3(MGM_W2,D$delay);


	and MGM_G4(ENABLE_NOT_D_AND_RB,RB$delay,MGM_W2);


	not MGM_G5(MGM_W3,RB$delay);


	and MGM_G6(ENABLE_D_AND_NOT_RB,MGM_W3,D$delay);


	and MGM_G7(ENABLE_D_AND_RB,RB$delay,D$delay);


	// spec_gates_end



   specify

	// specify_block_begin 

	// seq arc CK --> Q
	(posedge CK => (Q : D))  = (1.0,1.0);

	$width(negedge CK &&& (ENABLE_NOT_D_AND_NOT_RB === 1'b1)
		,1.0,0,notifier);

	$width(posedge CK &&& (ENABLE_NOT_D_AND_NOT_RB === 1'b1)
		,1.0,0,notifier);

	$width(negedge CK &&& (ENABLE_NOT_D_AND_RB === 1'b1)
		,1.0,0,notifier);

	$width(posedge CK &&& (ENABLE_NOT_D_AND_RB === 1'b1)
		,1.0,0,notifier);

	$width(negedge CK &&& (ENABLE_D_AND_NOT_RB === 1'b1)
		,1.0,0,notifier);

	$width(posedge CK &&& (ENABLE_D_AND_NOT_RB === 1'b1)
		,1.0,0,notifier);

	$width(negedge CK &&& (ENABLE_D_AND_RB === 1'b1)
		,1.0,0,notifier);

	$width(posedge CK &&& (ENABLE_D_AND_RB === 1'b1)
		,1.0,0,notifier);

	// setuphold D- CK-LH
	$setuphold(posedge CK,posedge D,1.0,1.0,notifier,,,CK$delay,D$delay);

	// setuphold D- CK-LH
	$setuphold(posedge CK,negedge D,1.0,1.0,notifier,,,CK$delay,D$delay);

	// setuphold RB- CK-LH
	$setuphold(posedge CK,posedge RB,1.0,1.0,notifier,,,CK$delay,RB$delay);

	// setuphold RB- CK-LH
	$setuphold(posedge CK,negedge RB,1.0,1.0,notifier,,,CK$delay,RB$delay);

	// mpw CK_lh 
	$width(posedge CK,1.0,0,notifier);

	// mpw CK_hl 
	$width(negedge CK,1.0,0,notifier);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module DFQZRM4HM( Q, CK, D, RB , VDD, VSS);
inout VDD;
inout VSS;
input CK, D, RB;
output Q;
reg notifier;

   `ifdef FUNCTIONAL  //  functional //

	DFQZRM4HM_func DFQZRM4HM_behav_inst(.Q(Q),.CK(CK),.D(D),.RB(RB),.notifier(notifier),.VDD(VDD),.VSS(VSS));

   `else

	wire CK$delay ;

	wire D$delay ;

	wire RB$delay ;

	DFQZRM4HM_func DFQZRM4HM_inst(.Q(Q),.CK(CK$delay),.D(D$delay),.RB(RB$delay),.notifier(notifier),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	not MGM_G0(MGM_W0,D$delay);


	not MGM_G1(MGM_W1,RB$delay);


	and MGM_G2(ENABLE_NOT_D_AND_NOT_RB,MGM_W1,MGM_W0);


	not MGM_G3(MGM_W2,D$delay);


	and MGM_G4(ENABLE_NOT_D_AND_RB,RB$delay,MGM_W2);


	not MGM_G5(MGM_W3,RB$delay);


	and MGM_G6(ENABLE_D_AND_NOT_RB,MGM_W3,D$delay);


	and MGM_G7(ENABLE_D_AND_RB,RB$delay,D$delay);


	// spec_gates_end



   specify

	// specify_block_begin 

	// seq arc CK --> Q
	(posedge CK => (Q : D))  = (1.0,1.0);

	$width(negedge CK &&& (ENABLE_NOT_D_AND_NOT_RB === 1'b1)
		,1.0,0,notifier);

	$width(posedge CK &&& (ENABLE_NOT_D_AND_NOT_RB === 1'b1)
		,1.0,0,notifier);

	$width(negedge CK &&& (ENABLE_NOT_D_AND_RB === 1'b1)
		,1.0,0,notifier);

	$width(posedge CK &&& (ENABLE_NOT_D_AND_RB === 1'b1)
		,1.0,0,notifier);

	$width(negedge CK &&& (ENABLE_D_AND_NOT_RB === 1'b1)
		,1.0,0,notifier);

	$width(posedge CK &&& (ENABLE_D_AND_NOT_RB === 1'b1)
		,1.0,0,notifier);

	$width(negedge CK &&& (ENABLE_D_AND_RB === 1'b1)
		,1.0,0,notifier);

	$width(posedge CK &&& (ENABLE_D_AND_RB === 1'b1)
		,1.0,0,notifier);

	// setuphold D- CK-LH
	$setuphold(posedge CK,posedge D,1.0,1.0,notifier,,,CK$delay,D$delay);

	// setuphold D- CK-LH
	$setuphold(posedge CK,negedge D,1.0,1.0,notifier,,,CK$delay,D$delay);

	// setuphold RB- CK-LH
	$setuphold(posedge CK,posedge RB,1.0,1.0,notifier,,,CK$delay,RB$delay);

	// setuphold RB- CK-LH
	$setuphold(posedge CK,negedge RB,1.0,1.0,notifier,,,CK$delay,RB$delay);

	// mpw CK_lh 
	$width(posedge CK,1.0,0,notifier);

	// mpw CK_hl 
	$width(negedge CK,1.0,0,notifier);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module DFQZRM8HM( Q, CK, D, RB , VDD, VSS);
inout VDD;
inout VSS;
input CK, D, RB;
output Q;
reg notifier;

   `ifdef FUNCTIONAL  //  functional //

	DFQZRM8HM_func DFQZRM8HM_behav_inst(.Q(Q),.CK(CK),.D(D),.RB(RB),.notifier(notifier),.VDD(VDD),.VSS(VSS));

   `else

	wire CK$delay ;

	wire D$delay ;

	wire RB$delay ;

	DFQZRM8HM_func DFQZRM8HM_inst(.Q(Q),.CK(CK$delay),.D(D$delay),.RB(RB$delay),.notifier(notifier),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	not MGM_G0(MGM_W0,D$delay);


	not MGM_G1(MGM_W1,RB$delay);


	and MGM_G2(ENABLE_NOT_D_AND_NOT_RB,MGM_W1,MGM_W0);


	not MGM_G3(MGM_W2,D$delay);


	and MGM_G4(ENABLE_NOT_D_AND_RB,RB$delay,MGM_W2);


	not MGM_G5(MGM_W3,RB$delay);


	and MGM_G6(ENABLE_D_AND_NOT_RB,MGM_W3,D$delay);


	and MGM_G7(ENABLE_D_AND_RB,RB$delay,D$delay);


	// spec_gates_end



   specify

	// specify_block_begin 

	// seq arc CK --> Q
	(posedge CK => (Q : D))  = (1.0,1.0);

	$width(negedge CK &&& (ENABLE_NOT_D_AND_NOT_RB === 1'b1)
		,1.0,0,notifier);

	$width(posedge CK &&& (ENABLE_NOT_D_AND_NOT_RB === 1'b1)
		,1.0,0,notifier);

	$width(negedge CK &&& (ENABLE_NOT_D_AND_RB === 1'b1)
		,1.0,0,notifier);

	$width(posedge CK &&& (ENABLE_NOT_D_AND_RB === 1'b1)
		,1.0,0,notifier);

	$width(negedge CK &&& (ENABLE_D_AND_NOT_RB === 1'b1)
		,1.0,0,notifier);

	$width(posedge CK &&& (ENABLE_D_AND_NOT_RB === 1'b1)
		,1.0,0,notifier);

	$width(negedge CK &&& (ENABLE_D_AND_RB === 1'b1)
		,1.0,0,notifier);

	$width(posedge CK &&& (ENABLE_D_AND_RB === 1'b1)
		,1.0,0,notifier);

	// setuphold D- CK-LH
	$setuphold(posedge CK,posedge D,1.0,1.0,notifier,,,CK$delay,D$delay);

	// setuphold D- CK-LH
	$setuphold(posedge CK,negedge D,1.0,1.0,notifier,,,CK$delay,D$delay);

	// setuphold RB- CK-LH
	$setuphold(posedge CK,posedge RB,1.0,1.0,notifier,,,CK$delay,RB$delay);

	// setuphold RB- CK-LH
	$setuphold(posedge CK,negedge RB,1.0,1.0,notifier,,,CK$delay,RB$delay);

	// mpw CK_lh 
	$width(posedge CK,1.0,0,notifier);

	// mpw CK_hl 
	$width(negedge CK,1.0,0,notifier);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module DFRM1HM( Q, QB, CK, D, RB , VDD, VSS);
inout VDD;
inout VSS;
input CK, D, RB;
output Q, QB;
reg notifier;

   `ifdef FUNCTIONAL  //  functional //

	DFRM1HM_func DFRM1HM_behav_inst(.Q(Q),.QB(QB),.CK(CK),.D(D),.RB(RB),.notifier(notifier),.VDD(VDD),.VSS(VSS));

   `else

	wire CK$delay ;

	wire D$delay ;

	wire RB$delay ;

	DFRM1HM_func DFRM1HM_inst(.Q(Q),.QB(QB),.CK(CK$delay),.D(D$delay),.RB(RB$delay),.notifier(notifier),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	not MGM_G0(MGM_W0,D$delay);


	and MGM_G1(ENABLE_NOT_D_AND_RB,RB$delay,MGM_W0);


	and MGM_G2(ENABLE_D_AND_RB,RB$delay,D$delay);


	buf MGM_G3(ENABLE_RB,RB$delay);


	not MGM_G4(MGM_W1,CK$delay);


	not MGM_G5(MGM_W2,D$delay);


	and MGM_G6(ENABLE_NOT_CK_AND_NOT_D,MGM_W2,MGM_W1);


	not MGM_G7(MGM_W3,CK$delay);


	and MGM_G8(ENABLE_NOT_CK_AND_D,D$delay,MGM_W3);


	not MGM_G9(MGM_W4,D$delay);


	and MGM_G10(ENABLE_CK_AND_NOT_D,MGM_W4,CK$delay);


	and MGM_G11(ENABLE_CK_AND_D,D$delay,CK$delay);


	// spec_gates_end



   specify

	// specify_block_begin 

	// seq arc CK --> Q
	(posedge CK => (Q : D))  = (1.0,1.0);

	// seq arc RB --> Q
	(RB => Q)  = (1.0,1.0);

	// seq arc CK --> QB
	(posedge CK => (QB : D))  = (1.0,1.0);

	// seq arc RB --> QB
	(RB => QB)  = (1.0,1.0);

	$width(negedge CK &&& (ENABLE_NOT_D_AND_RB === 1'b1)
		,1.0,0,notifier);

	$width(posedge CK &&& (ENABLE_NOT_D_AND_RB === 1'b1)
		,1.0,0,notifier);

	$width(negedge CK &&& (ENABLE_D_AND_RB === 1'b1)
		,1.0,0,notifier);

	$width(posedge CK &&& (ENABLE_D_AND_RB === 1'b1)
		,1.0,0,notifier);

	// setuphold D- CK-LH
	$setuphold(posedge CK &&& (ENABLE_RB === 1'b1),
		posedge D &&& (ENABLE_RB === 1'b1),
		1.0,1.0,notifier,,,CK$delay,D$delay);

	// setuphold D- CK-LH
	$setuphold(posedge CK &&& (ENABLE_RB === 1'b1),
		negedge D &&& (ENABLE_RB === 1'b1),
		1.0,1.0,notifier,,,CK$delay,D$delay);

	// recrem RB-CK-posedge
	$recrem(posedge RB,posedge CK,1.0,1.0,notifier,,,RB$delay,CK$delay);

	$width(negedge RB &&& (ENABLE_NOT_CK_AND_NOT_D === 1'b1)
		,1.0,0,notifier);

	$width(negedge RB &&& (ENABLE_NOT_CK_AND_D === 1'b1)
		,1.0,0,notifier);

	$width(negedge RB &&& (ENABLE_CK_AND_NOT_D === 1'b1)
		,1.0,0,notifier);

	$width(negedge RB &&& (ENABLE_CK_AND_D === 1'b1)
		,1.0,0,notifier);

	// mpw CK_lh 
	$width(posedge CK,1.0,0,notifier);

	// mpw CK_hl 
	$width(negedge CK,1.0,0,notifier);

	// mpw RB_hl 
	$width(negedge RB,1.0,0,notifier);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module DFRM2HM( Q, QB, CK, D, RB , VDD, VSS);
inout VDD;
inout VSS;
input CK, D, RB;
output Q, QB;
reg notifier;

   `ifdef FUNCTIONAL  //  functional //

	DFRM2HM_func DFRM2HM_behav_inst(.Q(Q),.QB(QB),.CK(CK),.D(D),.RB(RB),.notifier(notifier),.VDD(VDD),.VSS(VSS));

   `else

	wire CK$delay ;

	wire D$delay ;

	wire RB$delay ;

	DFRM2HM_func DFRM2HM_inst(.Q(Q),.QB(QB),.CK(CK$delay),.D(D$delay),.RB(RB$delay),.notifier(notifier),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	not MGM_G0(MGM_W0,D$delay);


	and MGM_G1(ENABLE_NOT_D_AND_RB,RB$delay,MGM_W0);


	and MGM_G2(ENABLE_D_AND_RB,RB$delay,D$delay);


	buf MGM_G3(ENABLE_RB,RB$delay);


	not MGM_G4(MGM_W1,CK$delay);


	not MGM_G5(MGM_W2,D$delay);


	and MGM_G6(ENABLE_NOT_CK_AND_NOT_D,MGM_W2,MGM_W1);


	not MGM_G7(MGM_W3,CK$delay);


	and MGM_G8(ENABLE_NOT_CK_AND_D,D$delay,MGM_W3);


	not MGM_G9(MGM_W4,D$delay);


	and MGM_G10(ENABLE_CK_AND_NOT_D,MGM_W4,CK$delay);


	and MGM_G11(ENABLE_CK_AND_D,D$delay,CK$delay);


	// spec_gates_end



   specify

	// specify_block_begin 

	// seq arc CK --> Q
	(posedge CK => (Q : D))  = (1.0,1.0);

	// seq arc RB --> Q
	(RB => Q)  = (1.0,1.0);

	// seq arc CK --> QB
	(posedge CK => (QB : D))  = (1.0,1.0);

	// seq arc RB --> QB
	(RB => QB)  = (1.0,1.0);

	$width(negedge CK &&& (ENABLE_NOT_D_AND_RB === 1'b1)
		,1.0,0,notifier);

	$width(posedge CK &&& (ENABLE_NOT_D_AND_RB === 1'b1)
		,1.0,0,notifier);

	$width(negedge CK &&& (ENABLE_D_AND_RB === 1'b1)
		,1.0,0,notifier);

	$width(posedge CK &&& (ENABLE_D_AND_RB === 1'b1)
		,1.0,0,notifier);

	// setuphold D- CK-LH
	$setuphold(posedge CK &&& (ENABLE_RB === 1'b1),
		posedge D &&& (ENABLE_RB === 1'b1),
		1.0,1.0,notifier,,,CK$delay,D$delay);

	// setuphold D- CK-LH
	$setuphold(posedge CK &&& (ENABLE_RB === 1'b1),
		negedge D &&& (ENABLE_RB === 1'b1),
		1.0,1.0,notifier,,,CK$delay,D$delay);

	// recrem RB-CK-posedge
	$recrem(posedge RB,posedge CK,1.0,1.0,notifier,,,RB$delay,CK$delay);

	$width(negedge RB &&& (ENABLE_NOT_CK_AND_NOT_D === 1'b1)
		,1.0,0,notifier);

	$width(negedge RB &&& (ENABLE_NOT_CK_AND_D === 1'b1)
		,1.0,0,notifier);

	$width(negedge RB &&& (ENABLE_CK_AND_NOT_D === 1'b1)
		,1.0,0,notifier);

	$width(negedge RB &&& (ENABLE_CK_AND_D === 1'b1)
		,1.0,0,notifier);

	// mpw CK_lh 
	$width(posedge CK,1.0,0,notifier);

	// mpw CK_hl 
	$width(negedge CK,1.0,0,notifier);

	// mpw RB_hl 
	$width(negedge RB,1.0,0,notifier);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module DFRM4HM( Q, QB, CK, D, RB , VDD, VSS);
inout VDD;
inout VSS;
input CK, D, RB;
output Q, QB;
reg notifier;

   `ifdef FUNCTIONAL  //  functional //

	DFRM4HM_func DFRM4HM_behav_inst(.Q(Q),.QB(QB),.CK(CK),.D(D),.RB(RB),.notifier(notifier),.VDD(VDD),.VSS(VSS));

   `else

	wire CK$delay ;

	wire D$delay ;

	wire RB$delay ;

	DFRM4HM_func DFRM4HM_inst(.Q(Q),.QB(QB),.CK(CK$delay),.D(D$delay),.RB(RB$delay),.notifier(notifier),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	not MGM_G0(MGM_W0,D$delay);


	and MGM_G1(ENABLE_NOT_D_AND_RB,RB$delay,MGM_W0);


	and MGM_G2(ENABLE_D_AND_RB,RB$delay,D$delay);


	buf MGM_G3(ENABLE_RB,RB$delay);


	not MGM_G4(MGM_W1,CK$delay);


	not MGM_G5(MGM_W2,D$delay);


	and MGM_G6(ENABLE_NOT_CK_AND_NOT_D,MGM_W2,MGM_W1);


	not MGM_G7(MGM_W3,CK$delay);


	and MGM_G8(ENABLE_NOT_CK_AND_D,D$delay,MGM_W3);


	not MGM_G9(MGM_W4,D$delay);


	and MGM_G10(ENABLE_CK_AND_NOT_D,MGM_W4,CK$delay);


	and MGM_G11(ENABLE_CK_AND_D,D$delay,CK$delay);


	// spec_gates_end



   specify

	// specify_block_begin 

	// seq arc CK --> Q
	(posedge CK => (Q : D))  = (1.0,1.0);

	// seq arc RB --> Q
	(RB => Q)  = (1.0,1.0);

	// seq arc CK --> QB
	(posedge CK => (QB : D))  = (1.0,1.0);

	// seq arc RB --> QB
	(RB => QB)  = (1.0,1.0);

	$width(negedge CK &&& (ENABLE_NOT_D_AND_RB === 1'b1)
		,1.0,0,notifier);

	$width(posedge CK &&& (ENABLE_NOT_D_AND_RB === 1'b1)
		,1.0,0,notifier);

	$width(negedge CK &&& (ENABLE_D_AND_RB === 1'b1)
		,1.0,0,notifier);

	$width(posedge CK &&& (ENABLE_D_AND_RB === 1'b1)
		,1.0,0,notifier);

	// setuphold D- CK-LH
	$setuphold(posedge CK &&& (ENABLE_RB === 1'b1),
		posedge D &&& (ENABLE_RB === 1'b1),
		1.0,1.0,notifier,,,CK$delay,D$delay);

	// setuphold D- CK-LH
	$setuphold(posedge CK &&& (ENABLE_RB === 1'b1),
		negedge D &&& (ENABLE_RB === 1'b1),
		1.0,1.0,notifier,,,CK$delay,D$delay);

	// recrem RB-CK-posedge
	$recrem(posedge RB,posedge CK,1.0,1.0,notifier,,,RB$delay,CK$delay);

	$width(negedge RB &&& (ENABLE_NOT_CK_AND_NOT_D === 1'b1)
		,1.0,0,notifier);

	$width(negedge RB &&& (ENABLE_NOT_CK_AND_D === 1'b1)
		,1.0,0,notifier);

	$width(negedge RB &&& (ENABLE_CK_AND_NOT_D === 1'b1)
		,1.0,0,notifier);

	$width(negedge RB &&& (ENABLE_CK_AND_D === 1'b1)
		,1.0,0,notifier);

	// mpw CK_lh 
	$width(posedge CK,1.0,0,notifier);

	// mpw CK_hl 
	$width(negedge CK,1.0,0,notifier);

	// mpw RB_hl 
	$width(negedge RB,1.0,0,notifier);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module DFRM8HM( Q, QB, CK, D, RB , VDD, VSS);
inout VDD;
inout VSS;
input CK, D, RB;
output Q, QB;
reg notifier;

   `ifdef FUNCTIONAL  //  functional //

	DFRM8HM_func DFRM8HM_behav_inst(.Q(Q),.QB(QB),.CK(CK),.D(D),.RB(RB),.notifier(notifier),.VDD(VDD),.VSS(VSS));

   `else

	wire CK$delay ;

	wire D$delay ;

	wire RB$delay ;

	DFRM8HM_func DFRM8HM_inst(.Q(Q),.QB(QB),.CK(CK$delay),.D(D$delay),.RB(RB$delay),.notifier(notifier),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	not MGM_G0(MGM_W0,D$delay);


	and MGM_G1(ENABLE_NOT_D_AND_RB,RB$delay,MGM_W0);


	and MGM_G2(ENABLE_D_AND_RB,RB$delay,D$delay);


	buf MGM_G3(ENABLE_RB,RB$delay);


	not MGM_G4(MGM_W1,CK$delay);


	not MGM_G5(MGM_W2,D$delay);


	and MGM_G6(ENABLE_NOT_CK_AND_NOT_D,MGM_W2,MGM_W1);


	not MGM_G7(MGM_W3,CK$delay);


	and MGM_G8(ENABLE_NOT_CK_AND_D,D$delay,MGM_W3);


	not MGM_G9(MGM_W4,D$delay);


	and MGM_G10(ENABLE_CK_AND_NOT_D,MGM_W4,CK$delay);


	and MGM_G11(ENABLE_CK_AND_D,D$delay,CK$delay);


	// spec_gates_end



   specify

	// specify_block_begin 

	// seq arc CK --> Q
	(posedge CK => (Q : D))  = (1.0,1.0);

	// seq arc RB --> Q
	(RB => Q)  = (1.0,1.0);

	// seq arc CK --> QB
	(posedge CK => (QB : D))  = (1.0,1.0);

	// seq arc RB --> QB
	(RB => QB)  = (1.0,1.0);

	$width(negedge CK &&& (ENABLE_NOT_D_AND_RB === 1'b1)
		,1.0,0,notifier);

	$width(posedge CK &&& (ENABLE_NOT_D_AND_RB === 1'b1)
		,1.0,0,notifier);

	$width(negedge CK &&& (ENABLE_D_AND_RB === 1'b1)
		,1.0,0,notifier);

	$width(posedge CK &&& (ENABLE_D_AND_RB === 1'b1)
		,1.0,0,notifier);

	// setuphold D- CK-LH
	$setuphold(posedge CK &&& (ENABLE_RB === 1'b1),
		posedge D &&& (ENABLE_RB === 1'b1),
		1.0,1.0,notifier,,,CK$delay,D$delay);

	// setuphold D- CK-LH
	$setuphold(posedge CK &&& (ENABLE_RB === 1'b1),
		negedge D &&& (ENABLE_RB === 1'b1),
		1.0,1.0,notifier,,,CK$delay,D$delay);

	// recrem RB-CK-posedge
	$recrem(posedge RB,posedge CK,1.0,1.0,notifier,,,RB$delay,CK$delay);

	$width(negedge RB &&& (ENABLE_NOT_CK_AND_NOT_D === 1'b1)
		,1.0,0,notifier);

	$width(negedge RB &&& (ENABLE_NOT_CK_AND_D === 1'b1)
		,1.0,0,notifier);

	$width(negedge RB &&& (ENABLE_CK_AND_NOT_D === 1'b1)
		,1.0,0,notifier);

	$width(negedge RB &&& (ENABLE_CK_AND_D === 1'b1)
		,1.0,0,notifier);

	// mpw CK_lh 
	$width(posedge CK,1.0,0,notifier);

	// mpw CK_hl 
	$width(negedge CK,1.0,0,notifier);

	// mpw RB_hl 
	$width(negedge RB,1.0,0,notifier);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module DFRSM1HM( Q, QB, CK, D, RB, SB , VDD, VSS);
inout VDD;
inout VSS;
input CK, D, RB, SB;
output Q, QB;
reg notifier;

   `ifdef FUNCTIONAL  //  functional //

	DFRSM1HM_func DFRSM1HM_behav_inst(.Q(Q),.QB(QB),.CK(CK),.D(D),.RB(RB),.SB(SB),.notifier(notifier),.VDD(VDD),.VSS(VSS));

   `else

	wire CK$delay ;

	wire D$delay ;

	wire RB$delay ;

	wire SB$delay ;

	DFRSM1HM_func DFRSM1HM_inst(.Q(Q),.QB(QB),.CK(CK$delay),.D(D$delay),.RB(RB$delay),.SB(SB$delay),.notifier(notifier),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	not MGM_G0(MGM_W0,D$delay);


	and MGM_G1(MGM_W1,RB$delay,MGM_W0);


	and MGM_G2(ENABLE_NOT_D_AND_RB_AND_SB,SB$delay,MGM_W1);


	and MGM_G3(MGM_W2,RB$delay,D$delay);


	and MGM_G4(ENABLE_D_AND_RB_AND_SB,SB$delay,MGM_W2);


	and MGM_G5(ENABLE_RB_AND_SB,SB$delay,RB$delay);


	buf MGM_G6(ENABLE_SB,SB$delay);


	not MGM_G7(MGM_W3,CK$delay);


	not MGM_G8(MGM_W4,D$delay);


	and MGM_G9(MGM_W5,MGM_W4,MGM_W3);


	and MGM_G10(ENABLE_NOT_CK_AND_NOT_D_AND_SB,SB$delay,MGM_W5);


	not MGM_G11(MGM_W6,CK$delay);


	and MGM_G12(MGM_W7,D$delay,MGM_W6);


	and MGM_G13(ENABLE_NOT_CK_AND_D_AND_SB,SB$delay,MGM_W7);


	not MGM_G14(MGM_W8,D$delay);


	and MGM_G15(MGM_W9,MGM_W8,CK$delay);


	and MGM_G16(ENABLE_CK_AND_NOT_D_AND_SB,SB$delay,MGM_W9);


	and MGM_G17(MGM_W10,D$delay,CK$delay);


	and MGM_G18(ENABLE_CK_AND_D_AND_SB,SB$delay,MGM_W10);


	not MGM_G19(MGM_W11,CK$delay);


	not MGM_G20(MGM_W12,D$delay);


	and MGM_G21(ENABLE_NOT_CK_AND_NOT_D,MGM_W12,MGM_W11);


	not MGM_G22(MGM_W13,CK$delay);


	and MGM_G23(ENABLE_NOT_CK_AND_D,D$delay,MGM_W13);


	not MGM_G24(MGM_W14,D$delay);


	and MGM_G25(ENABLE_CK_AND_NOT_D,MGM_W14,CK$delay);


	and MGM_G26(ENABLE_CK_AND_D,D$delay,CK$delay);


	buf MGM_G27(ENABLE_RB,RB$delay);


	not MGM_G28(MGM_W15,CK$delay);


	not MGM_G29(MGM_W16,D$delay);


	and MGM_G30(MGM_W17,MGM_W16,MGM_W15);


	and MGM_G31(ENABLE_NOT_CK_AND_NOT_D_AND_RB,RB$delay,MGM_W17);


	not MGM_G32(MGM_W18,CK$delay);


	and MGM_G33(MGM_W19,D$delay,MGM_W18);


	and MGM_G34(ENABLE_NOT_CK_AND_D_AND_RB,RB$delay,MGM_W19);


	not MGM_G35(MGM_W20,D$delay);


	and MGM_G36(MGM_W21,MGM_W20,CK$delay);


	and MGM_G37(ENABLE_CK_AND_NOT_D_AND_RB,RB$delay,MGM_W21);


	and MGM_G38(MGM_W22,D$delay,CK$delay);


	and MGM_G39(ENABLE_CK_AND_D_AND_RB,RB$delay,MGM_W22);


	// spec_gates_end



   specify

	// specify_block_begin 

	// seq arc CK --> Q
	(posedge CK => (Q : D))  = (1.0,1.0);

	// seq arc RB --> Q
	(RB => Q)  = (1.0,1.0);

	// seq arc SB --> Q
	(SB => Q)  = (1.0,1.0);

	// seq arc CK --> QB
	(posedge CK => (QB : D))  = (1.0,1.0);

	// seq arc RB --> QB
	(RB => QB)  = (1.0,1.0);

	// seq arc SB --> QB
	(SB => QB)  = (1.0,1.0);

	$width(negedge CK &&& (ENABLE_NOT_D_AND_RB_AND_SB === 1'b1)
		,1.0,0,notifier);

	$width(posedge CK &&& (ENABLE_NOT_D_AND_RB_AND_SB === 1'b1)
		,1.0,0,notifier);

	$width(negedge CK &&& (ENABLE_D_AND_RB_AND_SB === 1'b1)
		,1.0,0,notifier);

	$width(posedge CK &&& (ENABLE_D_AND_RB_AND_SB === 1'b1)
		,1.0,0,notifier);

	// setuphold D- CK-LH
	$setuphold(posedge CK &&& (ENABLE_RB_AND_SB === 1'b1),
		posedge D &&& (ENABLE_RB_AND_SB === 1'b1),
		1.0,1.0,notifier,,,CK$delay,D$delay);

	// setuphold D- CK-LH
	$setuphold(posedge CK &&& (ENABLE_RB_AND_SB === 1'b1),
		negedge D &&& (ENABLE_RB_AND_SB === 1'b1),
		1.0,1.0,notifier,,,CK$delay,D$delay);

	// recrem RB-CK-posedge
	$recrem(posedge RB &&& (ENABLE_SB === 1'b1),
		posedge CK &&& (ENABLE_SB === 1'b1),
		1.0,1.0,notifier,,,RB$delay,CK$delay);

	$width(negedge RB &&& (ENABLE_NOT_CK_AND_NOT_D_AND_SB === 1'b1)
		,1.0,0,notifier);

	$width(negedge RB &&& (ENABLE_NOT_CK_AND_D_AND_SB === 1'b1)
		,1.0,0,notifier);

	$width(negedge RB &&& (ENABLE_CK_AND_NOT_D_AND_SB === 1'b1)
		,1.0,0,notifier);

	$width(negedge RB &&& (ENABLE_CK_AND_D_AND_SB === 1'b1)
		,1.0,0,notifier);

	// setuphold RB- SB-LH
	$setuphold(posedge SB &&& (ENABLE_NOT_CK_AND_NOT_D === 1'b1),
		posedge RB &&& (ENABLE_NOT_CK_AND_NOT_D === 1'b1),
		1.0,1.0,notifier,,,SB$delay,RB$delay);

	// setuphold RB- SB-LH
	$setuphold(posedge SB &&& (ENABLE_NOT_CK_AND_D === 1'b1),
		posedge RB &&& (ENABLE_NOT_CK_AND_D === 1'b1),
		1.0,1.0,notifier,,,SB$delay,RB$delay);

	// setuphold RB- SB-LH
	$setuphold(posedge SB &&& (ENABLE_CK_AND_NOT_D === 1'b1),
		posedge RB &&& (ENABLE_CK_AND_NOT_D === 1'b1),
		1.0,1.0,notifier,,,SB$delay,RB$delay);

	// setuphold RB- SB-LH
	$setuphold(posedge SB &&& (ENABLE_CK_AND_D === 1'b1),
		posedge RB &&& (ENABLE_CK_AND_D === 1'b1),
		1.0,1.0,notifier,,,SB$delay,RB$delay);

	// recrem SB-CK-posedge
	$recrem(posedge SB &&& (ENABLE_RB === 1'b1),
		posedge CK &&& (ENABLE_RB === 1'b1),
		1.0,1.0,notifier,,,SB$delay,CK$delay);

	// setuphold SB- RB-LH
	$setuphold(posedge RB &&& (ENABLE_NOT_CK_AND_NOT_D === 1'b1),
		posedge SB &&& (ENABLE_NOT_CK_AND_NOT_D === 1'b1),
		1.0,1.0,notifier,,,RB$delay,SB$delay);

	// setuphold SB- RB-LH
	$setuphold(posedge RB &&& (ENABLE_NOT_CK_AND_D === 1'b1),
		posedge SB &&& (ENABLE_NOT_CK_AND_D === 1'b1),
		1.0,1.0,notifier,,,RB$delay,SB$delay);

	// setuphold SB- RB-LH
	$setuphold(posedge RB &&& (ENABLE_CK_AND_NOT_D === 1'b1),
		posedge SB &&& (ENABLE_CK_AND_NOT_D === 1'b1),
		1.0,1.0,notifier,,,RB$delay,SB$delay);

	// setuphold SB- RB-LH
	$setuphold(posedge RB &&& (ENABLE_CK_AND_D === 1'b1),
		posedge SB &&& (ENABLE_CK_AND_D === 1'b1),
		1.0,1.0,notifier,,,RB$delay,SB$delay);

	$width(negedge SB &&& (ENABLE_NOT_CK_AND_NOT_D_AND_RB === 1'b1)
		,1.0,0,notifier);

	$width(negedge SB &&& (ENABLE_NOT_CK_AND_D_AND_RB === 1'b1)
		,1.0,0,notifier);

	$width(negedge SB &&& (ENABLE_CK_AND_NOT_D_AND_RB === 1'b1)
		,1.0,0,notifier);

	$width(negedge SB &&& (ENABLE_CK_AND_D_AND_RB === 1'b1)
		,1.0,0,notifier);

	// mpw CK_lh 
	$width(posedge CK,1.0,0,notifier);

	// mpw CK_hl 
	$width(negedge CK,1.0,0,notifier);

	// mpw RB_hl 
	$width(negedge RB,1.0,0,notifier);

	// mpw SB_hl 
	$width(negedge SB,1.0,0,notifier);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module DFRSM2HM( Q, QB, CK, D, RB, SB , VDD, VSS);
inout VDD;
inout VSS;
input CK, D, RB, SB;
output Q, QB;
reg notifier;

   `ifdef FUNCTIONAL  //  functional //

	DFRSM2HM_func DFRSM2HM_behav_inst(.Q(Q),.QB(QB),.CK(CK),.D(D),.RB(RB),.SB(SB),.notifier(notifier),.VDD(VDD),.VSS(VSS));

   `else

	wire CK$delay ;

	wire D$delay ;

	wire RB$delay ;

	wire SB$delay ;

	DFRSM2HM_func DFRSM2HM_inst(.Q(Q),.QB(QB),.CK(CK$delay),.D(D$delay),.RB(RB$delay),.SB(SB$delay),.notifier(notifier),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	not MGM_G0(MGM_W0,D$delay);


	and MGM_G1(MGM_W1,RB$delay,MGM_W0);


	and MGM_G2(ENABLE_NOT_D_AND_RB_AND_SB,SB$delay,MGM_W1);


	and MGM_G3(MGM_W2,RB$delay,D$delay);


	and MGM_G4(ENABLE_D_AND_RB_AND_SB,SB$delay,MGM_W2);


	and MGM_G5(ENABLE_RB_AND_SB,SB$delay,RB$delay);


	buf MGM_G6(ENABLE_SB,SB$delay);


	not MGM_G7(MGM_W3,CK$delay);


	not MGM_G8(MGM_W4,D$delay);


	and MGM_G9(MGM_W5,MGM_W4,MGM_W3);


	and MGM_G10(ENABLE_NOT_CK_AND_NOT_D_AND_SB,SB$delay,MGM_W5);


	not MGM_G11(MGM_W6,CK$delay);


	and MGM_G12(MGM_W7,D$delay,MGM_W6);


	and MGM_G13(ENABLE_NOT_CK_AND_D_AND_SB,SB$delay,MGM_W7);


	not MGM_G14(MGM_W8,D$delay);


	and MGM_G15(MGM_W9,MGM_W8,CK$delay);


	and MGM_G16(ENABLE_CK_AND_NOT_D_AND_SB,SB$delay,MGM_W9);


	and MGM_G17(MGM_W10,D$delay,CK$delay);


	and MGM_G18(ENABLE_CK_AND_D_AND_SB,SB$delay,MGM_W10);


	not MGM_G19(MGM_W11,CK$delay);


	not MGM_G20(MGM_W12,D$delay);


	and MGM_G21(ENABLE_NOT_CK_AND_NOT_D,MGM_W12,MGM_W11);


	not MGM_G22(MGM_W13,CK$delay);


	and MGM_G23(ENABLE_NOT_CK_AND_D,D$delay,MGM_W13);


	not MGM_G24(MGM_W14,D$delay);


	and MGM_G25(ENABLE_CK_AND_NOT_D,MGM_W14,CK$delay);


	and MGM_G26(ENABLE_CK_AND_D,D$delay,CK$delay);


	buf MGM_G27(ENABLE_RB,RB$delay);


	not MGM_G28(MGM_W15,CK$delay);


	not MGM_G29(MGM_W16,D$delay);


	and MGM_G30(MGM_W17,MGM_W16,MGM_W15);


	and MGM_G31(ENABLE_NOT_CK_AND_NOT_D_AND_RB,RB$delay,MGM_W17);


	not MGM_G32(MGM_W18,CK$delay);


	and MGM_G33(MGM_W19,D$delay,MGM_W18);


	and MGM_G34(ENABLE_NOT_CK_AND_D_AND_RB,RB$delay,MGM_W19);


	not MGM_G35(MGM_W20,D$delay);


	and MGM_G36(MGM_W21,MGM_W20,CK$delay);


	and MGM_G37(ENABLE_CK_AND_NOT_D_AND_RB,RB$delay,MGM_W21);


	and MGM_G38(MGM_W22,D$delay,CK$delay);


	and MGM_G39(ENABLE_CK_AND_D_AND_RB,RB$delay,MGM_W22);


	// spec_gates_end



   specify

	// specify_block_begin 

	// seq arc CK --> Q
	(posedge CK => (Q : D))  = (1.0,1.0);

	// seq arc RB --> Q
	(RB => Q)  = (1.0,1.0);

	// seq arc SB --> Q
	(SB => Q)  = (1.0,1.0);

	// seq arc CK --> QB
	(posedge CK => (QB : D))  = (1.0,1.0);

	// seq arc RB --> QB
	(RB => QB)  = (1.0,1.0);

	// seq arc SB --> QB
	(SB => QB)  = (1.0,1.0);

	$width(negedge CK &&& (ENABLE_NOT_D_AND_RB_AND_SB === 1'b1)
		,1.0,0,notifier);

	$width(posedge CK &&& (ENABLE_NOT_D_AND_RB_AND_SB === 1'b1)
		,1.0,0,notifier);

	$width(negedge CK &&& (ENABLE_D_AND_RB_AND_SB === 1'b1)
		,1.0,0,notifier);

	$width(posedge CK &&& (ENABLE_D_AND_RB_AND_SB === 1'b1)
		,1.0,0,notifier);

	// setuphold D- CK-LH
	$setuphold(posedge CK &&& (ENABLE_RB_AND_SB === 1'b1),
		posedge D &&& (ENABLE_RB_AND_SB === 1'b1),
		1.0,1.0,notifier,,,CK$delay,D$delay);

	// setuphold D- CK-LH
	$setuphold(posedge CK &&& (ENABLE_RB_AND_SB === 1'b1),
		negedge D &&& (ENABLE_RB_AND_SB === 1'b1),
		1.0,1.0,notifier,,,CK$delay,D$delay);

	// recrem RB-CK-posedge
	$recrem(posedge RB &&& (ENABLE_SB === 1'b1),
		posedge CK &&& (ENABLE_SB === 1'b1),
		1.0,1.0,notifier,,,RB$delay,CK$delay);

	$width(negedge RB &&& (ENABLE_NOT_CK_AND_NOT_D_AND_SB === 1'b1)
		,1.0,0,notifier);

	$width(negedge RB &&& (ENABLE_NOT_CK_AND_D_AND_SB === 1'b1)
		,1.0,0,notifier);

	$width(negedge RB &&& (ENABLE_CK_AND_NOT_D_AND_SB === 1'b1)
		,1.0,0,notifier);

	$width(negedge RB &&& (ENABLE_CK_AND_D_AND_SB === 1'b1)
		,1.0,0,notifier);

	// setuphold RB- SB-LH
	$setuphold(posedge SB &&& (ENABLE_NOT_CK_AND_NOT_D === 1'b1),
		posedge RB &&& (ENABLE_NOT_CK_AND_NOT_D === 1'b1),
		1.0,1.0,notifier,,,SB$delay,RB$delay);

	// setuphold RB- SB-LH
	$setuphold(posedge SB &&& (ENABLE_NOT_CK_AND_D === 1'b1),
		posedge RB &&& (ENABLE_NOT_CK_AND_D === 1'b1),
		1.0,1.0,notifier,,,SB$delay,RB$delay);

	// setuphold RB- SB-LH
	$setuphold(posedge SB &&& (ENABLE_CK_AND_NOT_D === 1'b1),
		posedge RB &&& (ENABLE_CK_AND_NOT_D === 1'b1),
		1.0,1.0,notifier,,,SB$delay,RB$delay);

	// setuphold RB- SB-LH
	$setuphold(posedge SB &&& (ENABLE_CK_AND_D === 1'b1),
		posedge RB &&& (ENABLE_CK_AND_D === 1'b1),
		1.0,1.0,notifier,,,SB$delay,RB$delay);

	// recrem SB-CK-posedge
	$recrem(posedge SB &&& (ENABLE_RB === 1'b1),
		posedge CK &&& (ENABLE_RB === 1'b1),
		1.0,1.0,notifier,,,SB$delay,CK$delay);

	// setuphold SB- RB-LH
	$setuphold(posedge RB &&& (ENABLE_NOT_CK_AND_NOT_D === 1'b1),
		posedge SB &&& (ENABLE_NOT_CK_AND_NOT_D === 1'b1),
		1.0,1.0,notifier,,,RB$delay,SB$delay);

	// setuphold SB- RB-LH
	$setuphold(posedge RB &&& (ENABLE_NOT_CK_AND_D === 1'b1),
		posedge SB &&& (ENABLE_NOT_CK_AND_D === 1'b1),
		1.0,1.0,notifier,,,RB$delay,SB$delay);

	// setuphold SB- RB-LH
	$setuphold(posedge RB &&& (ENABLE_CK_AND_NOT_D === 1'b1),
		posedge SB &&& (ENABLE_CK_AND_NOT_D === 1'b1),
		1.0,1.0,notifier,,,RB$delay,SB$delay);

	// setuphold SB- RB-LH
	$setuphold(posedge RB &&& (ENABLE_CK_AND_D === 1'b1),
		posedge SB &&& (ENABLE_CK_AND_D === 1'b1),
		1.0,1.0,notifier,,,RB$delay,SB$delay);

	$width(negedge SB &&& (ENABLE_NOT_CK_AND_NOT_D_AND_RB === 1'b1)
		,1.0,0,notifier);

	$width(negedge SB &&& (ENABLE_NOT_CK_AND_D_AND_RB === 1'b1)
		,1.0,0,notifier);

	$width(negedge SB &&& (ENABLE_CK_AND_NOT_D_AND_RB === 1'b1)
		,1.0,0,notifier);

	$width(negedge SB &&& (ENABLE_CK_AND_D_AND_RB === 1'b1)
		,1.0,0,notifier);

	// mpw CK_lh 
	$width(posedge CK,1.0,0,notifier);

	// mpw CK_hl 
	$width(negedge CK,1.0,0,notifier);

	// mpw RB_hl 
	$width(negedge RB,1.0,0,notifier);

	// mpw SB_hl 
	$width(negedge SB,1.0,0,notifier);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module DFRSM4HM( Q, QB, CK, D, RB, SB , VDD, VSS);
inout VDD;
inout VSS;
input CK, D, RB, SB;
output Q, QB;
reg notifier;

   `ifdef FUNCTIONAL  //  functional //

	DFRSM4HM_func DFRSM4HM_behav_inst(.Q(Q),.QB(QB),.CK(CK),.D(D),.RB(RB),.SB(SB),.notifier(notifier),.VDD(VDD),.VSS(VSS));

   `else

	wire CK$delay ;

	wire D$delay ;

	wire RB$delay ;

	wire SB$delay ;

	DFRSM4HM_func DFRSM4HM_inst(.Q(Q),.QB(QB),.CK(CK$delay),.D(D$delay),.RB(RB$delay),.SB(SB$delay),.notifier(notifier),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	not MGM_G0(MGM_W0,D$delay);


	and MGM_G1(MGM_W1,RB$delay,MGM_W0);


	and MGM_G2(ENABLE_NOT_D_AND_RB_AND_SB,SB$delay,MGM_W1);


	and MGM_G3(MGM_W2,RB$delay,D$delay);


	and MGM_G4(ENABLE_D_AND_RB_AND_SB,SB$delay,MGM_W2);


	and MGM_G5(ENABLE_RB_AND_SB,SB$delay,RB$delay);


	buf MGM_G6(ENABLE_SB,SB$delay);


	not MGM_G7(MGM_W3,CK$delay);


	not MGM_G8(MGM_W4,D$delay);


	and MGM_G9(MGM_W5,MGM_W4,MGM_W3);


	and MGM_G10(ENABLE_NOT_CK_AND_NOT_D_AND_SB,SB$delay,MGM_W5);


	not MGM_G11(MGM_W6,CK$delay);


	and MGM_G12(MGM_W7,D$delay,MGM_W6);


	and MGM_G13(ENABLE_NOT_CK_AND_D_AND_SB,SB$delay,MGM_W7);


	not MGM_G14(MGM_W8,D$delay);


	and MGM_G15(MGM_W9,MGM_W8,CK$delay);


	and MGM_G16(ENABLE_CK_AND_NOT_D_AND_SB,SB$delay,MGM_W9);


	and MGM_G17(MGM_W10,D$delay,CK$delay);


	and MGM_G18(ENABLE_CK_AND_D_AND_SB,SB$delay,MGM_W10);


	not MGM_G19(MGM_W11,CK$delay);


	not MGM_G20(MGM_W12,D$delay);


	and MGM_G21(ENABLE_NOT_CK_AND_NOT_D,MGM_W12,MGM_W11);


	not MGM_G22(MGM_W13,CK$delay);


	and MGM_G23(ENABLE_NOT_CK_AND_D,D$delay,MGM_W13);


	not MGM_G24(MGM_W14,D$delay);


	and MGM_G25(ENABLE_CK_AND_NOT_D,MGM_W14,CK$delay);


	and MGM_G26(ENABLE_CK_AND_D,D$delay,CK$delay);


	buf MGM_G27(ENABLE_RB,RB$delay);


	not MGM_G28(MGM_W15,CK$delay);


	not MGM_G29(MGM_W16,D$delay);


	and MGM_G30(MGM_W17,MGM_W16,MGM_W15);


	and MGM_G31(ENABLE_NOT_CK_AND_NOT_D_AND_RB,RB$delay,MGM_W17);


	not MGM_G32(MGM_W18,CK$delay);


	and MGM_G33(MGM_W19,D$delay,MGM_W18);


	and MGM_G34(ENABLE_NOT_CK_AND_D_AND_RB,RB$delay,MGM_W19);


	not MGM_G35(MGM_W20,D$delay);


	and MGM_G36(MGM_W21,MGM_W20,CK$delay);


	and MGM_G37(ENABLE_CK_AND_NOT_D_AND_RB,RB$delay,MGM_W21);


	and MGM_G38(MGM_W22,D$delay,CK$delay);


	and MGM_G39(ENABLE_CK_AND_D_AND_RB,RB$delay,MGM_W22);


	// spec_gates_end



   specify

	// specify_block_begin 

	// seq arc CK --> Q
	(posedge CK => (Q : D))  = (1.0,1.0);

	// seq arc RB --> Q
	(RB => Q)  = (1.0,1.0);

	// seq arc SB --> Q
	(SB => Q)  = (1.0,1.0);

	// seq arc CK --> QB
	(posedge CK => (QB : D))  = (1.0,1.0);

	// seq arc RB --> QB
	(RB => QB)  = (1.0,1.0);

	// seq arc SB --> QB
	(SB => QB)  = (1.0,1.0);

	$width(negedge CK &&& (ENABLE_NOT_D_AND_RB_AND_SB === 1'b1)
		,1.0,0,notifier);

	$width(posedge CK &&& (ENABLE_NOT_D_AND_RB_AND_SB === 1'b1)
		,1.0,0,notifier);

	$width(negedge CK &&& (ENABLE_D_AND_RB_AND_SB === 1'b1)
		,1.0,0,notifier);

	$width(posedge CK &&& (ENABLE_D_AND_RB_AND_SB === 1'b1)
		,1.0,0,notifier);

	// setuphold D- CK-LH
	$setuphold(posedge CK &&& (ENABLE_RB_AND_SB === 1'b1),
		posedge D &&& (ENABLE_RB_AND_SB === 1'b1),
		1.0,1.0,notifier,,,CK$delay,D$delay);

	// setuphold D- CK-LH
	$setuphold(posedge CK &&& (ENABLE_RB_AND_SB === 1'b1),
		negedge D &&& (ENABLE_RB_AND_SB === 1'b1),
		1.0,1.0,notifier,,,CK$delay,D$delay);

	// recrem RB-CK-posedge
	$recrem(posedge RB &&& (ENABLE_SB === 1'b1),
		posedge CK &&& (ENABLE_SB === 1'b1),
		1.0,1.0,notifier,,,RB$delay,CK$delay);

	$width(negedge RB &&& (ENABLE_NOT_CK_AND_NOT_D_AND_SB === 1'b1)
		,1.0,0,notifier);

	$width(negedge RB &&& (ENABLE_NOT_CK_AND_D_AND_SB === 1'b1)
		,1.0,0,notifier);

	$width(negedge RB &&& (ENABLE_CK_AND_NOT_D_AND_SB === 1'b1)
		,1.0,0,notifier);

	$width(negedge RB &&& (ENABLE_CK_AND_D_AND_SB === 1'b1)
		,1.0,0,notifier);

	// setuphold RB- SB-LH
	$setuphold(posedge SB &&& (ENABLE_NOT_CK_AND_NOT_D === 1'b1),
		posedge RB &&& (ENABLE_NOT_CK_AND_NOT_D === 1'b1),
		1.0,1.0,notifier,,,SB$delay,RB$delay);

	// setuphold RB- SB-LH
	$setuphold(posedge SB &&& (ENABLE_NOT_CK_AND_D === 1'b1),
		posedge RB &&& (ENABLE_NOT_CK_AND_D === 1'b1),
		1.0,1.0,notifier,,,SB$delay,RB$delay);

	// setuphold RB- SB-LH
	$setuphold(posedge SB &&& (ENABLE_CK_AND_NOT_D === 1'b1),
		posedge RB &&& (ENABLE_CK_AND_NOT_D === 1'b1),
		1.0,1.0,notifier,,,SB$delay,RB$delay);

	// setuphold RB- SB-LH
	$setuphold(posedge SB &&& (ENABLE_CK_AND_D === 1'b1),
		posedge RB &&& (ENABLE_CK_AND_D === 1'b1),
		1.0,1.0,notifier,,,SB$delay,RB$delay);

	// recrem SB-CK-posedge
	$recrem(posedge SB &&& (ENABLE_RB === 1'b1),
		posedge CK &&& (ENABLE_RB === 1'b1),
		1.0,1.0,notifier,,,SB$delay,CK$delay);

	// setuphold SB- RB-LH
	$setuphold(posedge RB &&& (ENABLE_NOT_CK_AND_NOT_D === 1'b1),
		posedge SB &&& (ENABLE_NOT_CK_AND_NOT_D === 1'b1),
		1.0,1.0,notifier,,,RB$delay,SB$delay);

	// setuphold SB- RB-LH
	$setuphold(posedge RB &&& (ENABLE_NOT_CK_AND_D === 1'b1),
		posedge SB &&& (ENABLE_NOT_CK_AND_D === 1'b1),
		1.0,1.0,notifier,,,RB$delay,SB$delay);

	// setuphold SB- RB-LH
	$setuphold(posedge RB &&& (ENABLE_CK_AND_NOT_D === 1'b1),
		posedge SB &&& (ENABLE_CK_AND_NOT_D === 1'b1),
		1.0,1.0,notifier,,,RB$delay,SB$delay);

	// setuphold SB- RB-LH
	$setuphold(posedge RB &&& (ENABLE_CK_AND_D === 1'b1),
		posedge SB &&& (ENABLE_CK_AND_D === 1'b1),
		1.0,1.0,notifier,,,RB$delay,SB$delay);

	$width(negedge SB &&& (ENABLE_NOT_CK_AND_NOT_D_AND_RB === 1'b1)
		,1.0,0,notifier);

	$width(negedge SB &&& (ENABLE_NOT_CK_AND_D_AND_RB === 1'b1)
		,1.0,0,notifier);

	$width(negedge SB &&& (ENABLE_CK_AND_NOT_D_AND_RB === 1'b1)
		,1.0,0,notifier);

	$width(negedge SB &&& (ENABLE_CK_AND_D_AND_RB === 1'b1)
		,1.0,0,notifier);

	// mpw CK_lh 
	$width(posedge CK,1.0,0,notifier);

	// mpw CK_hl 
	$width(negedge CK,1.0,0,notifier);

	// mpw RB_hl 
	$width(negedge RB,1.0,0,notifier);

	// mpw SB_hl 
	$width(negedge SB,1.0,0,notifier);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module DFRSM8HM( Q, QB, CK, D, RB, SB , VDD, VSS);
inout VDD;
inout VSS;
input CK, D, RB, SB;
output Q, QB;
reg notifier;

   `ifdef FUNCTIONAL  //  functional //

	DFRSM8HM_func DFRSM8HM_behav_inst(.Q(Q),.QB(QB),.CK(CK),.D(D),.RB(RB),.SB(SB),.notifier(notifier),.VDD(VDD),.VSS(VSS));

   `else

	wire CK$delay ;

	wire D$delay ;

	wire RB$delay ;

	wire SB$delay ;

	DFRSM8HM_func DFRSM8HM_inst(.Q(Q),.QB(QB),.CK(CK$delay),.D(D$delay),.RB(RB$delay),.SB(SB$delay),.notifier(notifier),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	not MGM_G0(MGM_W0,D$delay);


	and MGM_G1(MGM_W1,RB$delay,MGM_W0);


	and MGM_G2(ENABLE_NOT_D_AND_RB_AND_SB,SB$delay,MGM_W1);


	and MGM_G3(MGM_W2,RB$delay,D$delay);


	and MGM_G4(ENABLE_D_AND_RB_AND_SB,SB$delay,MGM_W2);


	and MGM_G5(ENABLE_RB_AND_SB,SB$delay,RB$delay);


	buf MGM_G6(ENABLE_SB,SB$delay);


	not MGM_G7(MGM_W3,CK$delay);


	not MGM_G8(MGM_W4,D$delay);


	and MGM_G9(MGM_W5,MGM_W4,MGM_W3);


	and MGM_G10(ENABLE_NOT_CK_AND_NOT_D_AND_SB,SB$delay,MGM_W5);


	not MGM_G11(MGM_W6,CK$delay);


	and MGM_G12(MGM_W7,D$delay,MGM_W6);


	and MGM_G13(ENABLE_NOT_CK_AND_D_AND_SB,SB$delay,MGM_W7);


	not MGM_G14(MGM_W8,D$delay);


	and MGM_G15(MGM_W9,MGM_W8,CK$delay);


	and MGM_G16(ENABLE_CK_AND_NOT_D_AND_SB,SB$delay,MGM_W9);


	and MGM_G17(MGM_W10,D$delay,CK$delay);


	and MGM_G18(ENABLE_CK_AND_D_AND_SB,SB$delay,MGM_W10);


	not MGM_G19(MGM_W11,CK$delay);


	not MGM_G20(MGM_W12,D$delay);


	and MGM_G21(ENABLE_NOT_CK_AND_NOT_D,MGM_W12,MGM_W11);


	not MGM_G22(MGM_W13,CK$delay);


	and MGM_G23(ENABLE_NOT_CK_AND_D,D$delay,MGM_W13);


	not MGM_G24(MGM_W14,D$delay);


	and MGM_G25(ENABLE_CK_AND_NOT_D,MGM_W14,CK$delay);


	and MGM_G26(ENABLE_CK_AND_D,D$delay,CK$delay);


	buf MGM_G27(ENABLE_RB,RB$delay);


	not MGM_G28(MGM_W15,CK$delay);


	not MGM_G29(MGM_W16,D$delay);


	and MGM_G30(MGM_W17,MGM_W16,MGM_W15);


	and MGM_G31(ENABLE_NOT_CK_AND_NOT_D_AND_RB,RB$delay,MGM_W17);


	not MGM_G32(MGM_W18,CK$delay);


	and MGM_G33(MGM_W19,D$delay,MGM_W18);


	and MGM_G34(ENABLE_NOT_CK_AND_D_AND_RB,RB$delay,MGM_W19);


	not MGM_G35(MGM_W20,D$delay);


	and MGM_G36(MGM_W21,MGM_W20,CK$delay);


	and MGM_G37(ENABLE_CK_AND_NOT_D_AND_RB,RB$delay,MGM_W21);


	and MGM_G38(MGM_W22,D$delay,CK$delay);


	and MGM_G39(ENABLE_CK_AND_D_AND_RB,RB$delay,MGM_W22);


	// spec_gates_end



   specify

	// specify_block_begin 

	// seq arc CK --> Q
	(posedge CK => (Q : D))  = (1.0,1.0);

	// seq arc RB --> Q
	(RB => Q)  = (1.0,1.0);

	// seq arc SB --> Q
	(SB => Q)  = (1.0,1.0);

	// seq arc CK --> QB
	(posedge CK => (QB : D))  = (1.0,1.0);

	// seq arc RB --> QB
	(RB => QB)  = (1.0,1.0);

	// seq arc SB --> QB
	(SB => QB)  = (1.0,1.0);

	$width(negedge CK &&& (ENABLE_NOT_D_AND_RB_AND_SB === 1'b1)
		,1.0,0,notifier);

	$width(posedge CK &&& (ENABLE_NOT_D_AND_RB_AND_SB === 1'b1)
		,1.0,0,notifier);

	$width(negedge CK &&& (ENABLE_D_AND_RB_AND_SB === 1'b1)
		,1.0,0,notifier);

	$width(posedge CK &&& (ENABLE_D_AND_RB_AND_SB === 1'b1)
		,1.0,0,notifier);

	// setuphold D- CK-LH
	$setuphold(posedge CK &&& (ENABLE_RB_AND_SB === 1'b1),
		posedge D &&& (ENABLE_RB_AND_SB === 1'b1),
		1.0,1.0,notifier,,,CK$delay,D$delay);

	// setuphold D- CK-LH
	$setuphold(posedge CK &&& (ENABLE_RB_AND_SB === 1'b1),
		negedge D &&& (ENABLE_RB_AND_SB === 1'b1),
		1.0,1.0,notifier,,,CK$delay,D$delay);

	// recrem RB-CK-posedge
	$recrem(posedge RB &&& (ENABLE_SB === 1'b1),
		posedge CK &&& (ENABLE_SB === 1'b1),
		1.0,1.0,notifier,,,RB$delay,CK$delay);

	$width(negedge RB &&& (ENABLE_NOT_CK_AND_NOT_D_AND_SB === 1'b1)
		,1.0,0,notifier);

	$width(negedge RB &&& (ENABLE_NOT_CK_AND_D_AND_SB === 1'b1)
		,1.0,0,notifier);

	$width(negedge RB &&& (ENABLE_CK_AND_NOT_D_AND_SB === 1'b1)
		,1.0,0,notifier);

	$width(negedge RB &&& (ENABLE_CK_AND_D_AND_SB === 1'b1)
		,1.0,0,notifier);

	// setuphold RB- SB-LH
	$setuphold(posedge SB &&& (ENABLE_NOT_CK_AND_NOT_D === 1'b1),
		posedge RB &&& (ENABLE_NOT_CK_AND_NOT_D === 1'b1),
		1.0,1.0,notifier,,,SB$delay,RB$delay);

	// setuphold RB- SB-LH
	$setuphold(posedge SB &&& (ENABLE_NOT_CK_AND_D === 1'b1),
		posedge RB &&& (ENABLE_NOT_CK_AND_D === 1'b1),
		1.0,1.0,notifier,,,SB$delay,RB$delay);

	// setuphold RB- SB-LH
	$setuphold(posedge SB &&& (ENABLE_CK_AND_NOT_D === 1'b1),
		posedge RB &&& (ENABLE_CK_AND_NOT_D === 1'b1),
		1.0,1.0,notifier,,,SB$delay,RB$delay);

	// setuphold RB- SB-LH
	$setuphold(posedge SB &&& (ENABLE_CK_AND_D === 1'b1),
		posedge RB &&& (ENABLE_CK_AND_D === 1'b1),
		1.0,1.0,notifier,,,SB$delay,RB$delay);

	// recrem SB-CK-posedge
	$recrem(posedge SB &&& (ENABLE_RB === 1'b1),
		posedge CK &&& (ENABLE_RB === 1'b1),
		1.0,1.0,notifier,,,SB$delay,CK$delay);

	// setuphold SB- RB-LH
	$setuphold(posedge RB &&& (ENABLE_NOT_CK_AND_NOT_D === 1'b1),
		posedge SB &&& (ENABLE_NOT_CK_AND_NOT_D === 1'b1),
		1.0,1.0,notifier,,,RB$delay,SB$delay);

	// setuphold SB- RB-LH
	$setuphold(posedge RB &&& (ENABLE_NOT_CK_AND_D === 1'b1),
		posedge SB &&& (ENABLE_NOT_CK_AND_D === 1'b1),
		1.0,1.0,notifier,,,RB$delay,SB$delay);

	// setuphold SB- RB-LH
	$setuphold(posedge RB &&& (ENABLE_CK_AND_NOT_D === 1'b1),
		posedge SB &&& (ENABLE_CK_AND_NOT_D === 1'b1),
		1.0,1.0,notifier,,,RB$delay,SB$delay);

	// setuphold SB- RB-LH
	$setuphold(posedge RB &&& (ENABLE_CK_AND_D === 1'b1),
		posedge SB &&& (ENABLE_CK_AND_D === 1'b1),
		1.0,1.0,notifier,,,RB$delay,SB$delay);

	$width(negedge SB &&& (ENABLE_NOT_CK_AND_NOT_D_AND_RB === 1'b1)
		,1.0,0,notifier);

	$width(negedge SB &&& (ENABLE_NOT_CK_AND_D_AND_RB === 1'b1)
		,1.0,0,notifier);

	$width(negedge SB &&& (ENABLE_CK_AND_NOT_D_AND_RB === 1'b1)
		,1.0,0,notifier);

	$width(negedge SB &&& (ENABLE_CK_AND_D_AND_RB === 1'b1)
		,1.0,0,notifier);

	// mpw CK_lh 
	$width(posedge CK,1.0,0,notifier);

	// mpw CK_hl 
	$width(negedge CK,1.0,0,notifier);

	// mpw RB_hl 
	$width(negedge RB,1.0,0,notifier);

	// mpw SB_hl 
	$width(negedge SB,1.0,0,notifier);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module DFSM1HM( Q, QB, CK, D, SB , VDD, VSS);
inout VDD;
inout VSS;
input CK, D, SB;
output Q, QB;
reg notifier;

   `ifdef FUNCTIONAL  //  functional //

	DFSM1HM_func DFSM1HM_behav_inst(.Q(Q),.QB(QB),.CK(CK),.D(D),.SB(SB),.notifier(notifier),.VDD(VDD),.VSS(VSS));

   `else

	wire CK$delay ;

	wire D$delay ;

	wire SB$delay ;

	DFSM1HM_func DFSM1HM_inst(.Q(Q),.QB(QB),.CK(CK$delay),.D(D$delay),.SB(SB$delay),.notifier(notifier),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	not MGM_G0(MGM_W0,D$delay);


	and MGM_G1(ENABLE_NOT_D_AND_SB,SB$delay,MGM_W0);


	and MGM_G2(ENABLE_D_AND_SB,SB$delay,D$delay);


	buf MGM_G3(ENABLE_SB,SB$delay);


	not MGM_G4(MGM_W1,CK$delay);


	not MGM_G5(MGM_W2,D$delay);


	and MGM_G6(ENABLE_NOT_CK_AND_NOT_D,MGM_W2,MGM_W1);


	not MGM_G7(MGM_W3,CK$delay);


	and MGM_G8(ENABLE_NOT_CK_AND_D,D$delay,MGM_W3);


	not MGM_G9(MGM_W4,D$delay);


	and MGM_G10(ENABLE_CK_AND_NOT_D,MGM_W4,CK$delay);


	and MGM_G11(ENABLE_CK_AND_D,D$delay,CK$delay);


	// spec_gates_end



   specify

	// specify_block_begin 

	// seq arc CK --> Q
	(posedge CK => (Q : D))  = (1.0,1.0);

	// seq arc SB --> Q
	(SB => Q)  = (1.0,1.0);

	// seq arc CK --> QB
	(posedge CK => (QB : D))  = (1.0,1.0);

	// seq arc SB --> QB
	(SB => QB)  = (1.0,1.0);

	$width(negedge CK &&& (ENABLE_NOT_D_AND_SB === 1'b1)
		,1.0,0,notifier);

	$width(posedge CK &&& (ENABLE_NOT_D_AND_SB === 1'b1)
		,1.0,0,notifier);

	$width(negedge CK &&& (ENABLE_D_AND_SB === 1'b1)
		,1.0,0,notifier);

	$width(posedge CK &&& (ENABLE_D_AND_SB === 1'b1)
		,1.0,0,notifier);

	// setuphold D- CK-LH
	$setuphold(posedge CK &&& (ENABLE_SB === 1'b1),
		posedge D &&& (ENABLE_SB === 1'b1),
		1.0,1.0,notifier,,,CK$delay,D$delay);

	// setuphold D- CK-LH
	$setuphold(posedge CK &&& (ENABLE_SB === 1'b1),
		negedge D &&& (ENABLE_SB === 1'b1),
		1.0,1.0,notifier,,,CK$delay,D$delay);

	// recrem SB-CK-posedge
	$recrem(posedge SB,posedge CK,1.0,1.0,notifier,,,SB$delay,CK$delay);

	$width(negedge SB &&& (ENABLE_NOT_CK_AND_NOT_D === 1'b1)
		,1.0,0,notifier);

	$width(negedge SB &&& (ENABLE_NOT_CK_AND_D === 1'b1)
		,1.0,0,notifier);

	$width(negedge SB &&& (ENABLE_CK_AND_NOT_D === 1'b1)
		,1.0,0,notifier);

	$width(negedge SB &&& (ENABLE_CK_AND_D === 1'b1)
		,1.0,0,notifier);

	// mpw CK_lh 
	$width(posedge CK,1.0,0,notifier);

	// mpw CK_hl 
	$width(negedge CK,1.0,0,notifier);

	// mpw SB_hl 
	$width(negedge SB,1.0,0,notifier);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module DFSM2HM( Q, QB, CK, D, SB , VDD, VSS);
inout VDD;
inout VSS;
input CK, D, SB;
output Q, QB;
reg notifier;

   `ifdef FUNCTIONAL  //  functional //

	DFSM2HM_func DFSM2HM_behav_inst(.Q(Q),.QB(QB),.CK(CK),.D(D),.SB(SB),.notifier(notifier),.VDD(VDD),.VSS(VSS));

   `else

	wire CK$delay ;

	wire D$delay ;

	wire SB$delay ;

	DFSM2HM_func DFSM2HM_inst(.Q(Q),.QB(QB),.CK(CK$delay),.D(D$delay),.SB(SB$delay),.notifier(notifier),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	not MGM_G0(MGM_W0,D$delay);


	and MGM_G1(ENABLE_NOT_D_AND_SB,SB$delay,MGM_W0);


	and MGM_G2(ENABLE_D_AND_SB,SB$delay,D$delay);


	buf MGM_G3(ENABLE_SB,SB$delay);


	not MGM_G4(MGM_W1,CK$delay);


	not MGM_G5(MGM_W2,D$delay);


	and MGM_G6(ENABLE_NOT_CK_AND_NOT_D,MGM_W2,MGM_W1);


	not MGM_G7(MGM_W3,CK$delay);


	and MGM_G8(ENABLE_NOT_CK_AND_D,D$delay,MGM_W3);


	not MGM_G9(MGM_W4,D$delay);


	and MGM_G10(ENABLE_CK_AND_NOT_D,MGM_W4,CK$delay);


	and MGM_G11(ENABLE_CK_AND_D,D$delay,CK$delay);


	// spec_gates_end



   specify

	// specify_block_begin 

	// seq arc CK --> Q
	(posedge CK => (Q : D))  = (1.0,1.0);

	// seq arc SB --> Q
	(SB => Q)  = (1.0,1.0);

	// seq arc CK --> QB
	(posedge CK => (QB : D))  = (1.0,1.0);

	// seq arc SB --> QB
	(SB => QB)  = (1.0,1.0);

	$width(negedge CK &&& (ENABLE_NOT_D_AND_SB === 1'b1)
		,1.0,0,notifier);

	$width(posedge CK &&& (ENABLE_NOT_D_AND_SB === 1'b1)
		,1.0,0,notifier);

	$width(negedge CK &&& (ENABLE_D_AND_SB === 1'b1)
		,1.0,0,notifier);

	$width(posedge CK &&& (ENABLE_D_AND_SB === 1'b1)
		,1.0,0,notifier);

	// setuphold D- CK-LH
	$setuphold(posedge CK &&& (ENABLE_SB === 1'b1),
		posedge D &&& (ENABLE_SB === 1'b1),
		1.0,1.0,notifier,,,CK$delay,D$delay);

	// setuphold D- CK-LH
	$setuphold(posedge CK &&& (ENABLE_SB === 1'b1),
		negedge D &&& (ENABLE_SB === 1'b1),
		1.0,1.0,notifier,,,CK$delay,D$delay);

	// recrem SB-CK-posedge
	$recrem(posedge SB,posedge CK,1.0,1.0,notifier,,,SB$delay,CK$delay);

	$width(negedge SB &&& (ENABLE_NOT_CK_AND_NOT_D === 1'b1)
		,1.0,0,notifier);

	$width(negedge SB &&& (ENABLE_NOT_CK_AND_D === 1'b1)
		,1.0,0,notifier);

	$width(negedge SB &&& (ENABLE_CK_AND_NOT_D === 1'b1)
		,1.0,0,notifier);

	$width(negedge SB &&& (ENABLE_CK_AND_D === 1'b1)
		,1.0,0,notifier);

	// mpw CK_lh 
	$width(posedge CK,1.0,0,notifier);

	// mpw CK_hl 
	$width(negedge CK,1.0,0,notifier);

	// mpw SB_hl 
	$width(negedge SB,1.0,0,notifier);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module DFSM4HM( Q, QB, CK, D, SB , VDD, VSS);
inout VDD;
inout VSS;
input CK, D, SB;
output Q, QB;
reg notifier;

   `ifdef FUNCTIONAL  //  functional //

	DFSM4HM_func DFSM4HM_behav_inst(.Q(Q),.QB(QB),.CK(CK),.D(D),.SB(SB),.notifier(notifier),.VDD(VDD),.VSS(VSS));

   `else

	wire CK$delay ;

	wire D$delay ;

	wire SB$delay ;

	DFSM4HM_func DFSM4HM_inst(.Q(Q),.QB(QB),.CK(CK$delay),.D(D$delay),.SB(SB$delay),.notifier(notifier),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	not MGM_G0(MGM_W0,D$delay);


	and MGM_G1(ENABLE_NOT_D_AND_SB,SB$delay,MGM_W0);


	and MGM_G2(ENABLE_D_AND_SB,SB$delay,D$delay);


	buf MGM_G3(ENABLE_SB,SB$delay);


	not MGM_G4(MGM_W1,CK$delay);


	not MGM_G5(MGM_W2,D$delay);


	and MGM_G6(ENABLE_NOT_CK_AND_NOT_D,MGM_W2,MGM_W1);


	not MGM_G7(MGM_W3,CK$delay);


	and MGM_G8(ENABLE_NOT_CK_AND_D,D$delay,MGM_W3);


	not MGM_G9(MGM_W4,D$delay);


	and MGM_G10(ENABLE_CK_AND_NOT_D,MGM_W4,CK$delay);


	and MGM_G11(ENABLE_CK_AND_D,D$delay,CK$delay);


	// spec_gates_end



   specify

	// specify_block_begin 

	// seq arc CK --> Q
	(posedge CK => (Q : D))  = (1.0,1.0);

	// seq arc SB --> Q
	(SB => Q)  = (1.0,1.0);

	// seq arc CK --> QB
	(posedge CK => (QB : D))  = (1.0,1.0);

	// seq arc SB --> QB
	(SB => QB)  = (1.0,1.0);

	$width(negedge CK &&& (ENABLE_NOT_D_AND_SB === 1'b1)
		,1.0,0,notifier);

	$width(posedge CK &&& (ENABLE_NOT_D_AND_SB === 1'b1)
		,1.0,0,notifier);

	$width(negedge CK &&& (ENABLE_D_AND_SB === 1'b1)
		,1.0,0,notifier);

	$width(posedge CK &&& (ENABLE_D_AND_SB === 1'b1)
		,1.0,0,notifier);

	// setuphold D- CK-LH
	$setuphold(posedge CK &&& (ENABLE_SB === 1'b1),
		posedge D &&& (ENABLE_SB === 1'b1),
		1.0,1.0,notifier,,,CK$delay,D$delay);

	// setuphold D- CK-LH
	$setuphold(posedge CK &&& (ENABLE_SB === 1'b1),
		negedge D &&& (ENABLE_SB === 1'b1),
		1.0,1.0,notifier,,,CK$delay,D$delay);

	// recrem SB-CK-posedge
	$recrem(posedge SB,posedge CK,1.0,1.0,notifier,,,SB$delay,CK$delay);

	$width(negedge SB &&& (ENABLE_NOT_CK_AND_NOT_D === 1'b1)
		,1.0,0,notifier);

	$width(negedge SB &&& (ENABLE_NOT_CK_AND_D === 1'b1)
		,1.0,0,notifier);

	$width(negedge SB &&& (ENABLE_CK_AND_NOT_D === 1'b1)
		,1.0,0,notifier);

	$width(negedge SB &&& (ENABLE_CK_AND_D === 1'b1)
		,1.0,0,notifier);

	// mpw CK_lh 
	$width(posedge CK,1.0,0,notifier);

	// mpw CK_hl 
	$width(negedge CK,1.0,0,notifier);

	// mpw SB_hl 
	$width(negedge SB,1.0,0,notifier);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module DFSM8HM( Q, QB, CK, D, SB , VDD, VSS);
inout VDD;
inout VSS;
input CK, D, SB;
output Q, QB;
reg notifier;

   `ifdef FUNCTIONAL  //  functional //

	DFSM8HM_func DFSM8HM_behav_inst(.Q(Q),.QB(QB),.CK(CK),.D(D),.SB(SB),.notifier(notifier),.VDD(VDD),.VSS(VSS));

   `else

	wire CK$delay ;

	wire D$delay ;

	wire SB$delay ;

	DFSM8HM_func DFSM8HM_inst(.Q(Q),.QB(QB),.CK(CK$delay),.D(D$delay),.SB(SB$delay),.notifier(notifier),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	not MGM_G0(MGM_W0,D$delay);


	and MGM_G1(ENABLE_NOT_D_AND_SB,SB$delay,MGM_W0);


	and MGM_G2(ENABLE_D_AND_SB,SB$delay,D$delay);


	buf MGM_G3(ENABLE_SB,SB$delay);


	not MGM_G4(MGM_W1,CK$delay);


	not MGM_G5(MGM_W2,D$delay);


	and MGM_G6(ENABLE_NOT_CK_AND_NOT_D,MGM_W2,MGM_W1);


	not MGM_G7(MGM_W3,CK$delay);


	and MGM_G8(ENABLE_NOT_CK_AND_D,D$delay,MGM_W3);


	not MGM_G9(MGM_W4,D$delay);


	and MGM_G10(ENABLE_CK_AND_NOT_D,MGM_W4,CK$delay);


	and MGM_G11(ENABLE_CK_AND_D,D$delay,CK$delay);


	// spec_gates_end



   specify

	// specify_block_begin 

	// seq arc CK --> Q
	(posedge CK => (Q : D))  = (1.0,1.0);

	// seq arc SB --> Q
	(SB => Q)  = (1.0,1.0);

	// seq arc CK --> QB
	(posedge CK => (QB : D))  = (1.0,1.0);

	// seq arc SB --> QB
	(SB => QB)  = (1.0,1.0);

	$width(negedge CK &&& (ENABLE_NOT_D_AND_SB === 1'b1)
		,1.0,0,notifier);

	$width(posedge CK &&& (ENABLE_NOT_D_AND_SB === 1'b1)
		,1.0,0,notifier);

	$width(negedge CK &&& (ENABLE_D_AND_SB === 1'b1)
		,1.0,0,notifier);

	$width(posedge CK &&& (ENABLE_D_AND_SB === 1'b1)
		,1.0,0,notifier);

	// setuphold D- CK-LH
	$setuphold(posedge CK &&& (ENABLE_SB === 1'b1),
		posedge D &&& (ENABLE_SB === 1'b1),
		1.0,1.0,notifier,,,CK$delay,D$delay);

	// setuphold D- CK-LH
	$setuphold(posedge CK &&& (ENABLE_SB === 1'b1),
		negedge D &&& (ENABLE_SB === 1'b1),
		1.0,1.0,notifier,,,CK$delay,D$delay);

	// recrem SB-CK-posedge
	$recrem(posedge SB,posedge CK,1.0,1.0,notifier,,,SB$delay,CK$delay);

	$width(negedge SB &&& (ENABLE_NOT_CK_AND_NOT_D === 1'b1)
		,1.0,0,notifier);

	$width(negedge SB &&& (ENABLE_NOT_CK_AND_D === 1'b1)
		,1.0,0,notifier);

	$width(negedge SB &&& (ENABLE_CK_AND_NOT_D === 1'b1)
		,1.0,0,notifier);

	$width(negedge SB &&& (ENABLE_CK_AND_D === 1'b1)
		,1.0,0,notifier);

	// mpw CK_lh 
	$width(posedge CK,1.0,0,notifier);

	// mpw CK_hl 
	$width(negedge CK,1.0,0,notifier);

	// mpw SB_hl 
	$width(negedge SB,1.0,0,notifier);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module DFZRM1HM( Q, QB, CK, D, RB , VDD, VSS);
inout VDD;
inout VSS;
input CK, D, RB;
output Q, QB;
reg notifier;

   `ifdef FUNCTIONAL  //  functional //

	DFZRM1HM_func DFZRM1HM_behav_inst(.Q(Q),.QB(QB),.CK(CK),.D(D),.RB(RB),.notifier(notifier),.VDD(VDD),.VSS(VSS));

   `else

	wire CK$delay ;

	wire D$delay ;

	wire RB$delay ;

	DFZRM1HM_func DFZRM1HM_inst(.Q(Q),.QB(QB),.CK(CK$delay),.D(D$delay),.RB(RB$delay),.notifier(notifier),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	not MGM_G0(MGM_W0,D$delay);


	not MGM_G1(MGM_W1,RB$delay);


	and MGM_G2(ENABLE_NOT_D_AND_NOT_RB,MGM_W1,MGM_W0);


	not MGM_G3(MGM_W2,D$delay);


	and MGM_G4(ENABLE_NOT_D_AND_RB,RB$delay,MGM_W2);


	not MGM_G5(MGM_W3,RB$delay);


	and MGM_G6(ENABLE_D_AND_NOT_RB,MGM_W3,D$delay);


	and MGM_G7(ENABLE_D_AND_RB,RB$delay,D$delay);


	// spec_gates_end



   specify

	// specify_block_begin 

	// seq arc CK --> Q
	(posedge CK => (Q : D))  = (1.0,1.0);

	// seq arc CK --> QB
	(posedge CK => (QB : D))  = (1.0,1.0);

	$width(negedge CK &&& (ENABLE_NOT_D_AND_NOT_RB === 1'b1)
		,1.0,0,notifier);

	$width(posedge CK &&& (ENABLE_NOT_D_AND_NOT_RB === 1'b1)
		,1.0,0,notifier);

	$width(negedge CK &&& (ENABLE_NOT_D_AND_RB === 1'b1)
		,1.0,0,notifier);

	$width(posedge CK &&& (ENABLE_NOT_D_AND_RB === 1'b1)
		,1.0,0,notifier);

	$width(negedge CK &&& (ENABLE_D_AND_NOT_RB === 1'b1)
		,1.0,0,notifier);

	$width(posedge CK &&& (ENABLE_D_AND_NOT_RB === 1'b1)
		,1.0,0,notifier);

	$width(negedge CK &&& (ENABLE_D_AND_RB === 1'b1)
		,1.0,0,notifier);

	$width(posedge CK &&& (ENABLE_D_AND_RB === 1'b1)
		,1.0,0,notifier);

	// setuphold D- CK-LH
	$setuphold(posedge CK,posedge D,1.0,1.0,notifier,,,CK$delay,D$delay);

	// setuphold D- CK-LH
	$setuphold(posedge CK,negedge D,1.0,1.0,notifier,,,CK$delay,D$delay);

	// setuphold RB- CK-LH
	$setuphold(posedge CK,posedge RB,1.0,1.0,notifier,,,CK$delay,RB$delay);

	// setuphold RB- CK-LH
	$setuphold(posedge CK,negedge RB,1.0,1.0,notifier,,,CK$delay,RB$delay);

	// mpw CK_lh 
	$width(posedge CK,1.0,0,notifier);

	// mpw CK_hl 
	$width(negedge CK,1.0,0,notifier);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module DFZRM2HM( Q, QB, CK, D, RB , VDD, VSS);
inout VDD;
inout VSS;
input CK, D, RB;
output Q, QB;
reg notifier;

   `ifdef FUNCTIONAL  //  functional //

	DFZRM2HM_func DFZRM2HM_behav_inst(.Q(Q),.QB(QB),.CK(CK),.D(D),.RB(RB),.notifier(notifier),.VDD(VDD),.VSS(VSS));

   `else

	wire CK$delay ;

	wire D$delay ;

	wire RB$delay ;

	DFZRM2HM_func DFZRM2HM_inst(.Q(Q),.QB(QB),.CK(CK$delay),.D(D$delay),.RB(RB$delay),.notifier(notifier),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	not MGM_G0(MGM_W0,D$delay);


	not MGM_G1(MGM_W1,RB$delay);


	and MGM_G2(ENABLE_NOT_D_AND_NOT_RB,MGM_W1,MGM_W0);


	not MGM_G3(MGM_W2,D$delay);


	and MGM_G4(ENABLE_NOT_D_AND_RB,RB$delay,MGM_W2);


	not MGM_G5(MGM_W3,RB$delay);


	and MGM_G6(ENABLE_D_AND_NOT_RB,MGM_W3,D$delay);


	and MGM_G7(ENABLE_D_AND_RB,RB$delay,D$delay);


	// spec_gates_end



   specify

	// specify_block_begin 

	// seq arc CK --> Q
	(posedge CK => (Q : D))  = (1.0,1.0);

	// seq arc CK --> QB
	(posedge CK => (QB : D))  = (1.0,1.0);

	$width(negedge CK &&& (ENABLE_NOT_D_AND_NOT_RB === 1'b1)
		,1.0,0,notifier);

	$width(posedge CK &&& (ENABLE_NOT_D_AND_NOT_RB === 1'b1)
		,1.0,0,notifier);

	$width(negedge CK &&& (ENABLE_NOT_D_AND_RB === 1'b1)
		,1.0,0,notifier);

	$width(posedge CK &&& (ENABLE_NOT_D_AND_RB === 1'b1)
		,1.0,0,notifier);

	$width(negedge CK &&& (ENABLE_D_AND_NOT_RB === 1'b1)
		,1.0,0,notifier);

	$width(posedge CK &&& (ENABLE_D_AND_NOT_RB === 1'b1)
		,1.0,0,notifier);

	$width(negedge CK &&& (ENABLE_D_AND_RB === 1'b1)
		,1.0,0,notifier);

	$width(posedge CK &&& (ENABLE_D_AND_RB === 1'b1)
		,1.0,0,notifier);

	// setuphold D- CK-LH
	$setuphold(posedge CK,posedge D,1.0,1.0,notifier,,,CK$delay,D$delay);

	// setuphold D- CK-LH
	$setuphold(posedge CK,negedge D,1.0,1.0,notifier,,,CK$delay,D$delay);

	// setuphold RB- CK-LH
	$setuphold(posedge CK,posedge RB,1.0,1.0,notifier,,,CK$delay,RB$delay);

	// setuphold RB- CK-LH
	$setuphold(posedge CK,negedge RB,1.0,1.0,notifier,,,CK$delay,RB$delay);

	// mpw CK_lh 
	$width(posedge CK,1.0,0,notifier);

	// mpw CK_hl 
	$width(negedge CK,1.0,0,notifier);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module DFZRM4HM( Q, QB, CK, D, RB , VDD, VSS);
inout VDD;
inout VSS;
input CK, D, RB;
output Q, QB;
reg notifier;

   `ifdef FUNCTIONAL  //  functional //

	DFZRM4HM_func DFZRM4HM_behav_inst(.Q(Q),.QB(QB),.CK(CK),.D(D),.RB(RB),.notifier(notifier),.VDD(VDD),.VSS(VSS));

   `else

	wire CK$delay ;

	wire D$delay ;

	wire RB$delay ;

	DFZRM4HM_func DFZRM4HM_inst(.Q(Q),.QB(QB),.CK(CK$delay),.D(D$delay),.RB(RB$delay),.notifier(notifier),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	not MGM_G0(MGM_W0,D$delay);


	not MGM_G1(MGM_W1,RB$delay);


	and MGM_G2(ENABLE_NOT_D_AND_NOT_RB,MGM_W1,MGM_W0);


	not MGM_G3(MGM_W2,D$delay);


	and MGM_G4(ENABLE_NOT_D_AND_RB,RB$delay,MGM_W2);


	not MGM_G5(MGM_W3,RB$delay);


	and MGM_G6(ENABLE_D_AND_NOT_RB,MGM_W3,D$delay);


	and MGM_G7(ENABLE_D_AND_RB,RB$delay,D$delay);


	// spec_gates_end



   specify

	// specify_block_begin 

	// seq arc CK --> Q
	(posedge CK => (Q : D))  = (1.0,1.0);

	// seq arc CK --> QB
	(posedge CK => (QB : D))  = (1.0,1.0);

	$width(negedge CK &&& (ENABLE_NOT_D_AND_NOT_RB === 1'b1)
		,1.0,0,notifier);

	$width(posedge CK &&& (ENABLE_NOT_D_AND_NOT_RB === 1'b1)
		,1.0,0,notifier);

	$width(negedge CK &&& (ENABLE_NOT_D_AND_RB === 1'b1)
		,1.0,0,notifier);

	$width(posedge CK &&& (ENABLE_NOT_D_AND_RB === 1'b1)
		,1.0,0,notifier);

	$width(negedge CK &&& (ENABLE_D_AND_NOT_RB === 1'b1)
		,1.0,0,notifier);

	$width(posedge CK &&& (ENABLE_D_AND_NOT_RB === 1'b1)
		,1.0,0,notifier);

	$width(negedge CK &&& (ENABLE_D_AND_RB === 1'b1)
		,1.0,0,notifier);

	$width(posedge CK &&& (ENABLE_D_AND_RB === 1'b1)
		,1.0,0,notifier);

	// setuphold D- CK-LH
	$setuphold(posedge CK,posedge D,1.0,1.0,notifier,,,CK$delay,D$delay);

	// setuphold D- CK-LH
	$setuphold(posedge CK,negedge D,1.0,1.0,notifier,,,CK$delay,D$delay);

	// setuphold RB- CK-LH
	$setuphold(posedge CK,posedge RB,1.0,1.0,notifier,,,CK$delay,RB$delay);

	// setuphold RB- CK-LH
	$setuphold(posedge CK,negedge RB,1.0,1.0,notifier,,,CK$delay,RB$delay);

	// mpw CK_lh 
	$width(posedge CK,1.0,0,notifier);

	// mpw CK_hl 
	$width(negedge CK,1.0,0,notifier);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module DFZRM8HM( Q, QB, CK, D, RB , VDD, VSS);
inout VDD;
inout VSS;
input CK, D, RB;
output Q, QB;
reg notifier;

   `ifdef FUNCTIONAL  //  functional //

	DFZRM8HM_func DFZRM8HM_behav_inst(.Q(Q),.QB(QB),.CK(CK),.D(D),.RB(RB),.notifier(notifier),.VDD(VDD),.VSS(VSS));

   `else

	wire CK$delay ;

	wire D$delay ;

	wire RB$delay ;

	DFZRM8HM_func DFZRM8HM_inst(.Q(Q),.QB(QB),.CK(CK$delay),.D(D$delay),.RB(RB$delay),.notifier(notifier),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	not MGM_G0(MGM_W0,D$delay);


	not MGM_G1(MGM_W1,RB$delay);


	and MGM_G2(ENABLE_NOT_D_AND_NOT_RB,MGM_W1,MGM_W0);


	not MGM_G3(MGM_W2,D$delay);


	and MGM_G4(ENABLE_NOT_D_AND_RB,RB$delay,MGM_W2);


	not MGM_G5(MGM_W3,RB$delay);


	and MGM_G6(ENABLE_D_AND_NOT_RB,MGM_W3,D$delay);


	and MGM_G7(ENABLE_D_AND_RB,RB$delay,D$delay);


	// spec_gates_end



   specify

	// specify_block_begin 

	// seq arc CK --> Q
	(posedge CK => (Q : D))  = (1.0,1.0);

	// seq arc CK --> QB
	(posedge CK => (QB : D))  = (1.0,1.0);

	$width(negedge CK &&& (ENABLE_NOT_D_AND_NOT_RB === 1'b1)
		,1.0,0,notifier);

	$width(posedge CK &&& (ENABLE_NOT_D_AND_NOT_RB === 1'b1)
		,1.0,0,notifier);

	$width(negedge CK &&& (ENABLE_NOT_D_AND_RB === 1'b1)
		,1.0,0,notifier);

	$width(posedge CK &&& (ENABLE_NOT_D_AND_RB === 1'b1)
		,1.0,0,notifier);

	$width(negedge CK &&& (ENABLE_D_AND_NOT_RB === 1'b1)
		,1.0,0,notifier);

	$width(posedge CK &&& (ENABLE_D_AND_NOT_RB === 1'b1)
		,1.0,0,notifier);

	$width(negedge CK &&& (ENABLE_D_AND_RB === 1'b1)
		,1.0,0,notifier);

	$width(posedge CK &&& (ENABLE_D_AND_RB === 1'b1)
		,1.0,0,notifier);

	// setuphold D- CK-LH
	$setuphold(posedge CK,posedge D,1.0,1.0,notifier,,,CK$delay,D$delay);

	// setuphold D- CK-LH
	$setuphold(posedge CK,negedge D,1.0,1.0,notifier,,,CK$delay,D$delay);

	// setuphold RB- CK-LH
	$setuphold(posedge CK,posedge RB,1.0,1.0,notifier,,,CK$delay,RB$delay);

	// setuphold RB- CK-LH
	$setuphold(posedge CK,negedge RB,1.0,1.0,notifier,,,CK$delay,RB$delay);

	// mpw CK_lh 
	$width(posedge CK,1.0,0,notifier);

	// mpw CK_hl 
	$width(negedge CK,1.0,0,notifier);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module INVM0HM( Z, A , VDD, VSS);
inout VDD;
inout VSS;
input A;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	INVM0HM_func INVM0HM_behav_inst(.Z(Z),.A(A),.VDD(VDD),.VSS(VSS));

   `else

	INVM0HM_func INVM0HM_inst(.Z(Z),.A(A),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module INVM10HM( Z, A , VDD, VSS);
inout VDD;
inout VSS;
input A;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	INVM10HM_func INVM10HM_behav_inst(.Z(Z),.A(A),.VDD(VDD),.VSS(VSS));

   `else

	INVM10HM_func INVM10HM_inst(.Z(Z),.A(A),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module INVM12HM( Z, A , VDD, VSS);
inout VDD;
inout VSS;
input A;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	INVM12HM_func INVM12HM_behav_inst(.Z(Z),.A(A),.VDD(VDD),.VSS(VSS));

   `else

	INVM12HM_func INVM12HM_inst(.Z(Z),.A(A),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module INVM14HM( Z, A , VDD, VSS);
inout VDD;
inout VSS;
input A;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	INVM14HM_func INVM14HM_behav_inst(.Z(Z),.A(A),.VDD(VDD),.VSS(VSS));

   `else

	INVM14HM_func INVM14HM_inst(.Z(Z),.A(A),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module INVM16HM( Z, A , VDD, VSS);
inout VDD;
inout VSS;
input A;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	INVM16HM_func INVM16HM_behav_inst(.Z(Z),.A(A),.VDD(VDD),.VSS(VSS));

   `else

	INVM16HM_func INVM16HM_inst(.Z(Z),.A(A),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module INVM18HM( Z, A , VDD, VSS);
inout VDD;
inout VSS;
input A;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	INVM18HM_func INVM18HM_behav_inst(.Z(Z),.A(A),.VDD(VDD),.VSS(VSS));

   `else

	INVM18HM_func INVM18HM_inst(.Z(Z),.A(A),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module INVM1HM( Z, A , VDD, VSS);
inout VDD;
inout VSS;
input A;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	INVM1HM_func INVM1HM_behav_inst(.Z(Z),.A(A),.VDD(VDD),.VSS(VSS));

   `else

	INVM1HM_func INVM1HM_inst(.Z(Z),.A(A),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module INVM20HM( Z, A , VDD, VSS);
inout VDD;
inout VSS;
input A;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	INVM20HM_func INVM20HM_behav_inst(.Z(Z),.A(A),.VDD(VDD),.VSS(VSS));

   `else

	INVM20HM_func INVM20HM_inst(.Z(Z),.A(A),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module INVM24HM( Z, A , VDD, VSS);
inout VDD;
inout VSS;
input A;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	INVM24HM_func INVM24HM_behav_inst(.Z(Z),.A(A),.VDD(VDD),.VSS(VSS));

   `else

	INVM24HM_func INVM24HM_inst(.Z(Z),.A(A),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module INVM28HM( Z, A , VDD, VSS);
inout VDD;
inout VSS;
input A;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	INVM28HM_func INVM28HM_behav_inst(.Z(Z),.A(A),.VDD(VDD),.VSS(VSS));

   `else

	INVM28HM_func INVM28HM_inst(.Z(Z),.A(A),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module INVM2HM( Z, A , VDD, VSS);
inout VDD;
inout VSS;
input A;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	INVM2HM_func INVM2HM_behav_inst(.Z(Z),.A(A),.VDD(VDD),.VSS(VSS));

   `else

	INVM2HM_func INVM2HM_inst(.Z(Z),.A(A),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module INVM32HM( Z, A , VDD, VSS);
inout VDD;
inout VSS;
input A;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	INVM32HM_func INVM32HM_behav_inst(.Z(Z),.A(A),.VDD(VDD),.VSS(VSS));

   `else

	INVM32HM_func INVM32HM_inst(.Z(Z),.A(A),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module INVM36HM( Z, A , VDD, VSS);
inout VDD;
inout VSS;
input A;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	INVM36HM_func INVM36HM_behav_inst(.Z(Z),.A(A),.VDD(VDD),.VSS(VSS));

   `else

	INVM36HM_func INVM36HM_inst(.Z(Z),.A(A),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module INVM3HM( Z, A , VDD, VSS);
inout VDD;
inout VSS;
input A;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	INVM3HM_func INVM3HM_behav_inst(.Z(Z),.A(A),.VDD(VDD),.VSS(VSS));

   `else

	INVM3HM_func INVM3HM_inst(.Z(Z),.A(A),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module INVM40HM( Z, A , VDD, VSS);
inout VDD;
inout VSS;
input A;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	INVM40HM_func INVM40HM_behav_inst(.Z(Z),.A(A),.VDD(VDD),.VSS(VSS));

   `else

	INVM40HM_func INVM40HM_inst(.Z(Z),.A(A),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module INVM48HM( Z, A , VDD, VSS);
inout VDD;
inout VSS;
input A;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	INVM48HM_func INVM48HM_behav_inst(.Z(Z),.A(A),.VDD(VDD),.VSS(VSS));

   `else

	INVM48HM_func INVM48HM_inst(.Z(Z),.A(A),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module INVM4HM( Z, A , VDD, VSS);
inout VDD;
inout VSS;
input A;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	INVM4HM_func INVM4HM_behav_inst(.Z(Z),.A(A),.VDD(VDD),.VSS(VSS));

   `else

	INVM4HM_func INVM4HM_inst(.Z(Z),.A(A),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module INVM5HM( Z, A , VDD, VSS);
inout VDD;
inout VSS;
input A;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	INVM5HM_func INVM5HM_behav_inst(.Z(Z),.A(A),.VDD(VDD),.VSS(VSS));

   `else

	INVM5HM_func INVM5HM_inst(.Z(Z),.A(A),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module INVM6HM( Z, A , VDD, VSS);
inout VDD;
inout VSS;
input A;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	INVM6HM_func INVM6HM_behav_inst(.Z(Z),.A(A),.VDD(VDD),.VSS(VSS));

   `else

	INVM6HM_func INVM6HM_inst(.Z(Z),.A(A),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module INVM8HM( Z, A , VDD, VSS);
inout VDD;
inout VSS;
input A;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	INVM8HM_func INVM8HM_behav_inst(.Z(Z),.A(A),.VDD(VDD),.VSS(VSS));

   `else

	INVM8HM_func INVM8HM_inst(.Z(Z),.A(A),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module LACM0HM( Q, QB, D, GB , VDD, VSS);
inout VDD;
inout VSS;
input D, GB;
output Q, QB;
reg notifier;

   `ifdef FUNCTIONAL  //  functional //

	LACM0HM_func LACM0HM_behav_inst(.Q(Q),.QB(QB),.D(D),.GB(GB),.notifier(notifier),.VDD(VDD),.VSS(VSS));

   `else

	LACM0HM_func LACM0HM_inst(.Q(Q),.QB(QB),.D(D),.GB(GB),.notifier(notifier),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	not MGM_G0(ENABLE_NOT_D,D);


	buf MGM_G1(ENABLE_D,D);


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc D --> Q
	 (D => Q) = (1.0,1.0);

	// seq arc GB --> Q
	(negedge GB => (Q : D))  = (1.0,1.0);

	// comb arc D --> QB
	 (D => QB) = (1.0,1.0);

	// seq arc GB --> QB
	(negedge GB => (QB : D))  = (1.0,1.0);

	// setuphold D- GB-LH
	$setuphold(posedge GB,posedge D,1.0,1.0,notifier,,,GB$delay,D$delay);

	// setuphold D- GB-LH
	$setuphold(posedge GB,negedge D,1.0,1.0,notifier,,,GB$delay,D$delay);

	$width(negedge GB &&& (ENABLE_NOT_D === 1'b1)
		,1.0,0,notifier);

	$width(negedge GB &&& (ENABLE_D === 1'b1)
		,1.0,0,notifier);

	// mpw GB_hl 
	$width(negedge GB,1.0,0,notifier);

	// specify_block_end 


   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module LACM1HM( Q, QB, D, GB , VDD, VSS);
inout VDD;
inout VSS;
input D, GB;
output Q, QB;
reg notifier;

   `ifdef FUNCTIONAL  //  functional //

	LACM1HM_func LACM1HM_behav_inst(.Q(Q),.QB(QB),.D(D),.GB(GB),.notifier(notifier),.VDD(VDD),.VSS(VSS));

   `else

	LACM1HM_func LACM1HM_inst(.Q(Q),.QB(QB),.D(D),.GB(GB),.notifier(notifier),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	not MGM_G0(ENABLE_NOT_D,D);


	buf MGM_G1(ENABLE_D,D);


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc D --> Q
	 (D => Q) = (1.0,1.0);

	// seq arc GB --> Q
	(negedge GB => (Q : D))  = (1.0,1.0);

	// comb arc D --> QB
	 (D => QB) = (1.0,1.0);

	// seq arc GB --> QB
	(negedge GB => (QB : D))  = (1.0,1.0);

	// setuphold D- GB-LH
	$setuphold(posedge GB,posedge D,1.0,1.0,notifier,,,GB$delay,D$delay);

	// setuphold D- GB-LH
	$setuphold(posedge GB,negedge D,1.0,1.0,notifier,,,GB$delay,D$delay);

	$width(negedge GB &&& (ENABLE_NOT_D === 1'b1)
		,1.0,0,notifier);

	$width(negedge GB &&& (ENABLE_D === 1'b1)
		,1.0,0,notifier);

	// mpw GB_hl 
	$width(negedge GB,1.0,0,notifier);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module LACM2HM( Q, QB, D, GB , VDD, VSS);
inout VDD;
inout VSS;
input D, GB;
output Q, QB;
reg notifier;

   `ifdef FUNCTIONAL  //  functional //

	LACM2HM_func LACM2HM_behav_inst(.Q(Q),.QB(QB),.D(D),.GB(GB),.notifier(notifier),.VDD(VDD),.VSS(VSS));

   `else

	LACM2HM_func LACM2HM_inst(.Q(Q),.QB(QB),.D(D),.GB(GB),.notifier(notifier),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	not MGM_G0(ENABLE_NOT_D,D);


	buf MGM_G1(ENABLE_D,D);


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc D --> Q
	 (D => Q) = (1.0,1.0);

	// seq arc GB --> Q
	(negedge GB => (Q : D))  = (1.0,1.0);

	// comb arc D --> QB
	 (D => QB) = (1.0,1.0);

	// seq arc GB --> QB
	(negedge GB => (QB : D))  = (1.0,1.0);

	// setuphold D- GB-LH
	$setuphold(posedge GB,posedge D,1.0,1.0,notifier,,,GB$delay,D$delay);

	// setuphold D- GB-LH
	$setuphold(posedge GB,negedge D,1.0,1.0,notifier,,,GB$delay,D$delay);

	$width(negedge GB &&& (ENABLE_NOT_D === 1'b1)
		,1.0,0,notifier);

	$width(negedge GB &&& (ENABLE_D === 1'b1)
		,1.0,0,notifier);

	// mpw GB_hl 
	$width(negedge GB,1.0,0,notifier);

	// specify_block_end 


   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module LACM4HM( Q, QB, D, GB , VDD, VSS);
inout VDD;
inout VSS;
input D, GB;
output Q, QB;
reg notifier;

   `ifdef FUNCTIONAL  //  functional //

	LACM4HM_func LACM4HM_behav_inst(.Q(Q),.QB(QB),.D(D),.GB(GB),.notifier(notifier),.VDD(VDD),.VSS(VSS));

   `else

	LACM4HM_func LACM4HM_inst(.Q(Q),.QB(QB),.D(D),.GB(GB),.notifier(notifier),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	not MGM_G0(ENABLE_NOT_D,D);


	buf MGM_G1(ENABLE_D,D);


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc D --> Q
	 (D => Q) = (1.0,1.0);

	// seq arc GB --> Q
	(negedge GB => (Q : D))  = (1.0,1.0);

	// comb arc D --> QB
	 (D => QB) = (1.0,1.0);

	// seq arc GB --> QB
	(negedge GB => (QB : D))  = (1.0,1.0);

	// setuphold D- GB-LH
	$setuphold(posedge GB,posedge D,1.0,1.0,notifier,,,GB$delay,D$delay);

	// setuphold D- GB-LH
	$setuphold(posedge GB,negedge D,1.0,1.0,notifier,,,GB$delay,D$delay);

	$width(negedge GB &&& (ENABLE_NOT_D === 1'b1)
		,1.0,0,notifier);

	$width(negedge GB &&& (ENABLE_D === 1'b1)
		,1.0,0,notifier);

	// mpw GB_hl 
	$width(negedge GB,1.0,0,notifier);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module LACQM0HM( Q, D, GB , VDD, VSS);
inout VDD;
inout VSS;
input D, GB;
output Q;
reg notifier;

   `ifdef FUNCTIONAL  //  functional //

	LACQM0HM_func LACQM0HM_behav_inst(.Q(Q),.D(D),.GB(GB),.notifier(notifier),.VDD(VDD),.VSS(VSS));

   `else

	wire D$delay ;

	wire GB$delay ;

	LACQM0HM_func LACQM0HM_inst(.Q(Q),.D(D$delay),.GB(GB$delay),.notifier(notifier),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	not MGM_G0(ENABLE_NOT_D,D$delay);


	buf MGM_G1(ENABLE_D,D$delay);


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc D --> Q
	 (D => Q) = (1.0,1.0);

	// seq arc GB --> Q
	(negedge GB => (Q : D))  = (1.0,1.0);

	// setuphold D- GB-LH
	$setuphold(posedge GB,posedge D,1.0,1.0,notifier,,,GB$delay,D$delay);

	// setuphold D- GB-LH
	$setuphold(posedge GB,negedge D,1.0,1.0,notifier,,,GB$delay,D$delay);

	$width(negedge GB &&& (ENABLE_NOT_D === 1'b1)
		,1.0,0,notifier);

	$width(negedge GB &&& (ENABLE_D === 1'b1)
		,1.0,0,notifier);

	// mpw GB_hl 
	$width(negedge GB,1.0,0,notifier);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module LACQM1HM( Q, D, GB , VDD, VSS);
inout VDD;
inout VSS;
input D, GB;
output Q;
reg notifier;

   `ifdef FUNCTIONAL  //  functional //

	LACQM1HM_func LACQM1HM_behav_inst(.Q(Q),.D(D),.GB(GB),.notifier(notifier),.VDD(VDD),.VSS(VSS));

   `else

	wire D$delay ;

	wire GB$delay ;

	LACQM1HM_func LACQM1HM_inst(.Q(Q),.D(D$delay),.GB(GB$delay),.notifier(notifier),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	not MGM_G0(ENABLE_NOT_D,D$delay);


	buf MGM_G1(ENABLE_D,D$delay);


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc D --> Q
	 (D => Q) = (1.0,1.0);

	// seq arc GB --> Q
	(negedge GB => (Q : D))  = (1.0,1.0);

	// setuphold D- GB-LH
	$setuphold(posedge GB,posedge D,1.0,1.0,notifier,,,GB$delay,D$delay);

	// setuphold D- GB-LH
	$setuphold(posedge GB,negedge D,1.0,1.0,notifier,,,GB$delay,D$delay);

	$width(negedge GB &&& (ENABLE_NOT_D === 1'b1)
		,1.0,0,notifier);

	$width(negedge GB &&& (ENABLE_D === 1'b1)
		,1.0,0,notifier);

	// mpw GB_hl 
	$width(negedge GB,1.0,0,notifier);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module LACQM2HM( Q, D, GB , VDD, VSS);
inout VDD;
inout VSS;
input D, GB;
output Q;
reg notifier;

   `ifdef FUNCTIONAL  //  functional //

	LACQM2HM_func LACQM2HM_behav_inst(.Q(Q),.D(D),.GB(GB),.notifier(notifier),.VDD(VDD),.VSS(VSS));

   `else

	wire D$delay ;

	wire GB$delay ;

	LACQM2HM_func LACQM2HM_inst(.Q(Q),.D(D$delay),.GB(GB$delay),.notifier(notifier),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	not MGM_G0(ENABLE_NOT_D,D$delay);


	buf MGM_G1(ENABLE_D,D$delay);


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc D --> Q
	 (D => Q) = (1.0,1.0);

	// seq arc GB --> Q
	(negedge GB => (Q : D))  = (1.0,1.0);

	// setuphold D- GB-LH
	$setuphold(posedge GB,posedge D,1.0,1.0,notifier,,,GB$delay,D$delay);

	// setuphold D- GB-LH
	$setuphold(posedge GB,negedge D,1.0,1.0,notifier,,,GB$delay,D$delay);

	$width(negedge GB &&& (ENABLE_NOT_D === 1'b1)
		,1.0,0,notifier);

	$width(negedge GB &&& (ENABLE_D === 1'b1)
		,1.0,0,notifier);

	// mpw GB_hl 
	$width(negedge GB,1.0,0,notifier);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module LACQM4HM( Q, D, GB , VDD, VSS);
inout VDD;
inout VSS;
input D, GB;
output Q;
reg notifier;

   `ifdef FUNCTIONAL  //  functional //

	LACQM4HM_func LACQM4HM_behav_inst(.Q(Q),.D(D),.GB(GB),.notifier(notifier),.VDD(VDD),.VSS(VSS));

   `else

	wire D$delay ;

	wire GB$delay ;

	LACQM4HM_func LACQM4HM_inst(.Q(Q),.D(D$delay),.GB(GB$delay),.notifier(notifier),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	not MGM_G0(ENABLE_NOT_D,D$delay);


	buf MGM_G1(ENABLE_D,D$delay);


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc D --> Q
	 (D => Q) = (1.0,1.0);

	// seq arc GB --> Q
	(negedge GB => (Q : D))  = (1.0,1.0);

	// setuphold D- GB-LH
	$setuphold(posedge GB,posedge D,1.0,1.0,notifier,,,GB$delay,D$delay);

	// setuphold D- GB-LH
	$setuphold(posedge GB,negedge D,1.0,1.0,notifier,,,GB$delay,D$delay);

	$width(negedge GB &&& (ENABLE_NOT_D === 1'b1)
		,1.0,0,notifier);

	$width(negedge GB &&& (ENABLE_D === 1'b1)
		,1.0,0,notifier);

	// mpw GB_hl 
	$width(negedge GB,1.0,0,notifier);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module LACQRSM0HM( Q, D, GB, RB, SB , VDD, VSS);
inout VDD;
inout VSS;
input D, GB, RB, SB;
output Q;
reg notifier;

   `ifdef FUNCTIONAL  //  functional //

	LACQRSM0HM_func LACQRSM0HM_behav_inst(.Q(Q),.D(D),.GB(GB),.RB(RB),.SB(SB),.notifier(notifier),.VDD(VDD),.VSS(VSS));

   `else

	wire D$delay ;

	wire GB$delay ;

	wire RB$delay ;

	wire SB$delay ;

	LACQRSM0HM_func LACQRSM0HM_inst(.Q(Q),.D(D$delay),.GB(GB$delay),.RB(RB$delay),.SB(SB$delay),.notifier(notifier),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	and MGM_G0(ENABLE_RB_AND_SB,SB$delay,RB$delay);


	not MGM_G1(MGM_W0,D$delay);


	and MGM_G2(MGM_W1,RB$delay,MGM_W0);


	and MGM_G3(ENABLE_NOT_D_AND_RB_AND_SB,SB$delay,MGM_W1);


	and MGM_G4(MGM_W2,RB$delay,D$delay);


	and MGM_G5(ENABLE_D_AND_RB_AND_SB,SB$delay,MGM_W2);


	buf MGM_G6(ENABLE_SB,SB$delay);


	not MGM_G7(MGM_W3,D$delay);


	and MGM_G8(MGM_W4,GB$delay,MGM_W3);


	and MGM_G9(ENABLE_NOT_D_AND_GB_AND_SB,SB$delay,MGM_W4);


	and MGM_G10(MGM_W5,GB$delay,D$delay);


	and MGM_G11(ENABLE_D_AND_GB_AND_SB,SB$delay,MGM_W5);


	buf MGM_G12(ENABLE_RB,RB$delay);


	not MGM_G13(MGM_W6,D$delay);


	and MGM_G14(ENABLE_NOT_D_AND_GB,GB$delay,MGM_W6);


	and MGM_G15(ENABLE_D_AND_GB,GB$delay,D$delay);


	not MGM_G16(MGM_W7,D$delay);


	and MGM_G17(MGM_W8,GB$delay,MGM_W7);


	and MGM_G18(ENABLE_NOT_D_AND_GB_AND_RB,RB$delay,MGM_W8);


	and MGM_G19(MGM_W9,GB$delay,D$delay);


	and MGM_G20(ENABLE_D_AND_GB_AND_RB,RB$delay,MGM_W9);


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc D --> Q
	 (D => Q) = (1.0,1.0);

	// seq arc GB --> Q
	(negedge GB => (Q : D))  = (1.0,1.0);

	// seq arc RB --> Q
	(RB => Q)  = (1.0,1.0);

	// seq arc SB --> Q
	(SB => Q)  = (1.0,1.0);

	// setuphold D- GB-LH
	$setuphold(posedge GB &&& (ENABLE_RB_AND_SB === 1'b1),
		posedge D &&& (ENABLE_RB_AND_SB === 1'b1),
		1.0,1.0,notifier,,,GB$delay,D$delay);

	// setuphold D- GB-LH
	$setuphold(posedge GB &&& (ENABLE_RB_AND_SB === 1'b1),
		negedge D &&& (ENABLE_RB_AND_SB === 1'b1),
		1.0,1.0,notifier,,,GB$delay,D$delay);

	$width(negedge GB &&& (ENABLE_NOT_D_AND_RB_AND_SB === 1'b1)
		,1.0,0,notifier);

	$width(negedge GB &&& (ENABLE_D_AND_RB_AND_SB === 1'b1)
		,1.0,0,notifier);

	// recrem RB-GB-posedge
	$recrem(posedge RB &&& (ENABLE_SB === 1'b1),
		posedge GB &&& (ENABLE_SB === 1'b1),
		1.0,1.0,notifier,,,RB$delay,GB$delay);

	$width(negedge RB &&& (ENABLE_NOT_D_AND_GB_AND_SB === 1'b1)
		,1.0,0,notifier);

	$width(negedge RB &&& (ENABLE_D_AND_GB_AND_SB === 1'b1)
		,1.0,0,notifier);

	// recrem SB-GB-posedge
	$recrem(posedge SB &&& (ENABLE_RB === 1'b1),
		posedge GB &&& (ENABLE_RB === 1'b1),
		1.0,1.0,notifier,,,SB$delay,GB$delay);

	// setuphold SB- RB-LH
	$setuphold(posedge RB &&& (ENABLE_NOT_D_AND_GB === 1'b1),
		posedge SB &&& (ENABLE_NOT_D_AND_GB === 1'b1),
		1.0,1.0,notifier,,,RB$delay,SB$delay);

	// setuphold SB- RB-LH
	$setuphold(posedge RB &&& (ENABLE_D_AND_GB === 1'b1),
		posedge SB &&& (ENABLE_D_AND_GB === 1'b1),
		1.0,1.0,notifier,,,RB$delay,SB$delay);

	$width(negedge SB &&& (ENABLE_NOT_D_AND_GB_AND_RB === 1'b1)
		,1.0,0,notifier);

	$width(negedge SB &&& (ENABLE_D_AND_GB_AND_RB === 1'b1)
		,1.0,0,notifier);

	// mpw GB_hl 
	$width(negedge GB,1.0,0,notifier);

	// mpw RB_hl 
	$width(negedge RB,1.0,0,notifier);

	// mpw SB_hl 
	$width(negedge SB,1.0,0,notifier);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module LACQRSM1HM( Q, D, GB, RB, SB , VDD, VSS);
inout VDD;
inout VSS;
input D, GB, RB, SB;
output Q;
reg notifier;

   `ifdef FUNCTIONAL  //  functional //

	LACQRSM1HM_func LACQRSM1HM_behav_inst(.Q(Q),.D(D),.GB(GB),.RB(RB),.SB(SB),.notifier(notifier),.VDD(VDD),.VSS(VSS));

   `else

	wire D$delay ;

	wire GB$delay ;

	wire RB$delay ;

	wire SB$delay ;

	LACQRSM1HM_func LACQRSM1HM_inst(.Q(Q),.D(D$delay),.GB(GB$delay),.RB(RB$delay),.SB(SB$delay),.notifier(notifier),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	and MGM_G0(ENABLE_RB_AND_SB,SB$delay,RB$delay);


	not MGM_G1(MGM_W0,D$delay);


	and MGM_G2(MGM_W1,RB$delay,MGM_W0);


	and MGM_G3(ENABLE_NOT_D_AND_RB_AND_SB,SB$delay,MGM_W1);


	and MGM_G4(MGM_W2,RB$delay,D$delay);


	and MGM_G5(ENABLE_D_AND_RB_AND_SB,SB$delay,MGM_W2);


	buf MGM_G6(ENABLE_SB,SB$delay);


	not MGM_G7(MGM_W3,D$delay);


	and MGM_G8(MGM_W4,GB$delay,MGM_W3);


	and MGM_G9(ENABLE_NOT_D_AND_GB_AND_SB,SB$delay,MGM_W4);


	and MGM_G10(MGM_W5,GB$delay,D$delay);


	and MGM_G11(ENABLE_D_AND_GB_AND_SB,SB$delay,MGM_W5);


	buf MGM_G12(ENABLE_RB,RB$delay);


	not MGM_G13(MGM_W6,D$delay);


	and MGM_G14(ENABLE_NOT_D_AND_GB,GB$delay,MGM_W6);


	and MGM_G15(ENABLE_D_AND_GB,GB$delay,D$delay);


	not MGM_G16(MGM_W7,D$delay);


	and MGM_G17(MGM_W8,GB$delay,MGM_W7);


	and MGM_G18(ENABLE_NOT_D_AND_GB_AND_RB,RB$delay,MGM_W8);


	and MGM_G19(MGM_W9,GB$delay,D$delay);


	and MGM_G20(ENABLE_D_AND_GB_AND_RB,RB$delay,MGM_W9);


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc D --> Q
	 (D => Q) = (1.0,1.0);

	// seq arc GB --> Q
	(negedge GB => (Q : D))  = (1.0,1.0);

	// seq arc RB --> Q
	(RB => Q)  = (1.0,1.0);

	// seq arc SB --> Q
	(SB => Q)  = (1.0,1.0);

	// setuphold D- GB-LH
	$setuphold(posedge GB &&& (ENABLE_RB_AND_SB === 1'b1),
		posedge D &&& (ENABLE_RB_AND_SB === 1'b1),
		1.0,1.0,notifier,,,GB$delay,D$delay);

	// setuphold D- GB-LH
	$setuphold(posedge GB &&& (ENABLE_RB_AND_SB === 1'b1),
		negedge D &&& (ENABLE_RB_AND_SB === 1'b1),
		1.0,1.0,notifier,,,GB$delay,D$delay);

	$width(negedge GB &&& (ENABLE_NOT_D_AND_RB_AND_SB === 1'b1)
		,1.0,0,notifier);

	$width(negedge GB &&& (ENABLE_D_AND_RB_AND_SB === 1'b1)
		,1.0,0,notifier);

	// recrem RB-GB-posedge
	$recrem(posedge RB &&& (ENABLE_SB === 1'b1),
		posedge GB &&& (ENABLE_SB === 1'b1),
		1.0,1.0,notifier,,,RB$delay,GB$delay);

	$width(negedge RB &&& (ENABLE_NOT_D_AND_GB_AND_SB === 1'b1)
		,1.0,0,notifier);

	$width(negedge RB &&& (ENABLE_D_AND_GB_AND_SB === 1'b1)
		,1.0,0,notifier);

	// recrem SB-GB-posedge
	$recrem(posedge SB &&& (ENABLE_RB === 1'b1),
		posedge GB &&& (ENABLE_RB === 1'b1),
		1.0,1.0,notifier,,,SB$delay,GB$delay);

	// setuphold SB- RB-LH
	$setuphold(posedge RB &&& (ENABLE_NOT_D_AND_GB === 1'b1),
		posedge SB &&& (ENABLE_NOT_D_AND_GB === 1'b1),
		1.0,1.0,notifier,,,RB$delay,SB$delay);

	// setuphold SB- RB-LH
	$setuphold(posedge RB &&& (ENABLE_D_AND_GB === 1'b1),
		posedge SB &&& (ENABLE_D_AND_GB === 1'b1),
		1.0,1.0,notifier,,,RB$delay,SB$delay);

	$width(negedge SB &&& (ENABLE_NOT_D_AND_GB_AND_RB === 1'b1)
		,1.0,0,notifier);

	$width(negedge SB &&& (ENABLE_D_AND_GB_AND_RB === 1'b1)
		,1.0,0,notifier);

	// mpw GB_hl 
	$width(negedge GB,1.0,0,notifier);

	// mpw RB_hl 
	$width(negedge RB,1.0,0,notifier);

	// mpw SB_hl 
	$width(negedge SB,1.0,0,notifier);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module LACQRSM2HM( Q, D, GB, RB, SB , VDD, VSS);
inout VDD;
inout VSS;
input D, GB, RB, SB;
output Q;
reg notifier;

   `ifdef FUNCTIONAL  //  functional //

	LACQRSM2HM_func LACQRSM2HM_behav_inst(.Q(Q),.D(D),.GB(GB),.RB(RB),.SB(SB),.notifier(notifier),.VDD(VDD),.VSS(VSS));

   `else

	wire D$delay ;

	wire GB$delay ;

	wire RB$delay ;

	wire SB$delay ;

	LACQRSM2HM_func LACQRSM2HM_inst(.Q(Q),.D(D$delay),.GB(GB$delay),.RB(RB$delay),.SB(SB$delay),.notifier(notifier),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	and MGM_G0(ENABLE_RB_AND_SB,SB$delay,RB$delay);


	not MGM_G1(MGM_W0,D$delay);


	and MGM_G2(MGM_W1,RB$delay,MGM_W0);


	and MGM_G3(ENABLE_NOT_D_AND_RB_AND_SB,SB$delay,MGM_W1);


	and MGM_G4(MGM_W2,RB$delay,D$delay);


	and MGM_G5(ENABLE_D_AND_RB_AND_SB,SB$delay,MGM_W2);


	buf MGM_G6(ENABLE_SB,SB$delay);


	not MGM_G7(MGM_W3,D$delay);


	and MGM_G8(MGM_W4,GB$delay,MGM_W3);


	and MGM_G9(ENABLE_NOT_D_AND_GB_AND_SB,SB$delay,MGM_W4);


	and MGM_G10(MGM_W5,GB$delay,D$delay);


	and MGM_G11(ENABLE_D_AND_GB_AND_SB,SB$delay,MGM_W5);


	buf MGM_G12(ENABLE_RB,RB$delay);


	not MGM_G13(MGM_W6,D$delay);


	and MGM_G14(ENABLE_NOT_D_AND_GB,GB$delay,MGM_W6);


	and MGM_G15(ENABLE_D_AND_GB,GB$delay,D$delay);


	not MGM_G16(MGM_W7,D$delay);


	and MGM_G17(MGM_W8,GB$delay,MGM_W7);


	and MGM_G18(ENABLE_NOT_D_AND_GB_AND_RB,RB$delay,MGM_W8);


	and MGM_G19(MGM_W9,GB$delay,D$delay);


	and MGM_G20(ENABLE_D_AND_GB_AND_RB,RB$delay,MGM_W9);


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc D --> Q
	 (D => Q) = (1.0,1.0);

	// seq arc GB --> Q
	(negedge GB => (Q : D))  = (1.0,1.0);

	// seq arc RB --> Q
	(RB => Q)  = (1.0,1.0);

	// seq arc SB --> Q
	(SB => Q)  = (1.0,1.0);

	// setuphold D- GB-LH
	$setuphold(posedge GB &&& (ENABLE_RB_AND_SB === 1'b1),
		posedge D &&& (ENABLE_RB_AND_SB === 1'b1),
		1.0,1.0,notifier,,,GB$delay,D$delay);

	// setuphold D- GB-LH
	$setuphold(posedge GB &&& (ENABLE_RB_AND_SB === 1'b1),
		negedge D &&& (ENABLE_RB_AND_SB === 1'b1),
		1.0,1.0,notifier,,,GB$delay,D$delay);

	$width(negedge GB &&& (ENABLE_NOT_D_AND_RB_AND_SB === 1'b1)
		,1.0,0,notifier);

	$width(negedge GB &&& (ENABLE_D_AND_RB_AND_SB === 1'b1)
		,1.0,0,notifier);

	// recrem RB-GB-posedge
	$recrem(posedge RB &&& (ENABLE_SB === 1'b1),
		posedge GB &&& (ENABLE_SB === 1'b1),
		1.0,1.0,notifier,,,RB$delay,GB$delay);

	$width(negedge RB &&& (ENABLE_NOT_D_AND_GB_AND_SB === 1'b1)
		,1.0,0,notifier);

	$width(negedge RB &&& (ENABLE_D_AND_GB_AND_SB === 1'b1)
		,1.0,0,notifier);

	// recrem SB-GB-posedge
	$recrem(posedge SB &&& (ENABLE_RB === 1'b1),
		posedge GB &&& (ENABLE_RB === 1'b1),
		1.0,1.0,notifier,,,SB$delay,GB$delay);

	// setuphold SB- RB-LH
	$setuphold(posedge RB &&& (ENABLE_NOT_D_AND_GB === 1'b1),
		posedge SB &&& (ENABLE_NOT_D_AND_GB === 1'b1),
		1.0,1.0,notifier,,,RB$delay,SB$delay);

	// setuphold SB- RB-LH
	$setuphold(posedge RB &&& (ENABLE_D_AND_GB === 1'b1),
		posedge SB &&& (ENABLE_D_AND_GB === 1'b1),
		1.0,1.0,notifier,,,RB$delay,SB$delay);

	$width(negedge SB &&& (ENABLE_NOT_D_AND_GB_AND_RB === 1'b1)
		,1.0,0,notifier);

	$width(negedge SB &&& (ENABLE_D_AND_GB_AND_RB === 1'b1)
		,1.0,0,notifier);

	// mpw GB_hl 
	$width(negedge GB,1.0,0,notifier);

	// mpw RB_hl 
	$width(negedge RB,1.0,0,notifier);

	// mpw SB_hl 
	$width(negedge SB,1.0,0,notifier);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module LACQRSM4HM( Q, D, GB, RB, SB , VDD, VSS);
inout VDD;
inout VSS;
input D, GB, RB, SB;
output Q;
reg notifier;

   `ifdef FUNCTIONAL  //  functional //

	LACQRSM4HM_func LACQRSM4HM_behav_inst(.Q(Q),.D(D),.GB(GB),.RB(RB),.SB(SB),.notifier(notifier),.VDD(VDD),.VSS(VSS));

   `else

	wire D$delay ;

	wire GB$delay ;

	wire RB$delay ;

	wire SB$delay ;

	LACQRSM4HM_func LACQRSM4HM_inst(.Q(Q),.D(D$delay),.GB(GB$delay),.RB(RB$delay),.SB(SB$delay),.notifier(notifier),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	and MGM_G0(ENABLE_RB_AND_SB,SB$delay,RB$delay);


	not MGM_G1(MGM_W0,D$delay);


	and MGM_G2(MGM_W1,RB$delay,MGM_W0);


	and MGM_G3(ENABLE_NOT_D_AND_RB_AND_SB,SB$delay,MGM_W1);


	and MGM_G4(MGM_W2,RB$delay,D$delay);


	and MGM_G5(ENABLE_D_AND_RB_AND_SB,SB$delay,MGM_W2);


	buf MGM_G6(ENABLE_SB,SB$delay);


	not MGM_G7(MGM_W3,D$delay);


	and MGM_G8(MGM_W4,GB$delay,MGM_W3);


	and MGM_G9(ENABLE_NOT_D_AND_GB_AND_SB,SB$delay,MGM_W4);


	and MGM_G10(MGM_W5,GB$delay,D$delay);


	and MGM_G11(ENABLE_D_AND_GB_AND_SB,SB$delay,MGM_W5);


	buf MGM_G12(ENABLE_RB,RB$delay);


	not MGM_G13(MGM_W6,D$delay);


	and MGM_G14(ENABLE_NOT_D_AND_GB,GB$delay,MGM_W6);


	and MGM_G15(ENABLE_D_AND_GB,GB$delay,D$delay);


	not MGM_G16(MGM_W7,D$delay);


	and MGM_G17(MGM_W8,GB$delay,MGM_W7);


	and MGM_G18(ENABLE_NOT_D_AND_GB_AND_RB,RB$delay,MGM_W8);


	and MGM_G19(MGM_W9,GB$delay,D$delay);


	and MGM_G20(ENABLE_D_AND_GB_AND_RB,RB$delay,MGM_W9);


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc D --> Q
	 (D => Q) = (1.0,1.0);

	// seq arc GB --> Q
	(negedge GB => (Q : D))  = (1.0,1.0);

	// seq arc RB --> Q
	(RB => Q)  = (1.0,1.0);

	// seq arc SB --> Q
	(SB => Q)  = (1.0,1.0);

	// setuphold D- GB-LH
	$setuphold(posedge GB &&& (ENABLE_RB_AND_SB === 1'b1),
		posedge D &&& (ENABLE_RB_AND_SB === 1'b1),
		1.0,1.0,notifier,,,GB$delay,D$delay);

	// setuphold D- GB-LH
	$setuphold(posedge GB &&& (ENABLE_RB_AND_SB === 1'b1),
		negedge D &&& (ENABLE_RB_AND_SB === 1'b1),
		1.0,1.0,notifier,,,GB$delay,D$delay);

	$width(negedge GB &&& (ENABLE_NOT_D_AND_RB_AND_SB === 1'b1)
		,1.0,0,notifier);

	$width(negedge GB &&& (ENABLE_D_AND_RB_AND_SB === 1'b1)
		,1.0,0,notifier);

	// recrem RB-GB-posedge
	$recrem(posedge RB &&& (ENABLE_SB === 1'b1),
		posedge GB &&& (ENABLE_SB === 1'b1),
		1.0,1.0,notifier,,,RB$delay,GB$delay);

	$width(negedge RB &&& (ENABLE_NOT_D_AND_GB_AND_SB === 1'b1)
		,1.0,0,notifier);

	$width(negedge RB &&& (ENABLE_D_AND_GB_AND_SB === 1'b1)
		,1.0,0,notifier);

	// recrem SB-GB-posedge
	$recrem(posedge SB &&& (ENABLE_RB === 1'b1),
		posedge GB &&& (ENABLE_RB === 1'b1),
		1.0,1.0,notifier,,,SB$delay,GB$delay);

	// setuphold SB- RB-LH
	$setuphold(posedge RB &&& (ENABLE_NOT_D_AND_GB === 1'b1),
		posedge SB &&& (ENABLE_NOT_D_AND_GB === 1'b1),
		1.0,1.0,notifier,,,RB$delay,SB$delay);

	// setuphold SB- RB-LH
	$setuphold(posedge RB &&& (ENABLE_D_AND_GB === 1'b1),
		posedge SB &&& (ENABLE_D_AND_GB === 1'b1),
		1.0,1.0,notifier,,,RB$delay,SB$delay);

	$width(negedge SB &&& (ENABLE_NOT_D_AND_GB_AND_RB === 1'b1)
		,1.0,0,notifier);

	$width(negedge SB &&& (ENABLE_D_AND_GB_AND_RB === 1'b1)
		,1.0,0,notifier);

	// mpw GB_hl 
	$width(negedge GB,1.0,0,notifier);

	// mpw RB_hl 
	$width(negedge RB,1.0,0,notifier);

	// mpw SB_hl 
	$width(negedge SB,1.0,0,notifier);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module LACRSM0HM( Q, QB, D, GB, RB, SB , VDD, VSS);
inout VDD;
inout VSS;
input D, GB, RB, SB;
output Q, QB;
reg notifier;

   `ifdef FUNCTIONAL  //  functional //

	LACRSM0HM_func LACRSM0HM_behav_inst(.Q(Q),.QB(QB),.D(D),.GB(GB),.RB(RB),.SB(SB),.notifier(notifier),.VDD(VDD),.VSS(VSS));

   `else

	wire D$delay ;

	wire GB$delay ;

	wire RB$delay ;

	wire SB$delay ;

	LACRSM0HM_func LACRSM0HM_inst(.Q(Q),.QB(QB),.D(D$delay),.GB(GB$delay),.RB(RB$delay),.SB(SB$delay),.notifier(notifier),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	and MGM_G0(ENABLE_RB_AND_SB,SB$delay,RB$delay);


	not MGM_G1(MGM_W0,D$delay);


	and MGM_G2(MGM_W1,RB$delay,MGM_W0);


	and MGM_G3(ENABLE_NOT_D_AND_RB_AND_SB,SB$delay,MGM_W1);


	and MGM_G4(MGM_W2,RB$delay,D$delay);


	and MGM_G5(ENABLE_D_AND_RB_AND_SB,SB$delay,MGM_W2);


	buf MGM_G6(ENABLE_SB,SB$delay);


	not MGM_G7(MGM_W3,D$delay);


	and MGM_G8(MGM_W4,GB$delay,MGM_W3);


	and MGM_G9(ENABLE_NOT_D_AND_GB_AND_SB,SB$delay,MGM_W4);


	and MGM_G10(MGM_W5,GB$delay,D$delay);


	and MGM_G11(ENABLE_D_AND_GB_AND_SB,SB$delay,MGM_W5);


	buf MGM_G12(ENABLE_RB,RB$delay);


	not MGM_G13(MGM_W6,D$delay);


	and MGM_G14(ENABLE_NOT_D_AND_GB,GB$delay,MGM_W6);


	and MGM_G15(ENABLE_D_AND_GB,GB$delay,D$delay);


	not MGM_G16(MGM_W7,D$delay);


	and MGM_G17(MGM_W8,GB$delay,MGM_W7);


	and MGM_G18(ENABLE_NOT_D_AND_GB_AND_RB,RB$delay,MGM_W8);


	and MGM_G19(MGM_W9,GB$delay,D$delay);


	and MGM_G20(ENABLE_D_AND_GB_AND_RB,RB$delay,MGM_W9);


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc D --> Q
	 (D => Q) = (1.0,1.0);

	// seq arc GB --> Q
	(negedge GB => (Q : D))  = (1.0,1.0);

	// seq arc RB --> Q
	(RB => Q)  = (1.0,1.0);

	// seq arc SB --> Q
	(SB => Q)  = (1.0,1.0);

	// comb arc D --> QB
	 (D => QB) = (1.0,1.0);

	// seq arc GB --> QB
	(negedge GB => (QB : D))  = (1.0,1.0);

	// seq arc RB --> QB
	(RB => QB)  = (1.0,1.0);

	// seq arc SB --> QB
	(SB => QB)  = (1.0,1.0);

	// setuphold D- GB-LH
	$setuphold(posedge GB &&& (ENABLE_RB_AND_SB === 1'b1),
		posedge D &&& (ENABLE_RB_AND_SB === 1'b1),
		1.0,1.0,notifier,,,GB$delay,D$delay);

	// setuphold D- GB-LH
	$setuphold(posedge GB &&& (ENABLE_RB_AND_SB === 1'b1),
		negedge D &&& (ENABLE_RB_AND_SB === 1'b1),
		1.0,1.0,notifier,,,GB$delay,D$delay);

	$width(negedge GB &&& (ENABLE_NOT_D_AND_RB_AND_SB === 1'b1)
		,1.0,0,notifier);

	$width(negedge GB &&& (ENABLE_D_AND_RB_AND_SB === 1'b1)
		,1.0,0,notifier);

	// recrem RB-GB-posedge
	$recrem(posedge RB &&& (ENABLE_SB === 1'b1),
		posedge GB &&& (ENABLE_SB === 1'b1),
		1.0,1.0,notifier,,,RB$delay,GB$delay);

	$width(negedge RB &&& (ENABLE_NOT_D_AND_GB_AND_SB === 1'b1)
		,1.0,0,notifier);

	$width(negedge RB &&& (ENABLE_D_AND_GB_AND_SB === 1'b1)
		,1.0,0,notifier);

	// recrem SB-GB-posedge
	$recrem(posedge SB &&& (ENABLE_RB === 1'b1),
		posedge GB &&& (ENABLE_RB === 1'b1),
		1.0,1.0,notifier,,,SB$delay,GB$delay);

	// setuphold SB- RB-LH
	$setuphold(posedge RB &&& (ENABLE_NOT_D_AND_GB === 1'b1),
		posedge SB &&& (ENABLE_NOT_D_AND_GB === 1'b1),
		1.0,1.0,notifier,,,RB$delay,SB$delay);

	// setuphold SB- RB-LH
	$setuphold(posedge RB &&& (ENABLE_D_AND_GB === 1'b1),
		posedge SB &&& (ENABLE_D_AND_GB === 1'b1),
		1.0,1.0,notifier,,,RB$delay,SB$delay);

	$width(negedge SB &&& (ENABLE_NOT_D_AND_GB_AND_RB === 1'b1)
		,1.0,0,notifier);

	$width(negedge SB &&& (ENABLE_D_AND_GB_AND_RB === 1'b1)
		,1.0,0,notifier);

	// mpw GB_hl 
	$width(negedge GB,1.0,0,notifier);

	// mpw RB_hl 
	$width(negedge RB,1.0,0,notifier);

	// mpw SB_hl 
	$width(negedge SB,1.0,0,notifier);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module LACRSM1HM( Q, QB, D, GB, RB, SB , VDD, VSS);
inout VDD;
inout VSS;
input D, GB, RB, SB;
output Q, QB;
reg notifier;

   `ifdef FUNCTIONAL  //  functional //

	LACRSM1HM_func LACRSM1HM_behav_inst(.Q(Q),.QB(QB),.D(D),.GB(GB),.RB(RB),.SB(SB),.notifier(notifier),.VDD(VDD),.VSS(VSS));

   `else

	wire D$delay ;

	wire GB$delay ;

	wire RB$delay ;

	wire SB$delay ;

	LACRSM1HM_func LACRSM1HM_inst(.Q(Q),.QB(QB),.D(D$delay),.GB(GB$delay),.RB(RB$delay),.SB(SB$delay),.notifier(notifier),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	and MGM_G0(ENABLE_RB_AND_SB,SB$delay,RB$delay);


	not MGM_G1(MGM_W0,D$delay);


	and MGM_G2(MGM_W1,RB$delay,MGM_W0);


	and MGM_G3(ENABLE_NOT_D_AND_RB_AND_SB,SB$delay,MGM_W1);


	and MGM_G4(MGM_W2,RB$delay,D$delay);


	and MGM_G5(ENABLE_D_AND_RB_AND_SB,SB$delay,MGM_W2);


	buf MGM_G6(ENABLE_SB,SB$delay);


	not MGM_G7(MGM_W3,D$delay);


	and MGM_G8(MGM_W4,GB$delay,MGM_W3);


	and MGM_G9(ENABLE_NOT_D_AND_GB_AND_SB,SB$delay,MGM_W4);


	and MGM_G10(MGM_W5,GB$delay,D$delay);


	and MGM_G11(ENABLE_D_AND_GB_AND_SB,SB$delay,MGM_W5);


	buf MGM_G12(ENABLE_RB,RB$delay);


	not MGM_G13(MGM_W6,D$delay);


	and MGM_G14(ENABLE_NOT_D_AND_GB,GB$delay,MGM_W6);


	and MGM_G15(ENABLE_D_AND_GB,GB$delay,D$delay);


	not MGM_G16(MGM_W7,D$delay);


	and MGM_G17(MGM_W8,GB$delay,MGM_W7);


	and MGM_G18(ENABLE_NOT_D_AND_GB_AND_RB,RB$delay,MGM_W8);


	and MGM_G19(MGM_W9,GB$delay,D$delay);


	and MGM_G20(ENABLE_D_AND_GB_AND_RB,RB$delay,MGM_W9);


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc D --> Q
	 (D => Q) = (1.0,1.0);

	// seq arc GB --> Q
	(negedge GB => (Q : D))  = (1.0,1.0);

	// seq arc RB --> Q
	(RB => Q)  = (1.0,1.0);

	// seq arc SB --> Q
	(SB => Q)  = (1.0,1.0);

	// comb arc D --> QB
	 (D => QB) = (1.0,1.0);

	// seq arc GB --> QB
	(negedge GB => (QB : D))  = (1.0,1.0);

	// seq arc RB --> QB
	(RB => QB)  = (1.0,1.0);

	// seq arc SB --> QB
	(SB => QB)  = (1.0,1.0);

	// setuphold D- GB-LH
	$setuphold(posedge GB &&& (ENABLE_RB_AND_SB === 1'b1),
		posedge D &&& (ENABLE_RB_AND_SB === 1'b1),
		1.0,1.0,notifier,,,GB$delay,D$delay);

	// setuphold D- GB-LH
	$setuphold(posedge GB &&& (ENABLE_RB_AND_SB === 1'b1),
		negedge D &&& (ENABLE_RB_AND_SB === 1'b1),
		1.0,1.0,notifier,,,GB$delay,D$delay);

	$width(negedge GB &&& (ENABLE_NOT_D_AND_RB_AND_SB === 1'b1)
		,1.0,0,notifier);

	$width(negedge GB &&& (ENABLE_D_AND_RB_AND_SB === 1'b1)
		,1.0,0,notifier);

	// recrem RB-GB-posedge
	$recrem(posedge RB &&& (ENABLE_SB === 1'b1),
		posedge GB &&& (ENABLE_SB === 1'b1),
		1.0,1.0,notifier,,,RB$delay,GB$delay);

	$width(negedge RB &&& (ENABLE_NOT_D_AND_GB_AND_SB === 1'b1)
		,1.0,0,notifier);

	$width(negedge RB &&& (ENABLE_D_AND_GB_AND_SB === 1'b1)
		,1.0,0,notifier);

	// recrem SB-GB-posedge
	$recrem(posedge SB &&& (ENABLE_RB === 1'b1),
		posedge GB &&& (ENABLE_RB === 1'b1),
		1.0,1.0,notifier,,,SB$delay,GB$delay);

	// setuphold SB- RB-LH
	$setuphold(posedge RB &&& (ENABLE_NOT_D_AND_GB === 1'b1),
		posedge SB &&& (ENABLE_NOT_D_AND_GB === 1'b1),
		1.0,1.0,notifier,,,RB$delay,SB$delay);

	// setuphold SB- RB-LH
	$setuphold(posedge RB &&& (ENABLE_D_AND_GB === 1'b1),
		posedge SB &&& (ENABLE_D_AND_GB === 1'b1),
		1.0,1.0,notifier,,,RB$delay,SB$delay);

	$width(negedge SB &&& (ENABLE_NOT_D_AND_GB_AND_RB === 1'b1)
		,1.0,0,notifier);

	$width(negedge SB &&& (ENABLE_D_AND_GB_AND_RB === 1'b1)
		,1.0,0,notifier);

	// mpw GB_hl 
	$width(negedge GB,1.0,0,notifier);

	// mpw RB_hl 
	$width(negedge RB,1.0,0,notifier);

	// mpw SB_hl 
	$width(negedge SB,1.0,0,notifier);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module LACRSM2HM( Q, QB, D, GB, RB, SB , VDD, VSS);
inout VDD;
inout VSS;
input D, GB, RB, SB;
output Q, QB;
reg notifier;

   `ifdef FUNCTIONAL  //  functional //

	LACRSM2HM_func LACRSM2HM_behav_inst(.Q(Q),.QB(QB),.D(D),.GB(GB),.RB(RB),.SB(SB),.notifier(notifier),.VDD(VDD),.VSS(VSS));

   `else

	wire D$delay ;

	wire GB$delay ;

	wire RB$delay ;

	wire SB$delay ;

	LACRSM2HM_func LACRSM2HM_inst(.Q(Q),.QB(QB),.D(D$delay),.GB(GB$delay),.RB(RB$delay),.SB(SB$delay),.notifier(notifier),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	and MGM_G0(ENABLE_RB_AND_SB,SB$delay,RB$delay);


	not MGM_G1(MGM_W0,D$delay);


	and MGM_G2(MGM_W1,RB$delay,MGM_W0);


	and MGM_G3(ENABLE_NOT_D_AND_RB_AND_SB,SB$delay,MGM_W1);


	and MGM_G4(MGM_W2,RB$delay,D$delay);


	and MGM_G5(ENABLE_D_AND_RB_AND_SB,SB$delay,MGM_W2);


	buf MGM_G6(ENABLE_SB,SB$delay);


	not MGM_G7(MGM_W3,D$delay);


	and MGM_G8(MGM_W4,GB$delay,MGM_W3);


	and MGM_G9(ENABLE_NOT_D_AND_GB_AND_SB,SB$delay,MGM_W4);


	and MGM_G10(MGM_W5,GB$delay,D$delay);


	and MGM_G11(ENABLE_D_AND_GB_AND_SB,SB$delay,MGM_W5);


	buf MGM_G12(ENABLE_RB,RB$delay);


	not MGM_G13(MGM_W6,D$delay);


	and MGM_G14(ENABLE_NOT_D_AND_GB,GB$delay,MGM_W6);


	and MGM_G15(ENABLE_D_AND_GB,GB$delay,D$delay);


	not MGM_G16(MGM_W7,D$delay);


	and MGM_G17(MGM_W8,GB$delay,MGM_W7);


	and MGM_G18(ENABLE_NOT_D_AND_GB_AND_RB,RB$delay,MGM_W8);


	and MGM_G19(MGM_W9,GB$delay,D$delay);


	and MGM_G20(ENABLE_D_AND_GB_AND_RB,RB$delay,MGM_W9);


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc D --> Q
	 (D => Q) = (1.0,1.0);

	// seq arc GB --> Q
	(negedge GB => (Q : D))  = (1.0,1.0);

	// seq arc RB --> Q
	(RB => Q)  = (1.0,1.0);

	// seq arc SB --> Q
	(SB => Q)  = (1.0,1.0);

	// comb arc D --> QB
	 (D => QB) = (1.0,1.0);

	// seq arc GB --> QB
	(negedge GB => (QB : D))  = (1.0,1.0);

	// seq arc RB --> QB
	(RB => QB)  = (1.0,1.0);

	// seq arc SB --> QB
	(SB => QB)  = (1.0,1.0);

	// setuphold D- GB-LH
	$setuphold(posedge GB &&& (ENABLE_RB_AND_SB === 1'b1),
		posedge D &&& (ENABLE_RB_AND_SB === 1'b1),
		1.0,1.0,notifier,,,GB$delay,D$delay);

	// setuphold D- GB-LH
	$setuphold(posedge GB &&& (ENABLE_RB_AND_SB === 1'b1),
		negedge D &&& (ENABLE_RB_AND_SB === 1'b1),
		1.0,1.0,notifier,,,GB$delay,D$delay);

	$width(negedge GB &&& (ENABLE_NOT_D_AND_RB_AND_SB === 1'b1)
		,1.0,0,notifier);

	$width(negedge GB &&& (ENABLE_D_AND_RB_AND_SB === 1'b1)
		,1.0,0,notifier);

	// recrem RB-GB-posedge
	$recrem(posedge RB &&& (ENABLE_SB === 1'b1),
		posedge GB &&& (ENABLE_SB === 1'b1),
		1.0,1.0,notifier,,,RB$delay,GB$delay);

	$width(negedge RB &&& (ENABLE_NOT_D_AND_GB_AND_SB === 1'b1)
		,1.0,0,notifier);

	$width(negedge RB &&& (ENABLE_D_AND_GB_AND_SB === 1'b1)
		,1.0,0,notifier);

	// recrem SB-GB-posedge
	$recrem(posedge SB &&& (ENABLE_RB === 1'b1),
		posedge GB &&& (ENABLE_RB === 1'b1),
		1.0,1.0,notifier,,,SB$delay,GB$delay);

	// setuphold SB- RB-LH
	$setuphold(posedge RB &&& (ENABLE_NOT_D_AND_GB === 1'b1),
		posedge SB &&& (ENABLE_NOT_D_AND_GB === 1'b1),
		1.0,1.0,notifier,,,RB$delay,SB$delay);

	// setuphold SB- RB-LH
	$setuphold(posedge RB &&& (ENABLE_D_AND_GB === 1'b1),
		posedge SB &&& (ENABLE_D_AND_GB === 1'b1),
		1.0,1.0,notifier,,,RB$delay,SB$delay);

	$width(negedge SB &&& (ENABLE_NOT_D_AND_GB_AND_RB === 1'b1)
		,1.0,0,notifier);

	$width(negedge SB &&& (ENABLE_D_AND_GB_AND_RB === 1'b1)
		,1.0,0,notifier);

	// mpw GB_hl 
	$width(negedge GB,1.0,0,notifier);

	// mpw RB_hl 
	$width(negedge RB,1.0,0,notifier);

	// mpw SB_hl 
	$width(negedge SB,1.0,0,notifier);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module LACRSM4HM( Q, QB, D, GB, RB, SB , VDD, VSS);
inout VDD;
inout VSS;
input D, GB, RB, SB;
output Q, QB;
reg notifier;

   `ifdef FUNCTIONAL  //  functional //

	LACRSM4HM_func LACRSM4HM_behav_inst(.Q(Q),.QB(QB),.D(D),.GB(GB),.RB(RB),.SB(SB),.notifier(notifier),.VDD(VDD),.VSS(VSS));

   `else

	wire D$delay ;

	wire GB$delay ;

	wire RB$delay ;

	wire SB$delay ;

	LACRSM4HM_func LACRSM4HM_inst(.Q(Q),.QB(QB),.D(D$delay),.GB(GB$delay),.RB(RB$delay),.SB(SB$delay),.notifier(notifier),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	and MGM_G0(ENABLE_RB_AND_SB,SB$delay,RB$delay);


	not MGM_G1(MGM_W0,D$delay);


	and MGM_G2(MGM_W1,RB$delay,MGM_W0);


	and MGM_G3(ENABLE_NOT_D_AND_RB_AND_SB,SB$delay,MGM_W1);


	and MGM_G4(MGM_W2,RB$delay,D$delay);


	and MGM_G5(ENABLE_D_AND_RB_AND_SB,SB$delay,MGM_W2);


	buf MGM_G6(ENABLE_SB,SB$delay);


	not MGM_G7(MGM_W3,D$delay);


	and MGM_G8(MGM_W4,GB$delay,MGM_W3);


	and MGM_G9(ENABLE_NOT_D_AND_GB_AND_SB,SB$delay,MGM_W4);


	and MGM_G10(MGM_W5,GB$delay,D$delay);


	and MGM_G11(ENABLE_D_AND_GB_AND_SB,SB$delay,MGM_W5);


	buf MGM_G12(ENABLE_RB,RB$delay);


	not MGM_G13(MGM_W6,D$delay);


	and MGM_G14(ENABLE_NOT_D_AND_GB,GB$delay,MGM_W6);


	and MGM_G15(ENABLE_D_AND_GB,GB$delay,D$delay);


	not MGM_G16(MGM_W7,D$delay);


	and MGM_G17(MGM_W8,GB$delay,MGM_W7);


	and MGM_G18(ENABLE_NOT_D_AND_GB_AND_RB,RB$delay,MGM_W8);


	and MGM_G19(MGM_W9,GB$delay,D$delay);


	and MGM_G20(ENABLE_D_AND_GB_AND_RB,RB$delay,MGM_W9);


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc D --> Q
	 (D => Q) = (1.0,1.0);

	// seq arc GB --> Q
	(negedge GB => (Q : D))  = (1.0,1.0);

	// seq arc RB --> Q
	(RB => Q)  = (1.0,1.0);

	// seq arc SB --> Q
	(SB => Q)  = (1.0,1.0);

	// comb arc D --> QB
	 (D => QB) = (1.0,1.0);

	// seq arc GB --> QB
	(negedge GB => (QB : D))  = (1.0,1.0);

	// seq arc RB --> QB
	(RB => QB)  = (1.0,1.0);

	// seq arc SB --> QB
	(SB => QB)  = (1.0,1.0);

	// setuphold D- GB-LH
	$setuphold(posedge GB &&& (ENABLE_RB_AND_SB === 1'b1),
		posedge D &&& (ENABLE_RB_AND_SB === 1'b1),
		1.0,1.0,notifier,,,GB$delay,D$delay);

	// setuphold D- GB-LH
	$setuphold(posedge GB &&& (ENABLE_RB_AND_SB === 1'b1),
		negedge D &&& (ENABLE_RB_AND_SB === 1'b1),
		1.0,1.0,notifier,,,GB$delay,D$delay);

	$width(negedge GB &&& (ENABLE_NOT_D_AND_RB_AND_SB === 1'b1)
		,1.0,0,notifier);

	$width(negedge GB &&& (ENABLE_D_AND_RB_AND_SB === 1'b1)
		,1.0,0,notifier);

	// recrem RB-GB-posedge
	$recrem(posedge RB &&& (ENABLE_SB === 1'b1),
		posedge GB &&& (ENABLE_SB === 1'b1),
		1.0,1.0,notifier,,,RB$delay,GB$delay);

	$width(negedge RB &&& (ENABLE_NOT_D_AND_GB_AND_SB === 1'b1)
		,1.0,0,notifier);

	$width(negedge RB &&& (ENABLE_D_AND_GB_AND_SB === 1'b1)
		,1.0,0,notifier);

	// recrem SB-GB-posedge
	$recrem(posedge SB &&& (ENABLE_RB === 1'b1),
		posedge GB &&& (ENABLE_RB === 1'b1),
		1.0,1.0,notifier,,,SB$delay,GB$delay);

	// setuphold SB- RB-LH
	$setuphold(posedge RB &&& (ENABLE_NOT_D_AND_GB === 1'b1),
		posedge SB &&& (ENABLE_NOT_D_AND_GB === 1'b1),
		1.0,1.0,notifier,,,RB$delay,SB$delay);

	// setuphold SB- RB-LH
	$setuphold(posedge RB &&& (ENABLE_D_AND_GB === 1'b1),
		posedge SB &&& (ENABLE_D_AND_GB === 1'b1),
		1.0,1.0,notifier,,,RB$delay,SB$delay);

	$width(negedge SB &&& (ENABLE_NOT_D_AND_GB_AND_RB === 1'b1)
		,1.0,0,notifier);

	$width(negedge SB &&& (ENABLE_D_AND_GB_AND_RB === 1'b1)
		,1.0,0,notifier);

	// mpw GB_hl 
	$width(negedge GB,1.0,0,notifier);

	// mpw RB_hl 
	$width(negedge RB,1.0,0,notifier);

	// mpw SB_hl 
	$width(negedge SB,1.0,0,notifier);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module LAGCECSM12HM( GCK, CKB, E, SE, VDD, VSS);
inout VDD;
inout VSS;
input CKB, E, SE;
output GCK;
reg notifier;

   `ifdef FUNCTIONAL  //  functional //

   `else

	wire CKB$delay ;
	wire E$delay ;
	wire SE$delay ;

	LAGCECSM12HM_func LAGCECSM12HM_inst(.CKB(CKB$delay),.E(E$delay),.GCK(GCK),.SE(SE$delay),.notifier(notifier),.VDD(VDD),.VSS(VSS));

   `endif 



   `ifdef FUNCTIONAL  //  functional //

	LAGCECSM12HM_func LAGCECSM12HM_inst(.CKB(CKB),.E(E),.GCK(GCK),.SE(SE),.notifier(notifier),.VDD(VDD),.VSS(VSS));

   `endif 


   `ifdef FUNCTIONAL // functional  //

   `else


	// spec_gates_begin


	not MGM_AG0(MGM_W0,E$delay);


	not MGM_AG1(MGM_W1,SE$delay);


	and MGM_AG2(ENABLE_NOT_E_AND_NOT_SE,MGM_W1,MGM_W0);


	not MGM_AG3(MGM_W2,E$delay);


	and MGM_AG4(ENABLE_NOT_E_AND_SE,SE$delay,MGM_W2);


	not MGM_AG5(MGM_W3,SE$delay);


	and MGM_AG6(ENABLE_E_AND_NOT_SE,MGM_W3,E$delay);


	and MGM_AG7(ENABLE_E_AND_SE,SE$delay,E$delay);


// specify block begins

   specify

	if(E===1'b0 && SE===1'b1)
	// arc CKB --> GCK
	 (CKB => GCK) = (1.0,1.0);

	if(E===1'b1 && SE===1'b0)
	// arc CKB --> GCK
	 (CKB => GCK) = (1.0,1.0);

	if(E===1'b1 && SE===1'b1)
	// arc CKB --> GCK
	 (CKB => GCK) = (1.0,1.0);

	ifnone
	// arc CKB --> GCK
	 (CKB => GCK) = (1.0,1.0);

	if(E===1'b0 && SE===1'b0)
	// arc CKB --> GCK
	 (posedge CKB => (GCK : E))  = (1.0,1.0);

	$width(posedge CKB &&& (ENABLE_NOT_E_AND_NOT_SE === 1'b1)
		,1.0,0,notifier);
	$width(posedge CKB &&& (ENABLE_NOT_E_AND_SE === 1'b1)
		,1.0,0,notifier);
	$width(posedge CKB &&& (ENABLE_E_AND_NOT_SE === 1'b1)
		,1.0,0,notifier);
	$width(posedge CKB &&& (ENABLE_E_AND_SE === 1'b1)
		,1.0,0,notifier);
	$width(posedge CKB,1.0,0,notifier);

	// setuphold E- CKB-HL
	$setuphold(negedge CKB,negedge E &&& (SE === 1'b0),1.0,1.0,notifier,,,CKB$delay,E$delay);

	// setuphold E- CKB-HL
	$setuphold(negedge CKB,posedge E &&& (SE === 1'b0),1.0,1.0,notifier,,,CKB$delay,E$delay);

	// setuphold SE- CKB-HL
	$setuphold(negedge CKB,negedge SE &&& (E === 1'b0),1.0,1.0,notifier,,,CKB$delay,SE$delay);

	// setuphold SE- CKB-HL
	$setuphold(negedge CKB,posedge SE &&& (E === 1'b0),1.0,1.0,notifier,,,CKB$delay,SE$delay);

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module LAGCECSM16HM( GCK, CKB, E, SE, VDD, VSS);
inout VDD;
inout VSS;
input CKB, E, SE;
output GCK;
reg notifier;

   `ifdef FUNCTIONAL  //  functional //

   `else

	wire CKB$delay ;
	wire E$delay ;
	wire SE$delay ;

	LAGCECSM16HM_func LAGCECSM16HM_inst(.CKB(CKB$delay),.E(E$delay),.GCK(GCK),.SE(SE$delay),.notifier(notifier),.VDD(VDD),.VSS(VSS));

   `endif 



   `ifdef FUNCTIONAL  //  functional //

	LAGCECSM16HM_func LAGCECSM16HM_inst(.CKB(CKB),.E(E),.GCK(GCK),.SE(SE),.notifier(notifier),.VDD(VDD),.VSS(VSS));

   `endif 


   `ifdef FUNCTIONAL // functional  //

   `else


	// spec_gates_begin


	not MGM_AG0(MGM_W0,E$delay);


	not MGM_AG1(MGM_W1,SE$delay);


	and MGM_AG2(ENABLE_NOT_E_AND_NOT_SE,MGM_W1,MGM_W0);


	not MGM_AG3(MGM_W2,E$delay);


	and MGM_AG4(ENABLE_NOT_E_AND_SE,SE$delay,MGM_W2);


	not MGM_AG5(MGM_W3,SE$delay);


	and MGM_AG6(ENABLE_E_AND_NOT_SE,MGM_W3,E$delay);


	and MGM_AG7(ENABLE_E_AND_SE,SE$delay,E$delay);


// specify block begins

   specify

	if(E===1'b0 && SE===1'b1)
	// arc CKB --> GCK
	 (CKB => GCK) = (1.0,1.0);

	if(E===1'b1 && SE===1'b0)
	// arc CKB --> GCK
	 (CKB => GCK) = (1.0,1.0);

	if(E===1'b1 && SE===1'b1)
	// arc CKB --> GCK
	 (CKB => GCK) = (1.0,1.0);

	ifnone
	// arc CKB --> GCK
	 (CKB => GCK) = (1.0,1.0);

	if(E===1'b0 && SE===1'b0)
	// arc CKB --> GCK
	 (posedge CKB => (GCK : E))  = (1.0,1.0);

	$width(posedge CKB &&& (ENABLE_NOT_E_AND_NOT_SE === 1'b1)
		,1.0,0,notifier);
	$width(posedge CKB &&& (ENABLE_NOT_E_AND_SE === 1'b1)
		,1.0,0,notifier);
	$width(posedge CKB &&& (ENABLE_E_AND_NOT_SE === 1'b1)
		,1.0,0,notifier);
	$width(posedge CKB &&& (ENABLE_E_AND_SE === 1'b1)
		,1.0,0,notifier);
	$width(posedge CKB,1.0,0,notifier);

	// setuphold E- CKB-HL
	$setuphold(negedge CKB,negedge E &&& (SE === 1'b0),1.0,1.0,notifier,,,CKB$delay,E$delay);

	// setuphold E- CKB-HL
	$setuphold(negedge CKB,posedge E &&& (SE === 1'b0),1.0,1.0,notifier,,,CKB$delay,E$delay);

	// setuphold SE- CKB-HL
	$setuphold(negedge CKB,negedge SE &&& (E === 1'b0),1.0,1.0,notifier,,,CKB$delay,SE$delay);

	// setuphold SE- CKB-HL
	$setuphold(negedge CKB,posedge SE &&& (E === 1'b0),1.0,1.0,notifier,,,CKB$delay,SE$delay);

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module LAGCECSM20HM( GCK, CKB, E, SE, VDD, VSS);
inout VDD;
inout VSS;
input CKB, E, SE;
output GCK;
reg notifier;

   `ifdef FUNCTIONAL  //  functional //

   `else

	wire CKB$delay ;
	wire E$delay ;
	wire SE$delay ;

	LAGCECSM20HM_func LAGCECSM20HM_inst(.CKB(CKB$delay),.E(E$delay),.GCK(GCK),.SE(SE$delay),.notifier(notifier),.VDD(VDD),.VSS(VSS));

   `endif 



   `ifdef FUNCTIONAL  //  functional //

	LAGCECSM20HM_func LAGCECSM20HM_inst(.CKB(CKB),.E(E),.GCK(GCK),.SE(SE),.notifier(notifier),.VDD(VDD),.VSS(VSS));

   `endif 


   `ifdef FUNCTIONAL // functional  //

   `else


	// spec_gates_begin


	not MGM_AG0(MGM_W0,E$delay);


	not MGM_AG1(MGM_W1,SE$delay);


	and MGM_AG2(ENABLE_NOT_E_AND_NOT_SE,MGM_W1,MGM_W0);


	not MGM_AG3(MGM_W2,E$delay);


	and MGM_AG4(ENABLE_NOT_E_AND_SE,SE$delay,MGM_W2);


	not MGM_AG5(MGM_W3,SE$delay);


	and MGM_AG6(ENABLE_E_AND_NOT_SE,MGM_W3,E$delay);


	and MGM_AG7(ENABLE_E_AND_SE,SE$delay,E$delay);


// specify block begins

   specify

	if(E===1'b0 && SE===1'b1)
	// arc CKB --> GCK
	 (CKB => GCK) = (1.0,1.0);

	if(E===1'b1 && SE===1'b0)
	// arc CKB --> GCK
	 (CKB => GCK) = (1.0,1.0);

	if(E===1'b1 && SE===1'b1)
	// arc CKB --> GCK
	 (CKB => GCK) = (1.0,1.0);

	ifnone
	// arc CKB --> GCK
	 (CKB => GCK) = (1.0,1.0);

	if(E===1'b0 && SE===1'b0)
	// arc CKB --> GCK
	 (posedge CKB => (GCK : E))  = (1.0,1.0);

	$width(posedge CKB &&& (ENABLE_NOT_E_AND_NOT_SE === 1'b1)
		,1.0,0,notifier);
	$width(posedge CKB &&& (ENABLE_NOT_E_AND_SE === 1'b1)
		,1.0,0,notifier);
	$width(posedge CKB &&& (ENABLE_E_AND_NOT_SE === 1'b1)
		,1.0,0,notifier);
	$width(posedge CKB &&& (ENABLE_E_AND_SE === 1'b1)
		,1.0,0,notifier);
	$width(posedge CKB,1.0,0,notifier);

	// setuphold E- CKB-HL
	$setuphold(negedge CKB,negedge E &&& (SE === 1'b0),1.0,1.0,notifier,,,CKB$delay,E$delay);

	// setuphold E- CKB-HL
	$setuphold(negedge CKB,posedge E &&& (SE === 1'b0),1.0,1.0,notifier,,,CKB$delay,E$delay);

	// setuphold SE- CKB-HL
	$setuphold(negedge CKB,negedge SE &&& (E === 1'b0),1.0,1.0,notifier,,,CKB$delay,SE$delay);

	// setuphold SE- CKB-HL
	$setuphold(negedge CKB,posedge SE &&& (E === 1'b0),1.0,1.0,notifier,,,CKB$delay,SE$delay);

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module LAGCECSM2HM( GCK, CKB, E, SE, VDD, VSS);
inout VDD;
inout VSS;
input CKB, E, SE;
output GCK;
reg notifier;

   `ifdef FUNCTIONAL  //  functional //

   `else

	wire CKB$delay ;
	wire E$delay ;
	wire SE$delay ;

	LAGCECSM2HM_func LAGCECSM2HM_inst(.CKB(CKB$delay),.E(E$delay),.GCK(GCK),.SE(SE$delay),.notifier(notifier),.VDD(VDD),.VSS(VSS));

   `endif 



   `ifdef FUNCTIONAL  //  functional //

	LAGCECSM2HM_func LAGCECSM2HM_inst(.CKB(CKB),.E(E),.GCK(GCK),.SE(SE),.notifier(notifier),.VDD(VDD),.VSS(VSS));

   `endif 


   `ifdef FUNCTIONAL // functional  //

   `else


	// spec_gates_begin


	not MGM_AG0(MGM_W0,E$delay);


	not MGM_AG1(MGM_W1,SE$delay);


	and MGM_AG2(ENABLE_NOT_E_AND_NOT_SE,MGM_W1,MGM_W0);


	not MGM_AG3(MGM_W2,E$delay);


	and MGM_AG4(ENABLE_NOT_E_AND_SE,SE$delay,MGM_W2);


	not MGM_AG5(MGM_W3,SE$delay);


	and MGM_AG6(ENABLE_E_AND_NOT_SE,MGM_W3,E$delay);


	and MGM_AG7(ENABLE_E_AND_SE,SE$delay,E$delay);


// specify block begins

   specify

	if(E===1'b0 && SE===1'b1)
	// arc CKB --> GCK
	 (CKB => GCK) = (1.0,1.0);

	if(E===1'b1 && SE===1'b0)
	// arc CKB --> GCK
	 (CKB => GCK) = (1.0,1.0);

	if(E===1'b1 && SE===1'b1)
	// arc CKB --> GCK
	 (CKB => GCK) = (1.0,1.0);

	ifnone
	// arc CKB --> GCK
	 (CKB => GCK) = (1.0,1.0);

	if(E===1'b0 && SE===1'b0)
	// arc CKB --> GCK
	 (posedge CKB => (GCK : E))  = (1.0,1.0);

	$width(posedge CKB &&& (ENABLE_NOT_E_AND_NOT_SE === 1'b1)
		,1.0,0,notifier);
	$width(posedge CKB &&& (ENABLE_NOT_E_AND_SE === 1'b1)
		,1.0,0,notifier);
	$width(posedge CKB &&& (ENABLE_E_AND_NOT_SE === 1'b1)
		,1.0,0,notifier);
	$width(posedge CKB &&& (ENABLE_E_AND_SE === 1'b1)
		,1.0,0,notifier);
	$width(posedge CKB,1.0,0,notifier);

	// setuphold E- CKB-HL
	$setuphold(negedge CKB,negedge E &&& (SE === 1'b0),1.0,1.0,notifier,,,CKB$delay,E$delay);

	// setuphold E- CKB-HL
	$setuphold(negedge CKB,posedge E &&& (SE === 1'b0),1.0,1.0,notifier,,,CKB$delay,E$delay);

	// setuphold SE- CKB-HL
	$setuphold(negedge CKB,negedge SE &&& (E === 1'b0),1.0,1.0,notifier,,,CKB$delay,SE$delay);

	// setuphold SE- CKB-HL
	$setuphold(negedge CKB,posedge SE &&& (E === 1'b0),1.0,1.0,notifier,,,CKB$delay,SE$delay);

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module LAGCECSM3HM( GCK, CKB, E, SE, VDD, VSS);
inout VDD;
inout VSS;
input CKB, E, SE;
output GCK;
reg notifier;

   `ifdef FUNCTIONAL  //  functional //

   `else

	wire CKB$delay ;
	wire E$delay ;
	wire SE$delay ;

	LAGCECSM3HM_func LAGCECSM3HM_inst(.CKB(CKB$delay),.E(E$delay),.GCK(GCK),.SE(SE$delay),.notifier(notifier),.VDD(VDD),.VSS(VSS));

   `endif 



   `ifdef FUNCTIONAL  //  functional //

	LAGCECSM3HM_func LAGCECSM3HM_inst(.CKB(CKB),.E(E),.GCK(GCK),.SE(SE),.notifier(notifier),.VDD(VDD),.VSS(VSS));

   `endif 


   `ifdef FUNCTIONAL // functional  //

   `else


	// spec_gates_begin


	not MGM_AG0(MGM_W0,E$delay);


	not MGM_AG1(MGM_W1,SE$delay);


	and MGM_AG2(ENABLE_NOT_E_AND_NOT_SE,MGM_W1,MGM_W0);


	not MGM_AG3(MGM_W2,E$delay);


	and MGM_AG4(ENABLE_NOT_E_AND_SE,SE$delay,MGM_W2);


	not MGM_AG5(MGM_W3,SE$delay);


	and MGM_AG6(ENABLE_E_AND_NOT_SE,MGM_W3,E$delay);


	and MGM_AG7(ENABLE_E_AND_SE,SE$delay,E$delay);


// specify block begins

   specify

	if(E===1'b0 && SE===1'b1)
	// arc CKB --> GCK
	 (CKB => GCK) = (1.0,1.0);

	if(E===1'b1 && SE===1'b0)
	// arc CKB --> GCK
	 (CKB => GCK) = (1.0,1.0);

	if(E===1'b1 && SE===1'b1)
	// arc CKB --> GCK
	 (CKB => GCK) = (1.0,1.0);

	ifnone
	// arc CKB --> GCK
	 (CKB => GCK) = (1.0,1.0);

	if(E===1'b0 && SE===1'b0)
	// arc CKB --> GCK
	 (posedge CKB => (GCK : E))  = (1.0,1.0);

	$width(posedge CKB &&& (ENABLE_NOT_E_AND_NOT_SE === 1'b1)
		,1.0,0,notifier);
	$width(posedge CKB &&& (ENABLE_NOT_E_AND_SE === 1'b1)
		,1.0,0,notifier);
	$width(posedge CKB &&& (ENABLE_E_AND_NOT_SE === 1'b1)
		,1.0,0,notifier);
	$width(posedge CKB &&& (ENABLE_E_AND_SE === 1'b1)
		,1.0,0,notifier);
	$width(posedge CKB,1.0,0,notifier);

	// setuphold E- CKB-HL
	$setuphold(negedge CKB,negedge E &&& (SE === 1'b0),1.0,1.0,notifier,,,CKB$delay,E$delay);

	// setuphold E- CKB-HL
	$setuphold(negedge CKB,posedge E &&& (SE === 1'b0),1.0,1.0,notifier,,,CKB$delay,E$delay);

	// setuphold SE- CKB-HL
	$setuphold(negedge CKB,negedge SE &&& (E === 1'b0),1.0,1.0,notifier,,,CKB$delay,SE$delay);

	// setuphold SE- CKB-HL
	$setuphold(negedge CKB,posedge SE &&& (E === 1'b0),1.0,1.0,notifier,,,CKB$delay,SE$delay);

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module LAGCECSM4HM( GCK, CKB, E, SE, VDD, VSS);
inout VDD;
inout VSS;
input CKB, E, SE;
output GCK;
reg notifier;

   `ifdef FUNCTIONAL  //  functional //

   `else

	wire CKB$delay ;
	wire E$delay ;
	wire SE$delay ;

	LAGCECSM4HM_func LAGCECSM4HM_inst(.CKB(CKB$delay),.E(E$delay),.GCK(GCK),.SE(SE$delay),.notifier(notifier),.VDD(VDD),.VSS(VSS));

   `endif 



   `ifdef FUNCTIONAL  //  functional //

	LAGCECSM4HM_func LAGCECSM4HM_inst(.CKB(CKB),.E(E),.GCK(GCK),.SE(SE),.notifier(notifier),.VDD(VDD),.VSS(VSS));

   `endif 


   `ifdef FUNCTIONAL // functional  //

   `else


	// spec_gates_begin


	not MGM_AG0(MGM_W0,E$delay);


	not MGM_AG1(MGM_W1,SE$delay);


	and MGM_AG2(ENABLE_NOT_E_AND_NOT_SE,MGM_W1,MGM_W0);


	not MGM_AG3(MGM_W2,E$delay);


	and MGM_AG4(ENABLE_NOT_E_AND_SE,SE$delay,MGM_W2);


	not MGM_AG5(MGM_W3,SE$delay);


	and MGM_AG6(ENABLE_E_AND_NOT_SE,MGM_W3,E$delay);


	and MGM_AG7(ENABLE_E_AND_SE,SE$delay,E$delay);


// specify block begins

   specify

	if(E===1'b0 && SE===1'b1)
	// arc CKB --> GCK
	 (CKB => GCK) = (1.0,1.0);

	if(E===1'b1 && SE===1'b0)
	// arc CKB --> GCK
	 (CKB => GCK) = (1.0,1.0);

	if(E===1'b1 && SE===1'b1)
	// arc CKB --> GCK
	 (CKB => GCK) = (1.0,1.0);

	ifnone
	// arc CKB --> GCK
	 (CKB => GCK) = (1.0,1.0);

	if(E===1'b0 && SE===1'b0)
	// arc CKB --> GCK
	 (posedge CKB => (GCK : E))  = (1.0,1.0);

	$width(posedge CKB &&& (ENABLE_NOT_E_AND_NOT_SE === 1'b1)
		,1.0,0,notifier);
	$width(posedge CKB &&& (ENABLE_NOT_E_AND_SE === 1'b1)
		,1.0,0,notifier);
	$width(posedge CKB &&& (ENABLE_E_AND_NOT_SE === 1'b1)
		,1.0,0,notifier);
	$width(posedge CKB &&& (ENABLE_E_AND_SE === 1'b1)
		,1.0,0,notifier);
	$width(posedge CKB,1.0,0,notifier);

	// setuphold E- CKB-HL
	$setuphold(negedge CKB,negedge E &&& (SE === 1'b0),1.0,1.0,notifier,,,CKB$delay,E$delay);

	// setuphold E- CKB-HL
	$setuphold(negedge CKB,posedge E &&& (SE === 1'b0),1.0,1.0,notifier,,,CKB$delay,E$delay);

	// setuphold SE- CKB-HL
	$setuphold(negedge CKB,negedge SE &&& (E === 1'b0),1.0,1.0,notifier,,,CKB$delay,SE$delay);

	// setuphold SE- CKB-HL
	$setuphold(negedge CKB,posedge SE &&& (E === 1'b0),1.0,1.0,notifier,,,CKB$delay,SE$delay);

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module LAGCECSM6HM( GCK, CKB, E, SE, VDD, VSS);
inout VDD;
inout VSS;
input CKB, E, SE;
output GCK;
reg notifier;

   `ifdef FUNCTIONAL  //  functional //

   `else

	wire CKB$delay ;
	wire E$delay ;
	wire SE$delay ;

	LAGCECSM6HM_func LAGCECSM6HM_inst(.CKB(CKB$delay),.E(E$delay),.GCK(GCK),.SE(SE$delay),.notifier(notifier),.VDD(VDD),.VSS(VSS));

   `endif 



   `ifdef FUNCTIONAL  //  functional //

	LAGCECSM6HM_func LAGCECSM6HM_inst(.CKB(CKB),.E(E),.GCK(GCK),.SE(SE),.notifier(notifier),.VDD(VDD),.VSS(VSS));

   `endif 


   `ifdef FUNCTIONAL // functional  //

   `else


	// spec_gates_begin


	not MGM_AG0(MGM_W0,E$delay);


	not MGM_AG1(MGM_W1,SE$delay);


	and MGM_AG2(ENABLE_NOT_E_AND_NOT_SE,MGM_W1,MGM_W0);


	not MGM_AG3(MGM_W2,E$delay);


	and MGM_AG4(ENABLE_NOT_E_AND_SE,SE$delay,MGM_W2);


	not MGM_AG5(MGM_W3,SE$delay);


	and MGM_AG6(ENABLE_E_AND_NOT_SE,MGM_W3,E$delay);


	and MGM_AG7(ENABLE_E_AND_SE,SE$delay,E$delay);


// specify block begins

   specify

	if(E===1'b0 && SE===1'b1)
	// arc CKB --> GCK
	 (CKB => GCK) = (1.0,1.0);

	if(E===1'b1 && SE===1'b0)
	// arc CKB --> GCK
	 (CKB => GCK) = (1.0,1.0);

	if(E===1'b1 && SE===1'b1)
	// arc CKB --> GCK
	 (CKB => GCK) = (1.0,1.0);

	ifnone
	// arc CKB --> GCK
	 (CKB => GCK) = (1.0,1.0);

	if(E===1'b0 && SE===1'b0)
	// arc CKB --> GCK
	 (posedge CKB => (GCK : E))  = (1.0,1.0);

	$width(posedge CKB &&& (ENABLE_NOT_E_AND_NOT_SE === 1'b1)
		,1.0,0,notifier);
	$width(posedge CKB &&& (ENABLE_NOT_E_AND_SE === 1'b1)
		,1.0,0,notifier);
	$width(posedge CKB &&& (ENABLE_E_AND_NOT_SE === 1'b1)
		,1.0,0,notifier);
	$width(posedge CKB &&& (ENABLE_E_AND_SE === 1'b1)
		,1.0,0,notifier);
	$width(posedge CKB,1.0,0,notifier);

	// setuphold E- CKB-HL
	$setuphold(negedge CKB,negedge E &&& (SE === 1'b0),1.0,1.0,notifier,,,CKB$delay,E$delay);

	// setuphold E- CKB-HL
	$setuphold(negedge CKB,posedge E &&& (SE === 1'b0),1.0,1.0,notifier,,,CKB$delay,E$delay);

	// setuphold SE- CKB-HL
	$setuphold(negedge CKB,negedge SE &&& (E === 1'b0),1.0,1.0,notifier,,,CKB$delay,SE$delay);

	// setuphold SE- CKB-HL
	$setuphold(negedge CKB,posedge SE &&& (E === 1'b0),1.0,1.0,notifier,,,CKB$delay,SE$delay);

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module LAGCECSM8HM( GCK, CKB, E, SE, VDD, VSS);
inout VDD;
inout VSS;
input CKB, E, SE;
output GCK;
reg notifier;

   `ifdef FUNCTIONAL  //  functional //

   `else

	wire CKB$delay ;
	wire E$delay ;
	wire SE$delay ;

	LAGCECSM8HM_func LAGCECSM8HM_inst(.CKB(CKB$delay),.E(E$delay),.GCK(GCK),.SE(SE$delay),.notifier(notifier),.VDD(VDD),.VSS(VSS));

   `endif 



   `ifdef FUNCTIONAL  //  functional //

	LAGCECSM8HM_func LAGCECSM8HM_inst(.CKB(CKB),.E(E),.GCK(GCK),.SE(SE),.notifier(notifier),.VDD(VDD),.VSS(VSS));

   `endif 


   `ifdef FUNCTIONAL // functional  //

   `else


	// spec_gates_begin


	not MGM_AG0(MGM_W0,E$delay);


	not MGM_AG1(MGM_W1,SE$delay);


	and MGM_AG2(ENABLE_NOT_E_AND_NOT_SE,MGM_W1,MGM_W0);


	not MGM_AG3(MGM_W2,E$delay);


	and MGM_AG4(ENABLE_NOT_E_AND_SE,SE$delay,MGM_W2);


	not MGM_AG5(MGM_W3,SE$delay);


	and MGM_AG6(ENABLE_E_AND_NOT_SE,MGM_W3,E$delay);


	and MGM_AG7(ENABLE_E_AND_SE,SE$delay,E$delay);


// specify block begins

   specify

	if(E===1'b0 && SE===1'b1)
	// arc CKB --> GCK
	 (CKB => GCK) = (1.0,1.0);

	if(E===1'b1 && SE===1'b0)
	// arc CKB --> GCK
	 (CKB => GCK) = (1.0,1.0);

	if(E===1'b1 && SE===1'b1)
	// arc CKB --> GCK
	 (CKB => GCK) = (1.0,1.0);

	ifnone
	// arc CKB --> GCK
	 (CKB => GCK) = (1.0,1.0);

	if(E===1'b0 && SE===1'b0)
	// arc CKB --> GCK
	 (posedge CKB => (GCK : E))  = (1.0,1.0);

	$width(posedge CKB &&& (ENABLE_NOT_E_AND_NOT_SE === 1'b1)
		,1.0,0,notifier);
	$width(posedge CKB &&& (ENABLE_NOT_E_AND_SE === 1'b1)
		,1.0,0,notifier);
	$width(posedge CKB &&& (ENABLE_E_AND_NOT_SE === 1'b1)
		,1.0,0,notifier);
	$width(posedge CKB &&& (ENABLE_E_AND_SE === 1'b1)
		,1.0,0,notifier);
	$width(posedge CKB,1.0,0,notifier);

	// setuphold E- CKB-HL
	$setuphold(negedge CKB,negedge E &&& (SE === 1'b0),1.0,1.0,notifier,,,CKB$delay,E$delay);

	// setuphold E- CKB-HL
	$setuphold(negedge CKB,posedge E &&& (SE === 1'b0),1.0,1.0,notifier,,,CKB$delay,E$delay);

	// setuphold SE- CKB-HL
	$setuphold(negedge CKB,negedge SE &&& (E === 1'b0),1.0,1.0,notifier,,,CKB$delay,SE$delay);

	// setuphold SE- CKB-HL
	$setuphold(negedge CKB,posedge SE &&& (E === 1'b0),1.0,1.0,notifier,,,CKB$delay,SE$delay);

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module LAGCEM12HM( GCK, CK, E, VDD, VSS);
inout VDD;
inout VSS;
input CK, E;
output GCK;
reg notifier;

   `ifdef FUNCTIONAL  //  functional //

   `else

	wire CK$delay ;
	wire E$delay ;

	LAGCEM12HM_func LAGCEM12HM_inst(.CK(CK$delay),.E(E$delay),.GCK(GCK),.notifier(notifier),.VDD(VDD),.VSS(VSS));

   `endif 



   `ifdef FUNCTIONAL  //  functional //

	LAGCEM12HM_func LAGCEM12HM_inst(.CK(CK),.E(E),.GCK(GCK),.notifier(notifier),.VDD(VDD),.VSS(VSS));

   `endif 


   `ifdef FUNCTIONAL // functional  //

   `else


	// spec_gates_begin


	not MGM_AG0(ENABLE_NOT_E,E$delay);


	buf MGM_AG1(ENABLE_E,E$delay);


// specify block begins

   specify

	ifnone
	// arc CK --> GCK
	 (CK => GCK) = (1.0,1.0);

	if(E===1'b0)
	// arc CK --> GCK
	(negedge CK => (GCK : E))  = (1.0,1.0);

	if(E===1'b1)
	// arc CK --> GCK
	(negedge CK => (GCK : E))  = (1.0,1.0);

	$width(negedge CK &&& (ENABLE_NOT_E === 1'b1)
		,1.0,0,notifier);
	$width(negedge CK &&& (ENABLE_E === 1'b1)
		,1.0,0,notifier);
	$width(negedge CK,1.0,0,notifier);

	// setuphold E- CK-LH
	$setuphold(posedge CK,negedge E,1.0,1.0,notifier,,,CK$delay,E$delay);

	// setuphold E- CK-LH
	$setuphold(posedge CK,posedge E,1.0,1.0,notifier,,,CK$delay,E$delay);

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module LAGCEM16HM( GCK, CK, E, VDD, VSS);
inout VDD;
inout VSS;
input CK, E;
output GCK;
reg notifier;

   `ifdef FUNCTIONAL  //  functional //

   `else

	wire CK$delay ;
	wire E$delay ;

	LAGCEM16HM_func LAGCEM16HM_inst(.CK(CK$delay),.E(E$delay),.GCK(GCK),.notifier(notifier),.VDD(VDD),.VSS(VSS));

   `endif 



   `ifdef FUNCTIONAL  //  functional //

	LAGCEM16HM_func LAGCEM16HM_inst(.CK(CK),.E(E),.GCK(GCK),.notifier(notifier),.VDD(VDD),.VSS(VSS));

   `endif 


   `ifdef FUNCTIONAL // functional  //

   `else


	// spec_gates_begin


	not MGM_AG0(ENABLE_NOT_E,E$delay);


	buf MGM_AG1(ENABLE_E,E$delay);


// specify block begins

   specify

	ifnone
	// arc CK --> GCK
	 (CK => GCK) = (1.0,1.0);

	if(E===1'b0)
	// arc CK --> GCK
	(negedge CK => (GCK : E))  = (1.0,1.0);

	if(E===1'b1)
	// arc CK --> GCK
	(negedge CK => (GCK : E))  = (1.0,1.0);

	$width(negedge CK &&& (ENABLE_NOT_E === 1'b1)
		,1.0,0,notifier);
	$width(negedge CK &&& (ENABLE_E === 1'b1)
		,1.0,0,notifier);
	$width(negedge CK,1.0,0,notifier);

	// setuphold E- CK-LH
	$setuphold(posedge CK,negedge E,1.0,1.0,notifier,,,CK$delay,E$delay);

	// setuphold E- CK-LH
	$setuphold(posedge CK,posedge E,1.0,1.0,notifier,,,CK$delay,E$delay);

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module LAGCEM20HM( GCK, CK, E, VDD, VSS);
inout VDD;
inout VSS;
input CK, E;
output GCK;
reg notifier;

   `ifdef FUNCTIONAL  //  functional //

   `else

	wire CK$delay ;
	wire E$delay ;

	LAGCEM20HM_func LAGCEM20HM_inst(.CK(CK$delay),.E(E$delay),.GCK(GCK),.notifier(notifier),.VDD(VDD),.VSS(VSS));

   `endif 



   `ifdef FUNCTIONAL  //  functional //

	LAGCEM20HM_func LAGCEM20HM_inst(.CK(CK),.E(E),.GCK(GCK),.notifier(notifier),.VDD(VDD),.VSS(VSS));

   `endif 


   `ifdef FUNCTIONAL // functional  //

   `else


	// spec_gates_begin


	not MGM_AG0(ENABLE_NOT_E,E$delay);


	buf MGM_AG1(ENABLE_E,E$delay);


// specify block begins

   specify

	ifnone
	// arc CK --> GCK
	 (CK => GCK) = (1.0,1.0);

	if(E===1'b0)
	// arc CK --> GCK
	(negedge CK => (GCK : E))  = (1.0,1.0);

	if(E===1'b1)
	// arc CK --> GCK
	(negedge CK => (GCK : E))  = (1.0,1.0);

	$width(negedge CK &&& (ENABLE_NOT_E === 1'b1)
		,1.0,0,notifier);
	$width(negedge CK &&& (ENABLE_E === 1'b1)
		,1.0,0,notifier);
	$width(negedge CK,1.0,0,notifier);

	// setuphold E- CK-LH
	$setuphold(posedge CK,negedge E,1.0,1.0,notifier,,,CK$delay,E$delay);

	// setuphold E- CK-LH
	$setuphold(posedge CK,posedge E,1.0,1.0,notifier,,,CK$delay,E$delay);

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module LAGCEM2HM( GCK, CK, E, VDD, VSS);
inout VDD;
inout VSS;
input CK, E;
output GCK;
reg notifier;

   `ifdef FUNCTIONAL  //  functional //

   `else

	wire CK$delay ;
	wire E$delay ;

	LAGCEM2HM_func LAGCEM2HM_inst(.CK(CK$delay),.E(E$delay),.GCK(GCK),.notifier(notifier),.VDD(VDD),.VSS(VSS));

   `endif 



   `ifdef FUNCTIONAL  //  functional //

	LAGCEM2HM_func LAGCEM2HM_inst(.CK(CK),.E(E),.GCK(GCK),.notifier(notifier),.VDD(VDD),.VSS(VSS));

   `endif 


   `ifdef FUNCTIONAL // functional  //

   `else


	// spec_gates_begin


	not MGM_AG0(ENABLE_NOT_E,E$delay);


	buf MGM_AG1(ENABLE_E,E$delay);


// specify block begins

   specify

	ifnone
	// arc CK --> GCK
	 (CK => GCK) = (1.0,1.0);

	if(E===1'b0)
	// arc CK --> GCK
	 (negedge CK => (GCK : E))  = (1.0,1.0);

	if(E===1'b1)
	// arc CK --> GCK
	(negedge CK => (GCK : E))  = (1.0,1.0);

	$width(negedge CK &&& (ENABLE_NOT_E === 1'b1)
		,1.0,0,notifier);
	$width(negedge CK &&& (ENABLE_E === 1'b1)
		,1.0,0,notifier);
	$width(negedge CK,1.0,0,notifier);

	// setuphold E- CK-LH
	$setuphold(posedge CK,negedge E,1.0,1.0,notifier,,,CK$delay,E$delay);

	// setuphold E- CK-LH
	$setuphold(posedge CK,posedge E,1.0,1.0,notifier,,,CK$delay,E$delay);

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module LAGCEM3HM( GCK, CK, E, VDD, VSS);
inout VDD;
inout VSS;
input CK, E;
output GCK;
reg notifier;

   `ifdef FUNCTIONAL  //  functional //

   `else

	wire CK$delay ;
	wire E$delay ;

	LAGCEM3HM_func LAGCEM3HM_inst(.CK(CK$delay),.E(E$delay),.GCK(GCK),.notifier(notifier),.VDD(VDD),.VSS(VSS));

   `endif 



   `ifdef FUNCTIONAL  //  functional //

	LAGCEM3HM_func LAGCEM3HM_inst(.CK(CK),.E(E),.GCK(GCK),.notifier(notifier),.VDD(VDD),.VSS(VSS));

   `endif 


   `ifdef FUNCTIONAL // functional  //

   `else


	// spec_gates_begin


	not MGM_AG0(ENABLE_NOT_E,E$delay);


	buf MGM_AG1(ENABLE_E,E$delay);


// specify block begins

   specify

	ifnone
	// arc CK --> GCK
	 (CK => GCK) = (1.0,1.0);

	if(E===1'b0)
	// arc CK --> GCK
	(negedge CK => (GCK : E))  = (1.0,1.0);

	if(E===1'b1)
	// arc CK --> GCK
	(negedge CK => (GCK : E))  = (1.0,1.0);

	$width(negedge CK &&& (ENABLE_NOT_E === 1'b1)
		,1.0,0,notifier);
	$width(negedge CK &&& (ENABLE_E === 1'b1)
		,1.0,0,notifier);
	$width(negedge CK,1.0,0,notifier);

	// setuphold E- CK-LH
	$setuphold(posedge CK,negedge E,1.0,1.0,notifier,,,CK$delay,E$delay);

	// setuphold E- CK-LH
	$setuphold(posedge CK,posedge E,1.0,1.0,notifier,,,CK$delay,E$delay);

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module LAGCEM4HM( GCK, CK, E, VDD, VSS);
inout VDD;
inout VSS;
input CK, E;
output GCK;
reg notifier;

   `ifdef FUNCTIONAL  //  functional //

   `else

	wire CK$delay ;
	wire E$delay ;

	LAGCEM4HM_func LAGCEM4HM_inst(.CK(CK$delay),.E(E$delay),.GCK(GCK),.notifier(notifier),.VDD(VDD),.VSS(VSS));

   `endif 



   `ifdef FUNCTIONAL  //  functional //

	LAGCEM4HM_func LAGCEM4HM_inst(.CK(CK),.E(E),.GCK(GCK),.notifier(notifier),.VDD(VDD),.VSS(VSS));

   `endif 


   `ifdef FUNCTIONAL // functional  //

   `else


	// spec_gates_begin


	not MGM_AG0(ENABLE_NOT_E,E$delay);


	buf MGM_AG1(ENABLE_E,E$delay);


// specify block begins

   specify

	ifnone
	// arc CK --> GCK
	 (CK => GCK) = (1.0,1.0);

	if(E===1'b0)
	// arc CK --> GCK
	(negedge CK => (GCK : E))  = (1.0,1.0);

	if(E===1'b1)
	// arc CK --> GCK
	(negedge CK => (GCK : E))  = (1.0,1.0);

	$width(negedge CK &&& (ENABLE_NOT_E === 1'b1)
		,1.0,0,notifier);
	$width(negedge CK &&& (ENABLE_E === 1'b1)
		,1.0,0,notifier);
	$width(negedge CK,1.0,0,notifier);

	// setuphold E- CK-LH
	$setuphold(posedge CK,negedge E,1.0,1.0,notifier,,,CK$delay,E$delay);

	// setuphold E- CK-LH
	$setuphold(posedge CK,posedge E,1.0,1.0,notifier,,,CK$delay,E$delay);

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module LAGCEM6HM( GCK, CK, E, VDD, VSS);
inout VDD;
inout VSS;
input CK, E;
output GCK;
reg notifier;

   `ifdef FUNCTIONAL  //  functional //

   `else

	wire CK$delay ;
	wire E$delay ;

	LAGCEM6HM_func LAGCEM6HM_inst(.CK(CK$delay),.E(E$delay),.GCK(GCK),.notifier(notifier),.VDD(VDD),.VSS(VSS));

   `endif 



   `ifdef FUNCTIONAL  //  functional //

	LAGCEM6HM_func LAGCEM6HM_inst(.CK(CK),.E(E),.GCK(GCK),.notifier(notifier),.VDD(VDD),.VSS(VSS));

   `endif 


   `ifdef FUNCTIONAL // functional  //

   `else


	// spec_gates_begin


	not MGM_AG0(ENABLE_NOT_E,E$delay);


	buf MGM_AG1(ENABLE_E,E$delay);


// specify block begins

   specify

	ifnone
	// arc CK --> GCK
	 (CK => GCK) = (1.0,1.0);

	if(E===1'b0)
	// arc CK --> GCK
	(negedge CK => (GCK : E))  = (1.0,1.0);

	if(E===1'b1)
	// arc CK --> GCK
	(negedge CK => (GCK : E))  = (1.0,1.0);

	$width(negedge CK &&& (ENABLE_NOT_E === 1'b1)
		,1.0,0,notifier);
	$width(negedge CK &&& (ENABLE_E === 1'b1)
		,1.0,0,notifier);
	$width(negedge CK,1.0,0,notifier);

	// setuphold E- CK-LH
	$setuphold(posedge CK,negedge E,1.0,1.0,notifier,,,CK$delay,E$delay);

	// setuphold E- CK-LH
	$setuphold(posedge CK,posedge E,1.0,1.0,notifier,,,CK$delay,E$delay);

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module LAGCEM8HM( GCK, CK, E, VDD, VSS);
inout VDD;
inout VSS;
input CK, E;
output GCK;
reg notifier;

   `ifdef FUNCTIONAL  //  functional //

   `else

	wire CK$delay ;
	wire E$delay ;

	LAGCEM8HM_func LAGCEM8HM_inst(.CK(CK$delay),.E(E$delay),.GCK(GCK),.notifier(notifier),.VDD(VDD),.VSS(VSS));

   `endif 



   `ifdef FUNCTIONAL  //  functional //

	LAGCEM8HM_func LAGCEM8HM_inst(.CK(CK),.E(E),.GCK(GCK),.notifier(notifier),.VDD(VDD),.VSS(VSS));

   `endif 


   `ifdef FUNCTIONAL // functional  //

   `else


	// spec_gates_begin


	not MGM_AG0(ENABLE_NOT_E,E$delay);


	buf MGM_AG1(ENABLE_E,E$delay);


// specify block begins

   specify

	ifnone
	// arc CK --> GCK
	 (CK => GCK) = (1.0,1.0);

	if(E===1'b0)
	// arc CK --> GCK
	(negedge CK => (GCK : E))  = (1.0,1.0);

	if(E===1'b1)
	// arc CK --> GCK
	(negedge CK => (GCK : E))  = (1.0,1.0);

	$width(negedge CK &&& (ENABLE_NOT_E === 1'b1)
		,1.0,0,notifier);
	$width(negedge CK &&& (ENABLE_E === 1'b1)
		,1.0,0,notifier);
	$width(negedge CK,1.0,0,notifier);

	// setuphold E- CK-LH
	$setuphold(posedge CK,negedge E,1.0,1.0,notifier,,,CK$delay,E$delay);

	// setuphold E- CK-LH
	$setuphold(posedge CK,posedge E,1.0,1.0,notifier,,,CK$delay,E$delay);

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module LAGCESM12HM( GCK, CK, E, SE, VDD, VSS);
inout VDD;
inout VSS;
input CK, E, SE;
output GCK;
reg notifier;

   `ifdef FUNCTIONAL  //  functional //

   `else

	wire CK$delay ;
	wire E$delay ;
	wire SE$delay ;

	LAGCESM12HM_func LAGCESM12HM_inst(.CK(CK$delay),.E(E$delay),.GCK(GCK),.SE(SE$delay),.notifier(notifier),.VDD(VDD),.VSS(VSS));

   `endif 



   `ifdef FUNCTIONAL  //  functional //

	LAGCESM12HM_func LAGCESM12HM_inst(.CK(CK),.E(E),.GCK(GCK),.SE(SE),.notifier(notifier),.VDD(VDD),.VSS(VSS));

   `endif 


   `ifdef FUNCTIONAL // functional  //

   `else


	// spec_gates_begin


	not MGM_AG0(MGM_W0,E$delay);


	not MGM_AG1(MGM_W1,SE$delay);


	and MGM_AG2(ENABLE_NOT_E_AND_NOT_SE,MGM_W1,MGM_W0);


	not MGM_AG3(MGM_W2,E$delay);


	and MGM_AG4(ENABLE_NOT_E_AND_SE,SE$delay,MGM_W2);


	not MGM_AG5(MGM_W3,SE$delay);


	and MGM_AG6(ENABLE_E_AND_NOT_SE,MGM_W3,E$delay);


	and MGM_AG7(ENABLE_E_AND_SE,SE$delay,E$delay);


// specify block begins

   specify

	if(E===1'b0 && SE===1'b1)
	// arc CK --> GCK
	 (CK => GCK) = (1.0,1.0);

	if(E===1'b1 && SE===1'b0)
	// arc CK --> GCK
	 (CK => GCK) = (1.0,1.0);

	if(E===1'b1 && SE===1'b1)
	// arc CK --> GCK
	 (CK => GCK) = (1.0,1.0);

	ifnone
	// arc CK --> GCK
	 (CK => GCK) = (1.0,1.0);

	if(E===1'b0 && SE===1'b0)
	// arc CK --> GCK
	 (negedge CK => (GCK : E))  = (1.0,1.0);

	$width(negedge CK &&& (ENABLE_NOT_E_AND_NOT_SE === 1'b1)
		,1.0,0,notifier);
	$width(negedge CK &&& (ENABLE_NOT_E_AND_SE === 1'b1)
		,1.0,0,notifier);
	$width(negedge CK &&& (ENABLE_E_AND_NOT_SE === 1'b1)
		,1.0,0,notifier);
	$width(negedge CK &&& (ENABLE_E_AND_SE === 1'b1)
		,1.0,0,notifier);
	$width(negedge CK,1.0,0,notifier);

	// setuphold E- CK-LH
	$setuphold(posedge CK,negedge E &&& (SE === 1'b0),1.0,1.0,notifier,,,CK$delay,E$delay);

	// setuphold E- CK-LH
	$setuphold(posedge CK,posedge E &&& (SE === 1'b0),1.0,1.0,notifier,,,CK$delay,E$delay);

	// setuphold SE- CK-LH
	$setuphold(posedge CK,negedge SE &&& (E === 1'b0),1.0,1.0,notifier,,,CK$delay,SE$delay);

	// setuphold SE- CK-LH
	$setuphold(posedge CK,posedge SE &&& (E === 1'b0),1.0,1.0,notifier,,,CK$delay,SE$delay);

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module LAGCESM16HM( GCK, CK, E, SE, VDD, VSS);
inout VDD;
inout VSS;
input CK, E, SE;
output GCK;
reg notifier;

   `ifdef FUNCTIONAL  //  functional //

   `else

	wire CK$delay ;
	wire E$delay ;
	wire SE$delay ;

	LAGCESM16HM_func LAGCESM16HM_inst(.CK(CK$delay),.E(E$delay),.GCK(GCK),.SE(SE$delay),.notifier(notifier),.VDD(VDD),.VSS(VSS));

   `endif 



   `ifdef FUNCTIONAL  //  functional //

	LAGCESM16HM_func LAGCESM16HM_inst(.CK(CK),.E(E),.GCK(GCK),.SE(SE),.notifier(notifier),.VDD(VDD),.VSS(VSS));

   `endif 


   `ifdef FUNCTIONAL // functional  //

   `else


	// spec_gates_begin


	not MGM_AG0(MGM_W0,E$delay);


	not MGM_AG1(MGM_W1,SE$delay);


	and MGM_AG2(ENABLE_NOT_E_AND_NOT_SE,MGM_W1,MGM_W0);


	not MGM_AG3(MGM_W2,E$delay);


	and MGM_AG4(ENABLE_NOT_E_AND_SE,SE$delay,MGM_W2);


	not MGM_AG5(MGM_W3,SE$delay);


	and MGM_AG6(ENABLE_E_AND_NOT_SE,MGM_W3,E$delay);


	and MGM_AG7(ENABLE_E_AND_SE,SE$delay,E$delay);


// specify block begins

   specify

	if(E===1'b0 && SE===1'b1)
	// arc CK --> GCK
	 (CK => GCK) = (1.0,1.0);

	if(E===1'b1 && SE===1'b0)
	// arc CK --> GCK
	 (CK => GCK) = (1.0,1.0);

	if(E===1'b1 && SE===1'b1)
	// arc CK --> GCK
	 (CK => GCK) = (1.0,1.0);

	ifnone
	// arc CK --> GCK
	 (CK => GCK) = (1.0,1.0);

	if(E===1'b0 && SE===1'b0)
	// arc CK --> GCK
	 (negedge CK => (GCK : E))  = (1.0,1.0);

	$width(negedge CK &&& (ENABLE_NOT_E_AND_NOT_SE === 1'b1)
		,1.0,0,notifier);
	$width(negedge CK &&& (ENABLE_NOT_E_AND_SE === 1'b1)
		,1.0,0,notifier);
	$width(negedge CK &&& (ENABLE_E_AND_NOT_SE === 1'b1)
		,1.0,0,notifier);
	$width(negedge CK &&& (ENABLE_E_AND_SE === 1'b1)
		,1.0,0,notifier);
	$width(negedge CK,1.0,0,notifier);

	// setuphold E- CK-LH
	$setuphold(posedge CK,negedge E &&& (SE === 1'b0),1.0,1.0,notifier,,,CK$delay,E$delay);

	// setuphold E- CK-LH
	$setuphold(posedge CK,posedge E &&& (SE === 1'b0),1.0,1.0,notifier,,,CK$delay,E$delay);

	// setuphold SE- CK-LH
	$setuphold(posedge CK,negedge SE &&& (E === 1'b0),1.0,1.0,notifier,,,CK$delay,SE$delay);

	// setuphold SE- CK-LH
	$setuphold(posedge CK,posedge SE &&& (E === 1'b0),1.0,1.0,notifier,,,CK$delay,SE$delay);

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module LAGCESM20HM( GCK, CK, E, SE, VDD, VSS);
inout VDD;
inout VSS;
input CK, E, SE;
output GCK;
reg notifier;

   `ifdef FUNCTIONAL  //  functional //

   `else

	wire CK$delay ;
	wire E$delay ;
	wire SE$delay ;

	LAGCESM20HM_func LAGCESM20HM_inst(.CK(CK$delay),.E(E$delay),.GCK(GCK),.SE(SE$delay),.notifier(notifier),.VDD(VDD),.VSS(VSS));

   `endif 



   `ifdef FUNCTIONAL  //  functional //

	LAGCESM20HM_func LAGCESM20HM_inst(.CK(CK),.E(E),.GCK(GCK),.SE(SE),.notifier(notifier),.VDD(VDD),.VSS(VSS));

   `endif 


   `ifdef FUNCTIONAL // functional  //

   `else


	// spec_gates_begin


	not MGM_AG0(MGM_W0,E$delay);


	not MGM_AG1(MGM_W1,SE$delay);


	and MGM_AG2(ENABLE_NOT_E_AND_NOT_SE,MGM_W1,MGM_W0);


	not MGM_AG3(MGM_W2,E$delay);


	and MGM_AG4(ENABLE_NOT_E_AND_SE,SE$delay,MGM_W2);


	not MGM_AG5(MGM_W3,SE$delay);


	and MGM_AG6(ENABLE_E_AND_NOT_SE,MGM_W3,E$delay);


	and MGM_AG7(ENABLE_E_AND_SE,SE$delay,E$delay);


// specify block begins

   specify

	if(E===1'b0 && SE===1'b1)
	// arc CK --> GCK
	 (CK => GCK) = (1.0,1.0);

	if(E===1'b1 && SE===1'b0)
	// arc CK --> GCK
	 (CK => GCK) = (1.0,1.0);

	if(E===1'b1 && SE===1'b1)
	// arc CK --> GCK
	 (CK => GCK) = (1.0,1.0);

	ifnone
	// arc CK --> GCK
	 (CK => GCK) = (1.0,1.0);

	if(E===1'b0 && SE===1'b0)
	// arc CK --> GCK
	 (negedge CK => (GCK : E))  = (1.0,1.0);

	$width(negedge CK &&& (ENABLE_NOT_E_AND_NOT_SE === 1'b1)
		,1.0,0,notifier);
	$width(negedge CK &&& (ENABLE_NOT_E_AND_SE === 1'b1)
		,1.0,0,notifier);
	$width(negedge CK &&& (ENABLE_E_AND_NOT_SE === 1'b1)
		,1.0,0,notifier);
	$width(negedge CK &&& (ENABLE_E_AND_SE === 1'b1)
		,1.0,0,notifier);
	$width(negedge CK,1.0,0,notifier);

	// setuphold E- CK-LH
	$setuphold(posedge CK,negedge E &&& (SE === 1'b0),1.0,1.0,notifier,,,CK$delay,E$delay);

	// setuphold E- CK-LH
	$setuphold(posedge CK,posedge E &&& (SE === 1'b0),1.0,1.0,notifier,,,CK$delay,E$delay);

	// setuphold SE- CK-LH
	$setuphold(posedge CK,negedge SE &&& (E === 1'b0),1.0,1.0,notifier,,,CK$delay,SE$delay);

	// setuphold SE- CK-LH
	$setuphold(posedge CK,posedge SE &&& (E === 1'b0),1.0,1.0,notifier,,,CK$delay,SE$delay);

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module LAGCESM2HM( GCK, CK, E, SE, VDD, VSS);
inout VDD;
inout VSS;
input CK, E, SE;
output GCK;
reg notifier;

   `ifdef FUNCTIONAL  //  functional //

   `else

	wire CK$delay ;
	wire E$delay ;
	wire SE$delay ;

	LAGCESM2HM_func LAGCESM2HM_inst(.CK(CK$delay),.E(E$delay),.GCK(GCK),.SE(SE$delay),.notifier(notifier),.VDD(VDD),.VSS(VSS));

   `endif 



   `ifdef FUNCTIONAL  //  functional //

	LAGCESM2HM_func LAGCESM2HM_inst(.CK(CK),.E(E),.GCK(GCK),.SE(SE),.notifier(notifier),.VDD(VDD),.VSS(VSS));

   `endif 


   `ifdef FUNCTIONAL // functional  //

   `else


	// spec_gates_begin


	not MGM_AG0(MGM_W0,E$delay);


	not MGM_AG1(MGM_W1,SE$delay);


	and MGM_AG2(ENABLE_NOT_E_AND_NOT_SE,MGM_W1,MGM_W0);


	not MGM_AG3(MGM_W2,E$delay);


	and MGM_AG4(ENABLE_NOT_E_AND_SE,SE$delay,MGM_W2);


	not MGM_AG5(MGM_W3,SE$delay);


	and MGM_AG6(ENABLE_E_AND_NOT_SE,MGM_W3,E$delay);


	and MGM_AG7(ENABLE_E_AND_SE,SE$delay,E$delay);


// specify block begins

   specify

	if(E===1'b0 && SE===1'b1)
	// arc CK --> GCK
	 (CK => GCK) = (1.0,1.0);

	if(E===1'b1 && SE===1'b0)
	// arc CK --> GCK
	 (CK => GCK) = (1.0,1.0);

	if(E===1'b1 && SE===1'b1)
	// arc CK --> GCK
	 (CK => GCK) = (1.0,1.0);

	ifnone
	// arc CK --> GCK
	 (CK => GCK) = (1.0,1.0);

	if(E===1'b0 && SE===1'b0)
	// arc CK --> GCK
	 (negedge CK => (GCK : E))  = (1.0,1.0);

	$width(negedge CK &&& (ENABLE_NOT_E_AND_NOT_SE === 1'b1)
		,1.0,0,notifier);
	$width(negedge CK &&& (ENABLE_NOT_E_AND_SE === 1'b1)
		,1.0,0,notifier);
	$width(negedge CK &&& (ENABLE_E_AND_NOT_SE === 1'b1)
		,1.0,0,notifier);
	$width(negedge CK &&& (ENABLE_E_AND_SE === 1'b1)
		,1.0,0,notifier);
	$width(negedge CK,1.0,0,notifier);

	// setuphold E- CK-LH
	$setuphold(posedge CK,negedge E &&& (SE === 1'b0),1.0,1.0,notifier,,,CK$delay,E$delay);

	// setuphold E- CK-LH
	$setuphold(posedge CK,posedge E &&& (SE === 1'b0),1.0,1.0,notifier,,,CK$delay,E$delay);

	// setuphold SE- CK-LH
	$setuphold(posedge CK,negedge SE &&& (E === 1'b0),1.0,1.0,notifier,,,CK$delay,SE$delay);

	// setuphold SE- CK-LH
	$setuphold(posedge CK,posedge SE &&& (E === 1'b0),1.0,1.0,notifier,,,CK$delay,SE$delay);

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module LAGCESM3HM( GCK, CK, E, SE, VDD, VSS);
inout VDD;
inout VSS;
input CK, E, SE;
output GCK;
reg notifier;

   `ifdef FUNCTIONAL  //  functional //

   `else

	wire CK$delay ;
	wire E$delay ;
	wire SE$delay ;

	LAGCESM3HM_func LAGCESM3HM_inst(.CK(CK$delay),.E(E$delay),.GCK(GCK),.SE(SE$delay),.notifier(notifier),.VDD(VDD),.VSS(VSS));

   `endif 



   `ifdef FUNCTIONAL  //  functional //

	LAGCESM3HM_func LAGCESM3HM_inst(.CK(CK),.E(E),.GCK(GCK),.SE(SE),.notifier(notifier),.VDD(VDD),.VSS(VSS));

   `endif 


   `ifdef FUNCTIONAL // functional  //

   `else


	// spec_gates_begin


	not MGM_AG0(MGM_W0,E$delay);


	not MGM_AG1(MGM_W1,SE$delay);


	and MGM_AG2(ENABLE_NOT_E_AND_NOT_SE,MGM_W1,MGM_W0);


	not MGM_AG3(MGM_W2,E$delay);


	and MGM_AG4(ENABLE_NOT_E_AND_SE,SE$delay,MGM_W2);


	not MGM_AG5(MGM_W3,SE$delay);


	and MGM_AG6(ENABLE_E_AND_NOT_SE,MGM_W3,E$delay);


	and MGM_AG7(ENABLE_E_AND_SE,SE$delay,E$delay);


// specify block begins

   specify

	if(E===1'b0 && SE===1'b1)
	// arc CK --> GCK
	 (CK => GCK) = (1.0,1.0);

	if(E===1'b1 && SE===1'b0)
	// arc CK --> GCK
	 (CK => GCK) = (1.0,1.0);

	if(E===1'b1 && SE===1'b1)
	// arc CK --> GCK
	 (CK => GCK) = (1.0,1.0);

	ifnone
	// arc CK --> GCK
	 (CK => GCK) = (1.0,1.0);

	if(E===1'b0 && SE===1'b0)
	// arc CK --> GCK
	 (negedge CK => (GCK : E))  = (1.0,1.0);

	$width(negedge CK &&& (ENABLE_NOT_E_AND_NOT_SE === 1'b1)
		,1.0,0,notifier);
	$width(negedge CK &&& (ENABLE_NOT_E_AND_SE === 1'b1)
		,1.0,0,notifier);
	$width(negedge CK &&& (ENABLE_E_AND_NOT_SE === 1'b1)
		,1.0,0,notifier);
	$width(negedge CK &&& (ENABLE_E_AND_SE === 1'b1)
		,1.0,0,notifier);
	$width(negedge CK,1.0,0,notifier);

	// setuphold E- CK-LH
	$setuphold(posedge CK,negedge E &&& (SE === 1'b0),1.0,1.0,notifier,,,CK$delay,E$delay);

	// setuphold E- CK-LH
	$setuphold(posedge CK,posedge E &&& (SE === 1'b0),1.0,1.0,notifier,,,CK$delay,E$delay);

	// setuphold SE- CK-LH
	$setuphold(posedge CK,negedge SE &&& (E === 1'b0),1.0,1.0,notifier,,,CK$delay,SE$delay);

	// setuphold SE- CK-LH
	$setuphold(posedge CK,posedge SE &&& (E === 1'b0),1.0,1.0,notifier,,,CK$delay,SE$delay);

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module LAGCESM4HM( GCK, CK, E, SE, VDD, VSS);
inout VDD;
inout VSS;
input CK, E, SE;
output GCK;
reg notifier;

   `ifdef FUNCTIONAL  //  functional //

   `else

	wire CK$delay ;
	wire E$delay ;
	wire SE$delay ;

	LAGCESM4HM_func LAGCESM4HM_inst(.CK(CK$delay),.E(E$delay),.GCK(GCK),.SE(SE$delay),.notifier(notifier),.VDD(VDD),.VSS(VSS));

   `endif 



   `ifdef FUNCTIONAL  //  functional //

	LAGCESM4HM_func LAGCESM4HM_inst(.CK(CK),.E(E),.GCK(GCK),.SE(SE),.notifier(notifier),.VDD(VDD),.VSS(VSS));

   `endif 


   `ifdef FUNCTIONAL // functional  //

   `else


	// spec_gates_begin


	not MGM_AG0(MGM_W0,E$delay);


	not MGM_AG1(MGM_W1,SE$delay);


	and MGM_AG2(ENABLE_NOT_E_AND_NOT_SE,MGM_W1,MGM_W0);


	not MGM_AG3(MGM_W2,E$delay);


	and MGM_AG4(ENABLE_NOT_E_AND_SE,SE$delay,MGM_W2);


	not MGM_AG5(MGM_W3,SE$delay);


	and MGM_AG6(ENABLE_E_AND_NOT_SE,MGM_W3,E$delay);


	and MGM_AG7(ENABLE_E_AND_SE,SE$delay,E$delay);


// specify block begins

   specify

	if(E===1'b0 && SE===1'b1)
	// arc CK --> GCK
	 (CK => GCK) = (1.0,1.0);

	if(E===1'b1 && SE===1'b0)
	// arc CK --> GCK
	 (CK => GCK) = (1.0,1.0);

	if(E===1'b1 && SE===1'b1)
	// arc CK --> GCK
	 (CK => GCK) = (1.0,1.0);

	ifnone
	// arc CK --> GCK
	 (CK => GCK) = (1.0,1.0);

	if(E===1'b0 && SE===1'b0)
	// arc CK --> GCK
	 (negedge CK => (GCK : E))  = (1.0,1.0);

	$width(negedge CK &&& (ENABLE_NOT_E_AND_NOT_SE === 1'b1)
		,1.0,0,notifier);
	$width(negedge CK &&& (ENABLE_NOT_E_AND_SE === 1'b1)
		,1.0,0,notifier);
	$width(negedge CK &&& (ENABLE_E_AND_NOT_SE === 1'b1)
		,1.0,0,notifier);
	$width(negedge CK &&& (ENABLE_E_AND_SE === 1'b1)
		,1.0,0,notifier);
	$width(negedge CK,1.0,0,notifier);

	// setuphold E- CK-LH
	$setuphold(posedge CK,negedge E &&& (SE === 1'b0),1.0,1.0,notifier,,,CK$delay,E$delay);

	// setuphold E- CK-LH
	$setuphold(posedge CK,posedge E &&& (SE === 1'b0),1.0,1.0,notifier,,,CK$delay,E$delay);

	// setuphold SE- CK-LH
	$setuphold(posedge CK,negedge SE &&& (E === 1'b0),1.0,1.0,notifier,,,CK$delay,SE$delay);

	// setuphold SE- CK-LH
	$setuphold(posedge CK,posedge SE &&& (E === 1'b0),1.0,1.0,notifier,,,CK$delay,SE$delay);

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module LAGCESM6HM( GCK, CK, E, SE, VDD, VSS);
inout VDD;
inout VSS;
input CK, E, SE;
output GCK;
reg notifier;

   `ifdef FUNCTIONAL  //  functional //

   `else

	wire CK$delay ;
	wire E$delay ;
	wire SE$delay ;

	LAGCESM6HM_func LAGCESM6HM_inst(.CK(CK$delay),.E(E$delay),.GCK(GCK),.SE(SE$delay),.notifier(notifier),.VDD(VDD),.VSS(VSS));

   `endif 



   `ifdef FUNCTIONAL  //  functional //

	LAGCESM6HM_func LAGCESM6HM_inst(.CK(CK),.E(E),.GCK(GCK),.SE(SE),.notifier(notifier),.VDD(VDD),.VSS(VSS));

   `endif 


   `ifdef FUNCTIONAL // functional  //

   `else


	// spec_gates_begin


	not MGM_AG0(MGM_W0,E$delay);


	not MGM_AG1(MGM_W1,SE$delay);


	and MGM_AG2(ENABLE_NOT_E_AND_NOT_SE,MGM_W1,MGM_W0);


	not MGM_AG3(MGM_W2,E$delay);


	and MGM_AG4(ENABLE_NOT_E_AND_SE,SE$delay,MGM_W2);


	not MGM_AG5(MGM_W3,SE$delay);


	and MGM_AG6(ENABLE_E_AND_NOT_SE,MGM_W3,E$delay);


	and MGM_AG7(ENABLE_E_AND_SE,SE$delay,E$delay);


// specify block begins

   specify

	if(E===1'b0 && SE===1'b1)
	// arc CK --> GCK
	 (CK => GCK) = (1.0,1.0);

	if(E===1'b1 && SE===1'b0)
	// arc CK --> GCK
	 (CK => GCK) = (1.0,1.0);

	if(E===1'b1 && SE===1'b1)
	// arc CK --> GCK
	 (CK => GCK) = (1.0,1.0);

	ifnone
	// arc CK --> GCK
	 (CK => GCK) = (1.0,1.0);

	if(E===1'b0 && SE===1'b0)
	// arc CK --> GCK
	 (negedge CK => (GCK : E))  = (1.0,1.0);

	$width(negedge CK &&& (ENABLE_NOT_E_AND_NOT_SE === 1'b1)
		,1.0,0,notifier);
	$width(negedge CK &&& (ENABLE_NOT_E_AND_SE === 1'b1)
		,1.0,0,notifier);
	$width(negedge CK &&& (ENABLE_E_AND_NOT_SE === 1'b1)
		,1.0,0,notifier);
	$width(negedge CK &&& (ENABLE_E_AND_SE === 1'b1)
		,1.0,0,notifier);
	$width(negedge CK,1.0,0,notifier);

	// setuphold E- CK-LH
	$setuphold(posedge CK,negedge E &&& (SE === 1'b0),1.0,1.0,notifier,,,CK$delay,E$delay);

	// setuphold E- CK-LH
	$setuphold(posedge CK,posedge E &&& (SE === 1'b0),1.0,1.0,notifier,,,CK$delay,E$delay);

	// setuphold SE- CK-LH
	$setuphold(posedge CK,negedge SE &&& (E === 1'b0),1.0,1.0,notifier,,,CK$delay,SE$delay);

	// setuphold SE- CK-LH
	$setuphold(posedge CK,posedge SE &&& (E === 1'b0),1.0,1.0,notifier,,,CK$delay,SE$delay);

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module LAGCESM8HM( GCK, CK, E, SE, VDD, VSS);
inout VDD;
inout VSS;
input CK, E, SE;
output GCK;
reg notifier;

   `ifdef FUNCTIONAL  //  functional //

   `else

	wire CK$delay ;
	wire E$delay ;
	wire SE$delay ;

	LAGCESM8HM_func LAGCESM8HM_inst(.CK(CK$delay),.E(E$delay),.GCK(GCK),.SE(SE$delay),.notifier(notifier),.VDD(VDD),.VSS(VSS));

   `endif 



   `ifdef FUNCTIONAL  //  functional //

	LAGCESM8HM_func LAGCESM8HM_inst(.CK(CK),.E(E),.GCK(GCK),.SE(SE),.notifier(notifier),.VDD(VDD),.VSS(VSS));

   `endif 


   `ifdef FUNCTIONAL // functional  //

   `else


	// spec_gates_begin


	not MGM_AG0(MGM_W0,E$delay);


	not MGM_AG1(MGM_W1,SE$delay);


	and MGM_AG2(ENABLE_NOT_E_AND_NOT_SE,MGM_W1,MGM_W0);


	not MGM_AG3(MGM_W2,E$delay);


	and MGM_AG4(ENABLE_NOT_E_AND_SE,SE$delay,MGM_W2);


	not MGM_AG5(MGM_W3,SE$delay);


	and MGM_AG6(ENABLE_E_AND_NOT_SE,MGM_W3,E$delay);


	and MGM_AG7(ENABLE_E_AND_SE,SE$delay,E$delay);


// specify block begins

   specify

	if(E===1'b0 && SE===1'b1)
	// arc CK --> GCK
	 (CK => GCK) = (1.0,1.0);

	if(E===1'b1 && SE===1'b0)
	// arc CK --> GCK
	 (CK => GCK) = (1.0,1.0);

	if(E===1'b1 && SE===1'b1)
	// arc CK --> GCK
	 (CK => GCK) = (1.0,1.0);

	ifnone
	// arc CK --> GCK
	 (CK => GCK) = (1.0,1.0);

	if(E===1'b0 && SE===1'b0)
	// arc CK --> GCK
	 (negedge CK => (GCK : E))  = (1.0,1.0);

	$width(negedge CK &&& (ENABLE_NOT_E_AND_NOT_SE === 1'b1)
		,1.0,0,notifier);
	$width(negedge CK &&& (ENABLE_NOT_E_AND_SE === 1'b1)
		,1.0,0,notifier);
	$width(negedge CK &&& (ENABLE_E_AND_NOT_SE === 1'b1)
		,1.0,0,notifier);
	$width(negedge CK &&& (ENABLE_E_AND_SE === 1'b1)
		,1.0,0,notifier);
	$width(negedge CK,1.0,0,notifier);

	// setuphold E- CK-LH
	$setuphold(posedge CK,negedge E &&& (SE === 1'b0),1.0,1.0,notifier,,,CK$delay,E$delay);

	// setuphold E- CK-LH
	$setuphold(posedge CK,posedge E &&& (SE === 1'b0),1.0,1.0,notifier,,,CK$delay,E$delay);

	// setuphold SE- CK-LH
	$setuphold(posedge CK,negedge SE &&& (E === 1'b0),1.0,1.0,notifier,,,CK$delay,SE$delay);

	// setuphold SE- CK-LH
	$setuphold(posedge CK,posedge SE &&& (E === 1'b0),1.0,1.0,notifier,,,CK$delay,SE$delay);

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module LAM0HM( Q, QB, D, G , VDD, VSS);
inout VDD;
inout VSS;
input D, G;
output Q, QB;
reg notifier;

   `ifdef FUNCTIONAL  //  functional //

	LAM0HM_func LAM0HM_behav_inst(.Q(Q),.QB(QB),.D(D),.G(G),.notifier(notifier),.VDD(VDD),.VSS(VSS));

   `else

	wire D$delay ;

	wire G$delay ;

	LAM0HM_func LAM0HM_inst(.Q(Q),.QB(QB),.D(D$delay),.G(G$delay),.notifier(notifier),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	not MGM_G0(ENABLE_NOT_D,D$delay);


	buf MGM_G1(ENABLE_D,D$delay);


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc D --> Q
	 (D => Q) = (1.0,1.0);

	// seq arc G --> Q
	(posedge G => (Q : D))  = (1.0,1.0);

	// comb arc D --> QB
	 (D => QB) = (1.0,1.0);

	// seq arc G --> QB
	(posedge G => (QB : D))  = (1.0,1.0);

	// setuphold D- G-HL
	$setuphold(negedge G,posedge D,1.0,1.0,notifier,,,G$delay,D$delay);

	// setuphold D- G-HL
	$setuphold(negedge G,negedge D,1.0,1.0,notifier,,,G$delay,D$delay);

	$width(posedge G &&& (ENABLE_NOT_D === 1'b1)
		,1.0,0,notifier);

	$width(posedge G &&& (ENABLE_D === 1'b1)
		,1.0,0,notifier);

	// mpw G_lh 
	$width(posedge G,1.0,0,notifier);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module LAM1HM( Q, QB, D, G , VDD, VSS);
inout VDD;
inout VSS;
input D, G;
output Q, QB;
reg notifier;

   `ifdef FUNCTIONAL  //  functional //

	LAM1HM_func LAM1HM_behav_inst(.Q(Q),.QB(QB),.D(D),.G(G),.notifier(notifier),.VDD(VDD),.VSS(VSS));

   `else

	wire D$delay ;

	wire G$delay ;

	LAM1HM_func LAM1HM_inst(.Q(Q),.QB(QB),.D(D$delay),.G(G$delay),.notifier(notifier),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	not MGM_G0(ENABLE_NOT_D,D$delay);


	buf MGM_G1(ENABLE_D,D$delay);


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc D --> Q
	 (D => Q) = (1.0,1.0);

	// seq arc G --> Q
	(posedge G => (Q : D))  = (1.0,1.0);

	// comb arc D --> QB
	 (D => QB) = (1.0,1.0);

	// seq arc G --> QB
	(posedge G => (QB : D))  = (1.0,1.0);

	// setuphold D- G-HL
	$setuphold(negedge G,posedge D,1.0,1.0,notifier,,,G$delay,D$delay);

	// setuphold D- G-HL
	$setuphold(negedge G,negedge D,1.0,1.0,notifier,,,G$delay,D$delay);

	$width(posedge G &&& (ENABLE_NOT_D === 1'b1)
		,1.0,0,notifier);

	$width(posedge G &&& (ENABLE_D === 1'b1)
		,1.0,0,notifier);

	// mpw G_lh 
	$width(posedge G,1.0,0,notifier);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module LAM2HM( Q, QB, D, G , VDD, VSS);
inout VDD;
inout VSS;
input D, G;
output Q, QB;
reg notifier;

   `ifdef FUNCTIONAL  //  functional //

	LAM2HM_func LAM2HM_behav_inst(.Q(Q),.QB(QB),.D(D),.G(G),.notifier(notifier),.VDD(VDD),.VSS(VSS));

   `else

	wire D$delay ;

	wire G$delay ;

	LAM2HM_func LAM2HM_inst(.Q(Q),.QB(QB),.D(D$delay),.G(G$delay),.notifier(notifier),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	not MGM_G0(ENABLE_NOT_D,D$delay);


	buf MGM_G1(ENABLE_D,D$delay);


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc D --> Q
	 (D => Q) = (1.0,1.0);

	// seq arc G --> Q
	(posedge G => (Q : D))  = (1.0,1.0);

	// comb arc D --> QB
	 (D => QB) = (1.0,1.0);

	// seq arc G --> QB
	(posedge G => (QB : D))  = (1.0,1.0);

	// setuphold D- G-HL
	$setuphold(negedge G,posedge D,1.0,1.0,notifier,,,G$delay,D$delay);

	// setuphold D- G-HL
	$setuphold(negedge G,negedge D,1.0,1.0,notifier,,,G$delay,D$delay);

	$width(posedge G &&& (ENABLE_NOT_D === 1'b1)
		,1.0,0,notifier);

	$width(posedge G &&& (ENABLE_D === 1'b1)
		,1.0,0,notifier);

	// mpw G_lh 
	$width(posedge G,1.0,0,notifier);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module LAM4HM( Q, QB, D, G , VDD, VSS);
inout VDD;
inout VSS;
input D, G;
output Q, QB;
reg notifier;

   `ifdef FUNCTIONAL  //  functional //

	LAM4HM_func LAM4HM_behav_inst(.Q(Q),.QB(QB),.D(D),.G(G),.notifier(notifier),.VDD(VDD),.VSS(VSS));

   `else

	wire D$delay ;

	wire G$delay ;

	LAM4HM_func LAM4HM_inst(.Q(Q),.QB(QB),.D(D$delay),.G(G$delay),.notifier(notifier),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	not MGM_G0(ENABLE_NOT_D,D$delay);


	buf MGM_G1(ENABLE_D,D$delay);


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc D --> Q
	 (D => Q) = (1.0,1.0);

	// seq arc G --> Q
	(posedge G => (Q : D))  = (1.0,1.0);

	// comb arc D --> QB
	 (D => QB) = (1.0,1.0);

	// seq arc G --> QB
	(posedge G => (QB : D))  = (1.0,1.0);

	// setuphold D- G-HL
	$setuphold(negedge G,posedge D,1.0,1.0,notifier,,,G$delay,D$delay);

	// setuphold D- G-HL
	$setuphold(negedge G,negedge D,1.0,1.0,notifier,,,G$delay,D$delay);

	$width(posedge G &&& (ENABLE_NOT_D === 1'b1)
		,1.0,0,notifier);

	$width(posedge G &&& (ENABLE_D === 1'b1)
		,1.0,0,notifier);

	// mpw G_lh 
	$width(posedge G,1.0,0,notifier);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module LAQM0HM( Q, D, G , VDD, VSS);
inout VDD;
inout VSS;
input D, G;
output Q;
reg notifier;

   `ifdef FUNCTIONAL  //  functional //

	LAQM0HM_func LAQM0HM_behav_inst(.Q(Q),.D(D),.G(G),.notifier(notifier),.VDD(VDD),.VSS(VSS));

   `else

	wire D$delay ;

	wire G$delay ;

	LAQM0HM_func LAQM0HM_inst(.Q(Q),.D(D$delay),.G(G$delay),.notifier(notifier),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	not MGM_G0(ENABLE_NOT_D,D$delay);


	buf MGM_G1(ENABLE_D,D$delay);


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc D --> Q
	 (D => Q) = (1.0,1.0);

	// seq arc G --> Q
	(posedge G => (Q : D))  = (1.0,1.0);

	// setuphold D- G-HL
	$setuphold(negedge G,posedge D,1.0,1.0,notifier,,,G$delay,D$delay);

	// setuphold D- G-HL
	$setuphold(negedge G,negedge D,1.0,1.0,notifier,,,G$delay,D$delay);

	$width(posedge G &&& (ENABLE_NOT_D === 1'b1)
		,1.0,0,notifier);

	$width(posedge G &&& (ENABLE_D === 1'b1)
		,1.0,0,notifier);

	// mpw G_lh 
	$width(posedge G,1.0,0,notifier);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module LAQM1HM( Q, D, G , VDD, VSS);
inout VDD;
inout VSS;
input D, G;
output Q;
reg notifier;

   `ifdef FUNCTIONAL  //  functional //

	LAQM1HM_func LAQM1HM_behav_inst(.Q(Q),.D(D),.G(G),.notifier(notifier),.VDD(VDD),.VSS(VSS));

   `else

	wire D$delay ;

	wire G$delay ;

	LAQM1HM_func LAQM1HM_inst(.Q(Q),.D(D$delay),.G(G$delay),.notifier(notifier),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	not MGM_G0(ENABLE_NOT_D,D$delay);


	buf MGM_G1(ENABLE_D,D$delay);


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc D --> Q
	 (D => Q) = (1.0,1.0);

	// seq arc G --> Q
	(posedge G => (Q : D))  = (1.0,1.0);

	// setuphold D- G-HL
	$setuphold(negedge G,posedge D,1.0,1.0,notifier,,,G$delay,D$delay);

	// setuphold D- G-HL
	$setuphold(negedge G,negedge D,1.0,1.0,notifier,,,G$delay,D$delay);

	$width(posedge G &&& (ENABLE_NOT_D === 1'b1)
		,1.0,0,notifier);

	$width(posedge G &&& (ENABLE_D === 1'b1)
		,1.0,0,notifier);

	// mpw G_lh 
	$width(posedge G,1.0,0,notifier);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module LAQM2HM( Q, D, G , VDD, VSS);
inout VDD;
inout VSS;
input D, G;
output Q;
reg notifier;

   `ifdef FUNCTIONAL  //  functional //

	LAQM2HM_func LAQM2HM_behav_inst(.Q(Q),.D(D),.G(G),.notifier(notifier),.VDD(VDD),.VSS(VSS));

   `else

	wire D$delay ;

	wire G$delay ;

	LAQM2HM_func LAQM2HM_inst(.Q(Q),.D(D$delay),.G(G$delay),.notifier(notifier),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	not MGM_G0(ENABLE_NOT_D,D$delay);


	buf MGM_G1(ENABLE_D,D$delay);


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc D --> Q
	 (D => Q) = (1.0,1.0);

	// seq arc G --> Q
	(posedge G => (Q : D))  = (1.0,1.0);

	// setuphold D- G-HL
	$setuphold(negedge G,posedge D,1.0,1.0,notifier,,,G$delay,D$delay);

	// setuphold D- G-HL
	$setuphold(negedge G,negedge D,1.0,1.0,notifier,,,G$delay,D$delay);

	$width(posedge G &&& (ENABLE_NOT_D === 1'b1)
		,1.0,0,notifier);

	$width(posedge G &&& (ENABLE_D === 1'b1)
		,1.0,0,notifier);

	// mpw G_lh 
	$width(posedge G,1.0,0,notifier);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module LAQM4HM( Q, D, G , VDD, VSS);
inout VDD;
inout VSS;
input D, G;
output Q;
reg notifier;

   `ifdef FUNCTIONAL  //  functional //

	LAQM4HM_func LAQM4HM_behav_inst(.Q(Q),.D(D),.G(G),.notifier(notifier),.VDD(VDD),.VSS(VSS));

   `else

	wire D$delay ;

	wire G$delay ;

	LAQM4HM_func LAQM4HM_inst(.Q(Q),.D(D$delay),.G(G$delay),.notifier(notifier),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	not MGM_G0(ENABLE_NOT_D,D$delay);


	buf MGM_G1(ENABLE_D,D$delay);


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc D --> Q
	 (D => Q) = (1.0,1.0);

	// seq arc G --> Q
	(posedge G => (Q : D))  = (1.0,1.0);

	// setuphold D- G-HL
	$setuphold(negedge G,posedge D,1.0,1.0,notifier,,,G$delay,D$delay);

	// setuphold D- G-HL
	$setuphold(negedge G,negedge D,1.0,1.0,notifier,,,G$delay,D$delay);

	$width(posedge G &&& (ENABLE_NOT_D === 1'b1)
		,1.0,0,notifier);

	$width(posedge G &&& (ENABLE_D === 1'b1)
		,1.0,0,notifier);

	// mpw G_lh 
	$width(posedge G,1.0,0,notifier);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module LAQRSM0HM( Q, D, G, RB, SB , VDD, VSS);
inout VDD;
inout VSS;
input D, G, RB, SB;
output Q;
reg notifier;

   `ifdef FUNCTIONAL  //  functional //

	LAQRSM0HM_func LAQRSM0HM_behav_inst(.Q(Q),.D(D),.G(G),.RB(RB),.SB(SB),.notifier(notifier),.VDD(VDD),.VSS(VSS));

   `else

	wire D$delay ;

	wire G$delay ;

	wire RB$delay ;

	wire SB$delay ;

	LAQRSM0HM_func LAQRSM0HM_inst(.Q(Q),.D(D$delay),.G(G$delay),.RB(RB$delay),.SB(SB$delay),.notifier(notifier),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	and MGM_G0(ENABLE_RB_AND_SB,SB$delay,RB$delay);


	not MGM_G1(MGM_W0,D$delay);


	and MGM_G2(MGM_W1,RB$delay,MGM_W0);


	and MGM_G3(ENABLE_NOT_D_AND_RB_AND_SB,SB$delay,MGM_W1);


	and MGM_G4(MGM_W2,RB$delay,D$delay);


	and MGM_G5(ENABLE_D_AND_RB_AND_SB,SB$delay,MGM_W2);


	buf MGM_G6(ENABLE_SB,SB$delay);


	not MGM_G7(MGM_W3,D$delay);


	not MGM_G8(MGM_W4,G$delay);


	and MGM_G9(MGM_W5,MGM_W4,MGM_W3);


	and MGM_G10(ENABLE_NOT_D_AND_NOT_G_AND_SB,SB$delay,MGM_W5);


	not MGM_G11(MGM_W6,G$delay);


	and MGM_G12(MGM_W7,MGM_W6,D$delay);


	and MGM_G13(ENABLE_D_AND_NOT_G_AND_SB,SB$delay,MGM_W7);


	buf MGM_G14(ENABLE_RB,RB$delay);


	not MGM_G15(MGM_W8,D$delay);


	not MGM_G16(MGM_W9,G$delay);


	and MGM_G17(ENABLE_NOT_D_AND_NOT_G,MGM_W9,MGM_W8);


	not MGM_G18(MGM_W10,G$delay);


	and MGM_G19(ENABLE_D_AND_NOT_G,MGM_W10,D$delay);


	not MGM_G20(MGM_W11,D$delay);


	not MGM_G21(MGM_W12,G$delay);


	and MGM_G22(MGM_W13,MGM_W12,MGM_W11);


	and MGM_G23(ENABLE_NOT_D_AND_NOT_G_AND_RB,RB$delay,MGM_W13);


	not MGM_G24(MGM_W14,G$delay);


	and MGM_G25(MGM_W15,MGM_W14,D$delay);


	and MGM_G26(ENABLE_D_AND_NOT_G_AND_RB,RB$delay,MGM_W15);


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc D --> Q
	 (D => Q) = (1.0,1.0);

	// seq arc G --> Q
	(posedge G => (Q : D))  = (1.0,1.0);

	// seq arc RB --> Q
	(RB => Q)  = (1.0,1.0);

	// seq arc SB --> Q
	(SB => Q)  = (1.0,1.0);

	// setuphold D- G-HL
	$setuphold(negedge G &&& (ENABLE_RB_AND_SB === 1'b1),
		posedge D &&& (ENABLE_RB_AND_SB === 1'b1),
		1.0,1.0,notifier,,,G$delay,D$delay);

	// setuphold D- G-HL
	$setuphold(negedge G &&& (ENABLE_RB_AND_SB === 1'b1),
		negedge D &&& (ENABLE_RB_AND_SB === 1'b1),
		1.0,1.0,notifier,,,G$delay,D$delay);

	$width(posedge G &&& (ENABLE_NOT_D_AND_RB_AND_SB === 1'b1)
		,1.0,0,notifier);

	$width(posedge G &&& (ENABLE_D_AND_RB_AND_SB === 1'b1)
		,1.0,0,notifier);

	// recrem RB-G-negedge
	$recrem(posedge RB &&& (ENABLE_SB === 1'b1),
		negedge G &&& (ENABLE_SB === 1'b1),
		1.0,1.0,notifier,,,RB$delay,G$delay);

	$width(negedge RB &&& (ENABLE_NOT_D_AND_NOT_G_AND_SB === 1'b1)
		,1.0,0,notifier);

	$width(negedge RB &&& (ENABLE_D_AND_NOT_G_AND_SB === 1'b1)
		,1.0,0,notifier);

	// recrem SB-G-negedge
	$recrem(posedge SB &&& (ENABLE_RB === 1'b1),
		negedge G &&& (ENABLE_RB === 1'b1),
		1.0,1.0,notifier,,,SB$delay,G$delay);

	// setuphold SB- RB-LH
	$setuphold(posedge RB &&& (ENABLE_NOT_D_AND_NOT_G === 1'b1),
		posedge SB &&& (ENABLE_NOT_D_AND_NOT_G === 1'b1),
		1.0,1.0,notifier,,,RB$delay,SB$delay);

	// setuphold SB- RB-LH
	$setuphold(posedge RB &&& (ENABLE_D_AND_NOT_G === 1'b1),
		posedge SB &&& (ENABLE_D_AND_NOT_G === 1'b1),
		1.0,1.0,notifier,,,RB$delay,SB$delay);

	$width(negedge SB &&& (ENABLE_NOT_D_AND_NOT_G_AND_RB === 1'b1)
		,1.0,0,notifier);

	$width(negedge SB &&& (ENABLE_D_AND_NOT_G_AND_RB === 1'b1)
		,1.0,0,notifier);

	// mpw G_lh 
	$width(posedge G,1.0,0,notifier);

	// mpw RB_hl 
	$width(negedge RB,1.0,0,notifier);

	// mpw SB_hl 
	$width(negedge SB,1.0,0,notifier);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module LAQRSM1HM( Q, D, G, RB, SB , VDD, VSS);
inout VDD;
inout VSS;
input D, G, RB, SB;
output Q;
reg notifier;

   `ifdef FUNCTIONAL  //  functional //

	LAQRSM1HM_func LAQRSM1HM_behav_inst(.Q(Q),.D(D),.G(G),.RB(RB),.SB(SB),.notifier(notifier),.VDD(VDD),.VSS(VSS));

   `else

	wire D$delay ;

	wire G$delay ;

	wire RB$delay ;

	wire SB$delay ;

	LAQRSM1HM_func LAQRSM1HM_inst(.Q(Q),.D(D$delay),.G(G$delay),.RB(RB$delay),.SB(SB$delay),.notifier(notifier),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	and MGM_G0(ENABLE_RB_AND_SB,SB$delay,RB$delay);


	not MGM_G1(MGM_W0,D$delay);


	and MGM_G2(MGM_W1,RB$delay,MGM_W0);


	and MGM_G3(ENABLE_NOT_D_AND_RB_AND_SB,SB$delay,MGM_W1);


	and MGM_G4(MGM_W2,RB$delay,D$delay);


	and MGM_G5(ENABLE_D_AND_RB_AND_SB,SB$delay,MGM_W2);


	buf MGM_G6(ENABLE_SB,SB$delay);


	not MGM_G7(MGM_W3,D$delay);


	not MGM_G8(MGM_W4,G$delay);


	and MGM_G9(MGM_W5,MGM_W4,MGM_W3);


	and MGM_G10(ENABLE_NOT_D_AND_NOT_G_AND_SB,SB$delay,MGM_W5);


	not MGM_G11(MGM_W6,G$delay);


	and MGM_G12(MGM_W7,MGM_W6,D$delay);


	and MGM_G13(ENABLE_D_AND_NOT_G_AND_SB,SB$delay,MGM_W7);


	buf MGM_G14(ENABLE_RB,RB$delay);


	not MGM_G15(MGM_W8,D$delay);


	not MGM_G16(MGM_W9,G$delay);


	and MGM_G17(ENABLE_NOT_D_AND_NOT_G,MGM_W9,MGM_W8);


	not MGM_G18(MGM_W10,G$delay);


	and MGM_G19(ENABLE_D_AND_NOT_G,MGM_W10,D$delay);


	not MGM_G20(MGM_W11,D$delay);


	not MGM_G21(MGM_W12,G$delay);


	and MGM_G22(MGM_W13,MGM_W12,MGM_W11);


	and MGM_G23(ENABLE_NOT_D_AND_NOT_G_AND_RB,RB$delay,MGM_W13);


	not MGM_G24(MGM_W14,G$delay);


	and MGM_G25(MGM_W15,MGM_W14,D$delay);


	and MGM_G26(ENABLE_D_AND_NOT_G_AND_RB,RB$delay,MGM_W15);


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc D --> Q
	 (D => Q) = (1.0,1.0);

	// seq arc G --> Q
	(posedge G => (Q : D))  = (1.0,1.0);

	// seq arc RB --> Q
	(RB => Q)  = (1.0,1.0);

	// seq arc SB --> Q
	(SB => Q)  = (1.0,1.0);

	// setuphold D- G-HL
	$setuphold(negedge G &&& (ENABLE_RB_AND_SB === 1'b1),
		posedge D &&& (ENABLE_RB_AND_SB === 1'b1),
		1.0,1.0,notifier,,,G$delay,D$delay);

	// setuphold D- G-HL
	$setuphold(negedge G &&& (ENABLE_RB_AND_SB === 1'b1),
		negedge D &&& (ENABLE_RB_AND_SB === 1'b1),
		1.0,1.0,notifier,,,G$delay,D$delay);

	$width(posedge G &&& (ENABLE_NOT_D_AND_RB_AND_SB === 1'b1)
		,1.0,0,notifier);

	$width(posedge G &&& (ENABLE_D_AND_RB_AND_SB === 1'b1)
		,1.0,0,notifier);

	// recrem RB-G-negedge
	$recrem(posedge RB &&& (ENABLE_SB === 1'b1),
		negedge G &&& (ENABLE_SB === 1'b1),
		1.0,1.0,notifier,,,RB$delay,G$delay);

	$width(negedge RB &&& (ENABLE_NOT_D_AND_NOT_G_AND_SB === 1'b1)
		,1.0,0,notifier);

	$width(negedge RB &&& (ENABLE_D_AND_NOT_G_AND_SB === 1'b1)
		,1.0,0,notifier);

	// recrem SB-G-negedge
	$recrem(posedge SB &&& (ENABLE_RB === 1'b1),
		negedge G &&& (ENABLE_RB === 1'b1),
		1.0,1.0,notifier,,,SB$delay,G$delay);

	// setuphold SB- RB-LH
	$setuphold(posedge RB &&& (ENABLE_NOT_D_AND_NOT_G === 1'b1),
		posedge SB &&& (ENABLE_NOT_D_AND_NOT_G === 1'b1),
		1.0,1.0,notifier,,,RB$delay,SB$delay);

	// setuphold SB- RB-LH
	$setuphold(posedge RB &&& (ENABLE_D_AND_NOT_G === 1'b1),
		posedge SB &&& (ENABLE_D_AND_NOT_G === 1'b1),
		1.0,1.0,notifier,,,RB$delay,SB$delay);

	$width(negedge SB &&& (ENABLE_NOT_D_AND_NOT_G_AND_RB === 1'b1)
		,1.0,0,notifier);

	$width(negedge SB &&& (ENABLE_D_AND_NOT_G_AND_RB === 1'b1)
		,1.0,0,notifier);

	// mpw G_lh 
	$width(posedge G,1.0,0,notifier);

	// mpw RB_hl 
	$width(negedge RB,1.0,0,notifier);

	// mpw SB_hl 
	$width(negedge SB,1.0,0,notifier);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module LAQRSM2HM( Q, D, G, RB, SB , VDD, VSS);
inout VDD;
inout VSS;
input D, G, RB, SB;
output Q;
reg notifier;

   `ifdef FUNCTIONAL  //  functional //

	LAQRSM2HM_func LAQRSM2HM_behav_inst(.Q(Q),.D(D),.G(G),.RB(RB),.SB(SB),.notifier(notifier),.VDD(VDD),.VSS(VSS));

   `else

	wire D$delay ;

	wire G$delay ;

	wire RB$delay ;

	wire SB$delay ;

	LAQRSM2HM_func LAQRSM2HM_inst(.Q(Q),.D(D$delay),.G(G$delay),.RB(RB$delay),.SB(SB$delay),.notifier(notifier),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	and MGM_G0(ENABLE_RB_AND_SB,SB$delay,RB$delay);


	not MGM_G1(MGM_W0,D$delay);


	and MGM_G2(MGM_W1,RB$delay,MGM_W0);


	and MGM_G3(ENABLE_NOT_D_AND_RB_AND_SB,SB$delay,MGM_W1);


	and MGM_G4(MGM_W2,RB$delay,D$delay);


	and MGM_G5(ENABLE_D_AND_RB_AND_SB,SB$delay,MGM_W2);


	buf MGM_G6(ENABLE_SB,SB$delay);


	not MGM_G7(MGM_W3,D$delay);


	not MGM_G8(MGM_W4,G$delay);


	and MGM_G9(MGM_W5,MGM_W4,MGM_W3);


	and MGM_G10(ENABLE_NOT_D_AND_NOT_G_AND_SB,SB$delay,MGM_W5);


	not MGM_G11(MGM_W6,G$delay);


	and MGM_G12(MGM_W7,MGM_W6,D$delay);


	and MGM_G13(ENABLE_D_AND_NOT_G_AND_SB,SB$delay,MGM_W7);


	buf MGM_G14(ENABLE_RB,RB$delay);


	not MGM_G15(MGM_W8,D$delay);


	not MGM_G16(MGM_W9,G$delay);


	and MGM_G17(ENABLE_NOT_D_AND_NOT_G,MGM_W9,MGM_W8);


	not MGM_G18(MGM_W10,G$delay);


	and MGM_G19(ENABLE_D_AND_NOT_G,MGM_W10,D$delay);


	not MGM_G20(MGM_W11,D$delay);


	not MGM_G21(MGM_W12,G$delay);


	and MGM_G22(MGM_W13,MGM_W12,MGM_W11);


	and MGM_G23(ENABLE_NOT_D_AND_NOT_G_AND_RB,RB$delay,MGM_W13);


	not MGM_G24(MGM_W14,G$delay);


	and MGM_G25(MGM_W15,MGM_W14,D$delay);


	and MGM_G26(ENABLE_D_AND_NOT_G_AND_RB,RB$delay,MGM_W15);


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc D --> Q
	 (D => Q) = (1.0,1.0);

	// seq arc G --> Q
	(posedge G => (Q : D))  = (1.0,1.0);

	// seq arc RB --> Q
	(RB => Q)  = (1.0,1.0);

	// seq arc SB --> Q
	(SB => Q)  = (1.0,1.0);

	// setuphold D- G-HL
	$setuphold(negedge G &&& (ENABLE_RB_AND_SB === 1'b1),
		posedge D &&& (ENABLE_RB_AND_SB === 1'b1),
		1.0,1.0,notifier,,,G$delay,D$delay);

	// setuphold D- G-HL
	$setuphold(negedge G &&& (ENABLE_RB_AND_SB === 1'b1),
		negedge D &&& (ENABLE_RB_AND_SB === 1'b1),
		1.0,1.0,notifier,,,G$delay,D$delay);

	$width(posedge G &&& (ENABLE_NOT_D_AND_RB_AND_SB === 1'b1)
		,1.0,0,notifier);

	$width(posedge G &&& (ENABLE_D_AND_RB_AND_SB === 1'b1)
		,1.0,0,notifier);

	// recrem RB-G-negedge
	$recrem(posedge RB &&& (ENABLE_SB === 1'b1),
		negedge G &&& (ENABLE_SB === 1'b1),
		1.0,1.0,notifier,,,RB$delay,G$delay);

	$width(negedge RB &&& (ENABLE_NOT_D_AND_NOT_G_AND_SB === 1'b1)
		,1.0,0,notifier);

	$width(negedge RB &&& (ENABLE_D_AND_NOT_G_AND_SB === 1'b1)
		,1.0,0,notifier);

	// recrem SB-G-negedge
	$recrem(posedge SB &&& (ENABLE_RB === 1'b1),
		negedge G &&& (ENABLE_RB === 1'b1),
		1.0,1.0,notifier,,,SB$delay,G$delay);

	// setuphold SB- RB-LH
	$setuphold(posedge RB &&& (ENABLE_NOT_D_AND_NOT_G === 1'b1),
		posedge SB &&& (ENABLE_NOT_D_AND_NOT_G === 1'b1),
		1.0,1.0,notifier,,,RB$delay,SB$delay);

	// setuphold SB- RB-LH
	$setuphold(posedge RB &&& (ENABLE_D_AND_NOT_G === 1'b1),
		posedge SB &&& (ENABLE_D_AND_NOT_G === 1'b1),
		1.0,1.0,notifier,,,RB$delay,SB$delay);

	$width(negedge SB &&& (ENABLE_NOT_D_AND_NOT_G_AND_RB === 1'b1)
		,1.0,0,notifier);

	$width(negedge SB &&& (ENABLE_D_AND_NOT_G_AND_RB === 1'b1)
		,1.0,0,notifier);

	// mpw G_lh 
	$width(posedge G,1.0,0,notifier);

	// mpw RB_hl 
	$width(negedge RB,1.0,0,notifier);

	// mpw SB_hl 
	$width(negedge SB,1.0,0,notifier);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module LAQRSM4HM( Q, D, G, RB, SB , VDD, VSS);
inout VDD;
inout VSS;
input D, G, RB, SB;
output Q;
reg notifier;

   `ifdef FUNCTIONAL  //  functional //

	LAQRSM4HM_func LAQRSM4HM_behav_inst(.Q(Q),.D(D),.G(G),.RB(RB),.SB(SB),.notifier(notifier),.VDD(VDD),.VSS(VSS));

   `else

	wire D$delay ;

	wire G$delay ;

	wire RB$delay ;

	wire SB$delay ;

	LAQRSM4HM_func LAQRSM4HM_inst(.Q(Q),.D(D$delay),.G(G$delay),.RB(RB$delay),.SB(SB$delay),.notifier(notifier),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	and MGM_G0(ENABLE_RB_AND_SB,SB$delay,RB$delay);


	not MGM_G1(MGM_W0,D$delay);


	and MGM_G2(MGM_W1,RB$delay,MGM_W0);


	and MGM_G3(ENABLE_NOT_D_AND_RB_AND_SB,SB$delay,MGM_W1);


	and MGM_G4(MGM_W2,RB$delay,D$delay);


	and MGM_G5(ENABLE_D_AND_RB_AND_SB,SB$delay,MGM_W2);


	buf MGM_G6(ENABLE_SB,SB$delay);


	not MGM_G7(MGM_W3,D$delay);


	not MGM_G8(MGM_W4,G$delay);


	and MGM_G9(MGM_W5,MGM_W4,MGM_W3);


	and MGM_G10(ENABLE_NOT_D_AND_NOT_G_AND_SB,SB$delay,MGM_W5);


	not MGM_G11(MGM_W6,G$delay);


	and MGM_G12(MGM_W7,MGM_W6,D$delay);


	and MGM_G13(ENABLE_D_AND_NOT_G_AND_SB,SB$delay,MGM_W7);


	buf MGM_G14(ENABLE_RB,RB$delay);


	not MGM_G15(MGM_W8,D$delay);


	not MGM_G16(MGM_W9,G$delay);


	and MGM_G17(ENABLE_NOT_D_AND_NOT_G,MGM_W9,MGM_W8);


	not MGM_G18(MGM_W10,G$delay);


	and MGM_G19(ENABLE_D_AND_NOT_G,MGM_W10,D$delay);


	not MGM_G20(MGM_W11,D$delay);


	not MGM_G21(MGM_W12,G$delay);


	and MGM_G22(MGM_W13,MGM_W12,MGM_W11);


	and MGM_G23(ENABLE_NOT_D_AND_NOT_G_AND_RB,RB$delay,MGM_W13);


	not MGM_G24(MGM_W14,G$delay);


	and MGM_G25(MGM_W15,MGM_W14,D$delay);


	and MGM_G26(ENABLE_D_AND_NOT_G_AND_RB,RB$delay,MGM_W15);


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc D --> Q
	 (D => Q) = (1.0,1.0);

	// seq arc G --> Q
	(posedge G => (Q : D))  = (1.0,1.0);

	// seq arc RB --> Q
	(RB => Q)  = (1.0,1.0);

	// seq arc SB --> Q
	(SB => Q)  = (1.0,1.0);

	// setuphold D- G-HL
	$setuphold(negedge G &&& (ENABLE_RB_AND_SB === 1'b1),
		posedge D &&& (ENABLE_RB_AND_SB === 1'b1),
		1.0,1.0,notifier,,,G$delay,D$delay);

	// setuphold D- G-HL
	$setuphold(negedge G &&& (ENABLE_RB_AND_SB === 1'b1),
		negedge D &&& (ENABLE_RB_AND_SB === 1'b1),
		1.0,1.0,notifier,,,G$delay,D$delay);

	$width(posedge G &&& (ENABLE_NOT_D_AND_RB_AND_SB === 1'b1)
		,1.0,0,notifier);

	$width(posedge G &&& (ENABLE_D_AND_RB_AND_SB === 1'b1)
		,1.0,0,notifier);

	// recrem RB-G-negedge
	$recrem(posedge RB &&& (ENABLE_SB === 1'b1),
		negedge G &&& (ENABLE_SB === 1'b1),
		1.0,1.0,notifier,,,RB$delay,G$delay);

	$width(negedge RB &&& (ENABLE_NOT_D_AND_NOT_G_AND_SB === 1'b1)
		,1.0,0,notifier);

	$width(negedge RB &&& (ENABLE_D_AND_NOT_G_AND_SB === 1'b1)
		,1.0,0,notifier);

	// recrem SB-G-negedge
	$recrem(posedge SB &&& (ENABLE_RB === 1'b1),
		negedge G &&& (ENABLE_RB === 1'b1),
		1.0,1.0,notifier,,,SB$delay,G$delay);

	// setuphold SB- RB-LH
	$setuphold(posedge RB &&& (ENABLE_NOT_D_AND_NOT_G === 1'b1),
		posedge SB &&& (ENABLE_NOT_D_AND_NOT_G === 1'b1),
		1.0,1.0,notifier,,,RB$delay,SB$delay);

	// setuphold SB- RB-LH
	$setuphold(posedge RB &&& (ENABLE_D_AND_NOT_G === 1'b1),
		posedge SB &&& (ENABLE_D_AND_NOT_G === 1'b1),
		1.0,1.0,notifier,,,RB$delay,SB$delay);

	$width(negedge SB &&& (ENABLE_NOT_D_AND_NOT_G_AND_RB === 1'b1)
		,1.0,0,notifier);

	$width(negedge SB &&& (ENABLE_D_AND_NOT_G_AND_RB === 1'b1)
		,1.0,0,notifier);

	// mpw G_lh 
	$width(posedge G,1.0,0,notifier);

	// mpw RB_hl 
	$width(negedge RB,1.0,0,notifier);

	// mpw SB_hl 
	$width(negedge SB,1.0,0,notifier);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module LARSM0HM( Q, QB, D, G, RB, SB , VDD, VSS);
inout VDD;
inout VSS;
input D, G, RB, SB;
output Q, QB;
reg notifier;

   `ifdef FUNCTIONAL  //  functional //

	LARSM0HM_func LARSM0HM_behav_inst(.Q(Q),.QB(QB),.D(D),.G(G),.RB(RB),.SB(SB),.notifier(notifier),.VDD(VDD),.VSS(VSS));

   `else

	wire D$delay ;

	wire G$delay ;

	wire RB$delay ;

	wire SB$delay ;

	LARSM0HM_func LARSM0HM_inst(.Q(Q),.QB(QB),.D(D$delay),.G(G$delay),.RB(RB$delay),.SB(SB$delay),.notifier(notifier),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	and MGM_G0(ENABLE_RB_AND_SB,SB$delay,RB$delay);


	not MGM_G1(MGM_W0,D$delay);


	and MGM_G2(MGM_W1,RB$delay,MGM_W0);


	and MGM_G3(ENABLE_NOT_D_AND_RB_AND_SB,SB$delay,MGM_W1);


	and MGM_G4(MGM_W2,RB$delay,D$delay);


	and MGM_G5(ENABLE_D_AND_RB_AND_SB,SB$delay,MGM_W2);


	buf MGM_G6(ENABLE_SB,SB$delay);


	not MGM_G7(MGM_W3,D$delay);


	not MGM_G8(MGM_W4,G$delay);


	and MGM_G9(MGM_W5,MGM_W4,MGM_W3);


	and MGM_G10(ENABLE_NOT_D_AND_NOT_G_AND_SB,SB$delay,MGM_W5);


	not MGM_G11(MGM_W6,G$delay);


	and MGM_G12(MGM_W7,MGM_W6,D$delay);


	and MGM_G13(ENABLE_D_AND_NOT_G_AND_SB,SB$delay,MGM_W7);


	buf MGM_G14(ENABLE_RB,RB$delay);


	not MGM_G15(MGM_W8,D$delay);


	not MGM_G16(MGM_W9,G$delay);


	and MGM_G17(ENABLE_NOT_D_AND_NOT_G,MGM_W9,MGM_W8);


	not MGM_G18(MGM_W10,G$delay);


	and MGM_G19(ENABLE_D_AND_NOT_G,MGM_W10,D$delay);


	not MGM_G20(MGM_W11,D$delay);


	not MGM_G21(MGM_W12,G$delay);


	and MGM_G22(MGM_W13,MGM_W12,MGM_W11);


	and MGM_G23(ENABLE_NOT_D_AND_NOT_G_AND_RB,RB$delay,MGM_W13);


	not MGM_G24(MGM_W14,G$delay);


	and MGM_G25(MGM_W15,MGM_W14,D$delay);


	and MGM_G26(ENABLE_D_AND_NOT_G_AND_RB,RB$delay,MGM_W15);


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc D --> Q
	 (D => Q) = (1.0,1.0);

	// seq arc G --> Q
	(posedge G => (Q : D))  = (1.0,1.0);

	// seq arc RB --> Q
	(RB => Q)  = (1.0,1.0);

	// seq arc SB --> Q
	(SB => Q)  = (1.0,1.0);

	// comb arc D --> QB
	 (D => QB) = (1.0,1.0);

	// seq arc G --> QB
	(posedge G => (QB : D))  = (1.0,1.0);

	// seq arc RB --> QB
	(RB => QB)  = (1.0,1.0);

	// seq arc SB --> QB
	(SB => QB)  = (1.0,1.0);

	// setuphold D- G-HL
	$setuphold(negedge G &&& (ENABLE_RB_AND_SB === 1'b1),
		posedge D &&& (ENABLE_RB_AND_SB === 1'b1),
		1.0,1.0,notifier,,,G$delay,D$delay);

	// setuphold D- G-HL
	$setuphold(negedge G &&& (ENABLE_RB_AND_SB === 1'b1),
		negedge D &&& (ENABLE_RB_AND_SB === 1'b1),
		1.0,1.0,notifier,,,G$delay,D$delay);

	$width(posedge G &&& (ENABLE_NOT_D_AND_RB_AND_SB === 1'b1)
		,1.0,0,notifier);

	$width(posedge G &&& (ENABLE_D_AND_RB_AND_SB === 1'b1)
		,1.0,0,notifier);

	// recrem RB-G-negedge
	$recrem(posedge RB &&& (ENABLE_SB === 1'b1),
		negedge G &&& (ENABLE_SB === 1'b1),
		1.0,1.0,notifier,,,RB$delay,G$delay);

	$width(negedge RB &&& (ENABLE_NOT_D_AND_NOT_G_AND_SB === 1'b1)
		,1.0,0,notifier);

	$width(negedge RB &&& (ENABLE_D_AND_NOT_G_AND_SB === 1'b1)
		,1.0,0,notifier);

	// recrem SB-G-negedge
	$recrem(posedge SB &&& (ENABLE_RB === 1'b1),
		negedge G &&& (ENABLE_RB === 1'b1),
		1.0,1.0,notifier,,,SB$delay,G$delay);

	// setuphold SB- RB-LH
	$setuphold(posedge RB &&& (ENABLE_NOT_D_AND_NOT_G === 1'b1),
		posedge SB &&& (ENABLE_NOT_D_AND_NOT_G === 1'b1),
		1.0,1.0,notifier,,,RB$delay,SB$delay);

	// setuphold SB- RB-LH
	$setuphold(posedge RB &&& (ENABLE_D_AND_NOT_G === 1'b1),
		posedge SB &&& (ENABLE_D_AND_NOT_G === 1'b1),
		1.0,1.0,notifier,,,RB$delay,SB$delay);

	$width(negedge SB &&& (ENABLE_NOT_D_AND_NOT_G_AND_RB === 1'b1)
		,1.0,0,notifier);

	$width(negedge SB &&& (ENABLE_D_AND_NOT_G_AND_RB === 1'b1)
		,1.0,0,notifier);

	// mpw G_lh 
	$width(posedge G,1.0,0,notifier);

	// mpw RB_hl 
	$width(negedge RB,1.0,0,notifier);

	// mpw SB_hl 
	$width(negedge SB,1.0,0,notifier);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module LARSM1HM( Q, QB, D, G, RB, SB , VDD, VSS);
inout VDD;
inout VSS;
input D, G, RB, SB;
output Q, QB;
reg notifier;

   `ifdef FUNCTIONAL  //  functional //

	LARSM1HM_func LARSM1HM_behav_inst(.Q(Q),.QB(QB),.D(D),.G(G),.RB(RB),.SB(SB),.notifier(notifier),.VDD(VDD),.VSS(VSS));

   `else

	wire D$delay ;

	wire G$delay ;

	wire RB$delay ;

	wire SB$delay ;

	LARSM1HM_func LARSM1HM_inst(.Q(Q),.QB(QB),.D(D$delay),.G(G$delay),.RB(RB$delay),.SB(SB$delay),.notifier(notifier),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	and MGM_G0(ENABLE_RB_AND_SB,SB$delay,RB$delay);


	not MGM_G1(MGM_W0,D$delay);


	and MGM_G2(MGM_W1,RB$delay,MGM_W0);


	and MGM_G3(ENABLE_NOT_D_AND_RB_AND_SB,SB$delay,MGM_W1);


	and MGM_G4(MGM_W2,RB$delay,D$delay);


	and MGM_G5(ENABLE_D_AND_RB_AND_SB,SB$delay,MGM_W2);


	buf MGM_G6(ENABLE_SB,SB$delay);


	not MGM_G7(MGM_W3,D$delay);


	not MGM_G8(MGM_W4,G$delay);


	and MGM_G9(MGM_W5,MGM_W4,MGM_W3);


	and MGM_G10(ENABLE_NOT_D_AND_NOT_G_AND_SB,SB$delay,MGM_W5);


	not MGM_G11(MGM_W6,G$delay);


	and MGM_G12(MGM_W7,MGM_W6,D$delay);


	and MGM_G13(ENABLE_D_AND_NOT_G_AND_SB,SB$delay,MGM_W7);


	buf MGM_G14(ENABLE_RB,RB$delay);


	not MGM_G15(MGM_W8,D$delay);


	not MGM_G16(MGM_W9,G$delay);


	and MGM_G17(ENABLE_NOT_D_AND_NOT_G,MGM_W9,MGM_W8);


	not MGM_G18(MGM_W10,G$delay);


	and MGM_G19(ENABLE_D_AND_NOT_G,MGM_W10,D$delay);


	not MGM_G20(MGM_W11,D$delay);


	not MGM_G21(MGM_W12,G$delay);


	and MGM_G22(MGM_W13,MGM_W12,MGM_W11);


	and MGM_G23(ENABLE_NOT_D_AND_NOT_G_AND_RB,RB$delay,MGM_W13);


	not MGM_G24(MGM_W14,G$delay);


	and MGM_G25(MGM_W15,MGM_W14,D$delay);


	and MGM_G26(ENABLE_D_AND_NOT_G_AND_RB,RB$delay,MGM_W15);


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc D --> Q
	 (D => Q) = (1.0,1.0);

	// seq arc G --> Q
	(posedge G => (Q : D))  = (1.0,1.0);

	// seq arc RB --> Q
	(RB => Q)  = (1.0,1.0);

	// seq arc SB --> Q
	(SB => Q)  = (1.0,1.0);

	// comb arc D --> QB
	 (D => QB) = (1.0,1.0);

	// seq arc G --> QB
	(posedge G => (QB : D))  = (1.0,1.0);

	// seq arc RB --> QB
	(RB => QB)  = (1.0,1.0);

	// seq arc SB --> QB
	(SB => QB)  = (1.0,1.0);

	// setuphold D- G-HL
	$setuphold(negedge G &&& (ENABLE_RB_AND_SB === 1'b1),
		posedge D &&& (ENABLE_RB_AND_SB === 1'b1),
		1.0,1.0,notifier,,,G$delay,D$delay);

	// setuphold D- G-HL
	$setuphold(negedge G &&& (ENABLE_RB_AND_SB === 1'b1),
		negedge D &&& (ENABLE_RB_AND_SB === 1'b1),
		1.0,1.0,notifier,,,G$delay,D$delay);

	$width(posedge G &&& (ENABLE_NOT_D_AND_RB_AND_SB === 1'b1)
		,1.0,0,notifier);

	$width(posedge G &&& (ENABLE_D_AND_RB_AND_SB === 1'b1)
		,1.0,0,notifier);

	// recrem RB-G-negedge
	$recrem(posedge RB &&& (ENABLE_SB === 1'b1),
		negedge G &&& (ENABLE_SB === 1'b1),
		1.0,1.0,notifier,,,RB$delay,G$delay);

	$width(negedge RB &&& (ENABLE_NOT_D_AND_NOT_G_AND_SB === 1'b1)
		,1.0,0,notifier);

	$width(negedge RB &&& (ENABLE_D_AND_NOT_G_AND_SB === 1'b1)
		,1.0,0,notifier);

	// recrem SB-G-negedge
	$recrem(posedge SB &&& (ENABLE_RB === 1'b1),
		negedge G &&& (ENABLE_RB === 1'b1),
		1.0,1.0,notifier,,,SB$delay,G$delay);

	// setuphold SB- RB-LH
	$setuphold(posedge RB &&& (ENABLE_NOT_D_AND_NOT_G === 1'b1),
		posedge SB &&& (ENABLE_NOT_D_AND_NOT_G === 1'b1),
		1.0,1.0,notifier,,,RB$delay,SB$delay);

	// setuphold SB- RB-LH
	$setuphold(posedge RB &&& (ENABLE_D_AND_NOT_G === 1'b1),
		posedge SB &&& (ENABLE_D_AND_NOT_G === 1'b1),
		1.0,1.0,notifier,,,RB$delay,SB$delay);

	$width(negedge SB &&& (ENABLE_NOT_D_AND_NOT_G_AND_RB === 1'b1)
		,1.0,0,notifier);

	$width(negedge SB &&& (ENABLE_D_AND_NOT_G_AND_RB === 1'b1)
		,1.0,0,notifier);

	// mpw G_lh 
	$width(posedge G,1.0,0,notifier);

	// mpw RB_hl 
	$width(negedge RB,1.0,0,notifier);

	// mpw SB_hl 
	$width(negedge SB,1.0,0,notifier);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module LARSM2HM( Q, QB, D, G, RB, SB , VDD, VSS);
inout VDD;
inout VSS;
input D, G, RB, SB;
output Q, QB;
reg notifier;

   `ifdef FUNCTIONAL  //  functional //

	LARSM2HM_func LARSM2HM_behav_inst(.Q(Q),.QB(QB),.D(D),.G(G),.RB(RB),.SB(SB),.notifier(notifier),.VDD(VDD),.VSS(VSS));

   `else

	wire D$delay ;

	wire G$delay ;

	wire RB$delay ;

	wire SB$delay ;

	LARSM2HM_func LARSM2HM_inst(.Q(Q),.QB(QB),.D(D$delay),.G(G$delay),.RB(RB$delay),.SB(SB$delay),.notifier(notifier),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	and MGM_G0(ENABLE_RB_AND_SB,SB$delay,RB$delay);


	not MGM_G1(MGM_W0,D$delay);


	and MGM_G2(MGM_W1,RB$delay,MGM_W0);


	and MGM_G3(ENABLE_NOT_D_AND_RB_AND_SB,SB$delay,MGM_W1);


	and MGM_G4(MGM_W2,RB$delay,D$delay);


	and MGM_G5(ENABLE_D_AND_RB_AND_SB,SB$delay,MGM_W2);


	buf MGM_G6(ENABLE_SB,SB$delay);


	not MGM_G7(MGM_W3,D$delay);


	not MGM_G8(MGM_W4,G$delay);


	and MGM_G9(MGM_W5,MGM_W4,MGM_W3);


	and MGM_G10(ENABLE_NOT_D_AND_NOT_G_AND_SB,SB$delay,MGM_W5);


	not MGM_G11(MGM_W6,G$delay);


	and MGM_G12(MGM_W7,MGM_W6,D$delay);


	and MGM_G13(ENABLE_D_AND_NOT_G_AND_SB,SB$delay,MGM_W7);


	buf MGM_G14(ENABLE_RB,RB$delay);


	not MGM_G15(MGM_W8,D$delay);


	not MGM_G16(MGM_W9,G$delay);


	and MGM_G17(ENABLE_NOT_D_AND_NOT_G,MGM_W9,MGM_W8);


	not MGM_G18(MGM_W10,G$delay);


	and MGM_G19(ENABLE_D_AND_NOT_G,MGM_W10,D$delay);


	not MGM_G20(MGM_W11,D$delay);


	not MGM_G21(MGM_W12,G$delay);


	and MGM_G22(MGM_W13,MGM_W12,MGM_W11);


	and MGM_G23(ENABLE_NOT_D_AND_NOT_G_AND_RB,RB$delay,MGM_W13);


	not MGM_G24(MGM_W14,G$delay);


	and MGM_G25(MGM_W15,MGM_W14,D$delay);


	and MGM_G26(ENABLE_D_AND_NOT_G_AND_RB,RB$delay,MGM_W15);


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc D --> Q
	 (D => Q) = (1.0,1.0);

	// seq arc G --> Q
	(posedge G => (Q : D))  = (1.0,1.0);

	// seq arc RB --> Q
	(RB => Q)  = (1.0,1.0);

	// seq arc SB --> Q
	(SB => Q)  = (1.0,1.0);

	// comb arc D --> QB
	 (D => QB) = (1.0,1.0);

	// seq arc G --> QB
	(posedge G => (QB : D))  = (1.0,1.0);

	// seq arc RB --> QB
	(RB => QB)  = (1.0,1.0);

	// seq arc SB --> QB
	(SB => QB)  = (1.0,1.0);

	// setuphold D- G-HL
	$setuphold(negedge G &&& (ENABLE_RB_AND_SB === 1'b1),
		posedge D &&& (ENABLE_RB_AND_SB === 1'b1),
		1.0,1.0,notifier,,,G$delay,D$delay);

	// setuphold D- G-HL
	$setuphold(negedge G &&& (ENABLE_RB_AND_SB === 1'b1),
		negedge D &&& (ENABLE_RB_AND_SB === 1'b1),
		1.0,1.0,notifier,,,G$delay,D$delay);

	$width(posedge G &&& (ENABLE_NOT_D_AND_RB_AND_SB === 1'b1)
		,1.0,0,notifier);

	$width(posedge G &&& (ENABLE_D_AND_RB_AND_SB === 1'b1)
		,1.0,0,notifier);

	// recrem RB-G-negedge
	$recrem(posedge RB &&& (ENABLE_SB === 1'b1),
		negedge G &&& (ENABLE_SB === 1'b1),
		1.0,1.0,notifier,,,RB$delay,G$delay);

	$width(negedge RB &&& (ENABLE_NOT_D_AND_NOT_G_AND_SB === 1'b1)
		,1.0,0,notifier);

	$width(negedge RB &&& (ENABLE_D_AND_NOT_G_AND_SB === 1'b1)
		,1.0,0,notifier);

	// recrem SB-G-negedge
	$recrem(posedge SB &&& (ENABLE_RB === 1'b1),
		negedge G &&& (ENABLE_RB === 1'b1),
		1.0,1.0,notifier,,,SB$delay,G$delay);

	// setuphold SB- RB-LH
	$setuphold(posedge RB &&& (ENABLE_NOT_D_AND_NOT_G === 1'b1),
		posedge SB &&& (ENABLE_NOT_D_AND_NOT_G === 1'b1),
		1.0,1.0,notifier,,,RB$delay,SB$delay);

	// setuphold SB- RB-LH
	$setuphold(posedge RB &&& (ENABLE_D_AND_NOT_G === 1'b1),
		posedge SB &&& (ENABLE_D_AND_NOT_G === 1'b1),
		1.0,1.0,notifier,,,RB$delay,SB$delay);

	$width(negedge SB &&& (ENABLE_NOT_D_AND_NOT_G_AND_RB === 1'b1)
		,1.0,0,notifier);

	$width(negedge SB &&& (ENABLE_D_AND_NOT_G_AND_RB === 1'b1)
		,1.0,0,notifier);

	// mpw G_lh 
	$width(posedge G,1.0,0,notifier);

	// mpw RB_hl 
	$width(negedge RB,1.0,0,notifier);

	// mpw SB_hl 
	$width(negedge SB,1.0,0,notifier);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module LARSM4HM( Q, QB, D, G, RB, SB , VDD, VSS);
inout VDD;
inout VSS;
input D, G, RB, SB;
output Q, QB;
reg notifier;

   `ifdef FUNCTIONAL  //  functional //

	LARSM4HM_func LARSM4HM_behav_inst(.Q(Q),.QB(QB),.D(D),.G(G),.RB(RB),.SB(SB),.notifier(notifier),.VDD(VDD),.VSS(VSS));

   `else

	wire D$delay ;

	wire G$delay ;

	wire RB$delay ;

	wire SB$delay ;

	LARSM4HM_func LARSM4HM_inst(.Q(Q),.QB(QB),.D(D$delay),.G(G$delay),.RB(RB$delay),.SB(SB$delay),.notifier(notifier),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	and MGM_G0(ENABLE_RB_AND_SB,SB$delay,RB$delay);


	not MGM_G1(MGM_W0,D$delay);


	and MGM_G2(MGM_W1,RB$delay,MGM_W0);


	and MGM_G3(ENABLE_NOT_D_AND_RB_AND_SB,SB$delay,MGM_W1);


	and MGM_G4(MGM_W2,RB$delay,D$delay);


	and MGM_G5(ENABLE_D_AND_RB_AND_SB,SB$delay,MGM_W2);


	buf MGM_G6(ENABLE_SB,SB$delay);


	not MGM_G7(MGM_W3,D$delay);


	not MGM_G8(MGM_W4,G$delay);


	and MGM_G9(MGM_W5,MGM_W4,MGM_W3);


	and MGM_G10(ENABLE_NOT_D_AND_NOT_G_AND_SB,SB$delay,MGM_W5);


	not MGM_G11(MGM_W6,G$delay);


	and MGM_G12(MGM_W7,MGM_W6,D$delay);


	and MGM_G13(ENABLE_D_AND_NOT_G_AND_SB,SB$delay,MGM_W7);


	buf MGM_G14(ENABLE_RB,RB$delay);


	not MGM_G15(MGM_W8,D$delay);


	not MGM_G16(MGM_W9,G$delay);


	and MGM_G17(ENABLE_NOT_D_AND_NOT_G,MGM_W9,MGM_W8);


	not MGM_G18(MGM_W10,G$delay);


	and MGM_G19(ENABLE_D_AND_NOT_G,MGM_W10,D$delay);


	not MGM_G20(MGM_W11,D$delay);


	not MGM_G21(MGM_W12,G$delay);


	and MGM_G22(MGM_W13,MGM_W12,MGM_W11);


	and MGM_G23(ENABLE_NOT_D_AND_NOT_G_AND_RB,RB$delay,MGM_W13);


	not MGM_G24(MGM_W14,G$delay);


	and MGM_G25(MGM_W15,MGM_W14,D$delay);


	and MGM_G26(ENABLE_D_AND_NOT_G_AND_RB,RB$delay,MGM_W15);


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc D --> Q
	 (D => Q) = (1.0,1.0);

	// seq arc G --> Q
	(posedge G => (Q : D))  = (1.0,1.0);

	// seq arc RB --> Q
	(RB => Q)  = (1.0,1.0);

	// seq arc SB --> Q
	(SB => Q)  = (1.0,1.0);

	// comb arc D --> QB
	 (D => QB) = (1.0,1.0);

	// seq arc G --> QB
	(posedge G => (QB : D))  = (1.0,1.0);

	// seq arc RB --> QB
	(RB => QB)  = (1.0,1.0);

	// seq arc SB --> QB
	(SB => QB)  = (1.0,1.0);

	// setuphold D- G-HL
	$setuphold(negedge G &&& (ENABLE_RB_AND_SB === 1'b1),
		posedge D &&& (ENABLE_RB_AND_SB === 1'b1),
		1.0,1.0,notifier,,,G$delay,D$delay);

	// setuphold D- G-HL
	$setuphold(negedge G &&& (ENABLE_RB_AND_SB === 1'b1),
		negedge D &&& (ENABLE_RB_AND_SB === 1'b1),
		1.0,1.0,notifier,,,G$delay,D$delay);

	$width(posedge G &&& (ENABLE_NOT_D_AND_RB_AND_SB === 1'b1)
		,1.0,0,notifier);

	$width(posedge G &&& (ENABLE_D_AND_RB_AND_SB === 1'b1)
		,1.0,0,notifier);

	// recrem RB-G-negedge
	$recrem(posedge RB &&& (ENABLE_SB === 1'b1),
		negedge G &&& (ENABLE_SB === 1'b1),
		1.0,1.0,notifier,,,RB$delay,G$delay);

	$width(negedge RB &&& (ENABLE_NOT_D_AND_NOT_G_AND_SB === 1'b1)
		,1.0,0,notifier);

	$width(negedge RB &&& (ENABLE_D_AND_NOT_G_AND_SB === 1'b1)
		,1.0,0,notifier);

	// recrem SB-G-negedge
	$recrem(posedge SB &&& (ENABLE_RB === 1'b1),
		negedge G &&& (ENABLE_RB === 1'b1),
		1.0,1.0,notifier,,,SB$delay,G$delay);

	// setuphold SB- RB-LH
	$setuphold(posedge RB &&& (ENABLE_NOT_D_AND_NOT_G === 1'b1),
		posedge SB &&& (ENABLE_NOT_D_AND_NOT_G === 1'b1),
		1.0,1.0,notifier,,,RB$delay,SB$delay);

	// setuphold SB- RB-LH
	$setuphold(posedge RB &&& (ENABLE_D_AND_NOT_G === 1'b1),
		posedge SB &&& (ENABLE_D_AND_NOT_G === 1'b1),
		1.0,1.0,notifier,,,RB$delay,SB$delay);

	$width(negedge SB &&& (ENABLE_NOT_D_AND_NOT_G_AND_RB === 1'b1)
		,1.0,0,notifier);

	$width(negedge SB &&& (ENABLE_D_AND_NOT_G_AND_RB === 1'b1)
		,1.0,0,notifier);

	// mpw G_lh 
	$width(posedge G,1.0,0,notifier);

	// mpw RB_hl 
	$width(negedge RB,1.0,0,notifier);

	// mpw SB_hl 
	$width(negedge SB,1.0,0,notifier);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module MAO222M0HM( Z, A, B, C , VDD, VSS);
inout VDD;
inout VSS;
input A, B, C;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	MAO222M0HM_func MAO222M0HM_behav_inst(.Z(Z),.A(A),.B(B),.C(C),.VDD(VDD),.VSS(VSS));

   `else

	MAO222M0HM_func MAO222M0HM_inst(.Z(Z),.A(A),.B(B),.C(C),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	if(B===1'b0 && C===1'b1)
	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	if(B===1'b1 && C===1'b0)
	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	ifnone
	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	if(A===1'b0 && C===1'b1)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A===1'b1 && C===1'b0)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	ifnone
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A===1'b0 && B===1'b1)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b0)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	ifnone
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module MAO222M1HM( Z, A, B, C , VDD, VSS);
inout VDD;
inout VSS;
input A, B, C;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	MAO222M1HM_func MAO222M1HM_behav_inst(.Z(Z),.A(A),.B(B),.C(C),.VDD(VDD),.VSS(VSS));

   `else

	MAO222M1HM_func MAO222M1HM_inst(.Z(Z),.A(A),.B(B),.C(C),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	if(B===1'b0 && C===1'b1)
	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	if(B===1'b1 && C===1'b0)
	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	ifnone
	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	if(A===1'b0 && C===1'b1)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A===1'b1 && C===1'b0)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	ifnone
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A===1'b0 && B===1'b1)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b0)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	ifnone
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module MAO222M2HM( Z, A, B, C , VDD, VSS);
inout VDD;
inout VSS;
input A, B, C;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	MAO222M2HM_func MAO222M2HM_behav_inst(.Z(Z),.A(A),.B(B),.C(C),.VDD(VDD),.VSS(VSS));

   `else

	MAO222M2HM_func MAO222M2HM_inst(.Z(Z),.A(A),.B(B),.C(C),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	if(B===1'b0 && C===1'b1)
	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	if(B===1'b1 && C===1'b0)
	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	ifnone
	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	if(A===1'b0 && C===1'b1)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A===1'b1 && C===1'b0)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	ifnone
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A===1'b0 && B===1'b1)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b0)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	ifnone
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module MAO222M4HM( Z, A, B, C , VDD, VSS);
inout VDD;
inout VSS;
input A, B, C;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	MAO222M4HM_func MAO222M4HM_behav_inst(.Z(Z),.A(A),.B(B),.C(C),.VDD(VDD),.VSS(VSS));

   `else

	MAO222M4HM_func MAO222M4HM_inst(.Z(Z),.A(A),.B(B),.C(C),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	if(B===1'b0 && C===1'b1)
	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	if(B===1'b1 && C===1'b0)
	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	ifnone
	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	if(A===1'b0 && C===1'b1)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A===1'b1 && C===1'b0)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	ifnone
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A===1'b0 && B===1'b1)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b0)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	ifnone
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module MAOI2223M0HM( Z, A, B, C, D , VDD, VSS);
inout VDD;
inout VSS;
input A, B, C, D;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	MAOI2223M0HM_func MAOI2223M0HM_behav_inst(.Z(Z),.A(A),.B(B),.C(C),.D(D),.VDD(VDD),.VSS(VSS));

   `else

	MAOI2223M0HM_func MAOI2223M0HM_inst(.Z(Z),.A(A),.B(B),.C(C),.D(D),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	if(B===1'b0 && C===1'b0 && D===1'b1)
	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	if(B===1'b1 && C===1'b1 && D===1'b0)
	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	ifnone
	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	if(A===1'b0 && C===1'b0 && D===1'b1)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A===1'b1 && C===1'b1 && D===1'b0)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	ifnone
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A===1'b0 && B===1'b0 && D===1'b1)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b1 && D===1'b0)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	ifnone
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A===1'b0 && B===1'b0 && C===1'b1)
	// comb arc D --> Z
	 (D => Z) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && C===1'b0)
	// comb arc D --> Z
	 (D => Z) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && C===1'b1)
	// comb arc D --> Z
	 (D => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && C===1'b0)
	// comb arc D --> Z
	 (D => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && C===1'b1)
	// comb arc D --> Z
	 (D => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b1 && C===1'b0)
	// comb arc D --> Z
	 (D => Z) = (1.0,1.0);

	ifnone
	// comb arc D --> Z
	 (D => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module MAOI2223M1HM( Z, A, B, C, D , VDD, VSS);
inout VDD;
inout VSS;
input A, B, C, D;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	MAOI2223M1HM_func MAOI2223M1HM_behav_inst(.Z(Z),.A(A),.B(B),.C(C),.D(D),.VDD(VDD),.VSS(VSS));

   `else

	MAOI2223M1HM_func MAOI2223M1HM_inst(.Z(Z),.A(A),.B(B),.C(C),.D(D),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	if(B===1'b0 && C===1'b0 && D===1'b1)
	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	if(B===1'b1 && C===1'b1 && D===1'b0)
	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	ifnone
	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	if(A===1'b0 && C===1'b0 && D===1'b1)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A===1'b1 && C===1'b1 && D===1'b0)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	ifnone
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A===1'b0 && B===1'b0 && D===1'b1)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b1 && D===1'b0)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	ifnone
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A===1'b0 && B===1'b0 && C===1'b1)
	// comb arc D --> Z
	 (D => Z) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && C===1'b0)
	// comb arc D --> Z
	 (D => Z) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && C===1'b1)
	// comb arc D --> Z
	 (D => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && C===1'b0)
	// comb arc D --> Z
	 (D => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && C===1'b1)
	// comb arc D --> Z
	 (D => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b1 && C===1'b0)
	// comb arc D --> Z
	 (D => Z) = (1.0,1.0);

	ifnone
	// comb arc D --> Z
	 (D => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module MAOI2223M2HM( Z, A, B, C, D , VDD, VSS);
inout VDD;
inout VSS;
input A, B, C, D;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	MAOI2223M2HM_func MAOI2223M2HM_behav_inst(.Z(Z),.A(A),.B(B),.C(C),.D(D),.VDD(VDD),.VSS(VSS));

   `else

	MAOI2223M2HM_func MAOI2223M2HM_inst(.Z(Z),.A(A),.B(B),.C(C),.D(D),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	if(B===1'b0 && C===1'b0 && D===1'b1)
	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	if(B===1'b1 && C===1'b1 && D===1'b0)
	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	ifnone
	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	if(A===1'b0 && C===1'b0 && D===1'b1)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A===1'b1 && C===1'b1 && D===1'b0)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	ifnone
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A===1'b0 && B===1'b0 && D===1'b1)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b1 && D===1'b0)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	ifnone
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A===1'b0 && B===1'b0 && C===1'b1)
	// comb arc D --> Z
	 (D => Z) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && C===1'b0)
	// comb arc D --> Z
	 (D => Z) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && C===1'b1)
	// comb arc D --> Z
	 (D => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && C===1'b0)
	// comb arc D --> Z
	 (D => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && C===1'b1)
	// comb arc D --> Z
	 (D => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b1 && C===1'b0)
	// comb arc D --> Z
	 (D => Z) = (1.0,1.0);

	ifnone
	// comb arc D --> Z
	 (D => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module MAOI2223M4HM( Z, A, B, C, D , VDD, VSS);
inout VDD;
inout VSS;
input A, B, C, D;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	MAOI2223M4HM_func MAOI2223M4HM_behav_inst(.Z(Z),.A(A),.B(B),.C(C),.D(D),.VDD(VDD),.VSS(VSS));

   `else

	MAOI2223M4HM_func MAOI2223M4HM_inst(.Z(Z),.A(A),.B(B),.C(C),.D(D),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	if(B===1'b0 && C===1'b0 && D===1'b1)
	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	if(B===1'b1 && C===1'b1 && D===1'b0)
	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	ifnone
	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	if(A===1'b0 && C===1'b0 && D===1'b1)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A===1'b1 && C===1'b1 && D===1'b0)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	ifnone
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A===1'b0 && B===1'b0 && D===1'b1)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b1 && D===1'b0)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	ifnone
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A===1'b0 && B===1'b0 && C===1'b1)
	// comb arc D --> Z
	 (D => Z) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && C===1'b0)
	// comb arc D --> Z
	 (D => Z) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && C===1'b1)
	// comb arc D --> Z
	 (D => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && C===1'b0)
	// comb arc D --> Z
	 (D => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && C===1'b1)
	// comb arc D --> Z
	 (D => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b1 && C===1'b0)
	// comb arc D --> Z
	 (D => Z) = (1.0,1.0);

	ifnone
	// comb arc D --> Z
	 (D => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module MAOI222M0HM( Z, A, B, C , VDD, VSS);
inout VDD;
inout VSS;
input A, B, C;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	MAOI222M0HM_func MAOI222M0HM_behav_inst(.Z(Z),.A(A),.B(B),.C(C),.VDD(VDD),.VSS(VSS));

   `else

	MAOI222M0HM_func MAOI222M0HM_inst(.Z(Z),.A(A),.B(B),.C(C),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	if(B===1'b0 && C===1'b1)
	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	if(B===1'b1 && C===1'b0)
	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	ifnone
	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	if(A===1'b0 && C===1'b1)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A===1'b1 && C===1'b0)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	ifnone
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A===1'b0 && B===1'b1)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b0)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	ifnone
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module MAOI222M1HM( Z, A, B, C , VDD, VSS);
inout VDD;
inout VSS;
input A, B, C;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	MAOI222M1HM_func MAOI222M1HM_behav_inst(.Z(Z),.A(A),.B(B),.C(C),.VDD(VDD),.VSS(VSS));

   `else

	MAOI222M1HM_func MAOI222M1HM_inst(.Z(Z),.A(A),.B(B),.C(C),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	if(B===1'b0 && C===1'b1)
	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	if(B===1'b1 && C===1'b0)
	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	ifnone
	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	if(A===1'b0 && C===1'b1)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A===1'b1 && C===1'b0)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	ifnone
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A===1'b0 && B===1'b1)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b0)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	ifnone
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module MAOI222M2HM( Z, A, B, C , VDD, VSS);
inout VDD;
inout VSS;
input A, B, C;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	MAOI222M2HM_func MAOI222M2HM_behav_inst(.Z(Z),.A(A),.B(B),.C(C),.VDD(VDD),.VSS(VSS));

   `else

	MAOI222M2HM_func MAOI222M2HM_inst(.Z(Z),.A(A),.B(B),.C(C),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	if(B===1'b0 && C===1'b1)
	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	if(B===1'b1 && C===1'b0)
	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	ifnone
	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	if(A===1'b0 && C===1'b1)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A===1'b1 && C===1'b0)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	ifnone
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A===1'b0 && B===1'b1)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b0)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	ifnone
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module MAOI222M4HM( Z, A, B, C , VDD, VSS);
inout VDD;
inout VSS;
input A, B, C;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	MAOI222M4HM_func MAOI222M4HM_behav_inst(.Z(Z),.A(A),.B(B),.C(C),.VDD(VDD),.VSS(VSS));

   `else

	MAOI222M4HM_func MAOI222M4HM_inst(.Z(Z),.A(A),.B(B),.C(C),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	if(B===1'b0 && C===1'b1)
	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	if(B===1'b1 && C===1'b0)
	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	ifnone
	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	if(A===1'b0 && C===1'b1)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A===1'b1 && C===1'b0)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	ifnone
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A===1'b0 && B===1'b1)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b0)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	ifnone
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module MAOI22M0HM( Z, A1, A2, B1, B2 , VDD, VSS);
inout VDD;
inout VSS;
input A1, A2, B1, B2;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	MAOI22M0HM_func MAOI22M0HM_behav_inst(.Z(Z),.A1(A1),.A2(A2),.B1(B1),.B2(B2),.VDD(VDD),.VSS(VSS));

   `else

	MAOI22M0HM_func MAOI22M0HM_inst(.Z(Z),.A1(A1),.A2(A2),.B1(B1),.B2(B2),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	if(B1===1'b0 && B2===1'b1)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b0)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b1)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	ifnone
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b1)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b0)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b1)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	ifnone
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	ifnone
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	ifnone
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module MAOI22M1HM( Z, A1, A2, B1, B2 , VDD, VSS);
inout VDD;
inout VSS;
input A1, A2, B1, B2;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	MAOI22M1HM_func MAOI22M1HM_behav_inst(.Z(Z),.A1(A1),.A2(A2),.B1(B1),.B2(B2),.VDD(VDD),.VSS(VSS));

   `else

	MAOI22M1HM_func MAOI22M1HM_inst(.Z(Z),.A1(A1),.A2(A2),.B1(B1),.B2(B2),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	if(B1===1'b0 && B2===1'b1)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b0)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b1)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	ifnone
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b1)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b0)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b1)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	ifnone
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	ifnone
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	ifnone
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module MAOI22M2HM( Z, A1, A2, B1, B2 , VDD, VSS);
inout VDD;
inout VSS;
input A1, A2, B1, B2;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	MAOI22M2HM_func MAOI22M2HM_behav_inst(.Z(Z),.A1(A1),.A2(A2),.B1(B1),.B2(B2),.VDD(VDD),.VSS(VSS));

   `else

	MAOI22M2HM_func MAOI22M2HM_inst(.Z(Z),.A1(A1),.A2(A2),.B1(B1),.B2(B2),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	if(B1===1'b0 && B2===1'b1)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b0)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b1)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	ifnone
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b1)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b0)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b1)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	ifnone
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	ifnone
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	ifnone
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module MAOI22M4HM( Z, A1, A2, B1, B2 , VDD, VSS);
inout VDD;
inout VSS;
input A1, A2, B1, B2;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	MAOI22M4HM_func MAOI22M4HM_behav_inst(.Z(Z),.A1(A1),.A2(A2),.B1(B1),.B2(B2),.VDD(VDD),.VSS(VSS));

   `else

	MAOI22M4HM_func MAOI22M4HM_inst(.Z(Z),.A1(A1),.A2(A2),.B1(B1),.B2(B2),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	if(B1===1'b0 && B2===1'b1)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b0)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b1)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	ifnone
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b1)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b0)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b1)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	ifnone
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	ifnone
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b0)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	ifnone
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module MOAI22M0HM( Z, A1, A2, B1, B2 , VDD, VSS);
inout VDD;
inout VSS;
input A1, A2, B1, B2;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	MOAI22M0HM_func MOAI22M0HM_behav_inst(.Z(Z),.A1(A1),.A2(A2),.B1(B1),.B2(B2),.VDD(VDD),.VSS(VSS));

   `else

	MOAI22M0HM_func MOAI22M0HM_inst(.Z(Z),.A1(A1),.A2(A2),.B1(B1),.B2(B2),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	if(B1===1'b0 && B2===1'b0)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b1)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b0)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	ifnone
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b0)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b1)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b0)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	ifnone
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b1)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	ifnone
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b1)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	ifnone
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module MOAI22M1HM( Z, A1, A2, B1, B2 , VDD, VSS);
inout VDD;
inout VSS;
input A1, A2, B1, B2;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	MOAI22M1HM_func MOAI22M1HM_behav_inst(.Z(Z),.A1(A1),.A2(A2),.B1(B1),.B2(B2),.VDD(VDD),.VSS(VSS));

   `else

	MOAI22M1HM_func MOAI22M1HM_inst(.Z(Z),.A1(A1),.A2(A2),.B1(B1),.B2(B2),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	if(B1===1'b0 && B2===1'b0)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b1)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b0)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	ifnone
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b0)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b1)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b0)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	ifnone
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b1)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	ifnone
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b1)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	ifnone
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module MOAI22M2HM( Z, A1, A2, B1, B2 , VDD, VSS);
inout VDD;
inout VSS;
input A1, A2, B1, B2;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	MOAI22M2HM_func MOAI22M2HM_behav_inst(.Z(Z),.A1(A1),.A2(A2),.B1(B1),.B2(B2),.VDD(VDD),.VSS(VSS));

   `else

	MOAI22M2HM_func MOAI22M2HM_inst(.Z(Z),.A1(A1),.A2(A2),.B1(B1),.B2(B2),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	if(B1===1'b0 && B2===1'b0)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b1)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b0)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	ifnone
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b0)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b1)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b0)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	ifnone
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b1)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	ifnone
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b1)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	ifnone
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module MOAI22M4HM( Z, A1, A2, B1, B2 , VDD, VSS);
inout VDD;
inout VSS;
input A1, A2, B1, B2;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	MOAI22M4HM_func MOAI22M4HM_behav_inst(.Z(Z),.A1(A1),.A2(A2),.B1(B1),.B2(B2),.VDD(VDD),.VSS(VSS));

   `else

	MOAI22M4HM_func MOAI22M4HM_inst(.Z(Z),.A1(A1),.A2(A2),.B1(B1),.B2(B2),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	if(B1===1'b0 && B2===1'b0)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b1)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b0)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	ifnone
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b0)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b1)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b0)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	ifnone
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b1)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	ifnone
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b1)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	ifnone
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module MUX2M0HM( Z, A, B, S , VDD, VSS);
inout VDD;
inout VSS;
input A, B, S;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	MUX2M0HM_func MUX2M0HM_behav_inst(.Z(Z),.A(A),.B(B),.S(S),.VDD(VDD),.VSS(VSS));

   `else

	MUX2M0HM_func MUX2M0HM_inst(.Z(Z),.A(A),.B(B),.S(S),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	if(B===1'b0)
	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	if(B===1'b1)
	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	ifnone
	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	if(A===1'b0)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A===1'b1)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	ifnone
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	ifnone
	// comb arc posedge S --> (Z:S)
	 (posedge S => (Z:S)) = (1.0,1.0);

	ifnone
	// comb arc negedge S --> (Z:S)
	 (negedge S => (Z:S)) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module MUX2M1HM( Z, A, B, S , VDD, VSS);
inout VDD;
inout VSS;
input A, B, S;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	MUX2M1HM_func MUX2M1HM_behav_inst(.Z(Z),.A(A),.B(B),.S(S),.VDD(VDD),.VSS(VSS));

   `else

	MUX2M1HM_func MUX2M1HM_inst(.Z(Z),.A(A),.B(B),.S(S),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	if(B===1'b0)
	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	if(B===1'b1)
	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	ifnone
	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	if(A===1'b0)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A===1'b1)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	ifnone
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	ifnone
	// comb arc posedge S --> (Z:S)
	 (posedge S => (Z:S)) = (1.0,1.0);

	ifnone
	// comb arc negedge S --> (Z:S)
	 (negedge S => (Z:S)) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module MUX2M2HM( Z, A, B, S , VDD, VSS);
inout VDD;
inout VSS;
input A, B, S;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	MUX2M2HM_func MUX2M2HM_behav_inst(.Z(Z),.A(A),.B(B),.S(S),.VDD(VDD),.VSS(VSS));

   `else

	MUX2M2HM_func MUX2M2HM_inst(.Z(Z),.A(A),.B(B),.S(S),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	if(B===1'b0)
	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	if(B===1'b1)
	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	ifnone
	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	if(A===1'b0)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A===1'b1)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	ifnone
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	ifnone
	// comb arc posedge S --> (Z:S)
	 (posedge S => (Z:S)) = (1.0,1.0);

	ifnone
	// comb arc negedge S --> (Z:S)
	 (negedge S => (Z:S)) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module MUX2M3HM( Z, A, B, S , VDD, VSS);
inout VDD;
inout VSS;
input A, B, S;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	MUX2M3HM_func MUX2M3HM_behav_inst(.Z(Z),.A(A),.B(B),.S(S),.VDD(VDD),.VSS(VSS));

   `else

	MUX2M3HM_func MUX2M3HM_inst(.Z(Z),.A(A),.B(B),.S(S),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	if(B===1'b0)
	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	if(B===1'b1)
	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	ifnone
	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	if(A===1'b0)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A===1'b1)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	ifnone
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	ifnone
	// comb arc posedge S --> (Z:S)
	 (posedge S => (Z:S)) = (1.0,1.0);

	ifnone
	// comb arc negedge S --> (Z:S)
	 (negedge S => (Z:S)) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module MUX2M4HM( Z, A, B, S , VDD, VSS);
inout VDD;
inout VSS;
input A, B, S;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	MUX2M4HM_func MUX2M4HM_behav_inst(.Z(Z),.A(A),.B(B),.S(S),.VDD(VDD),.VSS(VSS));

   `else

	MUX2M4HM_func MUX2M4HM_inst(.Z(Z),.A(A),.B(B),.S(S),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	if(B===1'b0)
	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	if(B===1'b1)
	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	ifnone
	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	if(A===1'b0)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A===1'b1)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	ifnone
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	ifnone
	// comb arc posedge S --> (Z:S)
	 (posedge S => (Z:S)) = (1.0,1.0);

	ifnone
	// comb arc negedge S --> (Z:S)
	 (negedge S => (Z:S)) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module MUX2M6HM( Z, A, B, S , VDD, VSS);
inout VDD;
inout VSS;
input A, B, S;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	MUX2M6HM_func MUX2M6HM_behav_inst(.Z(Z),.A(A),.B(B),.S(S),.VDD(VDD),.VSS(VSS));

   `else

	MUX2M6HM_func MUX2M6HM_inst(.Z(Z),.A(A),.B(B),.S(S),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	if(B===1'b0)
	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	if(B===1'b1)
	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	ifnone
	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	if(A===1'b0)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A===1'b1)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	ifnone
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	ifnone
	// comb arc posedge S --> (Z:S)
	 (posedge S => (Z:S)) = (1.0,1.0);

	ifnone
	// comb arc negedge S --> (Z:S)
	 (negedge S => (Z:S)) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module MUX2M8HM( Z, A, B, S , VDD, VSS);
inout VDD;
inout VSS;
input A, B, S;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	MUX2M8HM_func MUX2M8HM_behav_inst(.Z(Z),.A(A),.B(B),.S(S),.VDD(VDD),.VSS(VSS));

   `else

	MUX2M8HM_func MUX2M8HM_inst(.Z(Z),.A(A),.B(B),.S(S),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	if(B===1'b0)
	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	if(B===1'b1)
	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	ifnone
	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	if(A===1'b0)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A===1'b1)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	ifnone
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	ifnone
	// comb arc posedge S --> (Z:S)
	 (posedge S => (Z:S)) = (1.0,1.0);

	ifnone
	// comb arc negedge S --> (Z:S)
	 (negedge S => (Z:S)) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module MUX3M0HM( Z, A, B, C, S0, S1 , VDD, VSS);
inout VDD;
inout VSS;
input A, B, C, S0, S1;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	MUX3M0HM_func MUX3M0HM_behav_inst(.Z(Z),.A(A),.B(B),.C(C),.S0(S0),.S1(S1),.VDD(VDD),.VSS(VSS));

   `else

	MUX3M0HM_func MUX3M0HM_inst(.Z(Z),.A(A),.B(B),.C(C),.S0(S0),.S1(S1),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	if(B===1'b0 && C===1'b0)
	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	if(B===1'b0 && C===1'b1)
	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	if(B===1'b1 && C===1'b0)
	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	if(B===1'b1 && C===1'b1)
	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	ifnone
	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	if(A===1'b0 && C===1'b0)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A===1'b0 && C===1'b1)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A===1'b1 && C===1'b0)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A===1'b1 && C===1'b1)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	ifnone
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A===1'b0 && B===1'b0 && S0===1'b0)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A===1'b0 && B===1'b0 && S0===1'b1)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && S0===1'b0)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && S0===1'b1)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && S0===1'b0)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && S0===1'b1)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b1 && S0===1'b0)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b1 && S0===1'b1)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	ifnone
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(C===1'b0)
	// comb arc posedge S0 --> (Z:S0)
	 (posedge S0 => (Z:S0)) = (1.0,1.0);

	if(C===1'b0)
	// comb arc negedge S0 --> (Z:S0)
	 (negedge S0 => (Z:S0)) = (1.0,1.0);

	if(C===1'b1)
	// comb arc posedge S0 --> (Z:S0)
	 (posedge S0 => (Z:S0)) = (1.0,1.0);

	if(C===1'b1)
	// comb arc negedge S0 --> (Z:S0)
	 (negedge S0 => (Z:S0)) = (1.0,1.0);

	ifnone
	// comb arc posedge S0 --> (Z:S0)
	 (posedge S0 => (Z:S0)) = (1.0,1.0);

	ifnone
	// comb arc negedge S0 --> (Z:S0)
	 (negedge S0 => (Z:S0)) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && S0===1'b1)
	// comb arc S1 --> Z
	 (S1 => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && S0===1'b0)
	// comb arc S1 --> Z
	 (S1 => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b1 && S0===1'b0)
	// comb arc S1 --> Z
	 (S1 => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b1 && S0===1'b1)
	// comb arc S1 --> Z
	 (S1 => Z) = (1.0,1.0);

	ifnone
	// comb arc posedge S1 --> (Z:S1)
	 (posedge S1 => (Z:S1)) = (1.0,1.0);

	ifnone
	// comb arc negedge S1 --> (Z:S1)
	 (negedge S1 => (Z:S1)) = (1.0,1.0);

	if(A===1'b0 && B===1'b0 && S0===1'b0)
	// comb arc S1 --> Z
	 (S1 => Z) = (1.0,1.0);

	if(A===1'b0 && B===1'b0 && S0===1'b1)
	// comb arc S1 --> Z
	 (S1 => Z) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && S0===1'b0)
	// comb arc S1 --> Z
	 (S1 => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && S0===1'b1)
	// comb arc S1 --> Z
	 (S1 => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module MUX3M1HM( Z, A, B, C, S0, S1 , VDD, VSS);
inout VDD;
inout VSS;
input A, B, C, S0, S1;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	MUX3M1HM_func MUX3M1HM_behav_inst(.Z(Z),.A(A),.B(B),.C(C),.S0(S0),.S1(S1),.VDD(VDD),.VSS(VSS));

   `else

	MUX3M1HM_func MUX3M1HM_inst(.Z(Z),.A(A),.B(B),.C(C),.S0(S0),.S1(S1),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	if(B===1'b0 && C===1'b0)
	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	if(B===1'b0 && C===1'b1)
	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	if(B===1'b1 && C===1'b0)
	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	if(B===1'b1 && C===1'b1)
	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	ifnone
	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	if(A===1'b0 && C===1'b0)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A===1'b0 && C===1'b1)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A===1'b1 && C===1'b0)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A===1'b1 && C===1'b1)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	ifnone
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A===1'b0 && B===1'b0 && S0===1'b0)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A===1'b0 && B===1'b0 && S0===1'b1)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && S0===1'b0)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && S0===1'b1)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && S0===1'b0)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && S0===1'b1)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b1 && S0===1'b0)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b1 && S0===1'b1)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	ifnone
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(C===1'b0)
	// comb arc posedge S0 --> (Z:S0)
	 (posedge S0 => (Z:S0)) = (1.0,1.0);

	if(C===1'b0)
	// comb arc negedge S0 --> (Z:S0)
	 (negedge S0 => (Z:S0)) = (1.0,1.0);

	if(C===1'b1)
	// comb arc posedge S0 --> (Z:S0)
	 (posedge S0 => (Z:S0)) = (1.0,1.0);

	if(C===1'b1)
	// comb arc negedge S0 --> (Z:S0)
	 (negedge S0 => (Z:S0)) = (1.0,1.0);

	ifnone
	// comb arc posedge S0 --> (Z:S0)
	 (posedge S0 => (Z:S0)) = (1.0,1.0);

	ifnone
	// comb arc negedge S0 --> (Z:S0)
	 (negedge S0 => (Z:S0)) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && S0===1'b1)
	// comb arc S1 --> Z
	 (S1 => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && S0===1'b0)
	// comb arc S1 --> Z
	 (S1 => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b1 && S0===1'b0)
	// comb arc S1 --> Z
	 (S1 => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b1 && S0===1'b1)
	// comb arc S1 --> Z
	 (S1 => Z) = (1.0,1.0);

	ifnone
	// comb arc posedge S1 --> (Z:S1)
	 (posedge S1 => (Z:S1)) = (1.0,1.0);

	ifnone
	// comb arc negedge S1 --> (Z:S1)
	 (negedge S1 => (Z:S1)) = (1.0,1.0);

	if(A===1'b0 && B===1'b0 && S0===1'b0)
	// comb arc S1 --> Z
	 (S1 => Z) = (1.0,1.0);

	if(A===1'b0 && B===1'b0 && S0===1'b1)
	// comb arc S1 --> Z
	 (S1 => Z) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && S0===1'b0)
	// comb arc S1 --> Z
	 (S1 => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && S0===1'b1)
	// comb arc S1 --> Z
	 (S1 => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module MUX3M2HM( Z, A, B, C, S0, S1 , VDD, VSS);
inout VDD;
inout VSS;
input A, B, C, S0, S1;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	MUX3M2HM_func MUX3M2HM_behav_inst(.Z(Z),.A(A),.B(B),.C(C),.S0(S0),.S1(S1),.VDD(VDD),.VSS(VSS));

   `else

	MUX3M2HM_func MUX3M2HM_inst(.Z(Z),.A(A),.B(B),.C(C),.S0(S0),.S1(S1),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	if(B===1'b0 && C===1'b0)
	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	if(B===1'b0 && C===1'b1)
	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	if(B===1'b1 && C===1'b0)
	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	if(B===1'b1 && C===1'b1)
	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	ifnone
	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	if(A===1'b0 && C===1'b0)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A===1'b0 && C===1'b1)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A===1'b1 && C===1'b0)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A===1'b1 && C===1'b1)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	ifnone
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A===1'b0 && B===1'b0 && S0===1'b0)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A===1'b0 && B===1'b0 && S0===1'b1)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && S0===1'b0)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && S0===1'b1)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && S0===1'b0)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && S0===1'b1)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b1 && S0===1'b0)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b1 && S0===1'b1)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	ifnone
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(C===1'b0)
	// comb arc posedge S0 --> (Z:S0)
	 (posedge S0 => (Z:S0)) = (1.0,1.0);

	if(C===1'b0)
	// comb arc negedge S0 --> (Z:S0)
	 (negedge S0 => (Z:S0)) = (1.0,1.0);

	if(C===1'b1)
	// comb arc posedge S0 --> (Z:S0)
	 (posedge S0 => (Z:S0)) = (1.0,1.0);

	if(C===1'b1)
	// comb arc negedge S0 --> (Z:S0)
	 (negedge S0 => (Z:S0)) = (1.0,1.0);

	ifnone
	// comb arc posedge S0 --> (Z:S0)
	 (posedge S0 => (Z:S0)) = (1.0,1.0);

	ifnone
	// comb arc negedge S0 --> (Z:S0)
	 (negedge S0 => (Z:S0)) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && S0===1'b1)
	// comb arc S1 --> Z
	 (S1 => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && S0===1'b0)
	// comb arc S1 --> Z
	 (S1 => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b1 && S0===1'b0)
	// comb arc S1 --> Z
	 (S1 => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b1 && S0===1'b1)
	// comb arc S1 --> Z
	 (S1 => Z) = (1.0,1.0);

	ifnone
	// comb arc posedge S1 --> (Z:S1)
	 (posedge S1 => (Z:S1)) = (1.0,1.0);

	ifnone
	// comb arc negedge S1 --> (Z:S1)
	 (negedge S1 => (Z:S1)) = (1.0,1.0);

	if(A===1'b0 && B===1'b0 && S0===1'b0)
	// comb arc S1 --> Z
	 (S1 => Z) = (1.0,1.0);

	if(A===1'b0 && B===1'b0 && S0===1'b1)
	// comb arc S1 --> Z
	 (S1 => Z) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && S0===1'b0)
	// comb arc S1 --> Z
	 (S1 => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && S0===1'b1)
	// comb arc S1 --> Z
	 (S1 => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module MUX3M4HM( Z, A, B, C, S0, S1 , VDD, VSS);
inout VDD;
inout VSS;
input A, B, C, S0, S1;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	MUX3M4HM_func MUX3M4HM_behav_inst(.Z(Z),.A(A),.B(B),.C(C),.S0(S0),.S1(S1),.VDD(VDD),.VSS(VSS));

   `else

	MUX3M4HM_func MUX3M4HM_inst(.Z(Z),.A(A),.B(B),.C(C),.S0(S0),.S1(S1),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	if(B===1'b0 && C===1'b0)
	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	if(B===1'b0 && C===1'b1)
	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	if(B===1'b1 && C===1'b0)
	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	if(B===1'b1 && C===1'b1)
	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	ifnone
	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	if(A===1'b0 && C===1'b0)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A===1'b0 && C===1'b1)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A===1'b1 && C===1'b0)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A===1'b1 && C===1'b1)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	ifnone
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A===1'b0 && B===1'b0 && S0===1'b0)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A===1'b0 && B===1'b0 && S0===1'b1)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && S0===1'b0)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && S0===1'b1)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && S0===1'b0)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && S0===1'b1)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b1 && S0===1'b0)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b1 && S0===1'b1)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	ifnone
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(C===1'b0)
	// comb arc posedge S0 --> (Z:S0)
	 (posedge S0 => (Z:S0)) = (1.0,1.0);

	if(C===1'b0)
	// comb arc negedge S0 --> (Z:S0)
	 (negedge S0 => (Z:S0)) = (1.0,1.0);

	if(C===1'b1)
	// comb arc posedge S0 --> (Z:S0)
	 (posedge S0 => (Z:S0)) = (1.0,1.0);

	if(C===1'b1)
	// comb arc negedge S0 --> (Z:S0)
	 (negedge S0 => (Z:S0)) = (1.0,1.0);

	ifnone
	// comb arc posedge S0 --> (Z:S0)
	 (posedge S0 => (Z:S0)) = (1.0,1.0);

	ifnone
	// comb arc negedge S0 --> (Z:S0)
	 (negedge S0 => (Z:S0)) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && S0===1'b1)
	// comb arc S1 --> Z
	 (S1 => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && S0===1'b0)
	// comb arc S1 --> Z
	 (S1 => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b1 && S0===1'b0)
	// comb arc S1 --> Z
	 (S1 => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b1 && S0===1'b1)
	// comb arc S1 --> Z
	 (S1 => Z) = (1.0,1.0);

	ifnone
	// comb arc posedge S1 --> (Z:S1)
	 (posedge S1 => (Z:S1)) = (1.0,1.0);

	ifnone
	// comb arc negedge S1 --> (Z:S1)
	 (negedge S1 => (Z:S1)) = (1.0,1.0);

	if(A===1'b0 && B===1'b0 && S0===1'b0)
	// comb arc S1 --> Z
	 (S1 => Z) = (1.0,1.0);

	if(A===1'b0 && B===1'b0 && S0===1'b1)
	// comb arc S1 --> Z
	 (S1 => Z) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && S0===1'b0)
	// comb arc S1 --> Z
	 (S1 => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && S0===1'b1)
	// comb arc S1 --> Z
	 (S1 => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module MUX4M0HM( Z, A, B, C, D, S0, S1 , VDD, VSS);
inout VDD;
inout VSS;
input A, B, C, D, S0, S1;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	MUX4M0HM_func MUX4M0HM_behav_inst(.Z(Z),.A(A),.B(B),.C(C),.D(D),.S0(S0),.S1(S1),.VDD(VDD),.VSS(VSS));

   `else

	MUX4M0HM_func MUX4M0HM_inst(.Z(Z),.A(A),.B(B),.C(C),.D(D),.S0(S0),.S1(S1),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	if(B===1'b0 && C===1'b0 && D===1'b0)
	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	if(B===1'b0 && C===1'b0 && D===1'b1)
	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	if(B===1'b0 && C===1'b1 && D===1'b0)
	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	if(B===1'b0 && C===1'b1 && D===1'b1)
	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	if(B===1'b1 && C===1'b0 && D===1'b0)
	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	if(B===1'b1 && C===1'b0 && D===1'b1)
	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	if(B===1'b1 && C===1'b1 && D===1'b0)
	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	if(B===1'b1 && C===1'b1 && D===1'b1)
	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	ifnone
	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	if(A===1'b0 && C===1'b0 && D===1'b0)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A===1'b0 && C===1'b0 && D===1'b1)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A===1'b0 && C===1'b1 && D===1'b0)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A===1'b0 && C===1'b1 && D===1'b1)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A===1'b1 && C===1'b0 && D===1'b0)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A===1'b1 && C===1'b0 && D===1'b1)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A===1'b1 && C===1'b1 && D===1'b0)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A===1'b1 && C===1'b1 && D===1'b1)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	ifnone
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A===1'b0 && B===1'b0 && D===1'b0)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A===1'b0 && B===1'b0 && D===1'b1)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && D===1'b0)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && D===1'b1)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && D===1'b0)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && D===1'b1)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b1 && D===1'b0)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b1 && D===1'b1)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	ifnone
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A===1'b0 && B===1'b0 && C===1'b0)
	// comb arc D --> Z
	 (D => Z) = (1.0,1.0);

	if(A===1'b0 && B===1'b0 && C===1'b1)
	// comb arc D --> Z
	 (D => Z) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && C===1'b0)
	// comb arc D --> Z
	 (D => Z) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && C===1'b1)
	// comb arc D --> Z
	 (D => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && C===1'b0)
	// comb arc D --> Z
	 (D => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && C===1'b1)
	// comb arc D --> Z
	 (D => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b1 && C===1'b0)
	// comb arc D --> Z
	 (D => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b1 && C===1'b1)
	// comb arc D --> Z
	 (D => Z) = (1.0,1.0);

	ifnone
	// comb arc D --> Z
	 (D => Z) = (1.0,1.0);

	if(A===1'b0 && B===1'b0 && C===1'b1 && D===1'b0 && S1===1'b1)
	// comb arc S0 --> Z
	 (S0 => Z) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && C===1'b1 && D===1'b0 && S1===1'b1)
	// comb arc S0 --> Z
	 (S0 => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && C===1'b0 && D===1'b0 && S1===1'b0)
	// comb arc S0 --> Z
	 (S0 => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && C===1'b0 && D===1'b1 && S1===1'b0)
	// comb arc S0 --> Z
	 (S0 => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && C===1'b1 && D===1'b0 && S1===1'b0)
	// comb arc S0 --> Z
	 (S0 => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && C===1'b1 && D===1'b0 && S1===1'b1)
	// comb arc S0 --> Z
	 (S0 => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && C===1'b1 && D===1'b1 && S1===1'b0)
	// comb arc S0 --> Z
	 (S0 => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b1 && C===1'b1 && D===1'b0 && S1===1'b1)
	// comb arc S0 --> Z
	 (S0 => Z) = (1.0,1.0);

	ifnone
	// comb arc posedge S0 --> (Z:S0)
	 (posedge S0 => (Z:S0)) = (1.0,1.0);

	ifnone
	// comb arc negedge S0 --> (Z:S0)
	 (negedge S0 => (Z:S0)) = (1.0,1.0);

	if(A===1'b0 && B===1'b0 && C===1'b0 && D===1'b1 && S1===1'b1)
	// comb arc S0 --> Z
	 (S0 => Z) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && C===1'b0 && D===1'b0 && S1===1'b0)
	// comb arc S0 --> Z
	 (S0 => Z) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && C===1'b0 && D===1'b1 && S1===1'b0)
	// comb arc S0 --> Z
	 (S0 => Z) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && C===1'b0 && D===1'b1 && S1===1'b1)
	// comb arc S0 --> Z
	 (S0 => Z) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && C===1'b1 && D===1'b0 && S1===1'b0)
	// comb arc S0 --> Z
	 (S0 => Z) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && C===1'b1 && D===1'b1 && S1===1'b0)
	// comb arc S0 --> Z
	 (S0 => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && C===1'b0 && D===1'b1 && S1===1'b1)
	// comb arc S0 --> Z
	 (S0 => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b1 && C===1'b0 && D===1'b1 && S1===1'b1)
	// comb arc S0 --> Z
	 (S0 => Z) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && C===1'b0 && D===1'b0 && S0===1'b1)
	// comb arc S1 --> Z
	 (S1 => Z) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && C===1'b1 && D===1'b0 && S0===1'b1)
	// comb arc S1 --> Z
	 (S1 => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && C===1'b0 && D===1'b0 && S0===1'b0)
	// comb arc S1 --> Z
	 (S1 => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && C===1'b0 && D===1'b1 && S0===1'b0)
	// comb arc S1 --> Z
	 (S1 => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b1 && C===1'b0 && D===1'b0 && S0===1'b0)
	// comb arc S1 --> Z
	 (S1 => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b1 && C===1'b0 && D===1'b0 && S0===1'b1)
	// comb arc S1 --> Z
	 (S1 => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b1 && C===1'b0 && D===1'b1 && S0===1'b0)
	// comb arc S1 --> Z
	 (S1 => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b1 && C===1'b1 && D===1'b0 && S0===1'b1)
	// comb arc S1 --> Z
	 (S1 => Z) = (1.0,1.0);

	ifnone
	// comb arc posedge S1 --> (Z:S1)
	 (posedge S1 => (Z:S1)) = (1.0,1.0);

	ifnone
	// comb arc negedge S1 --> (Z:S1)
	 (negedge S1 => (Z:S1)) = (1.0,1.0);

	if(A===1'b0 && B===1'b0 && C===1'b0 && D===1'b1 && S0===1'b1)
	// comb arc S1 --> Z
	 (S1 => Z) = (1.0,1.0);

	if(A===1'b0 && B===1'b0 && C===1'b1 && D===1'b0 && S0===1'b0)
	// comb arc S1 --> Z
	 (S1 => Z) = (1.0,1.0);

	if(A===1'b0 && B===1'b0 && C===1'b1 && D===1'b1 && S0===1'b0)
	// comb arc S1 --> Z
	 (S1 => Z) = (1.0,1.0);

	if(A===1'b0 && B===1'b0 && C===1'b1 && D===1'b1 && S0===1'b1)
	// comb arc S1 --> Z
	 (S1 => Z) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && C===1'b1 && D===1'b0 && S0===1'b0)
	// comb arc S1 --> Z
	 (S1 => Z) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && C===1'b1 && D===1'b1 && S0===1'b0)
	// comb arc S1 --> Z
	 (S1 => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && C===1'b0 && D===1'b1 && S0===1'b1)
	// comb arc S1 --> Z
	 (S1 => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && C===1'b1 && D===1'b1 && S0===1'b1)
	// comb arc S1 --> Z
	 (S1 => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module MUX4M1HM( Z, A, B, C, D, S0, S1 , VDD, VSS);
inout VDD;
inout VSS;
input A, B, C, D, S0, S1;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	MUX4M1HM_func MUX4M1HM_behav_inst(.Z(Z),.A(A),.B(B),.C(C),.D(D),.S0(S0),.S1(S1),.VDD(VDD),.VSS(VSS));

   `else

	MUX4M1HM_func MUX4M1HM_inst(.Z(Z),.A(A),.B(B),.C(C),.D(D),.S0(S0),.S1(S1),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	if(B===1'b0 && C===1'b0 && D===1'b0)
	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	if(B===1'b0 && C===1'b0 && D===1'b1)
	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	if(B===1'b0 && C===1'b1 && D===1'b0)
	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	if(B===1'b0 && C===1'b1 && D===1'b1)
	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	if(B===1'b1 && C===1'b0 && D===1'b0)
	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	if(B===1'b1 && C===1'b0 && D===1'b1)
	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	if(B===1'b1 && C===1'b1 && D===1'b0)
	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	if(B===1'b1 && C===1'b1 && D===1'b1)
	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	ifnone
	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	if(A===1'b0 && C===1'b0 && D===1'b0)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A===1'b0 && C===1'b0 && D===1'b1)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A===1'b0 && C===1'b1 && D===1'b0)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A===1'b0 && C===1'b1 && D===1'b1)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A===1'b1 && C===1'b0 && D===1'b0)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A===1'b1 && C===1'b0 && D===1'b1)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A===1'b1 && C===1'b1 && D===1'b0)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A===1'b1 && C===1'b1 && D===1'b1)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	ifnone
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A===1'b0 && B===1'b0 && D===1'b0)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A===1'b0 && B===1'b0 && D===1'b1)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && D===1'b0)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && D===1'b1)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && D===1'b0)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && D===1'b1)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b1 && D===1'b0)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b1 && D===1'b1)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	ifnone
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A===1'b0 && B===1'b0 && C===1'b0)
	// comb arc D --> Z
	 (D => Z) = (1.0,1.0);

	if(A===1'b0 && B===1'b0 && C===1'b1)
	// comb arc D --> Z
	 (D => Z) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && C===1'b0)
	// comb arc D --> Z
	 (D => Z) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && C===1'b1)
	// comb arc D --> Z
	 (D => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && C===1'b0)
	// comb arc D --> Z
	 (D => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && C===1'b1)
	// comb arc D --> Z
	 (D => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b1 && C===1'b0)
	// comb arc D --> Z
	 (D => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b1 && C===1'b1)
	// comb arc D --> Z
	 (D => Z) = (1.0,1.0);

	ifnone
	// comb arc D --> Z
	 (D => Z) = (1.0,1.0);

	if(A===1'b0 && B===1'b0 && C===1'b1 && D===1'b0 && S1===1'b1)
	// comb arc S0 --> Z
	 (S0 => Z) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && C===1'b1 && D===1'b0 && S1===1'b1)
	// comb arc S0 --> Z
	 (S0 => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && C===1'b0 && D===1'b0 && S1===1'b0)
	// comb arc S0 --> Z
	 (S0 => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && C===1'b0 && D===1'b1 && S1===1'b0)
	// comb arc S0 --> Z
	 (S0 => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && C===1'b1 && D===1'b0 && S1===1'b0)
	// comb arc S0 --> Z
	 (S0 => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && C===1'b1 && D===1'b0 && S1===1'b1)
	// comb arc S0 --> Z
	 (S0 => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && C===1'b1 && D===1'b1 && S1===1'b0)
	// comb arc S0 --> Z
	 (S0 => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b1 && C===1'b1 && D===1'b0 && S1===1'b1)
	// comb arc S0 --> Z
	 (S0 => Z) = (1.0,1.0);

	ifnone
	// comb arc posedge S0 --> (Z:S0)
	 (posedge S0 => (Z:S0)) = (1.0,1.0);

	ifnone
	// comb arc negedge S0 --> (Z:S0)
	 (negedge S0 => (Z:S0)) = (1.0,1.0);

	if(A===1'b0 && B===1'b0 && C===1'b0 && D===1'b1 && S1===1'b1)
	// comb arc S0 --> Z
	 (S0 => Z) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && C===1'b0 && D===1'b0 && S1===1'b0)
	// comb arc S0 --> Z
	 (S0 => Z) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && C===1'b0 && D===1'b1 && S1===1'b0)
	// comb arc S0 --> Z
	 (S0 => Z) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && C===1'b0 && D===1'b1 && S1===1'b1)
	// comb arc S0 --> Z
	 (S0 => Z) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && C===1'b1 && D===1'b0 && S1===1'b0)
	// comb arc S0 --> Z
	 (S0 => Z) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && C===1'b1 && D===1'b1 && S1===1'b0)
	// comb arc S0 --> Z
	 (S0 => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && C===1'b0 && D===1'b1 && S1===1'b1)
	// comb arc S0 --> Z
	 (S0 => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b1 && C===1'b0 && D===1'b1 && S1===1'b1)
	// comb arc S0 --> Z
	 (S0 => Z) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && C===1'b0 && D===1'b0 && S0===1'b1)
	// comb arc S1 --> Z
	 (S1 => Z) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && C===1'b1 && D===1'b0 && S0===1'b1)
	// comb arc S1 --> Z
	 (S1 => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && C===1'b0 && D===1'b0 && S0===1'b0)
	// comb arc S1 --> Z
	 (S1 => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && C===1'b0 && D===1'b1 && S0===1'b0)
	// comb arc S1 --> Z
	 (S1 => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b1 && C===1'b0 && D===1'b0 && S0===1'b0)
	// comb arc S1 --> Z
	 (S1 => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b1 && C===1'b0 && D===1'b0 && S0===1'b1)
	// comb arc S1 --> Z
	 (S1 => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b1 && C===1'b0 && D===1'b1 && S0===1'b0)
	// comb arc S1 --> Z
	 (S1 => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b1 && C===1'b1 && D===1'b0 && S0===1'b1)
	// comb arc S1 --> Z
	 (S1 => Z) = (1.0,1.0);

	ifnone
	// comb arc posedge S1 --> (Z:S1)
	 (posedge S1 => (Z:S1)) = (1.0,1.0);

	ifnone
	// comb arc negedge S1 --> (Z:S1)
	 (negedge S1 => (Z:S1)) = (1.0,1.0);

	if(A===1'b0 && B===1'b0 && C===1'b0 && D===1'b1 && S0===1'b1)
	// comb arc S1 --> Z
	 (S1 => Z) = (1.0,1.0);

	if(A===1'b0 && B===1'b0 && C===1'b1 && D===1'b0 && S0===1'b0)
	// comb arc S1 --> Z
	 (S1 => Z) = (1.0,1.0);

	if(A===1'b0 && B===1'b0 && C===1'b1 && D===1'b1 && S0===1'b0)
	// comb arc S1 --> Z
	 (S1 => Z) = (1.0,1.0);

	if(A===1'b0 && B===1'b0 && C===1'b1 && D===1'b1 && S0===1'b1)
	// comb arc S1 --> Z
	 (S1 => Z) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && C===1'b1 && D===1'b0 && S0===1'b0)
	// comb arc S1 --> Z
	 (S1 => Z) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && C===1'b1 && D===1'b1 && S0===1'b0)
	// comb arc S1 --> Z
	 (S1 => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && C===1'b0 && D===1'b1 && S0===1'b1)
	// comb arc S1 --> Z
	 (S1 => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && C===1'b1 && D===1'b1 && S0===1'b1)
	// comb arc S1 --> Z
	 (S1 => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module MUX4M2HM( Z, A, B, C, D, S0, S1 , VDD, VSS);
inout VDD;
inout VSS;
input A, B, C, D, S0, S1;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	MUX4M2HM_func MUX4M2HM_behav_inst(.Z(Z),.A(A),.B(B),.C(C),.D(D),.S0(S0),.S1(S1),.VDD(VDD),.VSS(VSS));

   `else

	MUX4M2HM_func MUX4M2HM_inst(.Z(Z),.A(A),.B(B),.C(C),.D(D),.S0(S0),.S1(S1),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	if(B===1'b0 && C===1'b0 && D===1'b0)
	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	if(B===1'b0 && C===1'b0 && D===1'b1)
	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	if(B===1'b0 && C===1'b1 && D===1'b0)
	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	if(B===1'b0 && C===1'b1 && D===1'b1)
	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	if(B===1'b1 && C===1'b0 && D===1'b0)
	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	if(B===1'b1 && C===1'b0 && D===1'b1)
	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	if(B===1'b1 && C===1'b1 && D===1'b0)
	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	if(B===1'b1 && C===1'b1 && D===1'b1)
	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	ifnone
	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	if(A===1'b0 && C===1'b0 && D===1'b0)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A===1'b0 && C===1'b0 && D===1'b1)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A===1'b0 && C===1'b1 && D===1'b0)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A===1'b0 && C===1'b1 && D===1'b1)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A===1'b1 && C===1'b0 && D===1'b0)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A===1'b1 && C===1'b0 && D===1'b1)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A===1'b1 && C===1'b1 && D===1'b0)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A===1'b1 && C===1'b1 && D===1'b1)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	ifnone
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A===1'b0 && B===1'b0 && D===1'b0)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A===1'b0 && B===1'b0 && D===1'b1)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && D===1'b0)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && D===1'b1)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && D===1'b0)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && D===1'b1)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b1 && D===1'b0)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b1 && D===1'b1)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	ifnone
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A===1'b0 && B===1'b0 && C===1'b0)
	// comb arc D --> Z
	 (D => Z) = (1.0,1.0);

	if(A===1'b0 && B===1'b0 && C===1'b1)
	// comb arc D --> Z
	 (D => Z) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && C===1'b0)
	// comb arc D --> Z
	 (D => Z) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && C===1'b1)
	// comb arc D --> Z
	 (D => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && C===1'b0)
	// comb arc D --> Z
	 (D => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && C===1'b1)
	// comb arc D --> Z
	 (D => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b1 && C===1'b0)
	// comb arc D --> Z
	 (D => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b1 && C===1'b1)
	// comb arc D --> Z
	 (D => Z) = (1.0,1.0);

	ifnone
	// comb arc D --> Z
	 (D => Z) = (1.0,1.0);

	if(A===1'b0 && B===1'b0 && C===1'b1 && D===1'b0 && S1===1'b1)
	// comb arc S0 --> Z
	 (S0 => Z) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && C===1'b1 && D===1'b0 && S1===1'b1)
	// comb arc S0 --> Z
	 (S0 => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && C===1'b0 && D===1'b0 && S1===1'b0)
	// comb arc S0 --> Z
	 (S0 => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && C===1'b0 && D===1'b1 && S1===1'b0)
	// comb arc S0 --> Z
	 (S0 => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && C===1'b1 && D===1'b0 && S1===1'b0)
	// comb arc S0 --> Z
	 (S0 => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && C===1'b1 && D===1'b0 && S1===1'b1)
	// comb arc S0 --> Z
	 (S0 => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && C===1'b1 && D===1'b1 && S1===1'b0)
	// comb arc S0 --> Z
	 (S0 => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b1 && C===1'b1 && D===1'b0 && S1===1'b1)
	// comb arc S0 --> Z
	 (S0 => Z) = (1.0,1.0);

	ifnone
	// comb arc posedge S0 --> (Z:S0)
	 (posedge S0 => (Z:S0)) = (1.0,1.0);

	ifnone
	// comb arc negedge S0 --> (Z:S0)
	 (negedge S0 => (Z:S0)) = (1.0,1.0);

	if(A===1'b0 && B===1'b0 && C===1'b0 && D===1'b1 && S1===1'b1)
	// comb arc S0 --> Z
	 (S0 => Z) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && C===1'b0 && D===1'b0 && S1===1'b0)
	// comb arc S0 --> Z
	 (S0 => Z) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && C===1'b0 && D===1'b1 && S1===1'b0)
	// comb arc S0 --> Z
	 (S0 => Z) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && C===1'b0 && D===1'b1 && S1===1'b1)
	// comb arc S0 --> Z
	 (S0 => Z) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && C===1'b1 && D===1'b0 && S1===1'b0)
	// comb arc S0 --> Z
	 (S0 => Z) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && C===1'b1 && D===1'b1 && S1===1'b0)
	// comb arc S0 --> Z
	 (S0 => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && C===1'b0 && D===1'b1 && S1===1'b1)
	// comb arc S0 --> Z
	 (S0 => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b1 && C===1'b0 && D===1'b1 && S1===1'b1)
	// comb arc S0 --> Z
	 (S0 => Z) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && C===1'b0 && D===1'b0 && S0===1'b1)
	// comb arc S1 --> Z
	 (S1 => Z) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && C===1'b1 && D===1'b0 && S0===1'b1)
	// comb arc S1 --> Z
	 (S1 => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && C===1'b0 && D===1'b0 && S0===1'b0)
	// comb arc S1 --> Z
	 (S1 => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && C===1'b0 && D===1'b1 && S0===1'b0)
	// comb arc S1 --> Z
	 (S1 => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b1 && C===1'b0 && D===1'b0 && S0===1'b0)
	// comb arc S1 --> Z
	 (S1 => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b1 && C===1'b0 && D===1'b0 && S0===1'b1)
	// comb arc S1 --> Z
	 (S1 => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b1 && C===1'b0 && D===1'b1 && S0===1'b0)
	// comb arc S1 --> Z
	 (S1 => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b1 && C===1'b1 && D===1'b0 && S0===1'b1)
	// comb arc S1 --> Z
	 (S1 => Z) = (1.0,1.0);

	ifnone
	// comb arc posedge S1 --> (Z:S1)
	 (posedge S1 => (Z:S1)) = (1.0,1.0);

	ifnone
	// comb arc negedge S1 --> (Z:S1)
	 (negedge S1 => (Z:S1)) = (1.0,1.0);

	if(A===1'b0 && B===1'b0 && C===1'b0 && D===1'b1 && S0===1'b1)
	// comb arc S1 --> Z
	 (S1 => Z) = (1.0,1.0);

	if(A===1'b0 && B===1'b0 && C===1'b1 && D===1'b0 && S0===1'b0)
	// comb arc S1 --> Z
	 (S1 => Z) = (1.0,1.0);

	if(A===1'b0 && B===1'b0 && C===1'b1 && D===1'b1 && S0===1'b0)
	// comb arc S1 --> Z
	 (S1 => Z) = (1.0,1.0);

	if(A===1'b0 && B===1'b0 && C===1'b1 && D===1'b1 && S0===1'b1)
	// comb arc S1 --> Z
	 (S1 => Z) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && C===1'b1 && D===1'b0 && S0===1'b0)
	// comb arc S1 --> Z
	 (S1 => Z) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && C===1'b1 && D===1'b1 && S0===1'b0)
	// comb arc S1 --> Z
	 (S1 => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && C===1'b0 && D===1'b1 && S0===1'b1)
	// comb arc S1 --> Z
	 (S1 => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && C===1'b1 && D===1'b1 && S0===1'b1)
	// comb arc S1 --> Z
	 (S1 => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module MUX4M4HM( Z, A, B, C, D, S0, S1 , VDD, VSS);
inout VDD;
inout VSS;
input A, B, C, D, S0, S1;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	MUX4M4HM_func MUX4M4HM_behav_inst(.Z(Z),.A(A),.B(B),.C(C),.D(D),.S0(S0),.S1(S1),.VDD(VDD),.VSS(VSS));

   `else

	MUX4M4HM_func MUX4M4HM_inst(.Z(Z),.A(A),.B(B),.C(C),.D(D),.S0(S0),.S1(S1),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	if(B===1'b0 && C===1'b0 && D===1'b0)
	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	if(B===1'b0 && C===1'b0 && D===1'b1)
	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	if(B===1'b0 && C===1'b1 && D===1'b0)
	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	if(B===1'b0 && C===1'b1 && D===1'b1)
	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	if(B===1'b1 && C===1'b0 && D===1'b0)
	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	if(B===1'b1 && C===1'b0 && D===1'b1)
	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	if(B===1'b1 && C===1'b1 && D===1'b0)
	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	if(B===1'b1 && C===1'b1 && D===1'b1)
	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	ifnone
	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	if(A===1'b0 && C===1'b0 && D===1'b0)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A===1'b0 && C===1'b0 && D===1'b1)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A===1'b0 && C===1'b1 && D===1'b0)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A===1'b0 && C===1'b1 && D===1'b1)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A===1'b1 && C===1'b0 && D===1'b0)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A===1'b1 && C===1'b0 && D===1'b1)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A===1'b1 && C===1'b1 && D===1'b0)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A===1'b1 && C===1'b1 && D===1'b1)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	ifnone
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A===1'b0 && B===1'b0 && D===1'b0)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A===1'b0 && B===1'b0 && D===1'b1)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && D===1'b0)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && D===1'b1)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && D===1'b0)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && D===1'b1)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b1 && D===1'b0)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b1 && D===1'b1)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	ifnone
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A===1'b0 && B===1'b0 && C===1'b0)
	// comb arc D --> Z
	 (D => Z) = (1.0,1.0);

	if(A===1'b0 && B===1'b0 && C===1'b1)
	// comb arc D --> Z
	 (D => Z) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && C===1'b0)
	// comb arc D --> Z
	 (D => Z) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && C===1'b1)
	// comb arc D --> Z
	 (D => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && C===1'b0)
	// comb arc D --> Z
	 (D => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && C===1'b1)
	// comb arc D --> Z
	 (D => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b1 && C===1'b0)
	// comb arc D --> Z
	 (D => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b1 && C===1'b1)
	// comb arc D --> Z
	 (D => Z) = (1.0,1.0);

	ifnone
	// comb arc D --> Z
	 (D => Z) = (1.0,1.0);

	if(A===1'b0 && B===1'b0 && C===1'b1 && D===1'b0 && S1===1'b1)
	// comb arc S0 --> Z
	 (S0 => Z) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && C===1'b1 && D===1'b0 && S1===1'b1)
	// comb arc S0 --> Z
	 (S0 => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && C===1'b0 && D===1'b0 && S1===1'b0)
	// comb arc S0 --> Z
	 (S0 => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && C===1'b0 && D===1'b1 && S1===1'b0)
	// comb arc S0 --> Z
	 (S0 => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && C===1'b1 && D===1'b0 && S1===1'b0)
	// comb arc S0 --> Z
	 (S0 => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && C===1'b1 && D===1'b0 && S1===1'b1)
	// comb arc S0 --> Z
	 (S0 => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && C===1'b1 && D===1'b1 && S1===1'b0)
	// comb arc S0 --> Z
	 (S0 => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b1 && C===1'b1 && D===1'b0 && S1===1'b1)
	// comb arc S0 --> Z
	 (S0 => Z) = (1.0,1.0);

	ifnone
	// comb arc posedge S0 --> (Z:S0)
	 (posedge S0 => (Z:S0)) = (1.0,1.0);

	ifnone
	// comb arc negedge S0 --> (Z:S0)
	 (negedge S0 => (Z:S0)) = (1.0,1.0);

	if(A===1'b0 && B===1'b0 && C===1'b0 && D===1'b1 && S1===1'b1)
	// comb arc S0 --> Z
	 (S0 => Z) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && C===1'b0 && D===1'b0 && S1===1'b0)
	// comb arc S0 --> Z
	 (S0 => Z) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && C===1'b0 && D===1'b1 && S1===1'b0)
	// comb arc S0 --> Z
	 (S0 => Z) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && C===1'b0 && D===1'b1 && S1===1'b1)
	// comb arc S0 --> Z
	 (S0 => Z) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && C===1'b1 && D===1'b0 && S1===1'b0)
	// comb arc S0 --> Z
	 (S0 => Z) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && C===1'b1 && D===1'b1 && S1===1'b0)
	// comb arc S0 --> Z
	 (S0 => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && C===1'b0 && D===1'b1 && S1===1'b1)
	// comb arc S0 --> Z
	 (S0 => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b1 && C===1'b0 && D===1'b1 && S1===1'b1)
	// comb arc S0 --> Z
	 (S0 => Z) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && C===1'b0 && D===1'b0 && S0===1'b1)
	// comb arc S1 --> Z
	 (S1 => Z) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && C===1'b1 && D===1'b0 && S0===1'b1)
	// comb arc S1 --> Z
	 (S1 => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && C===1'b0 && D===1'b0 && S0===1'b0)
	// comb arc S1 --> Z
	 (S1 => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && C===1'b0 && D===1'b1 && S0===1'b0)
	// comb arc S1 --> Z
	 (S1 => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b1 && C===1'b0 && D===1'b0 && S0===1'b0)
	// comb arc S1 --> Z
	 (S1 => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b1 && C===1'b0 && D===1'b0 && S0===1'b1)
	// comb arc S1 --> Z
	 (S1 => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b1 && C===1'b0 && D===1'b1 && S0===1'b0)
	// comb arc S1 --> Z
	 (S1 => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b1 && C===1'b1 && D===1'b0 && S0===1'b1)
	// comb arc S1 --> Z
	 (S1 => Z) = (1.0,1.0);

	ifnone
	// comb arc posedge S1 --> (Z:S1)
	 (posedge S1 => (Z:S1)) = (1.0,1.0);

	ifnone
	// comb arc negedge S1 --> (Z:S1)
	 (negedge S1 => (Z:S1)) = (1.0,1.0);

	if(A===1'b0 && B===1'b0 && C===1'b0 && D===1'b1 && S0===1'b1)
	// comb arc S1 --> Z
	 (S1 => Z) = (1.0,1.0);

	if(A===1'b0 && B===1'b0 && C===1'b1 && D===1'b0 && S0===1'b0)
	// comb arc S1 --> Z
	 (S1 => Z) = (1.0,1.0);

	if(A===1'b0 && B===1'b0 && C===1'b1 && D===1'b1 && S0===1'b0)
	// comb arc S1 --> Z
	 (S1 => Z) = (1.0,1.0);

	if(A===1'b0 && B===1'b0 && C===1'b1 && D===1'b1 && S0===1'b1)
	// comb arc S1 --> Z
	 (S1 => Z) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && C===1'b1 && D===1'b0 && S0===1'b0)
	// comb arc S1 --> Z
	 (S1 => Z) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && C===1'b1 && D===1'b1 && S0===1'b0)
	// comb arc S1 --> Z
	 (S1 => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && C===1'b0 && D===1'b1 && S0===1'b1)
	// comb arc S1 --> Z
	 (S1 => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && C===1'b1 && D===1'b1 && S0===1'b1)
	// comb arc S1 --> Z
	 (S1 => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module MXB2M0HM( Z, A, B, S , VDD, VSS);
inout VDD;
inout VSS;
input A, B, S;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	MXB2M0HM_func MXB2M0HM_behav_inst(.Z(Z),.A(A),.B(B),.S(S),.VDD(VDD),.VSS(VSS));

   `else

	MXB2M0HM_func MXB2M0HM_inst(.Z(Z),.A(A),.B(B),.S(S),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	if(B===1'b0)
	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	if(B===1'b1)
	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	ifnone
	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	if(A===1'b0)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A===1'b1)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	ifnone
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	ifnone
	// comb arc posedge S --> (Z:S)
	 (posedge S => (Z:S)) = (1.0,1.0);

	ifnone
	// comb arc negedge S --> (Z:S)
	 (negedge S => (Z:S)) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module MXB2M1HM( Z, A, B, S , VDD, VSS);
inout VDD;
inout VSS;
input A, B, S;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	MXB2M1HM_func MXB2M1HM_behav_inst(.Z(Z),.A(A),.B(B),.S(S),.VDD(VDD),.VSS(VSS));

   `else

	MXB2M1HM_func MXB2M1HM_inst(.Z(Z),.A(A),.B(B),.S(S),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	if(B===1'b0)
	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	if(B===1'b1)
	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	ifnone
	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	if(A===1'b0)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A===1'b1)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	ifnone
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	ifnone
	// comb arc posedge S --> (Z:S)
	 (posedge S => (Z:S)) = (1.0,1.0);

	ifnone
	// comb arc negedge S --> (Z:S)
	 (negedge S => (Z:S)) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module MXB2M2HM( Z, A, B, S , VDD, VSS);
inout VDD;
inout VSS;
input A, B, S;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	MXB2M2HM_func MXB2M2HM_behav_inst(.Z(Z),.A(A),.B(B),.S(S),.VDD(VDD),.VSS(VSS));

   `else

	MXB2M2HM_func MXB2M2HM_inst(.Z(Z),.A(A),.B(B),.S(S),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	if(B===1'b0)
	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	if(B===1'b1)
	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	ifnone
	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	if(A===1'b0)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A===1'b1)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	ifnone
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	ifnone
	// comb arc posedge S --> (Z:S)
	 (posedge S => (Z:S)) = (1.0,1.0);

	ifnone
	// comb arc negedge S --> (Z:S)
	 (negedge S => (Z:S)) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module MXB2M3HM( Z, A, B, S , VDD, VSS);
inout VDD;
inout VSS;
input A, B, S;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	MXB2M3HM_func MXB2M3HM_behav_inst(.Z(Z),.A(A),.B(B),.S(S),.VDD(VDD),.VSS(VSS));

   `else

	MXB2M3HM_func MXB2M3HM_inst(.Z(Z),.A(A),.B(B),.S(S),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	if(B===1'b0)
	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	if(B===1'b1)
	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	ifnone
	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	if(A===1'b0)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A===1'b1)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	ifnone
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	ifnone
	// comb arc posedge S --> (Z:S)
	 (posedge S => (Z:S)) = (1.0,1.0);

	ifnone
	// comb arc negedge S --> (Z:S)
	 (negedge S => (Z:S)) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module MXB2M4HM( Z, A, B, S , VDD, VSS);
inout VDD;
inout VSS;
input A, B, S;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	MXB2M4HM_func MXB2M4HM_behav_inst(.Z(Z),.A(A),.B(B),.S(S),.VDD(VDD),.VSS(VSS));

   `else

	MXB2M4HM_func MXB2M4HM_inst(.Z(Z),.A(A),.B(B),.S(S),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	if(B===1'b0)
	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	if(B===1'b1)
	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	ifnone
	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	if(A===1'b0)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A===1'b1)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	ifnone
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	ifnone
	// comb arc posedge S --> (Z:S)
	 (posedge S => (Z:S)) = (1.0,1.0);

	ifnone
	// comb arc negedge S --> (Z:S)
	 (negedge S => (Z:S)) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module MXB2M6HM( Z, A, B, S , VDD, VSS);
inout VDD;
inout VSS;
input A, B, S;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	MXB2M6HM_func MXB2M6HM_behav_inst(.Z(Z),.A(A),.B(B),.S(S),.VDD(VDD),.VSS(VSS));

   `else

	MXB2M6HM_func MXB2M6HM_inst(.Z(Z),.A(A),.B(B),.S(S),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	if(B===1'b0)
	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	if(B===1'b1)
	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	ifnone
	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	if(A===1'b0)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A===1'b1)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	ifnone
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	ifnone
	// comb arc posedge S --> (Z:S)
	 (posedge S => (Z:S)) = (1.0,1.0);

	ifnone
	// comb arc negedge S --> (Z:S)
	 (negedge S => (Z:S)) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module MXB2M8HM( Z, A, B, S , VDD, VSS);
inout VDD;
inout VSS;
input A, B, S;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	MXB2M8HM_func MXB2M8HM_behav_inst(.Z(Z),.A(A),.B(B),.S(S),.VDD(VDD),.VSS(VSS));

   `else

	MXB2M8HM_func MXB2M8HM_inst(.Z(Z),.A(A),.B(B),.S(S),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	if(B===1'b0)
	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	if(B===1'b1)
	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	ifnone
	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	if(A===1'b0)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A===1'b1)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	ifnone
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	ifnone
	// comb arc posedge S --> (Z:S)
	 (posedge S => (Z:S)) = (1.0,1.0);

	ifnone
	// comb arc negedge S --> (Z:S)
	 (negedge S => (Z:S)) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module MXB3M0HM( Z, A, B, C, S0, S1 , VDD, VSS);
inout VDD;
inout VSS;
input A, B, C, S0, S1;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	MXB3M0HM_func MXB3M0HM_behav_inst(.Z(Z),.A(A),.B(B),.C(C),.S0(S0),.S1(S1),.VDD(VDD),.VSS(VSS));

   `else

	MXB3M0HM_func MXB3M0HM_inst(.Z(Z),.A(A),.B(B),.C(C),.S0(S0),.S1(S1),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	if(B===1'b0 && C===1'b0)
	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	if(B===1'b0 && C===1'b1)
	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	if(B===1'b1 && C===1'b0)
	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	if(B===1'b1 && C===1'b1)
	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	ifnone
	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	if(A===1'b0 && C===1'b0)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A===1'b0 && C===1'b1)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A===1'b1 && C===1'b0)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A===1'b1 && C===1'b1)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	ifnone
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A===1'b0 && B===1'b0 && S0===1'b0)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A===1'b0 && B===1'b0 && S0===1'b1)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && S0===1'b0)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && S0===1'b1)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && S0===1'b0)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && S0===1'b1)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b1 && S0===1'b0)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b1 && S0===1'b1)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	ifnone
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(C===1'b0)
	// comb arc posedge S0 --> (Z:S0)
	 (posedge S0 => (Z:S0)) = (1.0,1.0);

	if(C===1'b0)
	// comb arc negedge S0 --> (Z:S0)
	 (negedge S0 => (Z:S0)) = (1.0,1.0);

	if(C===1'b1)
	// comb arc posedge S0 --> (Z:S0)
	 (posedge S0 => (Z:S0)) = (1.0,1.0);

	if(C===1'b1)
	// comb arc negedge S0 --> (Z:S0)
	 (negedge S0 => (Z:S0)) = (1.0,1.0);

	ifnone
	// comb arc posedge S0 --> (Z:S0)
	 (posedge S0 => (Z:S0)) = (1.0,1.0);

	ifnone
	// comb arc negedge S0 --> (Z:S0)
	 (negedge S0 => (Z:S0)) = (1.0,1.0);

	if(A===1'b0 && B===1'b0 && S0===1'b0)
	// comb arc S1 --> Z
	 (S1 => Z) = (1.0,1.0);

	if(A===1'b0 && B===1'b0 && S0===1'b1)
	// comb arc S1 --> Z
	 (S1 => Z) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && S0===1'b0)
	// comb arc S1 --> Z
	 (S1 => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && S0===1'b1)
	// comb arc S1 --> Z
	 (S1 => Z) = (1.0,1.0);

	ifnone
	// comb arc posedge S1 --> (Z:S1)
	 (posedge S1 => (Z:S1)) = (1.0,1.0);

	ifnone
	// comb arc negedge S1 --> (Z:S1)
	 (negedge S1 => (Z:S1)) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && S0===1'b1)
	// comb arc S1 --> Z
	 (S1 => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && S0===1'b0)
	// comb arc S1 --> Z
	 (S1 => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b1 && S0===1'b0)
	// comb arc S1 --> Z
	 (S1 => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b1 && S0===1'b1)
	// comb arc S1 --> Z
	 (S1 => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module MXB3M1HM( Z, A, B, C, S0, S1 , VDD, VSS);
inout VDD;
inout VSS;
input A, B, C, S0, S1;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	MXB3M1HM_func MXB3M1HM_behav_inst(.Z(Z),.A(A),.B(B),.C(C),.S0(S0),.S1(S1),.VDD(VDD),.VSS(VSS));

   `else

	MXB3M1HM_func MXB3M1HM_inst(.Z(Z),.A(A),.B(B),.C(C),.S0(S0),.S1(S1),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	if(B===1'b0 && C===1'b0)
	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	if(B===1'b0 && C===1'b1)
	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	if(B===1'b1 && C===1'b0)
	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	if(B===1'b1 && C===1'b1)
	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	ifnone
	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	if(A===1'b0 && C===1'b0)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A===1'b0 && C===1'b1)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A===1'b1 && C===1'b0)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A===1'b1 && C===1'b1)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	ifnone
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A===1'b0 && B===1'b0 && S0===1'b0)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A===1'b0 && B===1'b0 && S0===1'b1)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && S0===1'b0)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && S0===1'b1)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && S0===1'b0)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && S0===1'b1)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b1 && S0===1'b0)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b1 && S0===1'b1)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	ifnone
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(C===1'b0)
	// comb arc posedge S0 --> (Z:S0)
	 (posedge S0 => (Z:S0)) = (1.0,1.0);

	if(C===1'b0)
	// comb arc negedge S0 --> (Z:S0)
	 (negedge S0 => (Z:S0)) = (1.0,1.0);

	if(C===1'b1)
	// comb arc posedge S0 --> (Z:S0)
	 (posedge S0 => (Z:S0)) = (1.0,1.0);

	if(C===1'b1)
	// comb arc negedge S0 --> (Z:S0)
	 (negedge S0 => (Z:S0)) = (1.0,1.0);

	ifnone
	// comb arc posedge S0 --> (Z:S0)
	 (posedge S0 => (Z:S0)) = (1.0,1.0);

	ifnone
	// comb arc negedge S0 --> (Z:S0)
	 (negedge S0 => (Z:S0)) = (1.0,1.0);

	if(A===1'b0 && B===1'b0 && S0===1'b0)
	// comb arc S1 --> Z
	 (S1 => Z) = (1.0,1.0);

	if(A===1'b0 && B===1'b0 && S0===1'b1)
	// comb arc S1 --> Z
	 (S1 => Z) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && S0===1'b0)
	// comb arc S1 --> Z
	 (S1 => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && S0===1'b1)
	// comb arc S1 --> Z
	 (S1 => Z) = (1.0,1.0);

	ifnone
	// comb arc posedge S1 --> (Z:S1)
	 (posedge S1 => (Z:S1)) = (1.0,1.0);

	ifnone
	// comb arc negedge S1 --> (Z:S1)
	 (negedge S1 => (Z:S1)) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && S0===1'b1)
	// comb arc S1 --> Z
	 (S1 => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && S0===1'b0)
	// comb arc S1 --> Z
	 (S1 => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b1 && S0===1'b0)
	// comb arc S1 --> Z
	 (S1 => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b1 && S0===1'b1)
	// comb arc S1 --> Z
	 (S1 => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module MXB3M2HM( Z, A, B, C, S0, S1 , VDD, VSS);
inout VDD;
inout VSS;
input A, B, C, S0, S1;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	MXB3M2HM_func MXB3M2HM_behav_inst(.Z(Z),.A(A),.B(B),.C(C),.S0(S0),.S1(S1),.VDD(VDD),.VSS(VSS));

   `else

	MXB3M2HM_func MXB3M2HM_inst(.Z(Z),.A(A),.B(B),.C(C),.S0(S0),.S1(S1),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	if(B===1'b0 && C===1'b0)
	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	if(B===1'b0 && C===1'b1)
	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	if(B===1'b1 && C===1'b0)
	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	if(B===1'b1 && C===1'b1)
	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	ifnone
	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	if(A===1'b0 && C===1'b0)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A===1'b0 && C===1'b1)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A===1'b1 && C===1'b0)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A===1'b1 && C===1'b1)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	ifnone
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A===1'b0 && B===1'b0 && S0===1'b0)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A===1'b0 && B===1'b0 && S0===1'b1)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && S0===1'b0)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && S0===1'b1)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && S0===1'b0)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && S0===1'b1)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b1 && S0===1'b0)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b1 && S0===1'b1)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	ifnone
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(C===1'b0)
	// comb arc posedge S0 --> (Z:S0)
	 (posedge S0 => (Z:S0)) = (1.0,1.0);

	if(C===1'b0)
	// comb arc negedge S0 --> (Z:S0)
	 (negedge S0 => (Z:S0)) = (1.0,1.0);

	if(C===1'b1)
	// comb arc posedge S0 --> (Z:S0)
	 (posedge S0 => (Z:S0)) = (1.0,1.0);

	if(C===1'b1)
	// comb arc negedge S0 --> (Z:S0)
	 (negedge S0 => (Z:S0)) = (1.0,1.0);

	ifnone
	// comb arc posedge S0 --> (Z:S0)
	 (posedge S0 => (Z:S0)) = (1.0,1.0);

	ifnone
	// comb arc negedge S0 --> (Z:S0)
	 (negedge S0 => (Z:S0)) = (1.0,1.0);

	if(A===1'b0 && B===1'b0 && S0===1'b0)
	// comb arc S1 --> Z
	 (S1 => Z) = (1.0,1.0);

	if(A===1'b0 && B===1'b0 && S0===1'b1)
	// comb arc S1 --> Z
	 (S1 => Z) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && S0===1'b0)
	// comb arc S1 --> Z
	 (S1 => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && S0===1'b1)
	// comb arc S1 --> Z
	 (S1 => Z) = (1.0,1.0);

	ifnone
	// comb arc posedge S1 --> (Z:S1)
	 (posedge S1 => (Z:S1)) = (1.0,1.0);

	ifnone
	// comb arc negedge S1 --> (Z:S1)
	 (negedge S1 => (Z:S1)) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && S0===1'b1)
	// comb arc S1 --> Z
	 (S1 => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && S0===1'b0)
	// comb arc S1 --> Z
	 (S1 => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b1 && S0===1'b0)
	// comb arc S1 --> Z
	 (S1 => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b1 && S0===1'b1)
	// comb arc S1 --> Z
	 (S1 => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module MXB3M4HM( Z, A, B, C, S0, S1 , VDD, VSS);
inout VDD;
inout VSS;
input A, B, C, S0, S1;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	MXB3M4HM_func MXB3M4HM_behav_inst(.Z(Z),.A(A),.B(B),.C(C),.S0(S0),.S1(S1),.VDD(VDD),.VSS(VSS));

   `else

	MXB3M4HM_func MXB3M4HM_inst(.Z(Z),.A(A),.B(B),.C(C),.S0(S0),.S1(S1),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	if(B===1'b0 && C===1'b0)
	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	if(B===1'b0 && C===1'b1)
	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	if(B===1'b1 && C===1'b0)
	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	if(B===1'b1 && C===1'b1)
	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	ifnone
	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	if(A===1'b0 && C===1'b0)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A===1'b0 && C===1'b1)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A===1'b1 && C===1'b0)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A===1'b1 && C===1'b1)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	ifnone
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A===1'b0 && B===1'b0 && S0===1'b0)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A===1'b0 && B===1'b0 && S0===1'b1)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && S0===1'b0)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && S0===1'b1)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && S0===1'b0)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && S0===1'b1)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b1 && S0===1'b0)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b1 && S0===1'b1)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	ifnone
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(C===1'b0)
	// comb arc posedge S0 --> (Z:S0)
	 (posedge S0 => (Z:S0)) = (1.0,1.0);

	if(C===1'b0)
	// comb arc negedge S0 --> (Z:S0)
	 (negedge S0 => (Z:S0)) = (1.0,1.0);

	if(C===1'b1)
	// comb arc posedge S0 --> (Z:S0)
	 (posedge S0 => (Z:S0)) = (1.0,1.0);

	if(C===1'b1)
	// comb arc negedge S0 --> (Z:S0)
	 (negedge S0 => (Z:S0)) = (1.0,1.0);

	ifnone
	// comb arc posedge S0 --> (Z:S0)
	 (posedge S0 => (Z:S0)) = (1.0,1.0);

	ifnone
	// comb arc negedge S0 --> (Z:S0)
	 (negedge S0 => (Z:S0)) = (1.0,1.0);

	if(A===1'b0 && B===1'b0 && S0===1'b0)
	// comb arc S1 --> Z
	 (S1 => Z) = (1.0,1.0);

	if(A===1'b0 && B===1'b0 && S0===1'b1)
	// comb arc S1 --> Z
	 (S1 => Z) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && S0===1'b0)
	// comb arc S1 --> Z
	 (S1 => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && S0===1'b1)
	// comb arc S1 --> Z
	 (S1 => Z) = (1.0,1.0);

	ifnone
	// comb arc posedge S1 --> (Z:S1)
	 (posedge S1 => (Z:S1)) = (1.0,1.0);

	ifnone
	// comb arc negedge S1 --> (Z:S1)
	 (negedge S1 => (Z:S1)) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && S0===1'b1)
	// comb arc S1 --> Z
	 (S1 => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && S0===1'b0)
	// comb arc S1 --> Z
	 (S1 => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b1 && S0===1'b0)
	// comb arc S1 --> Z
	 (S1 => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b1 && S0===1'b1)
	// comb arc S1 --> Z
	 (S1 => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module MXB4M0HM( Z, A, B, C, D, S0, S1 , VDD, VSS);
inout VDD;
inout VSS;
input A, B, C, D, S0, S1;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	MXB4M0HM_func MXB4M0HM_behav_inst(.Z(Z),.A(A),.B(B),.C(C),.D(D),.S0(S0),.S1(S1),.VDD(VDD),.VSS(VSS));

   `else

	MXB4M0HM_func MXB4M0HM_inst(.Z(Z),.A(A),.B(B),.C(C),.D(D),.S0(S0),.S1(S1),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	if(B===1'b0 && C===1'b0 && D===1'b0)
	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	if(B===1'b0 && C===1'b0 && D===1'b1)
	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	if(B===1'b0 && C===1'b1 && D===1'b0)
	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	if(B===1'b0 && C===1'b1 && D===1'b1)
	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	if(B===1'b1 && C===1'b0 && D===1'b0)
	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	if(B===1'b1 && C===1'b0 && D===1'b1)
	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	if(B===1'b1 && C===1'b1 && D===1'b0)
	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	if(B===1'b1 && C===1'b1 && D===1'b1)
	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	ifnone
	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	if(A===1'b0 && C===1'b0 && D===1'b0)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A===1'b0 && C===1'b0 && D===1'b1)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A===1'b0 && C===1'b1 && D===1'b0)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A===1'b0 && C===1'b1 && D===1'b1)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A===1'b1 && C===1'b0 && D===1'b0)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A===1'b1 && C===1'b0 && D===1'b1)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A===1'b1 && C===1'b1 && D===1'b0)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A===1'b1 && C===1'b1 && D===1'b1)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	ifnone
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A===1'b0 && B===1'b0 && D===1'b0)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A===1'b0 && B===1'b0 && D===1'b1)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && D===1'b0)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && D===1'b1)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && D===1'b0)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && D===1'b1)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b1 && D===1'b0)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b1 && D===1'b1)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	ifnone
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A===1'b0 && B===1'b0 && C===1'b0)
	// comb arc D --> Z
	 (D => Z) = (1.0,1.0);

	if(A===1'b0 && B===1'b0 && C===1'b1)
	// comb arc D --> Z
	 (D => Z) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && C===1'b0)
	// comb arc D --> Z
	 (D => Z) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && C===1'b1)
	// comb arc D --> Z
	 (D => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && C===1'b0)
	// comb arc D --> Z
	 (D => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && C===1'b1)
	// comb arc D --> Z
	 (D => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b1 && C===1'b0)
	// comb arc D --> Z
	 (D => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b1 && C===1'b1)
	// comb arc D --> Z
	 (D => Z) = (1.0,1.0);

	ifnone
	// comb arc D --> Z
	 (D => Z) = (1.0,1.0);

	if(A===1'b0 && B===1'b0 && C===1'b0 && D===1'b1 && S1===1'b1)
	// comb arc S0 --> Z
	 (S0 => Z) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && C===1'b0 && D===1'b0 && S1===1'b0)
	// comb arc S0 --> Z
	 (S0 => Z) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && C===1'b0 && D===1'b1 && S1===1'b0)
	// comb arc S0 --> Z
	 (S0 => Z) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && C===1'b0 && D===1'b1 && S1===1'b1)
	// comb arc S0 --> Z
	 (S0 => Z) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && C===1'b1 && D===1'b0 && S1===1'b0)
	// comb arc S0 --> Z
	 (S0 => Z) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && C===1'b1 && D===1'b1 && S1===1'b0)
	// comb arc S0 --> Z
	 (S0 => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && C===1'b0 && D===1'b1 && S1===1'b1)
	// comb arc S0 --> Z
	 (S0 => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b1 && C===1'b0 && D===1'b1 && S1===1'b1)
	// comb arc S0 --> Z
	 (S0 => Z) = (1.0,1.0);

	ifnone
	// comb arc posedge S0 --> (Z:S0)
	 (posedge S0 => (Z:S0)) = (1.0,1.0);

	ifnone
	// comb arc negedge S0 --> (Z:S0)
	 (negedge S0 => (Z:S0)) = (1.0,1.0);

	if(A===1'b0 && B===1'b0 && C===1'b1 && D===1'b0 && S1===1'b1)
	// comb arc S0 --> Z
	 (S0 => Z) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && C===1'b1 && D===1'b0 && S1===1'b1)
	// comb arc S0 --> Z
	 (S0 => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && C===1'b0 && D===1'b0 && S1===1'b0)
	// comb arc S0 --> Z
	 (S0 => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && C===1'b0 && D===1'b1 && S1===1'b0)
	// comb arc S0 --> Z
	 (S0 => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && C===1'b1 && D===1'b0 && S1===1'b0)
	// comb arc S0 --> Z
	 (S0 => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && C===1'b1 && D===1'b0 && S1===1'b1)
	// comb arc S0 --> Z
	 (S0 => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && C===1'b1 && D===1'b1 && S1===1'b0)
	// comb arc S0 --> Z
	 (S0 => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b1 && C===1'b1 && D===1'b0 && S1===1'b1)
	// comb arc S0 --> Z
	 (S0 => Z) = (1.0,1.0);

	if(A===1'b0 && B===1'b0 && C===1'b0 && D===1'b1 && S0===1'b1)
	// comb arc S1 --> Z
	 (S1 => Z) = (1.0,1.0);

	if(A===1'b0 && B===1'b0 && C===1'b1 && D===1'b0 && S0===1'b0)
	// comb arc S1 --> Z
	 (S1 => Z) = (1.0,1.0);

	if(A===1'b0 && B===1'b0 && C===1'b1 && D===1'b1 && S0===1'b0)
	// comb arc S1 --> Z
	 (S1 => Z) = (1.0,1.0);

	if(A===1'b0 && B===1'b0 && C===1'b1 && D===1'b1 && S0===1'b1)
	// comb arc S1 --> Z
	 (S1 => Z) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && C===1'b1 && D===1'b0 && S0===1'b0)
	// comb arc S1 --> Z
	 (S1 => Z) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && C===1'b1 && D===1'b1 && S0===1'b0)
	// comb arc S1 --> Z
	 (S1 => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && C===1'b0 && D===1'b1 && S0===1'b1)
	// comb arc S1 --> Z
	 (S1 => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && C===1'b1 && D===1'b1 && S0===1'b1)
	// comb arc S1 --> Z
	 (S1 => Z) = (1.0,1.0);

	ifnone
	// comb arc posedge S1 --> (Z:S1)
	 (posedge S1 => (Z:S1)) = (1.0,1.0);

	ifnone
	// comb arc negedge S1 --> (Z:S1)
	 (negedge S1 => (Z:S1)) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && C===1'b0 && D===1'b0 && S0===1'b1)
	// comb arc S1 --> Z
	 (S1 => Z) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && C===1'b1 && D===1'b0 && S0===1'b1)
	// comb arc S1 --> Z
	 (S1 => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && C===1'b0 && D===1'b0 && S0===1'b0)
	// comb arc S1 --> Z
	 (S1 => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && C===1'b0 && D===1'b1 && S0===1'b0)
	// comb arc S1 --> Z
	 (S1 => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b1 && C===1'b0 && D===1'b0 && S0===1'b0)
	// comb arc S1 --> Z
	 (S1 => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b1 && C===1'b0 && D===1'b0 && S0===1'b1)
	// comb arc S1 --> Z
	 (S1 => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b1 && C===1'b0 && D===1'b1 && S0===1'b0)
	// comb arc S1 --> Z
	 (S1 => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b1 && C===1'b1 && D===1'b0 && S0===1'b1)
	// comb arc S1 --> Z
	 (S1 => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module MXB4M1HM( Z, A, B, C, D, S0, S1 , VDD, VSS);
inout VDD;
inout VSS;
input A, B, C, D, S0, S1;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	MXB4M1HM_func MXB4M1HM_behav_inst(.Z(Z),.A(A),.B(B),.C(C),.D(D),.S0(S0),.S1(S1),.VDD(VDD),.VSS(VSS));

   `else

	MXB4M1HM_func MXB4M1HM_inst(.Z(Z),.A(A),.B(B),.C(C),.D(D),.S0(S0),.S1(S1),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	if(B===1'b0 && C===1'b0 && D===1'b0)
	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	if(B===1'b0 && C===1'b0 && D===1'b1)
	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	if(B===1'b0 && C===1'b1 && D===1'b0)
	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	if(B===1'b0 && C===1'b1 && D===1'b1)
	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	if(B===1'b1 && C===1'b0 && D===1'b0)
	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	if(B===1'b1 && C===1'b0 && D===1'b1)
	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	if(B===1'b1 && C===1'b1 && D===1'b0)
	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	if(B===1'b1 && C===1'b1 && D===1'b1)
	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	ifnone
	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	if(A===1'b0 && C===1'b0 && D===1'b0)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A===1'b0 && C===1'b0 && D===1'b1)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A===1'b0 && C===1'b1 && D===1'b0)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A===1'b0 && C===1'b1 && D===1'b1)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A===1'b1 && C===1'b0 && D===1'b0)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A===1'b1 && C===1'b0 && D===1'b1)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A===1'b1 && C===1'b1 && D===1'b0)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A===1'b1 && C===1'b1 && D===1'b1)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	ifnone
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A===1'b0 && B===1'b0 && D===1'b0)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A===1'b0 && B===1'b0 && D===1'b1)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && D===1'b0)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && D===1'b1)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && D===1'b0)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && D===1'b1)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b1 && D===1'b0)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b1 && D===1'b1)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	ifnone
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A===1'b0 && B===1'b0 && C===1'b0)
	// comb arc D --> Z
	 (D => Z) = (1.0,1.0);

	if(A===1'b0 && B===1'b0 && C===1'b1)
	// comb arc D --> Z
	 (D => Z) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && C===1'b0)
	// comb arc D --> Z
	 (D => Z) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && C===1'b1)
	// comb arc D --> Z
	 (D => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && C===1'b0)
	// comb arc D --> Z
	 (D => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && C===1'b1)
	// comb arc D --> Z
	 (D => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b1 && C===1'b0)
	// comb arc D --> Z
	 (D => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b1 && C===1'b1)
	// comb arc D --> Z
	 (D => Z) = (1.0,1.0);

	ifnone
	// comb arc D --> Z
	 (D => Z) = (1.0,1.0);

	if(A===1'b0 && B===1'b0 && C===1'b0 && D===1'b1 && S1===1'b1)
	// comb arc S0 --> Z
	 (S0 => Z) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && C===1'b0 && D===1'b0 && S1===1'b0)
	// comb arc S0 --> Z
	 (S0 => Z) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && C===1'b0 && D===1'b1 && S1===1'b0)
	// comb arc S0 --> Z
	 (S0 => Z) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && C===1'b0 && D===1'b1 && S1===1'b1)
	// comb arc S0 --> Z
	 (S0 => Z) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && C===1'b1 && D===1'b0 && S1===1'b0)
	// comb arc S0 --> Z
	 (S0 => Z) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && C===1'b1 && D===1'b1 && S1===1'b0)
	// comb arc S0 --> Z
	 (S0 => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && C===1'b0 && D===1'b1 && S1===1'b1)
	// comb arc S0 --> Z
	 (S0 => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b1 && C===1'b0 && D===1'b1 && S1===1'b1)
	// comb arc S0 --> Z
	 (S0 => Z) = (1.0,1.0);

	ifnone
	// comb arc posedge S0 --> (Z:S0)
	 (posedge S0 => (Z:S0)) = (1.0,1.0);

	ifnone
	// comb arc negedge S0 --> (Z:S0)
	 (negedge S0 => (Z:S0)) = (1.0,1.0);

	if(A===1'b0 && B===1'b0 && C===1'b1 && D===1'b0 && S1===1'b1)
	// comb arc S0 --> Z
	 (S0 => Z) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && C===1'b1 && D===1'b0 && S1===1'b1)
	// comb arc S0 --> Z
	 (S0 => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && C===1'b0 && D===1'b0 && S1===1'b0)
	// comb arc S0 --> Z
	 (S0 => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && C===1'b0 && D===1'b1 && S1===1'b0)
	// comb arc S0 --> Z
	 (S0 => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && C===1'b1 && D===1'b0 && S1===1'b0)
	// comb arc S0 --> Z
	 (S0 => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && C===1'b1 && D===1'b0 && S1===1'b1)
	// comb arc S0 --> Z
	 (S0 => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && C===1'b1 && D===1'b1 && S1===1'b0)
	// comb arc S0 --> Z
	 (S0 => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b1 && C===1'b1 && D===1'b0 && S1===1'b1)
	// comb arc S0 --> Z
	 (S0 => Z) = (1.0,1.0);

	if(A===1'b0 && B===1'b0 && C===1'b0 && D===1'b1 && S0===1'b1)
	// comb arc S1 --> Z
	 (S1 => Z) = (1.0,1.0);

	if(A===1'b0 && B===1'b0 && C===1'b1 && D===1'b0 && S0===1'b0)
	// comb arc S1 --> Z
	 (S1 => Z) = (1.0,1.0);

	if(A===1'b0 && B===1'b0 && C===1'b1 && D===1'b1 && S0===1'b0)
	// comb arc S1 --> Z
	 (S1 => Z) = (1.0,1.0);

	if(A===1'b0 && B===1'b0 && C===1'b1 && D===1'b1 && S0===1'b1)
	// comb arc S1 --> Z
	 (S1 => Z) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && C===1'b1 && D===1'b0 && S0===1'b0)
	// comb arc S1 --> Z
	 (S1 => Z) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && C===1'b1 && D===1'b1 && S0===1'b0)
	// comb arc S1 --> Z
	 (S1 => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && C===1'b0 && D===1'b1 && S0===1'b1)
	// comb arc S1 --> Z
	 (S1 => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && C===1'b1 && D===1'b1 && S0===1'b1)
	// comb arc S1 --> Z
	 (S1 => Z) = (1.0,1.0);

	ifnone
	// comb arc posedge S1 --> (Z:S1)
	 (posedge S1 => (Z:S1)) = (1.0,1.0);

	ifnone
	// comb arc negedge S1 --> (Z:S1)
	 (negedge S1 => (Z:S1)) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && C===1'b0 && D===1'b0 && S0===1'b1)
	// comb arc S1 --> Z
	 (S1 => Z) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && C===1'b1 && D===1'b0 && S0===1'b1)
	// comb arc S1 --> Z
	 (S1 => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && C===1'b0 && D===1'b0 && S0===1'b0)
	// comb arc S1 --> Z
	 (S1 => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && C===1'b0 && D===1'b1 && S0===1'b0)
	// comb arc S1 --> Z
	 (S1 => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b1 && C===1'b0 && D===1'b0 && S0===1'b0)
	// comb arc S1 --> Z
	 (S1 => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b1 && C===1'b0 && D===1'b0 && S0===1'b1)
	// comb arc S1 --> Z
	 (S1 => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b1 && C===1'b0 && D===1'b1 && S0===1'b0)
	// comb arc S1 --> Z
	 (S1 => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b1 && C===1'b1 && D===1'b0 && S0===1'b1)
	// comb arc S1 --> Z
	 (S1 => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module MXB4M2HM( Z, A, B, C, D, S0, S1 , VDD, VSS);
inout VDD;
inout VSS;
input A, B, C, D, S0, S1;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	MXB4M2HM_func MXB4M2HM_behav_inst(.Z(Z),.A(A),.B(B),.C(C),.D(D),.S0(S0),.S1(S1),.VDD(VDD),.VSS(VSS));

   `else

	MXB4M2HM_func MXB4M2HM_inst(.Z(Z),.A(A),.B(B),.C(C),.D(D),.S0(S0),.S1(S1),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	if(B===1'b0 && C===1'b0 && D===1'b0)
	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	if(B===1'b0 && C===1'b0 && D===1'b1)
	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	if(B===1'b0 && C===1'b1 && D===1'b0)
	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	if(B===1'b0 && C===1'b1 && D===1'b1)
	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	if(B===1'b1 && C===1'b0 && D===1'b0)
	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	if(B===1'b1 && C===1'b0 && D===1'b1)
	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	if(B===1'b1 && C===1'b1 && D===1'b0)
	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	if(B===1'b1 && C===1'b1 && D===1'b1)
	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	ifnone
	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	if(A===1'b0 && C===1'b0 && D===1'b0)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A===1'b0 && C===1'b0 && D===1'b1)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A===1'b0 && C===1'b1 && D===1'b0)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A===1'b0 && C===1'b1 && D===1'b1)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A===1'b1 && C===1'b0 && D===1'b0)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A===1'b1 && C===1'b0 && D===1'b1)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A===1'b1 && C===1'b1 && D===1'b0)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A===1'b1 && C===1'b1 && D===1'b1)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	ifnone
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A===1'b0 && B===1'b0 && D===1'b0)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A===1'b0 && B===1'b0 && D===1'b1)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && D===1'b0)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && D===1'b1)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && D===1'b0)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && D===1'b1)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b1 && D===1'b0)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b1 && D===1'b1)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	ifnone
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A===1'b0 && B===1'b0 && C===1'b0)
	// comb arc D --> Z
	 (D => Z) = (1.0,1.0);

	if(A===1'b0 && B===1'b0 && C===1'b1)
	// comb arc D --> Z
	 (D => Z) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && C===1'b0)
	// comb arc D --> Z
	 (D => Z) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && C===1'b1)
	// comb arc D --> Z
	 (D => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && C===1'b0)
	// comb arc D --> Z
	 (D => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && C===1'b1)
	// comb arc D --> Z
	 (D => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b1 && C===1'b0)
	// comb arc D --> Z
	 (D => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b1 && C===1'b1)
	// comb arc D --> Z
	 (D => Z) = (1.0,1.0);

	ifnone
	// comb arc D --> Z
	 (D => Z) = (1.0,1.0);

	if(A===1'b0 && B===1'b0 && C===1'b0 && D===1'b1 && S1===1'b1)
	// comb arc S0 --> Z
	 (S0 => Z) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && C===1'b0 && D===1'b0 && S1===1'b0)
	// comb arc S0 --> Z
	 (S0 => Z) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && C===1'b0 && D===1'b1 && S1===1'b0)
	// comb arc S0 --> Z
	 (S0 => Z) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && C===1'b0 && D===1'b1 && S1===1'b1)
	// comb arc S0 --> Z
	 (S0 => Z) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && C===1'b1 && D===1'b0 && S1===1'b0)
	// comb arc S0 --> Z
	 (S0 => Z) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && C===1'b1 && D===1'b1 && S1===1'b0)
	// comb arc S0 --> Z
	 (S0 => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && C===1'b0 && D===1'b1 && S1===1'b1)
	// comb arc S0 --> Z
	 (S0 => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b1 && C===1'b0 && D===1'b1 && S1===1'b1)
	// comb arc S0 --> Z
	 (S0 => Z) = (1.0,1.0);

	ifnone
	// comb arc posedge S0 --> (Z:S0)
	 (posedge S0 => (Z:S0)) = (1.0,1.0);

	ifnone
	// comb arc negedge S0 --> (Z:S0)
	 (negedge S0 => (Z:S0)) = (1.0,1.0);

	if(A===1'b0 && B===1'b0 && C===1'b1 && D===1'b0 && S1===1'b1)
	// comb arc S0 --> Z
	 (S0 => Z) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && C===1'b1 && D===1'b0 && S1===1'b1)
	// comb arc S0 --> Z
	 (S0 => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && C===1'b0 && D===1'b0 && S1===1'b0)
	// comb arc S0 --> Z
	 (S0 => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && C===1'b0 && D===1'b1 && S1===1'b0)
	// comb arc S0 --> Z
	 (S0 => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && C===1'b1 && D===1'b0 && S1===1'b0)
	// comb arc S0 --> Z
	 (S0 => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && C===1'b1 && D===1'b0 && S1===1'b1)
	// comb arc S0 --> Z
	 (S0 => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && C===1'b1 && D===1'b1 && S1===1'b0)
	// comb arc S0 --> Z
	 (S0 => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b1 && C===1'b1 && D===1'b0 && S1===1'b1)
	// comb arc S0 --> Z
	 (S0 => Z) = (1.0,1.0);

	if(A===1'b0 && B===1'b0 && C===1'b0 && D===1'b1 && S0===1'b1)
	// comb arc S1 --> Z
	 (S1 => Z) = (1.0,1.0);

	if(A===1'b0 && B===1'b0 && C===1'b1 && D===1'b0 && S0===1'b0)
	// comb arc S1 --> Z
	 (S1 => Z) = (1.0,1.0);

	if(A===1'b0 && B===1'b0 && C===1'b1 && D===1'b1 && S0===1'b0)
	// comb arc S1 --> Z
	 (S1 => Z) = (1.0,1.0);

	if(A===1'b0 && B===1'b0 && C===1'b1 && D===1'b1 && S0===1'b1)
	// comb arc S1 --> Z
	 (S1 => Z) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && C===1'b1 && D===1'b0 && S0===1'b0)
	// comb arc S1 --> Z
	 (S1 => Z) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && C===1'b1 && D===1'b1 && S0===1'b0)
	// comb arc S1 --> Z
	 (S1 => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && C===1'b0 && D===1'b1 && S0===1'b1)
	// comb arc S1 --> Z
	 (S1 => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && C===1'b1 && D===1'b1 && S0===1'b1)
	// comb arc S1 --> Z
	 (S1 => Z) = (1.0,1.0);

	ifnone
	// comb arc posedge S1 --> (Z:S1)
	 (posedge S1 => (Z:S1)) = (1.0,1.0);

	ifnone
	// comb arc negedge S1 --> (Z:S1)
	 (negedge S1 => (Z:S1)) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && C===1'b0 && D===1'b0 && S0===1'b1)
	// comb arc S1 --> Z
	 (S1 => Z) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && C===1'b1 && D===1'b0 && S0===1'b1)
	// comb arc S1 --> Z
	 (S1 => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && C===1'b0 && D===1'b0 && S0===1'b0)
	// comb arc S1 --> Z
	 (S1 => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && C===1'b0 && D===1'b1 && S0===1'b0)
	// comb arc S1 --> Z
	 (S1 => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b1 && C===1'b0 && D===1'b0 && S0===1'b0)
	// comb arc S1 --> Z
	 (S1 => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b1 && C===1'b0 && D===1'b0 && S0===1'b1)
	// comb arc S1 --> Z
	 (S1 => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b1 && C===1'b0 && D===1'b1 && S0===1'b0)
	// comb arc S1 --> Z
	 (S1 => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b1 && C===1'b1 && D===1'b0 && S0===1'b1)
	// comb arc S1 --> Z
	 (S1 => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module MXB4M4HM( Z, A, B, C, D, S0, S1 , VDD, VSS);
inout VDD;
inout VSS;
input A, B, C, D, S0, S1;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	MXB4M4HM_func MXB4M4HM_behav_inst(.Z(Z),.A(A),.B(B),.C(C),.D(D),.S0(S0),.S1(S1),.VDD(VDD),.VSS(VSS));

   `else

	MXB4M4HM_func MXB4M4HM_inst(.Z(Z),.A(A),.B(B),.C(C),.D(D),.S0(S0),.S1(S1),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	if(B===1'b0 && C===1'b0 && D===1'b0)
	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	if(B===1'b0 && C===1'b0 && D===1'b1)
	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	if(B===1'b0 && C===1'b1 && D===1'b0)
	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	if(B===1'b0 && C===1'b1 && D===1'b1)
	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	if(B===1'b1 && C===1'b0 && D===1'b0)
	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	if(B===1'b1 && C===1'b0 && D===1'b1)
	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	if(B===1'b1 && C===1'b1 && D===1'b0)
	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	if(B===1'b1 && C===1'b1 && D===1'b1)
	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	ifnone
	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	if(A===1'b0 && C===1'b0 && D===1'b0)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A===1'b0 && C===1'b0 && D===1'b1)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A===1'b0 && C===1'b1 && D===1'b0)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A===1'b0 && C===1'b1 && D===1'b1)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A===1'b1 && C===1'b0 && D===1'b0)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A===1'b1 && C===1'b0 && D===1'b1)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A===1'b1 && C===1'b1 && D===1'b0)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A===1'b1 && C===1'b1 && D===1'b1)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	ifnone
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A===1'b0 && B===1'b0 && D===1'b0)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A===1'b0 && B===1'b0 && D===1'b1)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && D===1'b0)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && D===1'b1)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && D===1'b0)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && D===1'b1)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b1 && D===1'b0)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b1 && D===1'b1)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	ifnone
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A===1'b0 && B===1'b0 && C===1'b0)
	// comb arc D --> Z
	 (D => Z) = (1.0,1.0);

	if(A===1'b0 && B===1'b0 && C===1'b1)
	// comb arc D --> Z
	 (D => Z) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && C===1'b0)
	// comb arc D --> Z
	 (D => Z) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && C===1'b1)
	// comb arc D --> Z
	 (D => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && C===1'b0)
	// comb arc D --> Z
	 (D => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && C===1'b1)
	// comb arc D --> Z
	 (D => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b1 && C===1'b0)
	// comb arc D --> Z
	 (D => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b1 && C===1'b1)
	// comb arc D --> Z
	 (D => Z) = (1.0,1.0);

	ifnone
	// comb arc D --> Z
	 (D => Z) = (1.0,1.0);

	if(A===1'b0 && B===1'b0 && C===1'b0 && D===1'b1 && S1===1'b1)
	// comb arc S0 --> Z
	 (S0 => Z) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && C===1'b0 && D===1'b0 && S1===1'b0)
	// comb arc S0 --> Z
	 (S0 => Z) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && C===1'b0 && D===1'b1 && S1===1'b0)
	// comb arc S0 --> Z
	 (S0 => Z) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && C===1'b0 && D===1'b1 && S1===1'b1)
	// comb arc S0 --> Z
	 (S0 => Z) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && C===1'b1 && D===1'b0 && S1===1'b0)
	// comb arc S0 --> Z
	 (S0 => Z) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && C===1'b1 && D===1'b1 && S1===1'b0)
	// comb arc S0 --> Z
	 (S0 => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && C===1'b0 && D===1'b1 && S1===1'b1)
	// comb arc S0 --> Z
	 (S0 => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b1 && C===1'b0 && D===1'b1 && S1===1'b1)
	// comb arc S0 --> Z
	 (S0 => Z) = (1.0,1.0);

	ifnone
	// comb arc posedge S0 --> (Z:S0)
	 (posedge S0 => (Z:S0)) = (1.0,1.0);

	ifnone
	// comb arc negedge S0 --> (Z:S0)
	 (negedge S0 => (Z:S0)) = (1.0,1.0);

	if(A===1'b0 && B===1'b0 && C===1'b1 && D===1'b0 && S1===1'b1)
	// comb arc S0 --> Z
	 (S0 => Z) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && C===1'b1 && D===1'b0 && S1===1'b1)
	// comb arc S0 --> Z
	 (S0 => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && C===1'b0 && D===1'b0 && S1===1'b0)
	// comb arc S0 --> Z
	 (S0 => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && C===1'b0 && D===1'b1 && S1===1'b0)
	// comb arc S0 --> Z
	 (S0 => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && C===1'b1 && D===1'b0 && S1===1'b0)
	// comb arc S0 --> Z
	 (S0 => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && C===1'b1 && D===1'b0 && S1===1'b1)
	// comb arc S0 --> Z
	 (S0 => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && C===1'b1 && D===1'b1 && S1===1'b0)
	// comb arc S0 --> Z
	 (S0 => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b1 && C===1'b1 && D===1'b0 && S1===1'b1)
	// comb arc S0 --> Z
	 (S0 => Z) = (1.0,1.0);

	if(A===1'b0 && B===1'b0 && C===1'b0 && D===1'b1 && S0===1'b1)
	// comb arc S1 --> Z
	 (S1 => Z) = (1.0,1.0);

	if(A===1'b0 && B===1'b0 && C===1'b1 && D===1'b0 && S0===1'b0)
	// comb arc S1 --> Z
	 (S1 => Z) = (1.0,1.0);

	if(A===1'b0 && B===1'b0 && C===1'b1 && D===1'b1 && S0===1'b0)
	// comb arc S1 --> Z
	 (S1 => Z) = (1.0,1.0);

	if(A===1'b0 && B===1'b0 && C===1'b1 && D===1'b1 && S0===1'b1)
	// comb arc S1 --> Z
	 (S1 => Z) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && C===1'b1 && D===1'b0 && S0===1'b0)
	// comb arc S1 --> Z
	 (S1 => Z) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && C===1'b1 && D===1'b1 && S0===1'b0)
	// comb arc S1 --> Z
	 (S1 => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && C===1'b0 && D===1'b1 && S0===1'b1)
	// comb arc S1 --> Z
	 (S1 => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && C===1'b1 && D===1'b1 && S0===1'b1)
	// comb arc S1 --> Z
	 (S1 => Z) = (1.0,1.0);

	ifnone
	// comb arc posedge S1 --> (Z:S1)
	 (posedge S1 => (Z:S1)) = (1.0,1.0);

	ifnone
	// comb arc negedge S1 --> (Z:S1)
	 (negedge S1 => (Z:S1)) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && C===1'b0 && D===1'b0 && S0===1'b1)
	// comb arc S1 --> Z
	 (S1 => Z) = (1.0,1.0);

	if(A===1'b0 && B===1'b1 && C===1'b1 && D===1'b0 && S0===1'b1)
	// comb arc S1 --> Z
	 (S1 => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && C===1'b0 && D===1'b0 && S0===1'b0)
	// comb arc S1 --> Z
	 (S1 => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b0 && C===1'b0 && D===1'b1 && S0===1'b0)
	// comb arc S1 --> Z
	 (S1 => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b1 && C===1'b0 && D===1'b0 && S0===1'b0)
	// comb arc S1 --> Z
	 (S1 => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b1 && C===1'b0 && D===1'b0 && S0===1'b1)
	// comb arc S1 --> Z
	 (S1 => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b1 && C===1'b0 && D===1'b1 && S0===1'b0)
	// comb arc S1 --> Z
	 (S1 => Z) = (1.0,1.0);

	if(A===1'b1 && B===1'b1 && C===1'b1 && D===1'b0 && S0===1'b1)
	// comb arc S1 --> Z
	 (S1 => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module ND2B1M0HM( Z, B, NA , VDD, VSS);
inout VDD;
inout VSS;
input B, NA;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	ND2B1M0HM_func ND2B1M0HM_behav_inst(.Z(Z),.B(B),.NA(NA),.VDD(VDD),.VSS(VSS));

   `else

	ND2B1M0HM_func ND2B1M0HM_inst(.Z(Z),.B(B),.NA(NA),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	// comb arc NA --> Z
	 (NA => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module ND2B1M12HM( Z, B, NA , VDD, VSS);
inout VDD;
inout VSS;
input B, NA;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	ND2B1M12HM_func ND2B1M12HM_behav_inst(.Z(Z),.B(B),.NA(NA),.VDD(VDD),.VSS(VSS));

   `else

	ND2B1M12HM_func ND2B1M12HM_inst(.Z(Z),.B(B),.NA(NA),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	// comb arc NA --> Z
	 (NA => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module ND2B1M1HM( Z, B, NA , VDD, VSS);
inout VDD;
inout VSS;
input B, NA;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	ND2B1M1HM_func ND2B1M1HM_behav_inst(.Z(Z),.B(B),.NA(NA),.VDD(VDD),.VSS(VSS));

   `else

	ND2B1M1HM_func ND2B1M1HM_inst(.Z(Z),.B(B),.NA(NA),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	// comb arc NA --> Z
	 (NA => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module ND2B1M2HM( Z, B, NA , VDD, VSS);
inout VDD;
inout VSS;
input B, NA;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	ND2B1M2HM_func ND2B1M2HM_behav_inst(.Z(Z),.B(B),.NA(NA),.VDD(VDD),.VSS(VSS));

   `else

	ND2B1M2HM_func ND2B1M2HM_inst(.Z(Z),.B(B),.NA(NA),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	// comb arc NA --> Z
	 (NA => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module ND2B1M4HM( Z, B, NA , VDD, VSS);
inout VDD;
inout VSS;
input B, NA;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	ND2B1M4HM_func ND2B1M4HM_behav_inst(.Z(Z),.B(B),.NA(NA),.VDD(VDD),.VSS(VSS));

   `else

	ND2B1M4HM_func ND2B1M4HM_inst(.Z(Z),.B(B),.NA(NA),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	// comb arc NA --> Z
	 (NA => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module ND2B1M8HM( Z, B, NA , VDD, VSS);
inout VDD;
inout VSS;
input B, NA;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	ND2B1M8HM_func ND2B1M8HM_behav_inst(.Z(Z),.B(B),.NA(NA),.VDD(VDD),.VSS(VSS));

   `else

	ND2B1M8HM_func ND2B1M8HM_inst(.Z(Z),.B(B),.NA(NA),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	// comb arc NA --> Z
	 (NA => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module ND2M0HM( Z, A, B , VDD, VSS);
inout VDD;
inout VSS;
input A, B;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	ND2M0HM_func ND2M0HM_behav_inst(.Z(Z),.A(A),.B(B),.VDD(VDD),.VSS(VSS));

   `else

	ND2M0HM_func ND2M0HM_inst(.Z(Z),.A(A),.B(B),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module ND2M12HM( Z, A, B , VDD, VSS);
inout VDD;
inout VSS;
input A, B;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	ND2M12HM_func ND2M12HM_behav_inst(.Z(Z),.A(A),.B(B),.VDD(VDD),.VSS(VSS));

   `else

	ND2M12HM_func ND2M12HM_inst(.Z(Z),.A(A),.B(B),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module ND2M16HM( Z, A, B , VDD, VSS);
inout VDD;
inout VSS;
input A, B;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	ND2M16HM_func ND2M16HM_behav_inst(.Z(Z),.A(A),.B(B),.VDD(VDD),.VSS(VSS));

   `else

	ND2M16HM_func ND2M16HM_inst(.Z(Z),.A(A),.B(B),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module ND2M1HM( Z, A, B , VDD, VSS);
inout VDD;
inout VSS;
input A, B;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	ND2M1HM_func ND2M1HM_behav_inst(.Z(Z),.A(A),.B(B),.VDD(VDD),.VSS(VSS));

   `else

	ND2M1HM_func ND2M1HM_inst(.Z(Z),.A(A),.B(B),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module ND2M2HM( Z, A, B , VDD, VSS);
inout VDD;
inout VSS;
input A, B;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	ND2M2HM_func ND2M2HM_behav_inst(.Z(Z),.A(A),.B(B),.VDD(VDD),.VSS(VSS));

   `else

	ND2M2HM_func ND2M2HM_inst(.Z(Z),.A(A),.B(B),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module ND2M3HM( Z, A, B , VDD, VSS);
inout VDD;
inout VSS;
input A, B;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	ND2M3HM_func ND2M3HM_behav_inst(.Z(Z),.A(A),.B(B),.VDD(VDD),.VSS(VSS));

   `else

	ND2M3HM_func ND2M3HM_inst(.Z(Z),.A(A),.B(B),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module ND2M4HM( Z, A, B , VDD, VSS);
inout VDD;
inout VSS;
input A, B;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	ND2M4HM_func ND2M4HM_behav_inst(.Z(Z),.A(A),.B(B),.VDD(VDD),.VSS(VSS));

   `else

	ND2M4HM_func ND2M4HM_inst(.Z(Z),.A(A),.B(B),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module ND2M5HM( Z, A, B , VDD, VSS);
inout VDD;
inout VSS;
input A, B;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	ND2M5HM_func ND2M5HM_behav_inst(.Z(Z),.A(A),.B(B),.VDD(VDD),.VSS(VSS));

   `else

	ND2M5HM_func ND2M5HM_inst(.Z(Z),.A(A),.B(B),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module ND2M6HM( Z, A, B , VDD, VSS);
inout VDD;
inout VSS;
input A, B;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	ND2M6HM_func ND2M6HM_behav_inst(.Z(Z),.A(A),.B(B),.VDD(VDD),.VSS(VSS));

   `else

	ND2M6HM_func ND2M6HM_inst(.Z(Z),.A(A),.B(B),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module ND2M8HM( Z, A, B , VDD, VSS);
inout VDD;
inout VSS;
input A, B;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	ND2M8HM_func ND2M8HM_behav_inst(.Z(Z),.A(A),.B(B),.VDD(VDD),.VSS(VSS));

   `else

	ND2M8HM_func ND2M8HM_inst(.Z(Z),.A(A),.B(B),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module ND3B1M0HM( Z, B, C, NA , VDD, VSS);
inout VDD;
inout VSS;
input B, C, NA;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	ND3B1M0HM_func ND3B1M0HM_behav_inst(.Z(Z),.B(B),.C(C),.NA(NA),.VDD(VDD),.VSS(VSS));

   `else

	ND3B1M0HM_func ND3B1M0HM_inst(.Z(Z),.B(B),.C(C),.NA(NA),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	// comb arc NA --> Z
	 (NA => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module ND3B1M1HM( Z, B, C, NA , VDD, VSS);
inout VDD;
inout VSS;
input B, C, NA;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	ND3B1M1HM_func ND3B1M1HM_behav_inst(.Z(Z),.B(B),.C(C),.NA(NA),.VDD(VDD),.VSS(VSS));

   `else

	ND3B1M1HM_func ND3B1M1HM_inst(.Z(Z),.B(B),.C(C),.NA(NA),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	// comb arc NA --> Z
	 (NA => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module ND3B1M2HM( Z, B, C, NA , VDD, VSS);
inout VDD;
inout VSS;
input B, C, NA;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	ND3B1M2HM_func ND3B1M2HM_behav_inst(.Z(Z),.B(B),.C(C),.NA(NA),.VDD(VDD),.VSS(VSS));

   `else

	ND3B1M2HM_func ND3B1M2HM_inst(.Z(Z),.B(B),.C(C),.NA(NA),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	// comb arc NA --> Z
	 (NA => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module ND3B1M4HM( Z, B, C, NA , VDD, VSS);
inout VDD;
inout VSS;
input B, C, NA;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	ND3B1M4HM_func ND3B1M4HM_behav_inst(.Z(Z),.B(B),.C(C),.NA(NA),.VDD(VDD),.VSS(VSS));

   `else

	ND3B1M4HM_func ND3B1M4HM_inst(.Z(Z),.B(B),.C(C),.NA(NA),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	// comb arc NA --> Z
	 (NA => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module ND3B1M8HM( Z, B, C, NA , VDD, VSS);
inout VDD;
inout VSS;
input B, C, NA;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	ND3B1M8HM_func ND3B1M8HM_behav_inst(.Z(Z),.B(B),.C(C),.NA(NA),.VDD(VDD),.VSS(VSS));

   `else

	ND3B1M8HM_func ND3B1M8HM_inst(.Z(Z),.B(B),.C(C),.NA(NA),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	// comb arc NA --> Z
	 (NA => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module ND3M0HM( Z, A, B, C , VDD, VSS);
inout VDD;
inout VSS;
input A, B, C;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	ND3M0HM_func ND3M0HM_behav_inst(.Z(Z),.A(A),.B(B),.C(C),.VDD(VDD),.VSS(VSS));

   `else

	ND3M0HM_func ND3M0HM_inst(.Z(Z),.A(A),.B(B),.C(C),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module ND3M12HM( Z, A, B, C , VDD, VSS);
inout VDD;
inout VSS;
input A, B, C;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	ND3M12HM_func ND3M12HM_behav_inst(.Z(Z),.A(A),.B(B),.C(C),.VDD(VDD),.VSS(VSS));

   `else

	ND3M12HM_func ND3M12HM_inst(.Z(Z),.A(A),.B(B),.C(C),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module ND3M16HM( Z, A, B, C , VDD, VSS);
inout VDD;
inout VSS;
input A, B, C;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	ND3M16HM_func ND3M16HM_behav_inst(.Z(Z),.A(A),.B(B),.C(C),.VDD(VDD),.VSS(VSS));

   `else

	ND3M16HM_func ND3M16HM_inst(.Z(Z),.A(A),.B(B),.C(C),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module ND3M1HM( Z, A, B, C , VDD, VSS);
inout VDD;
inout VSS;
input A, B, C;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	ND3M1HM_func ND3M1HM_behav_inst(.Z(Z),.A(A),.B(B),.C(C),.VDD(VDD),.VSS(VSS));

   `else

	ND3M1HM_func ND3M1HM_inst(.Z(Z),.A(A),.B(B),.C(C),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module ND3M2HM( Z, A, B, C , VDD, VSS);
inout VDD;
inout VSS;
input A, B, C;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	ND3M2HM_func ND3M2HM_behav_inst(.Z(Z),.A(A),.B(B),.C(C),.VDD(VDD),.VSS(VSS));

   `else

	ND3M2HM_func ND3M2HM_inst(.Z(Z),.A(A),.B(B),.C(C),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module ND3M3HM( Z, A, B, C , VDD, VSS);
inout VDD;
inout VSS;
input A, B, C;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	ND3M3HM_func ND3M3HM_behav_inst(.Z(Z),.A(A),.B(B),.C(C),.VDD(VDD),.VSS(VSS));

   `else

	ND3M3HM_func ND3M3HM_inst(.Z(Z),.A(A),.B(B),.C(C),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module ND3M4HM( Z, A, B, C , VDD, VSS);
inout VDD;
inout VSS;
input A, B, C;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	ND3M4HM_func ND3M4HM_behav_inst(.Z(Z),.A(A),.B(B),.C(C),.VDD(VDD),.VSS(VSS));

   `else

	ND3M4HM_func ND3M4HM_inst(.Z(Z),.A(A),.B(B),.C(C),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module ND3M6HM( Z, A, B, C , VDD, VSS);
inout VDD;
inout VSS;
input A, B, C;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	ND3M6HM_func ND3M6HM_behav_inst(.Z(Z),.A(A),.B(B),.C(C),.VDD(VDD),.VSS(VSS));

   `else

	ND3M6HM_func ND3M6HM_inst(.Z(Z),.A(A),.B(B),.C(C),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module ND3M8HM( Z, A, B, C , VDD, VSS);
inout VDD;
inout VSS;
input A, B, C;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	ND3M8HM_func ND3M8HM_behav_inst(.Z(Z),.A(A),.B(B),.C(C),.VDD(VDD),.VSS(VSS));

   `else

	ND3M8HM_func ND3M8HM_inst(.Z(Z),.A(A),.B(B),.C(C),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module ND4B1M0HM( Z, B, C, D, NA , VDD, VSS);
inout VDD;
inout VSS;
input B, C, D, NA;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	ND4B1M0HM_func ND4B1M0HM_behav_inst(.Z(Z),.B(B),.C(C),.D(D),.NA(NA),.VDD(VDD),.VSS(VSS));

   `else

	ND4B1M0HM_func ND4B1M0HM_inst(.Z(Z),.B(B),.C(C),.D(D),.NA(NA),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	// comb arc D --> Z
	 (D => Z) = (1.0,1.0);

	// comb arc NA --> Z
	 (NA => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module ND4B1M1HM( Z, B, C, D, NA , VDD, VSS);
inout VDD;
inout VSS;
input B, C, D, NA;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	ND4B1M1HM_func ND4B1M1HM_behav_inst(.Z(Z),.B(B),.C(C),.D(D),.NA(NA),.VDD(VDD),.VSS(VSS));

   `else

	ND4B1M1HM_func ND4B1M1HM_inst(.Z(Z),.B(B),.C(C),.D(D),.NA(NA),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	// comb arc D --> Z
	 (D => Z) = (1.0,1.0);

	// comb arc NA --> Z
	 (NA => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module ND4B1M2HM( Z, B, C, D, NA , VDD, VSS);
inout VDD;
inout VSS;
input B, C, D, NA;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	ND4B1M2HM_func ND4B1M2HM_behav_inst(.Z(Z),.B(B),.C(C),.D(D),.NA(NA),.VDD(VDD),.VSS(VSS));

   `else

	ND4B1M2HM_func ND4B1M2HM_inst(.Z(Z),.B(B),.C(C),.D(D),.NA(NA),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	// comb arc D --> Z
	 (D => Z) = (1.0,1.0);

	// comb arc NA --> Z
	 (NA => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module ND4B1M4HM( Z, B, C, D, NA , VDD, VSS);
inout VDD;
inout VSS;
input B, C, D, NA;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	ND4B1M4HM_func ND4B1M4HM_behav_inst(.Z(Z),.B(B),.C(C),.D(D),.NA(NA),.VDD(VDD),.VSS(VSS));

   `else

	ND4B1M4HM_func ND4B1M4HM_inst(.Z(Z),.B(B),.C(C),.D(D),.NA(NA),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	// comb arc D --> Z
	 (D => Z) = (1.0,1.0);

	// comb arc NA --> Z
	 (NA => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module ND4B1M8HM( Z, B, C, D, NA , VDD, VSS);
inout VDD;
inout VSS;
input B, C, D, NA;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	ND4B1M8HM_func ND4B1M8HM_behav_inst(.Z(Z),.B(B),.C(C),.D(D),.NA(NA),.VDD(VDD),.VSS(VSS));

   `else

	ND4B1M8HM_func ND4B1M8HM_inst(.Z(Z),.B(B),.C(C),.D(D),.NA(NA),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	// comb arc D --> Z
	 (D => Z) = (1.0,1.0);

	// comb arc NA --> Z
	 (NA => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module ND4B2M0HM( Z, C, D, NA, NB , VDD, VSS);
inout VDD;
inout VSS;
input C, D, NA, NB;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	ND4B2M0HM_func ND4B2M0HM_behav_inst(.Z(Z),.C(C),.D(D),.NA(NA),.NB(NB),.VDD(VDD),.VSS(VSS));

   `else

	ND4B2M0HM_func ND4B2M0HM_inst(.Z(Z),.C(C),.D(D),.NA(NA),.NB(NB),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	// comb arc D --> Z
	 (D => Z) = (1.0,1.0);

	// comb arc NA --> Z
	 (NA => Z) = (1.0,1.0);

	// comb arc NB --> Z
	 (NB => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module ND4B2M1HM( Z, C, D, NA, NB , VDD, VSS);
inout VDD;
inout VSS;
input C, D, NA, NB;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	ND4B2M1HM_func ND4B2M1HM_behav_inst(.Z(Z),.C(C),.D(D),.NA(NA),.NB(NB),.VDD(VDD),.VSS(VSS));

   `else

	ND4B2M1HM_func ND4B2M1HM_inst(.Z(Z),.C(C),.D(D),.NA(NA),.NB(NB),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	// comb arc D --> Z
	 (D => Z) = (1.0,1.0);

	// comb arc NA --> Z
	 (NA => Z) = (1.0,1.0);

	// comb arc NB --> Z
	 (NB => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module ND4B2M2HM( Z, C, D, NA, NB , VDD, VSS);
inout VDD;
inout VSS;
input C, D, NA, NB;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	ND4B2M2HM_func ND4B2M2HM_behav_inst(.Z(Z),.C(C),.D(D),.NA(NA),.NB(NB),.VDD(VDD),.VSS(VSS));

   `else

	ND4B2M2HM_func ND4B2M2HM_inst(.Z(Z),.C(C),.D(D),.NA(NA),.NB(NB),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	// comb arc D --> Z
	 (D => Z) = (1.0,1.0);

	// comb arc NA --> Z
	 (NA => Z) = (1.0,1.0);

	// comb arc NB --> Z
	 (NB => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module ND4B2M4HM( Z, C, D, NA, NB , VDD, VSS);
inout VDD;
inout VSS;
input C, D, NA, NB;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	ND4B2M4HM_func ND4B2M4HM_behav_inst(.Z(Z),.C(C),.D(D),.NA(NA),.NB(NB),.VDD(VDD),.VSS(VSS));

   `else

	ND4B2M4HM_func ND4B2M4HM_inst(.Z(Z),.C(C),.D(D),.NA(NA),.NB(NB),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	// comb arc D --> Z
	 (D => Z) = (1.0,1.0);

	// comb arc NA --> Z
	 (NA => Z) = (1.0,1.0);

	// comb arc NB --> Z
	 (NB => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module ND4B2M8HM( Z, C, D, NA, NB , VDD, VSS);
inout VDD;
inout VSS;
input C, D, NA, NB;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	ND4B2M8HM_func ND4B2M8HM_behav_inst(.Z(Z),.C(C),.D(D),.NA(NA),.NB(NB),.VDD(VDD),.VSS(VSS));

   `else

	ND4B2M8HM_func ND4B2M8HM_inst(.Z(Z),.C(C),.D(D),.NA(NA),.NB(NB),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	// comb arc D --> Z
	 (D => Z) = (1.0,1.0);

	// comb arc NA --> Z
	 (NA => Z) = (1.0,1.0);

	// comb arc NB --> Z
	 (NB => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module ND4M0HM( Z, A, B, C, D , VDD, VSS);
inout VDD;
inout VSS;
input A, B, C, D;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	ND4M0HM_func ND4M0HM_behav_inst(.Z(Z),.A(A),.B(B),.C(C),.D(D),.VDD(VDD),.VSS(VSS));

   `else

	ND4M0HM_func ND4M0HM_inst(.Z(Z),.A(A),.B(B),.C(C),.D(D),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	// comb arc D --> Z
	 (D => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module ND4M12HM( Z, A, B, C, D , VDD, VSS);
inout VDD;
inout VSS;
input A, B, C, D;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	ND4M12HM_func ND4M12HM_behav_inst(.Z(Z),.A(A),.B(B),.C(C),.D(D),.VDD(VDD),.VSS(VSS));

   `else

	ND4M12HM_func ND4M12HM_inst(.Z(Z),.A(A),.B(B),.C(C),.D(D),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	// comb arc D --> Z
	 (D => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module ND4M16HM( Z, A, B, C, D , VDD, VSS);
inout VDD;
inout VSS;
input A, B, C, D;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	ND4M16HM_func ND4M16HM_behav_inst(.Z(Z),.A(A),.B(B),.C(C),.D(D),.VDD(VDD),.VSS(VSS));

   `else

	ND4M16HM_func ND4M16HM_inst(.Z(Z),.A(A),.B(B),.C(C),.D(D),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	// comb arc D --> Z
	 (D => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module ND4M1HM( Z, A, B, C, D , VDD, VSS);
inout VDD;
inout VSS;
input A, B, C, D;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	ND4M1HM_func ND4M1HM_behav_inst(.Z(Z),.A(A),.B(B),.C(C),.D(D),.VDD(VDD),.VSS(VSS));

   `else

	ND4M1HM_func ND4M1HM_inst(.Z(Z),.A(A),.B(B),.C(C),.D(D),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	// comb arc D --> Z
	 (D => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module ND4M2HM( Z, A, B, C, D , VDD, VSS);
inout VDD;
inout VSS;
input A, B, C, D;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	ND4M2HM_func ND4M2HM_behav_inst(.Z(Z),.A(A),.B(B),.C(C),.D(D),.VDD(VDD),.VSS(VSS));

   `else

	ND4M2HM_func ND4M2HM_inst(.Z(Z),.A(A),.B(B),.C(C),.D(D),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	// comb arc D --> Z
	 (D => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module ND4M4HM( Z, A, B, C, D , VDD, VSS);
inout VDD;
inout VSS;
input A, B, C, D;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	ND4M4HM_func ND4M4HM_behav_inst(.Z(Z),.A(A),.B(B),.C(C),.D(D),.VDD(VDD),.VSS(VSS));

   `else

	ND4M4HM_func ND4M4HM_inst(.Z(Z),.A(A),.B(B),.C(C),.D(D),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	// comb arc D --> Z
	 (D => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module ND4M6HM( Z, A, B, C, D , VDD, VSS);
inout VDD;
inout VSS;
input A, B, C, D;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	ND4M6HM_func ND4M6HM_behav_inst(.Z(Z),.A(A),.B(B),.C(C),.D(D),.VDD(VDD),.VSS(VSS));

   `else

	ND4M6HM_func ND4M6HM_inst(.Z(Z),.A(A),.B(B),.C(C),.D(D),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	// comb arc D --> Z
	 (D => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module ND4M8HM( Z, A, B, C, D , VDD, VSS);
inout VDD;
inout VSS;
input A, B, C, D;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	ND4M8HM_func ND4M8HM_behav_inst(.Z(Z),.A(A),.B(B),.C(C),.D(D),.VDD(VDD),.VSS(VSS));

   `else

	ND4M8HM_func ND4M8HM_inst(.Z(Z),.A(A),.B(B),.C(C),.D(D),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	// comb arc D --> Z
	 (D => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module NR2B1M0HM( Z, B, NA , VDD, VSS);
inout VDD;
inout VSS;
input B, NA;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	NR2B1M0HM_func NR2B1M0HM_behav_inst(.Z(Z),.B(B),.NA(NA),.VDD(VDD),.VSS(VSS));

   `else

	NR2B1M0HM_func NR2B1M0HM_inst(.Z(Z),.B(B),.NA(NA),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	// comb arc NA --> Z
	 (NA => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module NR2B1M12HM( Z, B, NA , VDD, VSS);
inout VDD;
inout VSS;
input B, NA;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	NR2B1M12HM_func NR2B1M12HM_behav_inst(.Z(Z),.B(B),.NA(NA),.VDD(VDD),.VSS(VSS));

   `else

	NR2B1M12HM_func NR2B1M12HM_inst(.Z(Z),.B(B),.NA(NA),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	// comb arc NA --> Z
	 (NA => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module NR2B1M1HM( Z, B, NA , VDD, VSS);
inout VDD;
inout VSS;
input B, NA;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	NR2B1M1HM_func NR2B1M1HM_behav_inst(.Z(Z),.B(B),.NA(NA),.VDD(VDD),.VSS(VSS));

   `else

	NR2B1M1HM_func NR2B1M1HM_inst(.Z(Z),.B(B),.NA(NA),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	// comb arc NA --> Z
	 (NA => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module NR2B1M2HM( Z, B, NA , VDD, VSS);
inout VDD;
inout VSS;
input B, NA;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	NR2B1M2HM_func NR2B1M2HM_behav_inst(.Z(Z),.B(B),.NA(NA),.VDD(VDD),.VSS(VSS));

   `else

	NR2B1M2HM_func NR2B1M2HM_inst(.Z(Z),.B(B),.NA(NA),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	// comb arc NA --> Z
	 (NA => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module NR2B1M4HM( Z, B, NA , VDD, VSS);
inout VDD;
inout VSS;
input B, NA;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	NR2B1M4HM_func NR2B1M4HM_behav_inst(.Z(Z),.B(B),.NA(NA),.VDD(VDD),.VSS(VSS));

   `else

	NR2B1M4HM_func NR2B1M4HM_inst(.Z(Z),.B(B),.NA(NA),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	// comb arc NA --> Z
	 (NA => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module NR2B1M8HM( Z, B, NA , VDD, VSS);
inout VDD;
inout VSS;
input B, NA;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	NR2B1M8HM_func NR2B1M8HM_behav_inst(.Z(Z),.B(B),.NA(NA),.VDD(VDD),.VSS(VSS));

   `else

	NR2B1M8HM_func NR2B1M8HM_inst(.Z(Z),.B(B),.NA(NA),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	// comb arc NA --> Z
	 (NA => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module NR2M0HM( Z, A, B , VDD, VSS);
inout VDD;
inout VSS;
input A, B;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	NR2M0HM_func NR2M0HM_behav_inst(.Z(Z),.A(A),.B(B),.VDD(VDD),.VSS(VSS));

   `else

	NR2M0HM_func NR2M0HM_inst(.Z(Z),.A(A),.B(B),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module NR2M12HM( Z, A, B , VDD, VSS);
inout VDD;
inout VSS;
input A, B;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	NR2M12HM_func NR2M12HM_behav_inst(.Z(Z),.A(A),.B(B),.VDD(VDD),.VSS(VSS));

   `else

	NR2M12HM_func NR2M12HM_inst(.Z(Z),.A(A),.B(B),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module NR2M16HM( Z, A, B , VDD, VSS);
inout VDD;
inout VSS;
input A, B;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	NR2M16HM_func NR2M16HM_behav_inst(.Z(Z),.A(A),.B(B),.VDD(VDD),.VSS(VSS));

   `else

	NR2M16HM_func NR2M16HM_inst(.Z(Z),.A(A),.B(B),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module NR2M1HM( Z, A, B , VDD, VSS);
inout VDD;
inout VSS;
input A, B;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	NR2M1HM_func NR2M1HM_behav_inst(.Z(Z),.A(A),.B(B),.VDD(VDD),.VSS(VSS));

   `else

	NR2M1HM_func NR2M1HM_inst(.Z(Z),.A(A),.B(B),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module NR2M2HM( Z, A, B , VDD, VSS);
inout VDD;
inout VSS;
input A, B;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	NR2M2HM_func NR2M2HM_behav_inst(.Z(Z),.A(A),.B(B),.VDD(VDD),.VSS(VSS));

   `else

	NR2M2HM_func NR2M2HM_inst(.Z(Z),.A(A),.B(B),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module NR2M3HM( Z, A, B , VDD, VSS);
inout VDD;
inout VSS;
input A, B;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	NR2M3HM_func NR2M3HM_behav_inst(.Z(Z),.A(A),.B(B),.VDD(VDD),.VSS(VSS));

   `else

	NR2M3HM_func NR2M3HM_inst(.Z(Z),.A(A),.B(B),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module NR2M4HM( Z, A, B , VDD, VSS);
inout VDD;
inout VSS;
input A, B;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	NR2M4HM_func NR2M4HM_behav_inst(.Z(Z),.A(A),.B(B),.VDD(VDD),.VSS(VSS));

   `else

	NR2M4HM_func NR2M4HM_inst(.Z(Z),.A(A),.B(B),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module NR2M5HM( Z, A, B , VDD, VSS);
inout VDD;
inout VSS;
input A, B;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	NR2M5HM_func NR2M5HM_behav_inst(.Z(Z),.A(A),.B(B),.VDD(VDD),.VSS(VSS));

   `else

	NR2M5HM_func NR2M5HM_inst(.Z(Z),.A(A),.B(B),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module NR2M6HM( Z, A, B , VDD, VSS);
inout VDD;
inout VSS;
input A, B;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	NR2M6HM_func NR2M6HM_behav_inst(.Z(Z),.A(A),.B(B),.VDD(VDD),.VSS(VSS));

   `else

	NR2M6HM_func NR2M6HM_inst(.Z(Z),.A(A),.B(B),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module NR2M8HM( Z, A, B , VDD, VSS);
inout VDD;
inout VSS;
input A, B;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	NR2M8HM_func NR2M8HM_behav_inst(.Z(Z),.A(A),.B(B),.VDD(VDD),.VSS(VSS));

   `else

	NR2M8HM_func NR2M8HM_inst(.Z(Z),.A(A),.B(B),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module NR3B1M0HM( Z, B, C, NA , VDD, VSS);
inout VDD;
inout VSS;
input B, C, NA;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	NR3B1M0HM_func NR3B1M0HM_behav_inst(.Z(Z),.B(B),.C(C),.NA(NA),.VDD(VDD),.VSS(VSS));

   `else

	NR3B1M0HM_func NR3B1M0HM_inst(.Z(Z),.B(B),.C(C),.NA(NA),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	// comb arc NA --> Z
	 (NA => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module NR3B1M1HM( Z, B, C, NA , VDD, VSS);
inout VDD;
inout VSS;
input B, C, NA;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	NR3B1M1HM_func NR3B1M1HM_behav_inst(.Z(Z),.B(B),.C(C),.NA(NA),.VDD(VDD),.VSS(VSS));

   `else

	NR3B1M1HM_func NR3B1M1HM_inst(.Z(Z),.B(B),.C(C),.NA(NA),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	// comb arc NA --> Z
	 (NA => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module NR3B1M2HM( Z, B, C, NA , VDD, VSS);
inout VDD;
inout VSS;
input B, C, NA;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	NR3B1M2HM_func NR3B1M2HM_behav_inst(.Z(Z),.B(B),.C(C),.NA(NA),.VDD(VDD),.VSS(VSS));

   `else

	NR3B1M2HM_func NR3B1M2HM_inst(.Z(Z),.B(B),.C(C),.NA(NA),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	// comb arc NA --> Z
	 (NA => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module NR3B1M4HM( Z, B, C, NA , VDD, VSS);
inout VDD;
inout VSS;
input B, C, NA;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	NR3B1M4HM_func NR3B1M4HM_behav_inst(.Z(Z),.B(B),.C(C),.NA(NA),.VDD(VDD),.VSS(VSS));

   `else

	NR3B1M4HM_func NR3B1M4HM_inst(.Z(Z),.B(B),.C(C),.NA(NA),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	// comb arc NA --> Z
	 (NA => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module NR3B1M8HM( Z, B, C, NA , VDD, VSS);
inout VDD;
inout VSS;
input B, C, NA;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	NR3B1M8HM_func NR3B1M8HM_behav_inst(.Z(Z),.B(B),.C(C),.NA(NA),.VDD(VDD),.VSS(VSS));

   `else

	NR3B1M8HM_func NR3B1M8HM_inst(.Z(Z),.B(B),.C(C),.NA(NA),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	// comb arc NA --> Z
	 (NA => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module NR3M0HM( Z, A, B, C , VDD, VSS);
inout VDD;
inout VSS;
input A, B, C;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	NR3M0HM_func NR3M0HM_behav_inst(.Z(Z),.A(A),.B(B),.C(C),.VDD(VDD),.VSS(VSS));

   `else

	NR3M0HM_func NR3M0HM_inst(.Z(Z),.A(A),.B(B),.C(C),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module NR3M12HM( Z, A, B, C , VDD, VSS);
inout VDD;
inout VSS;
input A, B, C;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	NR3M12HM_func NR3M12HM_behav_inst(.Z(Z),.A(A),.B(B),.C(C),.VDD(VDD),.VSS(VSS));

   `else

	NR3M12HM_func NR3M12HM_inst(.Z(Z),.A(A),.B(B),.C(C),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module NR3M16HM( Z, A, B, C , VDD, VSS);
inout VDD;
inout VSS;
input A, B, C;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	NR3M16HM_func NR3M16HM_behav_inst(.Z(Z),.A(A),.B(B),.C(C),.VDD(VDD),.VSS(VSS));

   `else

	NR3M16HM_func NR3M16HM_inst(.Z(Z),.A(A),.B(B),.C(C),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module NR3M1HM( Z, A, B, C , VDD, VSS);
inout VDD;
inout VSS;
input A, B, C;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	NR3M1HM_func NR3M1HM_behav_inst(.Z(Z),.A(A),.B(B),.C(C),.VDD(VDD),.VSS(VSS));

   `else

	NR3M1HM_func NR3M1HM_inst(.Z(Z),.A(A),.B(B),.C(C),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module NR3M2HM( Z, A, B, C , VDD, VSS);
inout VDD;
inout VSS;
input A, B, C;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	NR3M2HM_func NR3M2HM_behav_inst(.Z(Z),.A(A),.B(B),.C(C),.VDD(VDD),.VSS(VSS));

   `else

	NR3M2HM_func NR3M2HM_inst(.Z(Z),.A(A),.B(B),.C(C),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module NR3M4HM( Z, A, B, C , VDD, VSS);
inout VDD;
inout VSS;
input A, B, C;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	NR3M4HM_func NR3M4HM_behav_inst(.Z(Z),.A(A),.B(B),.C(C),.VDD(VDD),.VSS(VSS));

   `else

	NR3M4HM_func NR3M4HM_inst(.Z(Z),.A(A),.B(B),.C(C),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module NR3M6HM( Z, A, B, C , VDD, VSS);
inout VDD;
inout VSS;
input A, B, C;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	NR3M6HM_func NR3M6HM_behav_inst(.Z(Z),.A(A),.B(B),.C(C),.VDD(VDD),.VSS(VSS));

   `else

	NR3M6HM_func NR3M6HM_inst(.Z(Z),.A(A),.B(B),.C(C),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module NR3M8HM( Z, A, B, C , VDD, VSS);
inout VDD;
inout VSS;
input A, B, C;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	NR3M8HM_func NR3M8HM_behav_inst(.Z(Z),.A(A),.B(B),.C(C),.VDD(VDD),.VSS(VSS));

   `else

	NR3M8HM_func NR3M8HM_inst(.Z(Z),.A(A),.B(B),.C(C),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module NR4B1M0HM( Z, B, C, D, NA , VDD, VSS);
inout VDD;
inout VSS;
input B, C, D, NA;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	NR4B1M0HM_func NR4B1M0HM_behav_inst(.Z(Z),.B(B),.C(C),.D(D),.NA(NA),.VDD(VDD),.VSS(VSS));

   `else

	NR4B1M0HM_func NR4B1M0HM_inst(.Z(Z),.B(B),.C(C),.D(D),.NA(NA),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	// comb arc D --> Z
	 (D => Z) = (1.0,1.0);

	// comb arc NA --> Z
	 (NA => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module NR4B1M1HM( Z, B, C, D, NA , VDD, VSS);
inout VDD;
inout VSS;
input B, C, D, NA;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	NR4B1M1HM_func NR4B1M1HM_behav_inst(.Z(Z),.B(B),.C(C),.D(D),.NA(NA),.VDD(VDD),.VSS(VSS));

   `else

	NR4B1M1HM_func NR4B1M1HM_inst(.Z(Z),.B(B),.C(C),.D(D),.NA(NA),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	// comb arc D --> Z
	 (D => Z) = (1.0,1.0);

	// comb arc NA --> Z
	 (NA => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module NR4B1M2HM( Z, B, C, D, NA , VDD, VSS);
inout VDD;
inout VSS;
input B, C, D, NA;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	NR4B1M2HM_func NR4B1M2HM_behav_inst(.Z(Z),.B(B),.C(C),.D(D),.NA(NA),.VDD(VDD),.VSS(VSS));

   `else

	NR4B1M2HM_func NR4B1M2HM_inst(.Z(Z),.B(B),.C(C),.D(D),.NA(NA),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	// comb arc D --> Z
	 (D => Z) = (1.0,1.0);

	// comb arc NA --> Z
	 (NA => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module NR4B1M4HM( Z, B, C, D, NA , VDD, VSS);
inout VDD;
inout VSS;
input B, C, D, NA;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	NR4B1M4HM_func NR4B1M4HM_behav_inst(.Z(Z),.B(B),.C(C),.D(D),.NA(NA),.VDD(VDD),.VSS(VSS));

   `else

	NR4B1M4HM_func NR4B1M4HM_inst(.Z(Z),.B(B),.C(C),.D(D),.NA(NA),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	// comb arc D --> Z
	 (D => Z) = (1.0,1.0);

	// comb arc NA --> Z
	 (NA => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module NR4B1M8HM( Z, B, C, D, NA , VDD, VSS);
inout VDD;
inout VSS;
input B, C, D, NA;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	NR4B1M8HM_func NR4B1M8HM_behav_inst(.Z(Z),.B(B),.C(C),.D(D),.NA(NA),.VDD(VDD),.VSS(VSS));

   `else

	NR4B1M8HM_func NR4B1M8HM_inst(.Z(Z),.B(B),.C(C),.D(D),.NA(NA),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	// comb arc D --> Z
	 (D => Z) = (1.0,1.0);

	// comb arc NA --> Z
	 (NA => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module NR4B2M0HM( Z, C, D, NA, NB , VDD, VSS);
inout VDD;
inout VSS;
input C, D, NA, NB;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	NR4B2M0HM_func NR4B2M0HM_behav_inst(.Z(Z),.C(C),.D(D),.NA(NA),.NB(NB),.VDD(VDD),.VSS(VSS));

   `else

	NR4B2M0HM_func NR4B2M0HM_inst(.Z(Z),.C(C),.D(D),.NA(NA),.NB(NB),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	// comb arc D --> Z
	 (D => Z) = (1.0,1.0);

	// comb arc NA --> Z
	 (NA => Z) = (1.0,1.0);

	// comb arc NB --> Z
	 (NB => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module NR4B2M1HM( Z, C, D, NA, NB , VDD, VSS);
inout VDD;
inout VSS;
input C, D, NA, NB;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	NR4B2M1HM_func NR4B2M1HM_behav_inst(.Z(Z),.C(C),.D(D),.NA(NA),.NB(NB),.VDD(VDD),.VSS(VSS));

   `else

	NR4B2M1HM_func NR4B2M1HM_inst(.Z(Z),.C(C),.D(D),.NA(NA),.NB(NB),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	// comb arc D --> Z
	 (D => Z) = (1.0,1.0);

	// comb arc NA --> Z
	 (NA => Z) = (1.0,1.0);

	// comb arc NB --> Z
	 (NB => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module NR4B2M2HM( Z, C, D, NA, NB , VDD, VSS);
inout VDD;
inout VSS;
input C, D, NA, NB;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	NR4B2M2HM_func NR4B2M2HM_behav_inst(.Z(Z),.C(C),.D(D),.NA(NA),.NB(NB),.VDD(VDD),.VSS(VSS));

   `else

	NR4B2M2HM_func NR4B2M2HM_inst(.Z(Z),.C(C),.D(D),.NA(NA),.NB(NB),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	// comb arc D --> Z
	 (D => Z) = (1.0,1.0);

	// comb arc NA --> Z
	 (NA => Z) = (1.0,1.0);

	// comb arc NB --> Z
	 (NB => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module NR4B2M4HM( Z, C, D, NA, NB , VDD, VSS);
inout VDD;
inout VSS;
input C, D, NA, NB;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	NR4B2M4HM_func NR4B2M4HM_behav_inst(.Z(Z),.C(C),.D(D),.NA(NA),.NB(NB),.VDD(VDD),.VSS(VSS));

   `else

	NR4B2M4HM_func NR4B2M4HM_inst(.Z(Z),.C(C),.D(D),.NA(NA),.NB(NB),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	// comb arc D --> Z
	 (D => Z) = (1.0,1.0);

	// comb arc NA --> Z
	 (NA => Z) = (1.0,1.0);

	// comb arc NB --> Z
	 (NB => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module NR4B2M8HM( Z, C, D, NA, NB , VDD, VSS);
inout VDD;
inout VSS;
input C, D, NA, NB;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	NR4B2M8HM_func NR4B2M8HM_behav_inst(.Z(Z),.C(C),.D(D),.NA(NA),.NB(NB),.VDD(VDD),.VSS(VSS));

   `else

	NR4B2M8HM_func NR4B2M8HM_inst(.Z(Z),.C(C),.D(D),.NA(NA),.NB(NB),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	// comb arc D --> Z
	 (D => Z) = (1.0,1.0);

	// comb arc NA --> Z
	 (NA => Z) = (1.0,1.0);

	// comb arc NB --> Z
	 (NB => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module NR4M0HM( Z, A, B, C, D , VDD, VSS);
inout VDD;
inout VSS;
input A, B, C, D;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	NR4M0HM_func NR4M0HM_behav_inst(.Z(Z),.A(A),.B(B),.C(C),.D(D),.VDD(VDD),.VSS(VSS));

   `else

	NR4M0HM_func NR4M0HM_inst(.Z(Z),.A(A),.B(B),.C(C),.D(D),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	// comb arc D --> Z
	 (D => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module NR4M12HM( Z, A, B, C, D , VDD, VSS);
inout VDD;
inout VSS;
input A, B, C, D;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	NR4M12HM_func NR4M12HM_behav_inst(.Z(Z),.A(A),.B(B),.C(C),.D(D),.VDD(VDD),.VSS(VSS));

   `else

	NR4M12HM_func NR4M12HM_inst(.Z(Z),.A(A),.B(B),.C(C),.D(D),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	// comb arc D --> Z
	 (D => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module NR4M16HM( Z, A, B, C, D , VDD, VSS);
inout VDD;
inout VSS;
input A, B, C, D;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	NR4M16HM_func NR4M16HM_behav_inst(.Z(Z),.A(A),.B(B),.C(C),.D(D),.VDD(VDD),.VSS(VSS));

   `else

	NR4M16HM_func NR4M16HM_inst(.Z(Z),.A(A),.B(B),.C(C),.D(D),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	// comb arc D --> Z
	 (D => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module NR4M1HM( Z, A, B, C, D , VDD, VSS);
inout VDD;
inout VSS;
input A, B, C, D;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	NR4M1HM_func NR4M1HM_behav_inst(.Z(Z),.A(A),.B(B),.C(C),.D(D),.VDD(VDD),.VSS(VSS));

   `else

	NR4M1HM_func NR4M1HM_inst(.Z(Z),.A(A),.B(B),.C(C),.D(D),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	// comb arc D --> Z
	 (D => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module NR4M2HM( Z, A, B, C, D , VDD, VSS);
inout VDD;
inout VSS;
input A, B, C, D;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	NR4M2HM_func NR4M2HM_behav_inst(.Z(Z),.A(A),.B(B),.C(C),.D(D),.VDD(VDD),.VSS(VSS));

   `else

	NR4M2HM_func NR4M2HM_inst(.Z(Z),.A(A),.B(B),.C(C),.D(D),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	// comb arc D --> Z
	 (D => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module NR4M4HM( Z, A, B, C, D , VDD, VSS);
inout VDD;
inout VSS;
input A, B, C, D;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	NR4M4HM_func NR4M4HM_behav_inst(.Z(Z),.A(A),.B(B),.C(C),.D(D),.VDD(VDD),.VSS(VSS));

   `else

	NR4M4HM_func NR4M4HM_inst(.Z(Z),.A(A),.B(B),.C(C),.D(D),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	// comb arc D --> Z
	 (D => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module NR4M6HM( Z, A, B, C, D , VDD, VSS);
inout VDD;
inout VSS;
input A, B, C, D;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	NR4M6HM_func NR4M6HM_behav_inst(.Z(Z),.A(A),.B(B),.C(C),.D(D),.VDD(VDD),.VSS(VSS));

   `else

	NR4M6HM_func NR4M6HM_inst(.Z(Z),.A(A),.B(B),.C(C),.D(D),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	// comb arc D --> Z
	 (D => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module NR4M8HM( Z, A, B, C, D , VDD, VSS);
inout VDD;
inout VSS;
input A, B, C, D;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	NR4M8HM_func NR4M8HM_behav_inst(.Z(Z),.A(A),.B(B),.C(C),.D(D),.VDD(VDD),.VSS(VSS));

   `else

	NR4M8HM_func NR4M8HM_inst(.Z(Z),.A(A),.B(B),.C(C),.D(D),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc A --> Z
	 (A => Z) = (1.0,1.0);

	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	// comb arc D --> Z
	 (D => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module OA211M0HM( Z, A1, A2, B, C , VDD, VSS);
inout VDD;
inout VSS;
input A1, A2, B, C;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	OA211M0HM_func OA211M0HM_behav_inst(.Z(Z),.A1(A1),.A2(A2),.B(B),.C(C),.VDD(VDD),.VSS(VSS));

   `else

	OA211M0HM_func OA211M0HM_inst(.Z(Z),.A1(A1),.A2(A2),.B(B),.C(C),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b1)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	ifnone
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b1)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	ifnone
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module OA211M1HM( Z, A1, A2, B, C , VDD, VSS);
inout VDD;
inout VSS;
input A1, A2, B, C;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	OA211M1HM_func OA211M1HM_behav_inst(.Z(Z),.A1(A1),.A2(A2),.B(B),.C(C),.VDD(VDD),.VSS(VSS));

   `else

	OA211M1HM_func OA211M1HM_inst(.Z(Z),.A1(A1),.A2(A2),.B(B),.C(C),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b1)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	ifnone
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b1)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	ifnone
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module OA211M2HM( Z, A1, A2, B, C , VDD, VSS);
inout VDD;
inout VSS;
input A1, A2, B, C;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	OA211M2HM_func OA211M2HM_behav_inst(.Z(Z),.A1(A1),.A2(A2),.B(B),.C(C),.VDD(VDD),.VSS(VSS));

   `else

	OA211M2HM_func OA211M2HM_inst(.Z(Z),.A1(A1),.A2(A2),.B(B),.C(C),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b1)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	ifnone
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b1)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	ifnone
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module OA211M4HM( Z, A1, A2, B, C , VDD, VSS);
inout VDD;
inout VSS;
input A1, A2, B, C;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	OA211M4HM_func OA211M4HM_behav_inst(.Z(Z),.A1(A1),.A2(A2),.B(B),.C(C),.VDD(VDD),.VSS(VSS));

   `else

	OA211M4HM_func OA211M4HM_inst(.Z(Z),.A1(A1),.A2(A2),.B(B),.C(C),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b1)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	ifnone
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b1)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	ifnone
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module OA211M8HM( Z, A1, A2, B, C , VDD, VSS);
inout VDD;
inout VSS;
input A1, A2, B, C;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	OA211M8HM_func OA211M8HM_behav_inst(.Z(Z),.A1(A1),.A2(A2),.B(B),.C(C),.VDD(VDD),.VSS(VSS));

   `else

	OA211M8HM_func OA211M8HM_inst(.Z(Z),.A1(A1),.A2(A2),.B(B),.C(C),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b1)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	ifnone
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b1)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	ifnone
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module OA21M0HM( Z, A1, A2, B , VDD, VSS);
inout VDD;
inout VSS;
input A1, A2, B;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	OA21M0HM_func OA21M0HM_behav_inst(.Z(Z),.A1(A1),.A2(A2),.B(B),.VDD(VDD),.VSS(VSS));

   `else

	OA21M0HM_func OA21M0HM_inst(.Z(Z),.A1(A1),.A2(A2),.B(B),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b1)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	ifnone
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module OA21M1HM( Z, A1, A2, B , VDD, VSS);
inout VDD;
inout VSS;
input A1, A2, B;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	OA21M1HM_func OA21M1HM_behav_inst(.Z(Z),.A1(A1),.A2(A2),.B(B),.VDD(VDD),.VSS(VSS));

   `else

	OA21M1HM_func OA21M1HM_inst(.Z(Z),.A1(A1),.A2(A2),.B(B),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b1)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	ifnone
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module OA21M2HM( Z, A1, A2, B , VDD, VSS);
inout VDD;
inout VSS;
input A1, A2, B;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	OA21M2HM_func OA21M2HM_behav_inst(.Z(Z),.A1(A1),.A2(A2),.B(B),.VDD(VDD),.VSS(VSS));

   `else

	OA21M2HM_func OA21M2HM_inst(.Z(Z),.A1(A1),.A2(A2),.B(B),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b1)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	ifnone
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module OA21M4HM( Z, A1, A2, B , VDD, VSS);
inout VDD;
inout VSS;
input A1, A2, B;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	OA21M4HM_func OA21M4HM_behav_inst(.Z(Z),.A1(A1),.A2(A2),.B(B),.VDD(VDD),.VSS(VSS));

   `else

	OA21M4HM_func OA21M4HM_inst(.Z(Z),.A1(A1),.A2(A2),.B(B),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b1)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	ifnone
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module OA21M8HM( Z, A1, A2, B , VDD, VSS);
inout VDD;
inout VSS;
input A1, A2, B;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	OA21M8HM_func OA21M8HM_behav_inst(.Z(Z),.A1(A1),.A2(A2),.B(B),.VDD(VDD),.VSS(VSS));

   `else

	OA21M8HM_func OA21M8HM_inst(.Z(Z),.A1(A1),.A2(A2),.B(B),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b1)
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	ifnone
	// comb arc B --> Z
	 (B => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module OA221M0HM( Z, A1, A2, B1, B2, C , VDD, VSS);
inout VDD;
inout VSS;
input A1, A2, B1, B2, C;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	OA221M0HM_func OA221M0HM_behav_inst(.Z(Z),.A1(A1),.A2(A2),.B1(B1),.B2(B2),.C(C),.VDD(VDD),.VSS(VSS));

   `else

	OA221M0HM_func OA221M0HM_inst(.Z(Z),.A1(A1),.A2(A2),.B1(B1),.B2(B2),.C(C),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	if(B1===1'b0 && B2===1'b1)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b0)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b1)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	ifnone
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b1)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b0)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b1)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	ifnone
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b1)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	ifnone
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b1)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	ifnone
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && B1===1'b0 && B2===1'b1)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && B1===1'b1 && B2===1'b0)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && B1===1'b1 && B2===1'b1)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && B1===1'b0 && B2===1'b1)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && B1===1'b1 && B2===1'b0)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && B1===1'b1 && B2===1'b1)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b1 && B1===1'b0 && B2===1'b1)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b1 && B1===1'b1 && B2===1'b0)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b1 && B1===1'b1 && B2===1'b1)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	ifnone
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module OA221M1HM( Z, A1, A2, B1, B2, C , VDD, VSS);
inout VDD;
inout VSS;
input A1, A2, B1, B2, C;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	OA221M1HM_func OA221M1HM_behav_inst(.Z(Z),.A1(A1),.A2(A2),.B1(B1),.B2(B2),.C(C),.VDD(VDD),.VSS(VSS));

   `else

	OA221M1HM_func OA221M1HM_inst(.Z(Z),.A1(A1),.A2(A2),.B1(B1),.B2(B2),.C(C),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	if(B1===1'b0 && B2===1'b1)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b0)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b1)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	ifnone
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b1)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b0)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b1)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	ifnone
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b1)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	ifnone
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b1)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	ifnone
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && B1===1'b0 && B2===1'b1)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && B1===1'b1 && B2===1'b0)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && B1===1'b1 && B2===1'b1)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && B1===1'b0 && B2===1'b1)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && B1===1'b1 && B2===1'b0)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && B1===1'b1 && B2===1'b1)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b1 && B1===1'b0 && B2===1'b1)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b1 && B1===1'b1 && B2===1'b0)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b1 && B1===1'b1 && B2===1'b1)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	ifnone
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module OA221M2HM( Z, A1, A2, B1, B2, C , VDD, VSS);
inout VDD;
inout VSS;
input A1, A2, B1, B2, C;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	OA221M2HM_func OA221M2HM_behav_inst(.Z(Z),.A1(A1),.A2(A2),.B1(B1),.B2(B2),.C(C),.VDD(VDD),.VSS(VSS));

   `else

	OA221M2HM_func OA221M2HM_inst(.Z(Z),.A1(A1),.A2(A2),.B1(B1),.B2(B2),.C(C),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	if(B1===1'b0 && B2===1'b1)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b0)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b1)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	ifnone
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b1)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b0)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b1)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	ifnone
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b1)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	ifnone
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b1)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	ifnone
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && B1===1'b0 && B2===1'b1)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && B1===1'b1 && B2===1'b0)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && B1===1'b1 && B2===1'b1)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && B1===1'b0 && B2===1'b1)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && B1===1'b1 && B2===1'b0)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && B1===1'b1 && B2===1'b1)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b1 && B1===1'b0 && B2===1'b1)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b1 && B1===1'b1 && B2===1'b0)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b1 && B1===1'b1 && B2===1'b1)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	ifnone
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module OA221M4HM( Z, A1, A2, B1, B2, C , VDD, VSS);
inout VDD;
inout VSS;
input A1, A2, B1, B2, C;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	OA221M4HM_func OA221M4HM_behav_inst(.Z(Z),.A1(A1),.A2(A2),.B1(B1),.B2(B2),.C(C),.VDD(VDD),.VSS(VSS));

   `else

	OA221M4HM_func OA221M4HM_inst(.Z(Z),.A1(A1),.A2(A2),.B1(B1),.B2(B2),.C(C),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	if(B1===1'b0 && B2===1'b1)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b0)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b1)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	ifnone
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b1)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b0)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b1)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	ifnone
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b1)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	ifnone
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b1)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	ifnone
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && B1===1'b0 && B2===1'b1)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && B1===1'b1 && B2===1'b0)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && B1===1'b1 && B2===1'b1)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && B1===1'b0 && B2===1'b1)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && B1===1'b1 && B2===1'b0)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && B1===1'b1 && B2===1'b1)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b1 && B1===1'b0 && B2===1'b1)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b1 && B1===1'b1 && B2===1'b0)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b1 && B1===1'b1 && B2===1'b1)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	ifnone
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module OA221M8HM( Z, A1, A2, B1, B2, C , VDD, VSS);
inout VDD;
inout VSS;
input A1, A2, B1, B2, C;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	OA221M8HM_func OA221M8HM_behav_inst(.Z(Z),.A1(A1),.A2(A2),.B1(B1),.B2(B2),.C(C),.VDD(VDD),.VSS(VSS));

   `else

	OA221M8HM_func OA221M8HM_inst(.Z(Z),.A1(A1),.A2(A2),.B1(B1),.B2(B2),.C(C),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	if(B1===1'b0 && B2===1'b1)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b0)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b1)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	ifnone
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b1)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b0)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b1)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	ifnone
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b1)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	ifnone
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b1)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	ifnone
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && B1===1'b0 && B2===1'b1)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && B1===1'b1 && B2===1'b0)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && B1===1'b1 && B2===1'b1)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && B1===1'b0 && B2===1'b1)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && B1===1'b1 && B2===1'b0)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && B1===1'b1 && B2===1'b1)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b1 && B1===1'b0 && B2===1'b1)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b1 && B1===1'b1 && B2===1'b0)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b1 && B1===1'b1 && B2===1'b1)
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	ifnone
	// comb arc C --> Z
	 (C => Z) = (1.0,1.0);

	// specify_block_end 

   endspecify

   `endif 

endmodule
`endcelldefine

`celldefine
module OA222M0HM( Z, A1, A2, B1, B2, C1, C2 , VDD, VSS);
inout VDD;
inout VSS;
input A1, A2, B1, B2, C1, C2;
output Z;

   `ifdef FUNCTIONAL  //  functional //

	OA222M0HM_func OA222M0HM_behav_inst(.Z(Z),.A1(A1),.A2(A2),.B1(B1),.B2(B2),.C1(C1),.C2(C2),.VDD(VDD),.VSS(VSS));

   `else

	OA222M0HM_func OA222M0HM_inst(.Z(Z),.A1(A1),.A2(A2),.B1(B1),.B2(B2),.C1(C1),.C2(C2),.VDD(VDD),.VSS(VSS));


	// spec_gates_begin


	// spec_gates_end



   specify

	// specify_block_begin 

	if(B1===1'b0 && B2===1'b1 && C1===1'b0 && C2===1'b1)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b1 && C1===1'b1 && C2===1'b0)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b1 && C1===1'b1 && C2===1'b1)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b0 && C1===1'b0 && C2===1'b1)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b0 && C1===1'b1 && C2===1'b0)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b0 && C1===1'b1 && C2===1'b1)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b1 && C1===1'b0 && C2===1'b1)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b1 && C1===1'b1 && C2===1'b0)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b1 && C1===1'b1 && C2===1'b1)
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	ifnone
	// comb arc A1 --> Z
	 (A1 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b1 && C1===1'b0 && C2===1'b1)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b1 && C1===1'b1 && C2===1'b0)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(B1===1'b0 && B2===1'b1 && C1===1'b1 && C2===1'b1)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b0 && C1===1'b0 && C2===1'b1)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b0 && C1===1'b1 && C2===1'b0)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b0 && C1===1'b1 && C2===1'b1)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b1 && C1===1'b0 && C2===1'b1)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b1 && C1===1'b1 && C2===1'b0)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(B1===1'b1 && B2===1'b1 && C1===1'b1 && C2===1'b1)
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	ifnone
	// comb arc A2 --> Z
	 (A2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && C1===1'b0 && C2===1'b1)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && C1===1'b1 && C2===1'b0)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && C1===1'b1 && C2===1'b1)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && C1===1'b0 && C2===1'b1)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && C1===1'b1 && C2===1'b0)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && C1===1'b1 && C2===1'b1)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b1 && C1===1'b0 && C2===1'b1)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b1 && C1===1'b1 && C2===1'b0)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b1 && C1===1'b1 && C2===1'b1)
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	ifnone
	// comb arc B1 --> Z
	 (B1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && C1===1'b0 && C2===1'b1)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && C1===1'b1 && C2===1'b0)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && C1===1'b1 && C2===1'b1)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && C1===1'b0 && C2===1'b1)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && C1===1'b1 && C2===1'b0)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && C1===1'b1 && C2===1'b1)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b1 && C1===1'b0 && C2===1'b1)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b1 && C1===1'b1 && C2===1'b0)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b1 && C1===1'b1 && C2===1'b1)
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	ifnone
	// comb arc B2 --> Z
	 (B2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && B1===1'b0 && B2===1'b1)
	// comb arc C1 --> Z
	 (C1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && B1===1'b1 && B2===1'b0)
	// comb arc C1 --> Z
	 (C1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && B1===1'b1 && B2===1'b1)
	// comb arc C1 --> Z
	 (C1 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && B1===1'b0 && B2===1'b1)
	// comb arc C1 --> Z
	 (C1 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && B1===1'b1 && B2===1'b0)
	// comb arc C1 --> Z
	 (C1 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && B1===1'b1 && B2===1'b1)
	// comb arc C1 --> Z
	 (C1 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b1 && B1===1'b0 && B2===1'b1)
	// comb arc C1 --> Z
	 (C1 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b1 && B1===1'b1 && B2===1'b0)
	// comb arc C1 --> Z
	 (C1 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b1 && B1===1'b1 && B2===1'b1)
	// comb arc C1 --> Z
	 (C1 => Z) = (1.0,1.0);

	ifnone
	// comb arc C1 --> Z
	 (C1 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && B1===1'b0 && B2===1'b1)
	// comb arc C2 --> Z
	 (C2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && B1===1'b1 && B2===1'b0)
	// comb arc C2 --> Z
	 (C2 => Z) = (1.0,1.0);

	if(A1===1'b0 && A2===1'b1 && B1===1'b1 && B2===1'b1)
	// comb arc C2 --> Z
	 (C2 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && B1===1'b0 && B2===1'b1)
	// comb arc C2 --> Z
	 (C2 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && B1===1'b1 && B2===1'b0)
	// comb arc C2 --> Z
	 (C2 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b0 && B1===1'b1 && B2===1'b1)
	// comb arc C2 --> Z
	 (C2 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b1 && B1===1'b0 && B2===1'b1)
	// comb arc C2 --> Z
	 (C2 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b1 && B1===1'b1 && B2===1'b0)
	// comb arc C2 --> Z
	 (C2 => Z) = (1.0,1.0);

	if(A1===1'b1 && A2===1'b1 && B1===1'b1 && B2===1'b1)
	// comb arc C2 --> Z
	 (C2 => Z) = (1.0,1.0);

	ifnone
	// comb arc C2 --> Z
	 (C2 => Z) = (1.0,1.0);

	// specify_block_end 

