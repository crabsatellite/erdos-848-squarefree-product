import Erdos848.GeneratedTailGlobalMixedSupportCoverage.MaskData

namespace Erdos848.GeneratedTailGlobalMixedSupportCoverage

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

theorem normalQrMaskWords_eq_group0003
    {p : ℕ} (hlower : 229 < p) (hupper : p ≤ 317) :
    normalQrMaskWords p = normalQrMaskWords0003 p := by
  have h0 : ¬ p ≤ 61 := by omega
  have h1 : ¬ p ≤ 139 := by omega
  have h2 : ¬ p ≤ 229 := by omega
  simp [normalQrMaskWords, h0, h1, h2, hupper]

theorem twistQrMaskWords_eq_group0003
    {p : ℕ} (hlower : 229 < p) (hupper : p ≤ 317) :
    twistQrMaskWords p = twistQrMaskWords0003 p := by
  have h0 : ¬ p ≤ 61 := by omega
  have h1 : ¬ p ≤ 139 := by omega
  have h2 : ¬ p ≤ 229 := by omega
  simp [twistQrMaskWords, h0, h1, h2, hupper]

#print axioms twistQrMaskWords_eq_group0003

end Erdos848.GeneratedTailGlobalMixedSupportCoverage
