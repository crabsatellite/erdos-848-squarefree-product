import Erdos848.TailGlobalPureSupportChecker

namespace Erdos848.GeneratedTailGlobalPureSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k1PrefixGroup0000 : List (List ℕ) :=
  [[]]

theorem k1PrefixGroup0000Row0000_passes :
    Erdos848.globalPureSupportPrefixPasses 1
      [] = true := by
  decide

theorem k1PrefixGroup0000Row0000_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [] = true := by
  decide

theorem k1PrefixGroup0000_passes :
    k1PrefixGroup0000.all
      (Erdos848.globalPureSupportPrefixPasses 1) = true := by
  simp only [k1PrefixGroup0000, List.all_cons, List.all_nil, Bool.true_and,
    k1PrefixGroup0000Row0000_passes]

theorem k1PrefixGroup0000_mask_upper :
    k1PrefixGroup0000.all
      Erdos848.globalPureSupportMaskUpper = true := by
  simp only [k1PrefixGroup0000, List.all_cons, List.all_nil, Bool.true_and,
    k1PrefixGroup0000Row0000_mask_upper]

end Erdos848.GeneratedTailGlobalPureSupportCoverage
