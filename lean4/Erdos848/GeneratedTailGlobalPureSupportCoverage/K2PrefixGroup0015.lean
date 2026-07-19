import Erdos848.TailGlobalPureSupportChecker

namespace Erdos848.GeneratedTailGlobalPureSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k2PrefixGroup0015 : List (List ℕ) :=
  [[3457],
     [3461],
     [3463],
     [3467]]

theorem k2PrefixGroup0015Row0000_passes :
    Erdos848.globalPureSupportPrefixPasses 2
      [3457] = true := by
  decide

theorem k2PrefixGroup0015Row0000_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3457] = true := by
  decide

theorem k2PrefixGroup0015Row0001_passes :
    Erdos848.globalPureSupportPrefixPasses 2
      [3461] = true := by
  decide

theorem k2PrefixGroup0015Row0001_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3461] = true := by
  decide

theorem k2PrefixGroup0015Row0002_passes :
    Erdos848.globalPureSupportPrefixPasses 2
      [3463] = true := by
  decide

theorem k2PrefixGroup0015Row0002_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3463] = true := by
  decide

theorem k2PrefixGroup0015Row0003_passes :
    Erdos848.globalPureSupportPrefixPasses 2
      [3467] = true := by
  decide

theorem k2PrefixGroup0015Row0003_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [3467] = true := by
  decide

theorem k2PrefixGroup0015_passes :
    k2PrefixGroup0015.all
      (Erdos848.globalPureSupportPrefixPasses 2) = true := by
  simp only [k2PrefixGroup0015, List.all_cons, List.all_nil, Bool.true_and,
    k2PrefixGroup0015Row0000_passes,
    k2PrefixGroup0015Row0001_passes,
    k2PrefixGroup0015Row0002_passes,
    k2PrefixGroup0015Row0003_passes]

theorem k2PrefixGroup0015_mask_upper :
    k2PrefixGroup0015.all
      Erdos848.globalPureSupportMaskUpper = true := by
  simp only [k2PrefixGroup0015, List.all_cons, List.all_nil, Bool.true_and,
    k2PrefixGroup0015Row0000_mask_upper,
    k2PrefixGroup0015Row0001_mask_upper,
    k2PrefixGroup0015Row0002_mask_upper,
    k2PrefixGroup0015Row0003_mask_upper]

end Erdos848.GeneratedTailGlobalPureSupportCoverage
