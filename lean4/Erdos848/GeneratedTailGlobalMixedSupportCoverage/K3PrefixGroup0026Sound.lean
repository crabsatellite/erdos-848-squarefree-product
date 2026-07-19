import Erdos848.TailGlobalMixedCoreBridge
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.K3PrefixGroup0026
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.MaskDispatchGroup0005
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.MaskDispatchGroup0006

namespace Erdos848.GeneratedTailGlobalMixedSupportCoverage

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def k3PrefixGroup0026MaskDomain (p : ℕ) : Prop :=
  (421 < p ∧ p ≤ 619)

instance k3PrefixGroup0026MaskDomainDecidable (p : ℕ) : Decidable (k3PrefixGroup0026MaskDomain p) := by
  unfold k3PrefixGroup0026MaskDomain
  infer_instance

def k3PrefixGroup0026EndpointPasses (row : List ℕ × ℕ) : Bool :=
  decide (Erdos848.globalMixedSupportEndpoint row.1 =
    max 5_000_000 (row.1.prod * row.2))

def k3PrefixGroup0026MaskPasses (row : List ℕ × ℕ) : Bool :=
    (row.1.filter fun p => decide (p ≤ 2843)).all fun p =>
      decide (k3PrefixGroup0026MaskDomain p)

theorem k3PrefixGroup0026_endpoint_passes :
    k3PrefixGroup0026.all k3PrefixGroup0026EndpointPasses = true := by
  rfl

theorem k3PrefixGroup0026_mask_passes :
    k3PrefixGroup0026.all k3PrefixGroup0026MaskPasses = true := by
  rfl

theorem k3PrefixGroup0026NormalLookup_eq_global_run00
    {p : ℕ} (hlower : 421 < p) (hupper : p ≤ 619) :
    k3PrefixGroup0026NormalLookup p = normalQrMaskWords p := by
  by_cases hcase0 : p ≤ 521
  · have hlocal : k3PrefixGroup0026NormalLookup p = normalQrMaskWords0005 p := by
      simp [k3PrefixGroup0026NormalLookup, hcase0]
    exact hlocal.trans (normalQrMaskWords_eq_group0005 (by omega) hcase0).symm
  have hlocal : k3PrefixGroup0026NormalLookup p = normalQrMaskWords0006 p := by
    simp [k3PrefixGroup0026NormalLookup, hcase0, hupper]
  exact hlocal.trans (normalQrMaskWords_eq_group0006 (by omega) hupper).symm

theorem k3PrefixGroup0026NormalLookup_eq_global
    {p : ℕ} (hp : k3PrefixGroup0026MaskDomain p) :
    k3PrefixGroup0026NormalLookup p = normalQrMaskWords p := by
  exact k3PrefixGroup0026NormalLookup_eq_global_run00 hp.1 hp.2

theorem k3PrefixGroup0026TwistLookup_eq_global_run00
    {p : ℕ} (hlower : 421 < p) (hupper : p ≤ 619) :
    k3PrefixGroup0026TwistLookup p = twistQrMaskWords p := by
  by_cases hcase0 : p ≤ 521
  · have hlocal : k3PrefixGroup0026TwistLookup p = twistQrMaskWords0005 p := by
      simp [k3PrefixGroup0026TwistLookup, hcase0]
    exact hlocal.trans (twistQrMaskWords_eq_group0005 (by omega) hcase0).symm
  have hlocal : k3PrefixGroup0026TwistLookup p = twistQrMaskWords0006 p := by
    simp [k3PrefixGroup0026TwistLookup, hcase0, hupper]
  exact hlocal.trans (twistQrMaskWords_eq_group0006 (by omega) hupper).symm

theorem k3PrefixGroup0026TwistLookup_eq_global
    {p : ℕ} (hp : k3PrefixGroup0026MaskDomain p) :
    k3PrefixGroup0026TwistLookup p = twistQrMaskWords p := by
  exact k3PrefixGroup0026TwistLookup_eq_global_run00 hp.1 hp.2

theorem k3PrefixGroup0026_standard_passes
    (row : List ℕ × ℕ) (hrow : row ∈ k3PrefixGroup0026) :
    Erdos848.globalMixedSupportPrefixPasses 3 row.1 = true := by
  have hendpointPass := (List.all_eq_true.mp
    k3PrefixGroup0026_endpoint_passes) row hrow
  have hendpoint : Erdos848.globalMixedSupportEndpoint row.1 =
      max 5_000_000 (row.1.prod * row.2) :=
    of_decide_eq_true hendpointPass
  have hmask := (List.all_eq_true.mp
    k3PrefixGroup0026_mask_passes) row hrow
  have hsupport : ∀ p ∈
      row.1.filter (fun p => decide (p ≤ 2843)),
      k3PrefixGroup0026MaskDomain p := by
    intro p hp
    exact of_decide_eq_true ((List.all_eq_true.mp hmask) p hp)
  have hleaf := (List.all_eq_true.mp k3PrefixGroup0026_passes) row hrow
  unfold k3PrefixGroup0026Passes at hleaf
  rw [← hendpoint] at hleaf
  have hcongr := Erdos848.globalMixedCorePrefixPasses_congr
    k3PrefixGroup0026NormalLookup normalQrMaskWords
    k3PrefixGroup0026TwistLookup twistQrMaskWords 3
    (Erdos848.globalMixedSupportEndpoint row.1) row.1
    (fun p hp => k3PrefixGroup0026NormalLookup_eq_global
      (hsupport p hp))
    (fun p hp => k3PrefixGroup0026TwistLookup_eq_global
      (hsupport p hp))
  rw [hcongr, Erdos848.globalMixedCorePrefixPasses_eq] at hleaf
  exact hleaf

#print axioms k3PrefixGroup0026_standard_passes

end Erdos848.GeneratedTailGlobalMixedSupportCoverage
