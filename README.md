# Pattern_recognizer
Design and implementation of a 5-bit pattern recognizer on a Cyclone series FPGA. <br>
Specifications: <br>
1. Synchronous system <br>
2. Asynchronous reset <br>
3. The pattern is "11100" <br>
4. It uses two 7-segments display <br>
5. After more than 99 pattern occurances the displays show "--" <br>
6. The reset button intialize the counters to "00". <br>

Project part of the course Design of Digital Systems , UTwente , 2019 <br>
## Behavioral description
Design of a testable description of the pattern recongnizer and a testbench for functionality testing.
## Structural description
Based on the behavioral design create a hierarchical design with a top-level entity and components having the same functionality with the behavioral design.
## Golden test
Design of a golden unit for automated testing between the behavioral and the structural description.
## Back-annotation testing
After the synthesis and the timimg constraints create a post-simulation file and test it in the golden unit against the behavioral and the structural description.
