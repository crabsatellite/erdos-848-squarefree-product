import Erdos848.TailGlobalPureSupportChecker

namespace Erdos848.GeneratedTailGlobalPureSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k8PrefixGroup0000 : List (List ℕ) :=
  [[3, 7, 11, 13, 17, 19, 23]]

theorem k8PrefixGroup0000Row0000_passes :
    Erdos848.globalPureSupportPrefixPasses 8
      [3, 7, 11, 13, 17, 19, 23] = true := by
  decide

theorem k8PrefixGroup0000Row0000_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3, 7, 11, 13, 17, 19, 23] = true := by
  decide

theorem k8PrefixGroup0000_passes :
    k8PrefixGroup0000.all
      (Erdos848.globalPureSupportPrefixPasses 8) = true := by
  simp only [k8PrefixGroup0000, List.all_cons, List.all_nil, Bool.true_and,
    k8PrefixGroup0000Row0000_passes]

theorem k8PrefixGroup0000_mask_upper :
    k8PrefixGroup0000.all
      Erdos848.globalPureSupportMaskUpper = true := by
  simp only [k8PrefixGroup0000, List.all_cons, List.all_nil, Bool.true_and,
    k8PrefixGroup0000Row0000_mask_upper]

end Erdos848.GeneratedTailGlobalPureSupportCoverage
