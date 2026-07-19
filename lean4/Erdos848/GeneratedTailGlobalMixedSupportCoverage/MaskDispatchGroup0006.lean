import Erdos848.GeneratedTailGlobalMixedSupportCoverage.MaskData

namespace Erdos848.GeneratedTailGlobalMixedSupportCoverage

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

theorem normalQrMaskWords_eq_group0006
    {p : ℕ} (hlower : 521 < p) (hupper : p ≤ 619) :
    normalQrMaskWords p = normalQrMaskWords0006 p := by
  have h0 : ¬ p ≤ 61 := by omega
  have h1 : ¬ p ≤ 139 := by omega
  have h2 : ¬ p ≤ 229 := by omega
  have h3 : ¬ p ≤ 317 := by omega
  have h4 : ¬ p ≤ 421 := by omega
  have h5 : ¬ p ≤ 521 := by omega
  simp [normalQrMaskWords, h0, h1, h2, h3, h4, h5, hupper]

theorem twistQrMaskWords_eq_group0006
    {p : ℕ} (hlower : 521 < p) (hupper : p ≤ 619) :
    twistQrMaskWords p = twistQrMaskWords0006 p := by
  have h0 : ¬ p ≤ 61 := by omega
  have h1 : ¬ p ≤ 139 := by omega
  have h2 : ¬ p ≤ 229 := by omega
  have h3 : ¬ p ≤ 317 := by omega
  have h4 : ¬ p ≤ 421 := by omega
  have h5 : ¬ p ≤ 521 := by omega
  simp [twistQrMaskWords, h0, h1, h2, h3, h4, h5, hupper]

#print axioms twistQrMaskWords_eq_group0006

end Erdos848.GeneratedTailGlobalMixedSupportCoverage
