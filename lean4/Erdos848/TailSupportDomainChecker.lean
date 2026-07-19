import Erdos848.TailSupportScanChecker
import Erdos848.TailFiveMillionRootSupportClassification

namespace Erdos848

/-! ## Small checker for completeness of the support-prime table -/

instance fiveMillionSupportPrimeDecidable (p : ℕ) :
    Decidable (FiveMillionSupportPrime p) := by
  unfold FiveMillionSupportPrime
  infer_instance

def supportPrimeEntryPasses (p : ℕ) : Bool :=
  decide (p ∈ GeneratedTailSupportCoverage.supportPrimes ↔
    FiveMillionSupportPrime p)

theorem supportPrimeEntryPasses_sound {p : ℕ}
    (hPass : supportPrimeEntryPasses p = true) :
    p ∈ GeneratedTailSupportCoverage.supportPrimes ↔
      FiveMillionSupportPrime p := by
  exact of_decide_eq_true hPass

#print axioms supportPrimeEntryPasses_sound

end Erdos848
