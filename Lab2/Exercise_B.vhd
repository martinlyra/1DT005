-- Exercise B: Construct and program a 3-input NAND-gate
--
-- My solution:

entity NAND_gate is
  port(A,B,C: in bit;
    F: out bit);
end entity NAND_gate;

architecture NAND_func of NAND_gate is
  begin
    F <= not (A and B and C);
end architecture NAND_func;
