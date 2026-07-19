import Erdos848.GeneratedTailGlobalMixedSupportCoverage.MaskData

namespace Erdos848.GeneratedTailGlobalMixedSupportCoverage

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

theorem normalQrMaskWords_eq_group0004
    {p : ℕ} (hlower : 317 < p) (hupper : p ≤ 421) :
    normalQrMaskWords p = normalQrMaskWords0004 p := by
  have h0 : ¬ p ≤ 61 := by omega
  have h1 : ¬ p ≤ 139 := by omega
  have h2 : ¬ p ≤ 229 := by omega
  have h3 : ¬ p ≤ 317 := by omega
  simp [normalQrMaskWords, h0, h1, h2, h3, hupper]

theorem twistQrMaskWords_eq_group0004
    {p : ℕ} (hlower : 317 < p) (hupper : p ≤ 421) :
    twistQrMaskWords p = twistQrMaskWords0004 p := by
  have h0 : ¬ p ≤ 61 := by omega
  have h1 : ¬ p ≤ 139 := by omega
  have h2 : ¬ p ≤ 229 := by omega
  have h3 : ¬ p ≤ 317 := by omega
  simp [twistQrMaskWords, h0, h1, h2, h3, hupper]

#print axioms twistQrMaskWords_eq_group0004

end Erdos848.GeneratedTailGlobalMixedSupportCoverage
