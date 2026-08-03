import Erdos848.TailFiveMillionRootSupportClassification
import Erdos848.GeneratedHybridPaperSupportDomainCoverage.Data

namespace Erdos848.GeneratedHybridPaperSupportDomainCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem supportPrimeGroup0045_subset
    {p : ℕ} (hpGroup : p ∈ supportPrimeGroup0045) :
    p ∈ supportPrimes := by
  simp only [supportPrimes, List.mem_append]
  exact Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl hpGroup)))))))))))))))))))))))))))))))))))))))))))))

theorem supportPrimeSemanticGroup0045
    {p : ℕ}
    (hLower : 26228 ≤ p) (hUpper : p ≤ 26861)
    (hp : Erdos848.FiveMillionSupportPrime p) :
    p ∈ Erdos848.GeneratedHybridPaperRootCoverage.supportPrimes := by
  rw [← supportPrimes_eq_rootSupportPrimes]
  apply supportPrimeGroup0045_subset
  interval_cases p <;>
    norm_num [Erdos848.FiveMillionSupportPrime] at hp
  all_goals decide

end Erdos848.GeneratedHybridPaperSupportDomainCoverage
