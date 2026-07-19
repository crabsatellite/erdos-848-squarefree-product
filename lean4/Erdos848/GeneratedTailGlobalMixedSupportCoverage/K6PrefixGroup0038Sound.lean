import Erdos848.TailGlobalMixedCoreBridge
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.K6PrefixGroup0038
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.MaskDispatchGroup0000
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.MaskDispatchGroup0001

namespace Erdos848.GeneratedTailGlobalMixedSupportCoverage

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def k6PrefixGroup0038MaskDomain (p : ℕ) : Prop :=
  (0 < p ∧ p ≤ 139)

instance k6PrefixGroup0038MaskDomainDecidable (p : ℕ) : Decidable (k6PrefixGroup0038MaskDomain p) := by
  unfold k6PrefixGroup0038MaskDomain
  infer_instance

def k6PrefixGroup0038EndpointPasses (row : List ℕ × ℕ) : Bool :=
  decide (Erdos848.globalMixedSupportEndpoint row.1 =
    max 5_000_000 (row.1.prod * row.2))

def k6PrefixGroup0038MaskPasses (row : List ℕ × ℕ) : Bool :=
    (row.1.filter fun p => decide (p ≤ 2843)).all fun p =>
      decide (k6PrefixGroup0038MaskDomain p)

theorem k6PrefixGroup0038_endpoint_passes :
    k6PrefixGroup0038.all k6PrefixGroup0038EndpointPasses = true := by
  rfl

theorem k6PrefixGroup0038_mask_passes :
    k6PrefixGroup0038.all k6PrefixGroup0038MaskPasses = true := by
  rfl

theorem k6PrefixGroup0038NormalLookup_eq_global_run00
    {p : ℕ} (hlower : 0 < p) (hupper : p ≤ 139) :
    k6PrefixGroup0038NormalLookup p = normalQrMaskWords p := by
  by_cases hcase0 : p ≤ 61
  · have hlocal : k6PrefixGroup0038NormalLookup p = normalQrMaskWords0000 p := by
      simp [k6PrefixGroup0038NormalLookup, hcase0]
    exact hlocal.trans (normalQrMaskWords_eq_group0000 (by omega) hcase0).symm
  have hlocal : k6PrefixGroup0038NormalLookup p = normalQrMaskWords0001 p := by
    simp [k6PrefixGroup0038NormalLookup, hcase0, hupper]
  exact hlocal.trans (normalQrMaskWords_eq_group0001 (by omega) hupper).symm

theorem k6PrefixGroup0038NormalLookup_eq_global
    {p : ℕ} (hp : k6PrefixGroup0038MaskDomain p) :
    k6PrefixGroup0038NormalLookup p = normalQrMaskWords p := by
  exact k6PrefixGroup0038NormalLookup_eq_global_run00 hp.1 hp.2

theorem k6PrefixGroup0038TwistLookup_eq_global_run00
    {p : ℕ} (hlower : 0 < p) (hupper : p ≤ 139) :
    k6PrefixGroup0038TwistLookup p = twistQrMaskWords p := by
  by_cases hcase0 : p ≤ 61
  · have hlocal : k6PrefixGroup0038TwistLookup p = twistQrMaskWords0000 p := by
      simp [k6PrefixGroup0038TwistLookup, hcase0]
    exact hlocal.trans (twistQrMaskWords_eq_group0000 (by omega) hcase0).symm
  have hlocal : k6PrefixGroup0038TwistLookup p = twistQrMaskWords0001 p := by
    simp [k6PrefixGroup0038TwistLookup, hcase0, hupper]
  exact hlocal.trans (twistQrMaskWords_eq_group0001 (by omega) hupper).symm

theorem k6PrefixGroup0038TwistLookup_eq_global
    {p : ℕ} (hp : k6PrefixGroup0038MaskDomain p) :
    k6PrefixGroup0038TwistLookup p = twistQrMaskWords p := by
  exact k6PrefixGroup0038TwistLookup_eq_global_run00 hp.1 hp.2

theorem k6PrefixGroup0038_standard_passes
    (row : List ℕ × ℕ) (hrow : row ∈ k6PrefixGroup0038) :
    Erdos848.globalMixedSupportPrefixPasses 6 row.1 = true := by
  have hendpointPass := (List.all_eq_true.mp
    k6PrefixGroup0038_endpoint_passes) row hrow
  have hendpoint : Erdos848.globalMixedSupportEndpoint row.1 =
      max 5_000_000 (row.1.prod * row.2) :=
    of_decide_eq_true hendpointPass
  have hmask := (List.all_eq_true.mp
    k6PrefixGroup0038_mask_passes) row hrow
  have hsupport : ∀ p ∈
      row.1.filter (fun p => decide (p ≤ 2843)),
      k6PrefixGroup0038MaskDomain p := by
    intro p hp
    exact of_decide_eq_true ((List.all_eq_true.mp hmask) p hp)
  have hleaf := (List.all_eq_true.mp k6PrefixGroup0038_passes) row hrow
  unfold k6PrefixGroup0038Passes at hleaf
  rw [← hendpoint] at hleaf
  have hcongr := Erdos848.globalMixedCorePrefixPasses_congr
    k6PrefixGroup0038NormalLookup normalQrMaskWords
    k6PrefixGroup0038TwistLookup twistQrMaskWords 6
    (Erdos848.globalMixedSupportEndpoint row.1) row.1
    (fun p hp => k6PrefixGroup0038NormalLookup_eq_global
      (hsupport p hp))
    (fun p hp => k6PrefixGroup0038TwistLookup_eq_global
      (hsupport p hp))
  rw [hcongr, Erdos848.globalMixedCorePrefixPasses_eq] at hleaf
  exact hleaf

#print axioms k6PrefixGroup0038_standard_passes

end Erdos848.GeneratedTailGlobalMixedSupportCoverage
