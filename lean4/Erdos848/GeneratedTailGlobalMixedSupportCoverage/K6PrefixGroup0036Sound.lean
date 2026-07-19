import Erdos848.TailGlobalMixedCoreBridge
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.K6PrefixGroup0036
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.MaskDispatchGroup0000
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.MaskDispatchGroup0001

namespace Erdos848.GeneratedTailGlobalMixedSupportCoverage

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def k6PrefixGroup0036MaskDomain (p : ℕ) : Prop :=
  (0 < p ∧ p ≤ 139)

instance k6PrefixGroup0036MaskDomainDecidable (p : ℕ) : Decidable (k6PrefixGroup0036MaskDomain p) := by
  unfold k6PrefixGroup0036MaskDomain
  infer_instance

def k6PrefixGroup0036EndpointPasses (row : List ℕ × ℕ) : Bool :=
  decide (Erdos848.globalMixedSupportEndpoint row.1 =
    max 5_000_000 (row.1.prod * row.2))

def k6PrefixGroup0036MaskPasses (row : List ℕ × ℕ) : Bool :=
    (row.1.filter fun p => decide (p ≤ 2843)).all fun p =>
      decide (k6PrefixGroup0036MaskDomain p)

theorem k6PrefixGroup0036_endpoint_passes :
    k6PrefixGroup0036.all k6PrefixGroup0036EndpointPasses = true := by
  rfl

theorem k6PrefixGroup0036_mask_passes :
    k6PrefixGroup0036.all k6PrefixGroup0036MaskPasses = true := by
  rfl

theorem k6PrefixGroup0036NormalLookup_eq_global_run00
    {p : ℕ} (hlower : 0 < p) (hupper : p ≤ 139) :
    k6PrefixGroup0036NormalLookup p = normalQrMaskWords p := by
  by_cases hcase0 : p ≤ 61
  · have hlocal : k6PrefixGroup0036NormalLookup p = normalQrMaskWords0000 p := by
      simp [k6PrefixGroup0036NormalLookup, hcase0]
    exact hlocal.trans (normalQrMaskWords_eq_group0000 (by omega) hcase0).symm
  have hlocal : k6PrefixGroup0036NormalLookup p = normalQrMaskWords0001 p := by
    simp [k6PrefixGroup0036NormalLookup, hcase0, hupper]
  exact hlocal.trans (normalQrMaskWords_eq_group0001 (by omega) hupper).symm

theorem k6PrefixGroup0036NormalLookup_eq_global
    {p : ℕ} (hp : k6PrefixGroup0036MaskDomain p) :
    k6PrefixGroup0036NormalLookup p = normalQrMaskWords p := by
  exact k6PrefixGroup0036NormalLookup_eq_global_run00 hp.1 hp.2

theorem k6PrefixGroup0036TwistLookup_eq_global_run00
    {p : ℕ} (hlower : 0 < p) (hupper : p ≤ 139) :
    k6PrefixGroup0036TwistLookup p = twistQrMaskWords p := by
  by_cases hcase0 : p ≤ 61
  · have hlocal : k6PrefixGroup0036TwistLookup p = twistQrMaskWords0000 p := by
      simp [k6PrefixGroup0036TwistLookup, hcase0]
    exact hlocal.trans (twistQrMaskWords_eq_group0000 (by omega) hcase0).symm
  have hlocal : k6PrefixGroup0036TwistLookup p = twistQrMaskWords0001 p := by
    simp [k6PrefixGroup0036TwistLookup, hcase0, hupper]
  exact hlocal.trans (twistQrMaskWords_eq_group0001 (by omega) hupper).symm

theorem k6PrefixGroup0036TwistLookup_eq_global
    {p : ℕ} (hp : k6PrefixGroup0036MaskDomain p) :
    k6PrefixGroup0036TwistLookup p = twistQrMaskWords p := by
  exact k6PrefixGroup0036TwistLookup_eq_global_run00 hp.1 hp.2

theorem k6PrefixGroup0036_standard_passes
    (row : List ℕ × ℕ) (hrow : row ∈ k6PrefixGroup0036) :
    Erdos848.globalMixedSupportPrefixPasses 6 row.1 = true := by
  have hendpointPass := (List.all_eq_true.mp
    k6PrefixGroup0036_endpoint_passes) row hrow
  have hendpoint : Erdos848.globalMixedSupportEndpoint row.1 =
      max 5_000_000 (row.1.prod * row.2) :=
    of_decide_eq_true hendpointPass
  have hmask := (List.all_eq_true.mp
    k6PrefixGroup0036_mask_passes) row hrow
  have hsupport : ∀ p ∈
      row.1.filter (fun p => decide (p ≤ 2843)),
      k6PrefixGroup0036MaskDomain p := by
    intro p hp
    exact of_decide_eq_true ((List.all_eq_true.mp hmask) p hp)
  have hleaf := (List.all_eq_true.mp k6PrefixGroup0036_passes) row hrow
  unfold k6PrefixGroup0036Passes at hleaf
  rw [← hendpoint] at hleaf
  have hcongr := Erdos848.globalMixedCorePrefixPasses_congr
    k6PrefixGroup0036NormalLookup normalQrMaskWords
    k6PrefixGroup0036TwistLookup twistQrMaskWords 6
    (Erdos848.globalMixedSupportEndpoint row.1) row.1
    (fun p hp => k6PrefixGroup0036NormalLookup_eq_global
      (hsupport p hp))
    (fun p hp => k6PrefixGroup0036TwistLookup_eq_global
      (hsupport p hp))
  rw [hcongr, Erdos848.globalMixedCorePrefixPasses_eq] at hleaf
  exact hleaf

#print axioms k6PrefixGroup0036_standard_passes

end Erdos848.GeneratedTailGlobalMixedSupportCoverage
