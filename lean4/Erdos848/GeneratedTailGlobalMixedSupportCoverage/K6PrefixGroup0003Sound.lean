import Erdos848.TailGlobalMixedCoreBridge
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.K6PrefixGroup0003
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.MaskDispatchGroup0000
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.MaskDispatchGroup0001
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.MaskDispatchGroup0002
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.MaskDispatchGroup0003
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.MaskDispatchGroup0004
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.MaskDispatchGroup0005

namespace Erdos848.GeneratedTailGlobalMixedSupportCoverage

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def k6PrefixGroup0003MaskDomain (p : ℕ) : Prop :=
  (0 < p ∧ p ≤ 521)

instance k6PrefixGroup0003MaskDomainDecidable (p : ℕ) : Decidable (k6PrefixGroup0003MaskDomain p) := by
  unfold k6PrefixGroup0003MaskDomain
  infer_instance

def k6PrefixGroup0003EndpointPasses (row : List ℕ × ℕ) : Bool :=
  decide (Erdos848.globalMixedSupportEndpoint row.1 =
    max 5_000_000 (row.1.prod * row.2))

def k6PrefixGroup0003MaskPasses (row : List ℕ × ℕ) : Bool :=
    (row.1.filter fun p => decide (p ≤ 2843)).all fun p =>
      decide (k6PrefixGroup0003MaskDomain p)

theorem k6PrefixGroup0003_endpoint_passes :
    k6PrefixGroup0003.all k6PrefixGroup0003EndpointPasses = true := by
  rfl

theorem k6PrefixGroup0003_mask_passes :
    k6PrefixGroup0003.all k6PrefixGroup0003MaskPasses = true := by
  rfl

theorem k6PrefixGroup0003NormalLookup_eq_global_run00
    {p : ℕ} (hlower : 0 < p) (hupper : p ≤ 521) :
    k6PrefixGroup0003NormalLookup p = normalQrMaskWords p := by
  by_cases hcase0 : p ≤ 61
  · have hlocal : k6PrefixGroup0003NormalLookup p = normalQrMaskWords0000 p := by
      simp [k6PrefixGroup0003NormalLookup, hcase0]
    exact hlocal.trans (normalQrMaskWords_eq_group0000 (by omega) hcase0).symm
  by_cases hcase1 : p ≤ 139
  · have hlocal : k6PrefixGroup0003NormalLookup p = normalQrMaskWords0001 p := by
      simp [k6PrefixGroup0003NormalLookup, hcase0, hcase1]
    exact hlocal.trans (normalQrMaskWords_eq_group0001 (by omega) hcase1).symm
  by_cases hcase2 : p ≤ 229
  · have hlocal : k6PrefixGroup0003NormalLookup p = normalQrMaskWords0002 p := by
      simp [k6PrefixGroup0003NormalLookup, hcase0, hcase1, hcase2]
    exact hlocal.trans (normalQrMaskWords_eq_group0002 (by omega) hcase2).symm
  by_cases hcase3 : p ≤ 317
  · have hlocal : k6PrefixGroup0003NormalLookup p = normalQrMaskWords0003 p := by
      simp [k6PrefixGroup0003NormalLookup, hcase0, hcase1, hcase2, hcase3]
    exact hlocal.trans (normalQrMaskWords_eq_group0003 (by omega) hcase3).symm
  by_cases hcase4 : p ≤ 421
  · have hlocal : k6PrefixGroup0003NormalLookup p = normalQrMaskWords0004 p := by
      simp [k6PrefixGroup0003NormalLookup, hcase0, hcase1, hcase2, hcase3, hcase4]
    exact hlocal.trans (normalQrMaskWords_eq_group0004 (by omega) hcase4).symm
  have hlocal : k6PrefixGroup0003NormalLookup p = normalQrMaskWords0005 p := by
    simp [k6PrefixGroup0003NormalLookup, hcase0, hcase1, hcase2, hcase3, hcase4, hupper]
  exact hlocal.trans (normalQrMaskWords_eq_group0005 (by omega) hupper).symm

theorem k6PrefixGroup0003NormalLookup_eq_global
    {p : ℕ} (hp : k6PrefixGroup0003MaskDomain p) :
    k6PrefixGroup0003NormalLookup p = normalQrMaskWords p := by
  exact k6PrefixGroup0003NormalLookup_eq_global_run00 hp.1 hp.2

theorem k6PrefixGroup0003TwistLookup_eq_global_run00
    {p : ℕ} (hlower : 0 < p) (hupper : p ≤ 521) :
    k6PrefixGroup0003TwistLookup p = twistQrMaskWords p := by
  by_cases hcase0 : p ≤ 61
  · have hlocal : k6PrefixGroup0003TwistLookup p = twistQrMaskWords0000 p := by
      simp [k6PrefixGroup0003TwistLookup, hcase0]
    exact hlocal.trans (twistQrMaskWords_eq_group0000 (by omega) hcase0).symm
  by_cases hcase1 : p ≤ 139
  · have hlocal : k6PrefixGroup0003TwistLookup p = twistQrMaskWords0001 p := by
      simp [k6PrefixGroup0003TwistLookup, hcase0, hcase1]
    exact hlocal.trans (twistQrMaskWords_eq_group0001 (by omega) hcase1).symm
  by_cases hcase2 : p ≤ 229
  · have hlocal : k6PrefixGroup0003TwistLookup p = twistQrMaskWords0002 p := by
      simp [k6PrefixGroup0003TwistLookup, hcase0, hcase1, hcase2]
    exact hlocal.trans (twistQrMaskWords_eq_group0002 (by omega) hcase2).symm
  by_cases hcase3 : p ≤ 317
  · have hlocal : k6PrefixGroup0003TwistLookup p = twistQrMaskWords0003 p := by
      simp [k6PrefixGroup0003TwistLookup, hcase0, hcase1, hcase2, hcase3]
    exact hlocal.trans (twistQrMaskWords_eq_group0003 (by omega) hcase3).symm
  by_cases hcase4 : p ≤ 421
  · have hlocal : k6PrefixGroup0003TwistLookup p = twistQrMaskWords0004 p := by
      simp [k6PrefixGroup0003TwistLookup, hcase0, hcase1, hcase2, hcase3, hcase4]
    exact hlocal.trans (twistQrMaskWords_eq_group0004 (by omega) hcase4).symm
  have hlocal : k6PrefixGroup0003TwistLookup p = twistQrMaskWords0005 p := by
    simp [k6PrefixGroup0003TwistLookup, hcase0, hcase1, hcase2, hcase3, hcase4, hupper]
  exact hlocal.trans (twistQrMaskWords_eq_group0005 (by omega) hupper).symm

theorem k6PrefixGroup0003TwistLookup_eq_global
    {p : ℕ} (hp : k6PrefixGroup0003MaskDomain p) :
    k6PrefixGroup0003TwistLookup p = twistQrMaskWords p := by
  exact k6PrefixGroup0003TwistLookup_eq_global_run00 hp.1 hp.2

theorem k6PrefixGroup0003_standard_passes
    (row : List ℕ × ℕ) (hrow : row ∈ k6PrefixGroup0003) :
    Erdos848.globalMixedSupportPrefixPasses 6 row.1 = true := by
  have hendpointPass := (List.all_eq_true.mp
    k6PrefixGroup0003_endpoint_passes) row hrow
  have hendpoint : Erdos848.globalMixedSupportEndpoint row.1 =
      max 5_000_000 (row.1.prod * row.2) :=
    of_decide_eq_true hendpointPass
  have hmask := (List.all_eq_true.mp
    k6PrefixGroup0003_mask_passes) row hrow
  have hsupport : ∀ p ∈
      row.1.filter (fun p => decide (p ≤ 2843)),
      k6PrefixGroup0003MaskDomain p := by
    intro p hp
    exact of_decide_eq_true ((List.all_eq_true.mp hmask) p hp)
  have hleaf := (List.all_eq_true.mp k6PrefixGroup0003_passes) row hrow
  unfold k6PrefixGroup0003Passes at hleaf
  rw [← hendpoint] at hleaf
  have hcongr := Erdos848.globalMixedCorePrefixPasses_congr
    k6PrefixGroup0003NormalLookup normalQrMaskWords
    k6PrefixGroup0003TwistLookup twistQrMaskWords 6
    (Erdos848.globalMixedSupportEndpoint row.1) row.1
    (fun p hp => k6PrefixGroup0003NormalLookup_eq_global
      (hsupport p hp))
    (fun p hp => k6PrefixGroup0003TwistLookup_eq_global
      (hsupport p hp))
  rw [hcongr, Erdos848.globalMixedCorePrefixPasses_eq] at hleaf
  exact hleaf

#print axioms k6PrefixGroup0003_standard_passes

end Erdos848.GeneratedTailGlobalMixedSupportCoverage
