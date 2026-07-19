import Erdos848.GeneratedTailR263EvenOneRoot23.K2Certificate
import Erdos848.GeneratedTailR263EvenOneRoot23.K3Certificate
import Erdos848.GeneratedTailR263EvenOneRoot23.K4Certificate
import Erdos848.GeneratedTailR263EvenOneRoot23.K5Certificate
import Erdos848.GeneratedTailR263EvenOneRoot23.K6Certificate
import Erdos848.TailFiveMillionRootProfileKernel

namespace Erdos848.GeneratedTailR263EvenOneRoot23

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem k0Prefix_root23_pass :
    fiveMillionR263EvenOneRoot23PrefixPasses 0 [] = true := by
  decide

theorem k1Prefix_root23_pass :
    fiveMillionR263EvenOneRoot23PrefixPasses 1 [] = true := by
  decide

/-- The sharp split-55 row is checked for every one of the seven structurally
exhaustive support profiles. -/
theorem profileCase_root23_pass
    {k : Nat} {support : List Nat}
    (hcase : FiveMillionOddRootProfileCase k support) :
    fiveMillionR263EvenOneRoot23PrefixPasses k support = true := by
  cases hcase with
  | k0 => exact k0Prefix_root23_pass
  | k1 => exact k1Prefix_root23_pass
  | k2 h =>
      exact (List.all_eq_true.mp k2FeasiblePrefixes_root23_pass) _ h
  | k3 h =>
      exact (List.all_eq_true.mp k3FeasiblePrefixes_root23_pass) _ h
  | k4 h =>
      exact (List.all_eq_true.mp k4FeasiblePrefixes_root23_pass) _ h
  | k5 h =>
      exact (List.all_eq_true.mp k5FeasiblePrefixes_root23_pass) _ h
  | k6 h =>
      exact (List.all_eq_true.mp k6FeasiblePrefixes_root23_pass) _ h

#print axioms profileCase_root23_pass

end Erdos848.GeneratedTailR263EvenOneRoot23
