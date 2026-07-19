import Erdos848.GeneratedTailGlobalMixedSupportCoverage.MaskData

namespace Erdos848.GeneratedTailGlobalMixedSupportCoverage

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

theorem normalQrMaskWords_eq_group0000
    {p : ℕ} (hlower : 0 < p) (hupper : p ≤ 61) :
    normalQrMaskWords p = normalQrMaskWords0000 p := by
  simp [normalQrMaskWords, hupper]

theorem twistQrMaskWords_eq_group0000
    {p : ℕ} (hlower : 0 < p) (hupper : p ≤ 61) :
    twistQrMaskWords p = twistQrMaskWords0000 p := by
  simp [twistQrMaskWords, hupper]

#print axioms twistQrMaskWords_eq_group0000

end Erdos848.GeneratedTailGlobalMixedSupportCoverage
