import Erdos848.TailGlobalMixedValuationPartition

namespace Erdos848
namespace TwentyMillion

/-!
# Lightweight pivot labels for the twenty-million branch

The pivot allocation only needs three elementary labels.  Keeping them here
prevents that purely combinatorial module from importing the full paper-charge
certificate graph.
-/

def paperModNineCell (x : Nat) : Fin 9 :=
  ⟨x % 9, Nat.mod_lt _ (by norm_num)⟩

@[simp] theorem paperModNineCell_val (x : Nat) :
    (paperModNineCell x : Nat) = x % 9 := by
  rfl

def paperOddValuationClass : Bool → FiveMillionValuationClass
  | false => .oddOne
  | true => .oddThree

def oppositeOddParity : Bool → Bool
  | false => true
  | true => false

end TwentyMillion
end Erdos848
