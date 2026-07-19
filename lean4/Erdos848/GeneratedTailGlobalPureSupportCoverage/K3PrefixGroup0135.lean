import Erdos848.TailGlobalPureSupportChecker

namespace Erdos848.GeneratedTailGlobalPureSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def k3PrefixGroup0135 : List (List ℕ) :=
  [[277, 283],
     [281, 283]]

theorem k3PrefixGroup0135Row0000_passes :
    Erdos848.globalPureSupportPrefixPasses 3
      [277, 283] = true := by
  decide

theorem k3PrefixGroup0135Row0000_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [277, 283] = true := by
  decide

theorem k3PrefixGroup0135Row0001_passes :
    Erdos848.globalPureSupportPrefixPasses 3
      [281, 283] = true := by
  decide

theorem k3PrefixGroup0135Row0001_mask_upper :
    Erdos848.globalPureSupportMaskUpper
      [281, 283] = true := by
  decide

theorem k3PrefixGroup0135_passes :
    k3PrefixGroup0135.all
      (Erdos848.globalPureSupportPrefixPasses 3) = true := by
  simp only [k3PrefixGroup0135, List.all_cons, List.all_nil, Bool.true_and,
    k3PrefixGroup0135Row0000_passes,
    k3PrefixGroup0135Row0001_passes]

theorem k3PrefixGroup0135_mask_upper :
    k3PrefixGroup0135.all
      Erdos848.globalPureSupportMaskUpper = true := by
  simp only [k3PrefixGroup0135, List.all_cons, List.all_nil, Bool.true_and,
    k3PrefixGroup0135Row0000_mask_upper,
    k3PrefixGroup0135Row0001_mask_upper]

end Erdos848.GeneratedTailGlobalPureSupportCoverage
