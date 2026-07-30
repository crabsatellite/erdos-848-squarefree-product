import Erdos848.TailFiveMillionRootSupportClassification
import Erdos848.GeneratedHybridPaperSupportDomainCoverage.Data

namespace Erdos848.GeneratedHybridPaperSupportDomainCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem supportPrimeGroup0000_subset
    {p : ℕ} (hpGroup : p ∈ supportPrimeGroup0000) :
    p ∈ supportPrimes := by
  simp only [supportPrimes, List.mem_append]
  exact Or.inl hpGroup

theorem supportPrimeSemanticGroup0000
    {p : ℕ}
    (hLower : 0 ≤ p) (hUpper : p ≤ 317)
    (hp : Erdos848.FiveMillionSupportPrime p) :
    p ∈ Erdos848.GeneratedHybridPaperRootCoverage.supportPrimes := by
  rw [← supportPrimes_eq_rootSupportPrimes]
  apply supportPrimeGroup0000_subset
  interval_cases p <;>
    norm_num [Erdos848.FiveMillionSupportPrime] at hp
  all_goals decide

end Erdos848.GeneratedHybridPaperSupportDomainCoverage
