import Mathlib.Data.Rat.Defs

namespace Erdos848

/-! Lightweight numerical constants shared by the fixed-cut global tail.

Keeping the root envelope here prevents the affine prime-row soundness proof
from importing the unrelated five-to-ten-million diagonal certificate. -/

def fiveMillionOddRoot7Envelope : ℚ :=
  221926420176 / 12755647965025

end Erdos848
