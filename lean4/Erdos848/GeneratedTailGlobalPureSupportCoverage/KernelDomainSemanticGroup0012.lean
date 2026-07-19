import Erdos848.TailFiveMillionRootSupportClassification
import Erdos848.GeneratedTailGlobalPureSupportCoverage.KernelDomainData

namespace Erdos848.GeneratedTailGlobalPureSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem kernelSupportPrimeGroup0012_subset
    {p : ℕ}
    (hpGroup : p ∈ kernelSupportPrimeGroup0012) :
    p ∈ kernelSupportPrimes := by
  simp only [kernelSupportPrimes, List.mem_append]
  exact Or.inl (Or.inl (Or.inl (Or.inl (Or.inl (Or.inl (Or.inl (Or.inl (Or.inl (Or.inl (Or.inl (Or.inl (Or.inl (Or.inl (Or.inl (Or.inl (Or.inl (Or.inl (Or.inl (Or.inl (Or.inl (Or.inl (Or.inl (Or.inl (Or.inl (Or.inl (Or.inl (Or.inl (Or.inl (Or.inl (Or.inl (Or.inl (Or.inl (Or.inl (Or.inl (Or.inr (hpGroup))))))))))))))))))))))))))))))))))))

theorem kernelSupportPrimeSemanticGroup0012
    {p : ℕ}
    (hLower : 5858 ≤ p) (hUpper : p ≤ 6397)
    (hp : Erdos848.FiveMillionSupportPrime p) :
    p ∈ kernelSupportPrimes := by
  apply kernelSupportPrimeGroup0012_subset
  interval_cases p <;>
    norm_num [Erdos848.FiveMillionSupportPrime] at hp
  all_goals decide

end Erdos848.GeneratedTailGlobalPureSupportCoverage
