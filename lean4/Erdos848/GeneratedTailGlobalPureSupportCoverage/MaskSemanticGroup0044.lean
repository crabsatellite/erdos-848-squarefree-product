import Erdos848.TailFiveMillionRootSupportClassification
import Erdos848.GeneratedTailSupportCoverage.Data
import Erdos848.GeneratedTailGlobalPureSupportCoverage.Data

namespace Erdos848.GeneratedTailGlobalPureSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem maskSemanticPrime3469 :
    supportQrMaskWords 3469 =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords
        3469).take 11 := by
  rfl

theorem baseSupportPrimeMem3469 :
    3469 ∈
      Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  decide

theorem maskSemanticGroup0044
    {p : ℕ}
    (hLower : 3468 ≤ p) (hUpper : p ≤ 3469)
    (hp : Erdos848.FiveMillionSupportPrime p) :
    supportQrMaskWords p =
      (Erdos848.GeneratedTailSupportCoverage.qrMaskWords p).take 11 := by
  interval_cases p <;>
    norm_num [Erdos848.FiveMillionSupportPrime] at hp
  · exact maskSemanticPrime3469

theorem baseSupportPrimeMemGroup0044
    {p : ℕ}
    (hLower : 3468 ≤ p) (hUpper : p ≤ 3469)
    (hp : Erdos848.FiveMillionSupportPrime p) :
    p ∈ Erdos848.GeneratedTailSupportCoverage.supportPrimes := by
  interval_cases p <;>
    norm_num [Erdos848.FiveMillionSupportPrime] at hp
  · exact baseSupportPrimeMem3469
end Erdos848.GeneratedTailGlobalPureSupportCoverage
