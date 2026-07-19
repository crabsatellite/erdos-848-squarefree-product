import Erdos848.HallPartition

namespace Erdos848

/-! Lightweight definitions shared by interval and all-`N` residual routes. -/

def fiveMillionStructuredResidual
    (N : Nat) (B charged : Finset Nat) : Finset Nat :=
  hallResidual N B \ charged

def oddModNineResidue (x : Nat) : Fin 9 :=
  ⟨x % 9, Nat.mod_lt x (by norm_num)⟩

end Erdos848
