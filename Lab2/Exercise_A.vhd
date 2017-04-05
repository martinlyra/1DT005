-- Exercise A: Construct and program a 3-input AND-gate
--
-- My solution:

entity AND_gate is
  port(A,B,C: in bit;
    F: out bit);
end entity AND_gate;

architecture AND_func of AND_gate is
  begin
    F <= (A and B and C);
end architecture AND_func;
