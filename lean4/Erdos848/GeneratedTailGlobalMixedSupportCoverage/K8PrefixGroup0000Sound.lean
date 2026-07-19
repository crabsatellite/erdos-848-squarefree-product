import Erdos848.TailGlobalMixedCoreBridge
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.K8PrefixGroup0000
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.MaskDispatchGroup0000
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.MaskDispatchGroup0001

namespace Erdos848.GeneratedTailGlobalMixedSupportCoverage

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def k8PrefixGroup0000MaskDomain (p : ℕ) : Prop :=
  (0 < p ∧ p ≤ 139)

instance k8PrefixGroup0000MaskDomainDecidable (p : ℕ) : Decidable (k8PrefixGroup0000MaskDomain p) := by
  unfold k8PrefixGroup0000MaskDomain
  infer_instance

def k8PrefixGroup0000EndpointPasses (row : List ℕ × ℕ) : Bool :=
  decide (Erdos848.globalMixedSupportEndpoint row.1 =
    max 5_000_000 (row.1.prod * row.2))

def k8PrefixGroup0000MaskPasses (row : List ℕ × ℕ) : Bool :=
    (row.1.filter fun p => decide (p ≤ 2843)).all fun p =>
      decide (k8PrefixGroup0000MaskDomain p)

theorem k8PrefixGroup0000_endpoint_passes :
    k8PrefixGroup0000.all k8PrefixGroup0000EndpointPasses = true := by
  rfl

theorem k8PrefixGroup0000_mask_passes :
    k8PrefixGroup0000.all k8PrefixGroup0000MaskPasses = true := by
  rfl

theorem k8PrefixGroup0000NormalLookup_eq_global_run00
    {p : ℕ} (hlower : 0 < p) (hupper : p ≤ 139) :
    k8PrefixGroup0000NormalLookup p = normalQrMaskWords p := by
  by_cases hcase0 : p ≤ 61
  · have hlocal : k8PrefixGroup0000NormalLookup p = normalQrMaskWords0000 p := by
      simp [k8PrefixGroup0000NormalLookup, hcase0]
    exact hlocal.trans (normalQrMaskWords_eq_group0000 (by omega) hcase0).symm
  have hlocal : k8PrefixGroup0000NormalLookup p = normalQrMaskWords0001 p := by
    simp [k8PrefixGroup0000NormalLookup, hcase0, hupper]
  exact hlocal.trans (normalQrMaskWords_eq_group0001 (by omega) hupper).symm

theorem k8PrefixGroup0000NormalLookup_eq_global
    {p : ℕ} (hp : k8PrefixGroup0000MaskDomain p) :
    k8PrefixGroup0000NormalLookup p = normalQrMaskWords p := by
  exact k8PrefixGroup0000NormalLookup_eq_global_run00 hp.1 hp.2

theorem k8PrefixGroup0000TwistLookup_eq_global_run00
    {p : ℕ} (hlower : 0 < p) (hupper : p ≤ 139) :
    k8PrefixGroup0000TwistLookup p = twistQrMaskWords p := by
  by_cases hcase0 : p ≤ 61
  · have hlocal : k8PrefixGroup0000TwistLookup p = twistQrMaskWords0000 p := by
      simp [k8PrefixGroup0000TwistLookup, hcase0]
    exact hlocal.trans (twistQrMaskWords_eq_group0000 (by omega) hcase0).symm
  have hlocal : k8PrefixGroup0000TwistLookup p = twistQrMaskWords0001 p := by
    simp [k8PrefixGroup0000TwistLookup, hcase0, hupper]
  exact hlocal.trans (twistQrMaskWords_eq_group0001 (by omega) hupper).symm

theorem k8PrefixGroup0000TwistLookup_eq_global
    {p : ℕ} (hp : k8PrefixGroup0000MaskDomain p) :
    k8PrefixGroup0000TwistLookup p = twistQrMaskWords p := by
  exact k8PrefixGroup0000TwistLookup_eq_global_run00 hp.1 hp.2

theorem k8PrefixGroup0000_standard_passes
    (row : List ℕ × ℕ) (hrow : row ∈ k8PrefixGroup0000) :
    Erdos848.globalMixedSupportPrefixPasses 8 row.1 = true := by
  have hendpointPass := (List.all_eq_true.mp
    k8PrefixGroup0000_endpoint_passes) row hrow
  have hendpoint : Erdos848.globalMixedSupportEndpoint row.1 =
      max 5_000_000 (row.1.prod * row.2) :=
    of_decide_eq_true hendpointPass
  have hmask := (List.all_eq_true.mp
    k8PrefixGroup0000_mask_passes) row hrow
  have hsupport : ∀ p ∈
      row.1.filter (fun p => decide (p ≤ 2843)),
      k8PrefixGroup0000MaskDomain p := by
    intro p hp
    exact of_decide_eq_true ((List.all_eq_true.mp hmask) p hp)
  have hleaf := (List.all_eq_true.mp k8PrefixGroup0000_passes) row hrow
  unfold k8PrefixGroup0000Passes at hleaf
  rw [← hendpoint] at hleaf
  have hcongr := Erdos848.globalMixedCorePrefixPasses_congr
    k8PrefixGroup0000NormalLookup normalQrMaskWords
    k8PrefixGroup0000TwistLookup twistQrMaskWords 8
    (Erdos848.globalMixedSupportEndpoint row.1) row.1
    (fun p hp => k8PrefixGroup0000NormalLookup_eq_global
      (hsupport p hp))
    (fun p hp => k8PrefixGroup0000TwistLookup_eq_global
      (hsupport p hp))
  rw [hcongr, Erdos848.globalMixedCorePrefixPasses_eq] at hleaf
  exact hleaf

#print axioms k8PrefixGroup0000_standard_passes

end Erdos848.GeneratedTailGlobalMixedSupportCoverage
