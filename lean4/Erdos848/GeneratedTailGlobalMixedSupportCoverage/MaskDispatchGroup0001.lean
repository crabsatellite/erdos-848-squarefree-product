import Erdos848.GeneratedTailGlobalMixedSupportCoverage.MaskData

namespace Erdos848.GeneratedTailGlobalMixedSupportCoverage

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

theorem normalQrMaskWords_eq_group0001
    {p : ℕ} (hlower : 61 < p) (hupper : p ≤ 139) :
    normalQrMaskWords p = normalQrMaskWords0001 p := by
  have h0 : ¬ p ≤ 61 := by omega
  simp [normalQrMaskWords, h0, hupper]

theorem twistQrMaskWords_eq_group0001
    {p : ℕ} (hlower : 61 < p) (hupper : p ≤ 139) :
    twistQrMaskWords p = twistQrMaskWords0001 p := by
  have h0 : ¬ p ≤ 61 := by omega
  simp [twistQrMaskWords, h0, hupper]

#print axioms twistQrMaskWords_eq_group0001

end Erdos848.GeneratedTailGlobalMixedSupportCoverage
