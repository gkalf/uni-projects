`timescale 1ns/1ps
module ctrl(clock,reset,send,load,baud_gen,bits_done,
shift,reset_bit_counter,tx_idle);

input clock,reset;
input send,baud_gen,bits_done;
output reg reset_bit_counter,shift,load,tx_idle;
parameter idle = 2'b01;
parameter sending = 2'b10;

reg [1:0]n_state,state;

always @(posedge clock)
begin
    if(reset == 1'b1) // go to state zero if rese
        begin
        state <= idle; 
        end
    else // otherwise update the states
        begin
        state <= n_state;
        end
end

// Mealy Design 
always @(state,send,bits_done,baud_gen)
begin
    // store current state as next
    n_state = state; // required: when no case statement is satisfied
    reset_bit_counter = 0;
    shift = 0;
	 load = 0;
	 tx_idle=0;
    case(state)
			idle:
				begin
				tx_idle = 1'b1;
				if (send == 1'b1) //when receive send signal 
					begin
						reset_bit_counter = 1'b1;//reset bit counter
						n_state = sending;      //change state
						load = 1'b1;				//and load the data to shift register
					end
				end
			sending:								// when the programm is in this state then the
				if (bits_done == 1'b1)    //transmitter is sending bits
					n_state = idle;        //stays in this state until the transmittion ends
				else                      //and that happens when the transmitter sent the
					begin                  //correct number of bits
						n_state = sending;
						if (baud_gen == 1'b1) //every time baud gen is enabled shift the data
							shift = 1'b1;
					end	
    endcase
end

endmodule
