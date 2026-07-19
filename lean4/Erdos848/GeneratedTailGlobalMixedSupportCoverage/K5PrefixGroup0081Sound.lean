import Erdos848.TailGlobalMixedCoreBridge
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.K5PrefixGroup0081
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.MaskDispatchGroup0000
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.MaskDispatchGroup0001

namespace Erdos848.GeneratedTailGlobalMixedSupportCoverage

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def k5PrefixGroup0081MaskDomain (p : ℕ) : Prop :=
  (0 < p ∧ p ≤ 139)

instance k5PrefixGroup0081MaskDomainDecidable (p : ℕ) : Decidable (k5PrefixGroup0081MaskDomain p) := by
  unfold k5PrefixGroup0081MaskDomain
  infer_instance

def k5PrefixGroup0081EndpointPasses (row : List ℕ × ℕ) : Bool :=
  decide (Erdos848.globalMixedSupportEndpoint row.1 =
    max 5_000_000 (row.1.prod * row.2))

def k5PrefixGroup0081MaskPasses (row : List ℕ × ℕ) : Bool :=
    (row.1.filter fun p => decide (p ≤ 2843)).all fun p =>
      decide (k5PrefixGroup0081MaskDomain p)

theorem k5PrefixGroup0081_endpoint_passes :
    k5PrefixGroup0081.all k5PrefixGroup0081EndpointPasses = true := by
  rfl

theorem k5PrefixGroup0081_mask_passes :
    k5PrefixGroup0081.all k5PrefixGroup0081MaskPasses = true := by
  rfl

theorem k5PrefixGroup0081NormalLookup_eq_global_run00
    {p : ℕ} (hlower : 0 < p) (hupper : p ≤ 139) :
    k5PrefixGroup0081NormalLookup p = normalQrMaskWords p := by
  by_cases hcase0 : p ≤ 61
  · have hlocal : k5PrefixGroup0081NormalLookup p = normalQrMaskWords0000 p := by
      simp [k5PrefixGroup0081NormalLookup, hcase0]
    exact hlocal.trans (normalQrMaskWords_eq_group0000 (by omega) hcase0).symm
  have hlocal : k5PrefixGroup0081NormalLookup p = normalQrMaskWords0001 p := by
    simp [k5PrefixGroup0081NormalLookup, hcase0, hupper]
  exact hlocal.trans (normalQrMaskWords_eq_group0001 (by omega) hupper).symm

theorem k5PrefixGroup0081NormalLookup_eq_global
    {p : ℕ} (hp : k5PrefixGroup0081MaskDomain p) :
    k5PrefixGroup0081NormalLookup p = normalQrMaskWords p := by
  exact k5PrefixGroup0081NormalLookup_eq_global_run00 hp.1 hp.2

theorem k5PrefixGroup0081TwistLookup_eq_global_run00
    {p : ℕ} (hlower : 0 < p) (hupper : p ≤ 139) :
    k5PrefixGroup0081TwistLookup p = twistQrMaskWords p := by
  by_cases hcase0 : p ≤ 61
  · have hlocal : k5PrefixGroup0081TwistLookup p = twistQrMaskWords0000 p := by
      simp [k5PrefixGroup0081TwistLookup, hcase0]
    exact hlocal.trans (twistQrMaskWords_eq_group0000 (by omega) hcase0).symm
  have hlocal : k5PrefixGroup0081TwistLookup p = twistQrMaskWords0001 p := by
    simp [k5PrefixGroup0081TwistLookup, hcase0, hupper]
  exact hlocal.trans (twistQrMaskWords_eq_group0001 (by omega) hupper).symm

theorem k5PrefixGroup0081TwistLookup_eq_global
    {p : ℕ} (hp : k5PrefixGroup0081MaskDomain p) :
    k5PrefixGroup0081TwistLookup p = twistQrMaskWords p := by
  exact k5PrefixGroup0081TwistLookup_eq_global_run00 hp.1 hp.2

theorem k5PrefixGroup0081_standard_passes
    (row : List ℕ × ℕ) (hrow : row ∈ k5PrefixGroup0081) :
    Erdos848.globalMixedSupportPrefixPasses 5 row.1 = true := by
  have hendpointPass := (List.all_eq_true.mp
    k5PrefixGroup0081_endpoint_passes) row hrow
  have hendpoint : Erdos848.globalMixedSupportEndpoint row.1 =
      max 5_000_000 (row.1.prod * row.2) :=
    of_decide_eq_true hendpointPass
  have hmask := (List.all_eq_true.mp
    k5PrefixGroup0081_mask_passes) row hrow
  have hsupport : ∀ p ∈
      row.1.filter (fun p => decide (p ≤ 2843)),
      k5PrefixGroup0081MaskDomain p := by
    intro p hp
    exact of_decide_eq_true ((List.all_eq_true.mp hmask) p hp)
  have hleaf := (List.all_eq_true.mp k5PrefixGroup0081_passes) row hrow
  unfold k5PrefixGroup0081Passes at hleaf
  rw [← hendpoint] at hleaf
  have hcongr := Erdos848.globalMixedCorePrefixPasses_congr
    k5PrefixGroup0081NormalLookup normalQrMaskWords
    k5PrefixGroup0081TwistLookup twistQrMaskWords 5
    (Erdos848.globalMixedSupportEndpoint row.1) row.1
    (fun p hp => k5PrefixGroup0081NormalLookup_eq_global
      (hsupport p hp))
    (fun p hp => k5PrefixGroup0081TwistLookup_eq_global
      (hsupport p hp))
  rw [hcongr, Erdos848.globalMixedCorePrefixPasses_eq] at hleaf
  exact hleaf

#print axioms k5PrefixGroup0081_standard_passes

end Erdos848.GeneratedTailGlobalMixedSupportCoverage
