import Erdos848.TailFiveMillionRootSupportClassification
import Erdos848.GeneratedFortyMillionSupplementalRootCoefficientCoverage.Defs

namespace Erdos848.GeneratedFortyMillionSupplementalRootCoefficientCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def certifiedK3LowSingletonPrimes : List Nat :=
  [3, 7, 11, 13, 17, 19, 23]

theorem certifiedK3LowSingletonPrimes_pass :
    certifiedK3LowSingletonPrimes.all
      (fun p => fortyMillionK3BandPairPasses [p]) = true := by
  rfl

theorem k2EmptyMask_root_coefficient_pass :
    Erdos848.fortyMillionRootCorePrefixPasses
      Erdos848.GeneratedFortyMillionRootCoefficientCoverage.coefficientCeiling
      Erdos848.GeneratedTailGlobalMixedSupportCoverage.normalQrMaskWords
      Erdos848.GeneratedTailGlobalMixedSupportCoverage.twistQrMaskWords
      2 5_000_000 [] = true := by
  rfl

theorem k3LowSingleton_root_coefficient_pass
    {p : Nat} (hp : Erdos848.FiveMillionSupportPrime p)
    (hpUpper : p ≤ 23) :
    Erdos848.fortyMillionRootCorePrefixPasses
      Erdos848.GeneratedFortyMillionRootCoefficientCoverage.coefficientCeiling
      Erdos848.GeneratedTailGlobalMixedSupportCoverage.normalQrMaskWords
      Erdos848.GeneratedTailGlobalMixedSupportCoverage.twistQrMaskWords
      3 5_000_000 [p] = true := by
  have hmem : p ∈ certifiedK3LowSingletonPrimes := by
    interval_cases p <;>
      norm_num [Erdos848.FiveMillionSupportPrime] at hp <;>
      simp [certifiedK3LowSingletonPrimes]
  exact (List.all_eq_true.mp certifiedK3LowSingletonPrimes_pass)
    p hmem

#print axioms certifiedK3LowSingletonPrimes_pass
#print axioms k2EmptyMask_root_coefficient_pass
#print axioms k3LowSingleton_root_coefficient_pass

end Erdos848.GeneratedFortyMillionSupplementalRootCoefficientCoverage
