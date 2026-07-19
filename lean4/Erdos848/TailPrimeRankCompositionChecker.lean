import Erdos848.TailPrimeRankChecker

namespace Erdos848
namespace PrimeIntervalProofTree

/-! ## Constant-size composition for rank predicates -/

theorem allPrimeRanks_node_eq_true
    {start leftSize rightSize leftCount rightCount before : ℕ}
    {predicate : ℕ → ℕ → Bool}
    {left : PrimeIntervalProofTree start leftSize leftCount}
    {right : PrimeIntervalProofTree
      (start + leftSize) rightSize rightCount}
    (hleft : left.allPrimeRanks before predicate = true)
    (hright : right.allPrimeRanks (before + leftCount) predicate = true) :
    (PrimeIntervalProofTree.node left right).allPrimeRanks
      before predicate = true := by
  simp only [allPrimeRanks, hleft, hright, Bool.true_and]

end PrimeIntervalProofTree
end Erdos848
