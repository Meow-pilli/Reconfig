
# Design and Analysis of Reconfigurable systems

Design and implementation of various projects on cyclone V FPGA
<br/>
<br/>
<img src="https://raw.githubusercontent.com/Nived151/Reconfig/main/Assets/Front%20Overview.png">

<br/>
<br/>

Install [Quartus Prime Lite](https://www.intel.com/content/www/us/en/software-kit/785086/intel-quartus-prime-lite-edition-design-software-version-22-1-2-for-windows.html?) and get [License](https://licensing.intel.com/psg/s/?language=en_US) of questa RTL simulator for any other troubleshooting refer this [video](https://www.youtube.com/watch?v=W7ijDRdqEKQ) 

<br/>
<br/>

## Projects

### 1. Full-Adder

- Learn how to use a commercially available FPGA synthesis environment. 
- Create a combinational circuit using graphical design entry (schematic entry) and RTL (Verilog 
or VHDL) 
- Analyze the synthesis results and understand the FPGA resources consumed. 
- Simulate the design generating a testbench and verify the correctness of the simulation.


### 2. Led Counter

- Synthesize designs targeting a particular prototyping board. 
- Program the FPGA on a prototyping board and have a fully functional design. 
- Understand the use constraint files.  
- Learn how to interface with the prototyping board through switches and buttons. 


### 3. Sin Cosine

- Understand how to use the IPs included in Quartus Prime’s IP generator. 
- Learn how to specify synthesis options and understand their impact on the QoR. 
- Understand the impact of placement on the design using the Quartus’s Chip Planner 


### 4. Physical Design and Timing

- Understand how the physical design back-end of the FPGA tool flow. 
- Learn how to control the placement through Chip planner. 
- Understand the impact of the placement on the timing of the circuit. 
- Learn how to use a batch script to configure the FPGA directly without requiring Quartus.

### 5. VGA-FPGA Interface

- Create a VGA interface interfacing the FPGA with a monitor. 
- Prototype the design on the Terasic DE1-SoC FPGA board.  
- Understand the timing reports before and after place and route.


### 6. High Level Synthesis
- Learn how to use a commercial HLS tool. 
- Perform the 3 main HLS steps using the commercial HLS tool: 
    * Resource allocation 
    * Resource Scheduling 
    * Binding 
- Verify that the design works as expected. 
- Learn how to use the automatic testbench generator. 
- Create input stimuli files.   
- Simulate using the cycle-accurate model generator. 
- Perform a simulation using the same input vectors as for the SW verification for the RTL simulation

### 7. Sobel

- Learn how to control the synthesis result of a commercial HLS tool through different synthesis options like synthesis directives to control how to synthesize:
    * Arrays, loops and functions

### 8. Hard Processor System (HPS)

- Learn how to install Linux on the DE1-SoC board
- Understand how to write programs for the HPS using the embedded system Design.
- Driving DE1-SoC peripherals from the HPS

### 9. FPGA and HPS

- Guides project creation and Qsys configuration for LED control
- Generates HPS header file (hps_0.h) for PIO_LED component
- Driving DE1-SoC peripherals from the HPS through AXI bridge