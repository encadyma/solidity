contract D {
  struct S { uint a; uint b; }
}
contract C {
  function f() internal returns (uint, uint, uint, D.S[20] storage, uint) {
    (,,,D.S[10*2] storage x,) = f();
    x;
  }
} 
