import Erdos848.TailGlobalMixedCoreBridge
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.K6PrefixGroup0030
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.MaskDispatchGroup0000
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.MaskDispatchGroup0001
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.MaskDispatchGroup0002

namespace Erdos848.GeneratedTailGlobalMixedSupportCoverage

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def k6PrefixGroup0030MaskDomain (p : ℕ) : Prop :=
  (0 < p ∧ p ≤ 229)

instance k6PrefixGroup0030MaskDomainDecidable (p : ℕ) : Decidable (k6PrefixGroup0030MaskDomain p) := by
  unfold k6PrefixGroup0030MaskDomain
  infer_instance

def k6PrefixGroup0030EndpointPasses (row : List ℕ × ℕ) : Bool :=
  decide (Erdos848.globalMixedSupportEndpoint row.1 =
    max 5_000_000 (row.1.prod * row.2))

def k6PrefixGroup0030MaskPasses (row : List ℕ × ℕ) : Bool :=
    (row.1.filter fun p => decide (p ≤ 2843)).all fun p =>
      decide (k6PrefixGroup0030MaskDomain p)

theorem k6PrefixGroup0030_endpoint_passes :
    k6PrefixGroup0030.all k6PrefixGroup0030EndpointPasses = true := by
  rfl

theorem k6PrefixGroup0030_mask_passes :
    k6PrefixGroup0030.all k6PrefixGroup0030MaskPasses = true := by
  rfl

theorem k6PrefixGroup0030NormalLookup_eq_global_run00
    {p : ℕ} (hlower : 0 < p) (hupper : p ≤ 229) :
    k6PrefixGroup0030NormalLookup p = normalQrMaskWords p := by
  by_cases hcase0 : p ≤ 61
  · have hlocal : k6PrefixGroup0030NormalLookup p = normalQrMaskWords0000 p := by
      simp [k6PrefixGroup0030NormalLookup, hcase0]
    exact hlocal.trans (normalQrMaskWords_eq_group0000 (by omega) hcase0).symm
  by_cases hcase1 : p ≤ 139
  · have hlocal : k6PrefixGroup0030NormalLookup p = normalQrMaskWords0001 p := by
      simp [k6PrefixGroup0030NormalLookup, hcase0, hcase1]
    exact hlocal.trans (normalQrMaskWords_eq_group0001 (by omega) hcase1).symm
  have hlocal : k6PrefixGroup0030NormalLookup p = normalQrMaskWords0002 p := by
    simp [k6PrefixGroup0030NormalLookup, hcase0, hcase1, hupper]
  exact hlocal.trans (normalQrMaskWords_eq_group0002 (by omega) hupper).symm

theorem k6PrefixGroup0030NormalLookup_eq_global
    {p : ℕ} (hp : k6PrefixGroup0030MaskDomain p) :
    k6PrefixGroup0030NormalLookup p = normalQrMaskWords p := by
  exact k6PrefixGroup0030NormalLookup_eq_global_run00 hp.1 hp.2

theorem k6PrefixGroup0030TwistLookup_eq_global_run00
    {p : ℕ} (hlower : 0 < p) (hupper : p ≤ 229) :
    k6PrefixGroup0030TwistLookup p = twistQrMaskWords p := by
  by_cases hcase0 : p ≤ 61
  · have hlocal : k6PrefixGroup0030TwistLookup p = twistQrMaskWords0000 p := by
      simp [k6PrefixGroup0030TwistLookup, hcase0]
    exact hlocal.trans (twistQrMaskWords_eq_group0000 (by omega) hcase0).symm
  by_cases hcase1 : p ≤ 139
  · have hlocal : k6PrefixGroup0030TwistLookup p = twistQrMaskWords0001 p := by
      simp [k6PrefixGroup0030TwistLookup, hcase0, hcase1]
    exact hlocal.trans (twistQrMaskWords_eq_group0001 (by omega) hcase1).symm
  have hlocal : k6PrefixGroup0030TwistLookup p = twistQrMaskWords0002 p := by
    simp [k6PrefixGroup0030TwistLookup, hcase0, hcase1, hupper]
  exact hlocal.trans (twistQrMaskWords_eq_group0002 (by omega) hupper).symm

theorem k6PrefixGroup0030TwistLookup_eq_global
    {p : ℕ} (hp : k6PrefixGroup0030MaskDomain p) :
    k6PrefixGroup0030TwistLookup p = twistQrMaskWords p := by
  exact k6PrefixGroup0030TwistLookup_eq_global_run00 hp.1 hp.2

theorem k6PrefixGroup0030_standard_passes
    (row : List ℕ × ℕ) (hrow : row ∈ k6PrefixGroup0030) :
    Erdos848.globalMixedSupportPrefixPasses 6 row.1 = true := by
  have hendpointPass := (List.all_eq_true.mp
    k6PrefixGroup0030_endpoint_passes) row hrow
  have hendpoint : Erdos848.globalMixedSupportEndpoint row.1 =
      max 5_000_000 (row.1.prod * row.2) :=
    of_decide_eq_true hendpointPass
  have hmask := (List.all_eq_true.mp
    k6PrefixGroup0030_mask_passes) row hrow
  have hsupport : ∀ p ∈
      row.1.filter (fun p => decide (p ≤ 2843)),
      k6PrefixGroup0030MaskDomain p := by
    intro p hp
    exact of_decide_eq_true ((List.all_eq_true.mp hmask) p hp)
  have hleaf := (List.all_eq_true.mp k6PrefixGroup0030_passes) row hrow
  unfold k6PrefixGroup0030Passes at hleaf
  rw [← hendpoint] at hleaf
  have hcongr := Erdos848.globalMixedCorePrefixPasses_congr
    k6PrefixGroup0030NormalLookup normalQrMaskWords
    k6PrefixGroup0030TwistLookup twistQrMaskWords 6
    (Erdos848.globalMixedSupportEndpoint row.1) row.1
    (fun p hp => k6PrefixGroup0030NormalLookup_eq_global
      (hsupport p hp))
    (fun p hp => k6PrefixGroup0030TwistLookup_eq_global
      (hsupport p hp))
  rw [hcongr, Erdos848.globalMixedCorePrefixPasses_eq] at hleaf
  exact hleaf

#print axioms k6PrefixGroup0030_standard_passes

end Erdos848.GeneratedTailGlobalMixedSupportCoverage
