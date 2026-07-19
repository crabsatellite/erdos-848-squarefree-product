import Erdos848.GeneratedTailGlobalMixedSupportCoverage.MaskData

namespace Erdos848.GeneratedTailGlobalMixedSupportCoverage

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

theorem normalQrMaskWords_eq_group0008
    {p : ℕ} (hlower : 733 < p) (hupper : p ≤ 839) :
    normalQrMaskWords p = normalQrMaskWords0008 p := by
  have h0 : ¬ p ≤ 61 := by omega
  have h1 : ¬ p ≤ 139 := by omega
  have h2 : ¬ p ≤ 229 := by omega
  have h3 : ¬ p ≤ 317 := by omega
  have h4 : ¬ p ≤ 421 := by omega
  have h5 : ¬ p ≤ 521 := by omega
  have h6 : ¬ p ≤ 619 := by omega
  have h7 : ¬ p ≤ 733 := by omega
  simp [normalQrMaskWords, h0, h1, h2, h3, h4, h5, h6, h7, hupper]

theorem twistQrMaskWords_eq_group0008
    {p : ℕ} (hlower : 733 < p) (hupper : p ≤ 839) :
    twistQrMaskWords p = twistQrMaskWords0008 p := by
  have h0 : ¬ p ≤ 61 := by omega
  have h1 : ¬ p ≤ 139 := by omega
  have h2 : ¬ p ≤ 229 := by omega
  have h3 : ¬ p ≤ 317 := by omega
  have h4 : ¬ p ≤ 421 := by omega
  have h5 : ¬ p ≤ 521 := by omega
  have h6 : ¬ p ≤ 619 := by omega
  have h7 : ¬ p ≤ 733 := by omega
  simp [twistQrMaskWords, h0, h1, h2, h3, h4, h5, h6, h7, hupper]

#print axioms twistQrMaskWords_eq_group0008

end Erdos848.GeneratedTailGlobalMixedSupportCoverage
