import Erdos848.GeneratedTailGlobalMixedSupportCoverage.MaskData

namespace Erdos848.GeneratedTailGlobalMixedSupportCoverage

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

theorem normalQrMaskWords_eq_group0002
    {p : ℕ} (hlower : 139 < p) (hupper : p ≤ 229) :
    normalQrMaskWords p = normalQrMaskWords0002 p := by
  have h0 : ¬ p ≤ 61 := by omega
  have h1 : ¬ p ≤ 139 := by omega
  simp [normalQrMaskWords, h0, h1, hupper]

theorem twistQrMaskWords_eq_group0002
    {p : ℕ} (hlower : 139 < p) (hupper : p ≤ 229) :
    twistQrMaskWords p = twistQrMaskWords0002 p := by
  have h0 : ¬ p ≤ 61 := by omega
  have h1 : ¬ p ≤ 139 := by omega
  simp [twistQrMaskWords, h0, h1, hupper]

#print axioms twistQrMaskWords_eq_group0002

end Erdos848.GeneratedTailGlobalMixedSupportCoverage
