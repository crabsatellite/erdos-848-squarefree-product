import Erdos848.TailGlobalMixedCoreBridge
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.K5PrefixGroup0079
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.MaskDispatchGroup0000
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.MaskDispatchGroup0001
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.MaskDispatchGroup0002

namespace Erdos848.GeneratedTailGlobalMixedSupportCoverage

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def k5PrefixGroup0079MaskDomain (p : ℕ) : Prop :=
  (0 < p ∧ p ≤ 229)

instance k5PrefixGroup0079MaskDomainDecidable (p : ℕ) : Decidable (k5PrefixGroup0079MaskDomain p) := by
  unfold k5PrefixGroup0079MaskDomain
  infer_instance

def k5PrefixGroup0079EndpointPasses (row : List ℕ × ℕ) : Bool :=
  decide (Erdos848.globalMixedSupportEndpoint row.1 =
    max 5_000_000 (row.1.prod * row.2))

def k5PrefixGroup0079MaskPasses (row : List ℕ × ℕ) : Bool :=
    (row.1.filter fun p => decide (p ≤ 2843)).all fun p =>
      decide (k5PrefixGroup0079MaskDomain p)

theorem k5PrefixGroup0079_endpoint_passes :
    k5PrefixGroup0079.all k5PrefixGroup0079EndpointPasses = true := by
  rfl

theorem k5PrefixGroup0079_mask_passes :
    k5PrefixGroup0079.all k5PrefixGroup0079MaskPasses = true := by
  rfl

theorem k5PrefixGroup0079NormalLookup_eq_global_run00
    {p : ℕ} (hlower : 0 < p) (hupper : p ≤ 229) :
    k5PrefixGroup0079NormalLookup p = normalQrMaskWords p := by
  by_cases hcase0 : p ≤ 61
  · have hlocal : k5PrefixGroup0079NormalLookup p = normalQrMaskWords0000 p := by
      simp [k5PrefixGroup0079NormalLookup, hcase0]
    exact hlocal.trans (normalQrMaskWords_eq_group0000 (by omega) hcase0).symm
  by_cases hcase1 : p ≤ 139
  · have hlocal : k5PrefixGroup0079NormalLookup p = normalQrMaskWords0001 p := by
      simp [k5PrefixGroup0079NormalLookup, hcase0, hcase1]
    exact hlocal.trans (normalQrMaskWords_eq_group0001 (by omega) hcase1).symm
  have hlocal : k5PrefixGroup0079NormalLookup p = normalQrMaskWords0002 p := by
    simp [k5PrefixGroup0079NormalLookup, hcase0, hcase1, hupper]
  exact hlocal.trans (normalQrMaskWords_eq_group0002 (by omega) hupper).symm

theorem k5PrefixGroup0079NormalLookup_eq_global
    {p : ℕ} (hp : k5PrefixGroup0079MaskDomain p) :
    k5PrefixGroup0079NormalLookup p = normalQrMaskWords p := by
  exact k5PrefixGroup0079NormalLookup_eq_global_run00 hp.1 hp.2

theorem k5PrefixGroup0079TwistLookup_eq_global_run00
    {p : ℕ} (hlower : 0 < p) (hupper : p ≤ 229) :
    k5PrefixGroup0079TwistLookup p = twistQrMaskWords p := by
  by_cases hcase0 : p ≤ 61
  · have hlocal : k5PrefixGroup0079TwistLookup p = twistQrMaskWords0000 p := by
      simp [k5PrefixGroup0079TwistLookup, hcase0]
    exact hlocal.trans (twistQrMaskWords_eq_group0000 (by omega) hcase0).symm
  by_cases hcase1 : p ≤ 139
  · have hlocal : k5PrefixGroup0079TwistLookup p = twistQrMaskWords0001 p := by
      simp [k5PrefixGroup0079TwistLookup, hcase0, hcase1]
    exact hlocal.trans (twistQrMaskWords_eq_group0001 (by omega) hcase1).symm
  have hlocal : k5PrefixGroup0079TwistLookup p = twistQrMaskWords0002 p := by
    simp [k5PrefixGroup0079TwistLookup, hcase0, hcase1, hupper]
  exact hlocal.trans (twistQrMaskWords_eq_group0002 (by omega) hupper).symm

theorem k5PrefixGroup0079TwistLookup_eq_global
    {p : ℕ} (hp : k5PrefixGroup0079MaskDomain p) :
    k5PrefixGroup0079TwistLookup p = twistQrMaskWords p := by
  exact k5PrefixGroup0079TwistLookup_eq_global_run00 hp.1 hp.2

theorem k5PrefixGroup0079_standard_passes
    (row : List ℕ × ℕ) (hrow : row ∈ k5PrefixGroup0079) :
    Erdos848.globalMixedSupportPrefixPasses 5 row.1 = true := by
  have hendpointPass := (List.all_eq_true.mp
    k5PrefixGroup0079_endpoint_passes) row hrow
  have hendpoint : Erdos848.globalMixedSupportEndpoint row.1 =
      max 5_000_000 (row.1.prod * row.2) :=
    of_decide_eq_true hendpointPass
  have hmask := (List.all_eq_true.mp
    k5PrefixGroup0079_mask_passes) row hrow
  have hsupport : ∀ p ∈
      row.1.filter (fun p => decide (p ≤ 2843)),
      k5PrefixGroup0079MaskDomain p := by
    intro p hp
    exact of_decide_eq_true ((List.all_eq_true.mp hmask) p hp)
  have hleaf := (List.all_eq_true.mp k5PrefixGroup0079_passes) row hrow
  unfold k5PrefixGroup0079Passes at hleaf
  rw [← hendpoint] at hleaf
  have hcongr := Erdos848.globalMixedCorePrefixPasses_congr
    k5PrefixGroup0079NormalLookup normalQrMaskWords
    k5PrefixGroup0079TwistLookup twistQrMaskWords 5
    (Erdos848.globalMixedSupportEndpoint row.1) row.1
    (fun p hp => k5PrefixGroup0079NormalLookup_eq_global
      (hsupport p hp))
    (fun p hp => k5PrefixGroup0079TwistLookup_eq_global
      (hsupport p hp))
  rw [hcongr, Erdos848.globalMixedCorePrefixPasses_eq] at hleaf
  exact hleaf

#print axioms k5PrefixGroup0079_standard_passes

end Erdos848.GeneratedTailGlobalMixedSupportCoverage
