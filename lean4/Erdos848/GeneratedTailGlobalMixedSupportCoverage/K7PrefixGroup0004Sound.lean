import Erdos848.TailGlobalMixedCoreBridge
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.K7PrefixGroup0004
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.MaskDispatchGroup0000
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.MaskDispatchGroup0001

namespace Erdos848.GeneratedTailGlobalMixedSupportCoverage

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def k7PrefixGroup0004MaskDomain (p : ℕ) : Prop :=
  (0 < p ∧ p ≤ 139)

instance k7PrefixGroup0004MaskDomainDecidable (p : ℕ) : Decidable (k7PrefixGroup0004MaskDomain p) := by
  unfold k7PrefixGroup0004MaskDomain
  infer_instance

def k7PrefixGroup0004EndpointPasses (row : List ℕ × ℕ) : Bool :=
  decide (Erdos848.globalMixedSupportEndpoint row.1 =
    max 5_000_000 (row.1.prod * row.2))

def k7PrefixGroup0004MaskPasses (row : List ℕ × ℕ) : Bool :=
    (row.1.filter fun p => decide (p ≤ 2843)).all fun p =>
      decide (k7PrefixGroup0004MaskDomain p)

theorem k7PrefixGroup0004_endpoint_passes :
    k7PrefixGroup0004.all k7PrefixGroup0004EndpointPasses = true := by
  rfl

theorem k7PrefixGroup0004_mask_passes :
    k7PrefixGroup0004.all k7PrefixGroup0004MaskPasses = true := by
  rfl

theorem k7PrefixGroup0004NormalLookup_eq_global_run00
    {p : ℕ} (hlower : 0 < p) (hupper : p ≤ 139) :
    k7PrefixGroup0004NormalLookup p = normalQrMaskWords p := by
  by_cases hcase0 : p ≤ 61
  · have hlocal : k7PrefixGroup0004NormalLookup p = normalQrMaskWords0000 p := by
      simp [k7PrefixGroup0004NormalLookup, hcase0]
    exact hlocal.trans (normalQrMaskWords_eq_group0000 (by omega) hcase0).symm
  have hlocal : k7PrefixGroup0004NormalLookup p = normalQrMaskWords0001 p := by
    simp [k7PrefixGroup0004NormalLookup, hcase0, hupper]
  exact hlocal.trans (normalQrMaskWords_eq_group0001 (by omega) hupper).symm

theorem k7PrefixGroup0004NormalLookup_eq_global
    {p : ℕ} (hp : k7PrefixGroup0004MaskDomain p) :
    k7PrefixGroup0004NormalLookup p = normalQrMaskWords p := by
  exact k7PrefixGroup0004NormalLookup_eq_global_run00 hp.1 hp.2

theorem k7PrefixGroup0004TwistLookup_eq_global_run00
    {p : ℕ} (hlower : 0 < p) (hupper : p ≤ 139) :
    k7PrefixGroup0004TwistLookup p = twistQrMaskWords p := by
  by_cases hcase0 : p ≤ 61
  · have hlocal : k7PrefixGroup0004TwistLookup p = twistQrMaskWords0000 p := by
      simp [k7PrefixGroup0004TwistLookup, hcase0]
    exact hlocal.trans (twistQrMaskWords_eq_group0000 (by omega) hcase0).symm
  have hlocal : k7PrefixGroup0004TwistLookup p = twistQrMaskWords0001 p := by
    simp [k7PrefixGroup0004TwistLookup, hcase0, hupper]
  exact hlocal.trans (twistQrMaskWords_eq_group0001 (by omega) hupper).symm

theorem k7PrefixGroup0004TwistLookup_eq_global
    {p : ℕ} (hp : k7PrefixGroup0004MaskDomain p) :
    k7PrefixGroup0004TwistLookup p = twistQrMaskWords p := by
  exact k7PrefixGroup0004TwistLookup_eq_global_run00 hp.1 hp.2

theorem k7PrefixGroup0004_standard_passes
    (row : List ℕ × ℕ) (hrow : row ∈ k7PrefixGroup0004) :
    Erdos848.globalMixedSupportPrefixPasses 7 row.1 = true := by
  have hendpointPass := (List.all_eq_true.mp
    k7PrefixGroup0004_endpoint_passes) row hrow
  have hendpoint : Erdos848.globalMixedSupportEndpoint row.1 =
      max 5_000_000 (row.1.prod * row.2) :=
    of_decide_eq_true hendpointPass
  have hmask := (List.all_eq_true.mp
    k7PrefixGroup0004_mask_passes) row hrow
  have hsupport : ∀ p ∈
      row.1.filter (fun p => decide (p ≤ 2843)),
      k7PrefixGroup0004MaskDomain p := by
    intro p hp
    exact of_decide_eq_true ((List.all_eq_true.mp hmask) p hp)
  have hleaf := (List.all_eq_true.mp k7PrefixGroup0004_passes) row hrow
  unfold k7PrefixGroup0004Passes at hleaf
  rw [← hendpoint] at hleaf
  have hcongr := Erdos848.globalMixedCorePrefixPasses_congr
    k7PrefixGroup0004NormalLookup normalQrMaskWords
    k7PrefixGroup0004TwistLookup twistQrMaskWords 7
    (Erdos848.globalMixedSupportEndpoint row.1) row.1
    (fun p hp => k7PrefixGroup0004NormalLookup_eq_global
      (hsupport p hp))
    (fun p hp => k7PrefixGroup0004TwistLookup_eq_global
      (hsupport p hp))
  rw [hcongr, Erdos848.globalMixedCorePrefixPasses_eq] at hleaf
  exact hleaf

#print axioms k7PrefixGroup0004_standard_passes

end Erdos848.GeneratedTailGlobalMixedSupportCoverage
