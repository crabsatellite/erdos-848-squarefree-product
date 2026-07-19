import Erdos848.TailGlobalMixedCoreBridge
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.K0PrefixGroup0000

namespace Erdos848.GeneratedTailGlobalMixedSupportCoverage

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def k0PrefixGroup0000MaskDomain (_p : ℕ) : Prop := False

instance k0PrefixGroup0000MaskDomainDecidable (p : ℕ) : Decidable (k0PrefixGroup0000MaskDomain p) := by
  unfold k0PrefixGroup0000MaskDomain
  infer_instance

def k0PrefixGroup0000EndpointPasses (row : List ℕ × ℕ) : Bool :=
  decide (Erdos848.globalMixedSupportEndpoint row.1 =
    max 5_000_000 (row.1.prod * row.2))

def k0PrefixGroup0000MaskPasses (row : List ℕ × ℕ) : Bool :=
    (row.1.filter fun p => decide (p ≤ 2843)).all fun p =>
      decide (k0PrefixGroup0000MaskDomain p)

theorem k0PrefixGroup0000_endpoint_passes :
    k0PrefixGroup0000.all k0PrefixGroup0000EndpointPasses = true := by
  rfl

theorem k0PrefixGroup0000_mask_passes :
    k0PrefixGroup0000.all k0PrefixGroup0000MaskPasses = true := by
  rfl

theorem k0PrefixGroup0000NormalLookup_eq_global
    {p : ℕ} (hp : k0PrefixGroup0000MaskDomain p) :
    k0PrefixGroup0000NormalLookup p = normalQrMaskWords p := by
  exact False.elim hp

theorem k0PrefixGroup0000TwistLookup_eq_global
    {p : ℕ} (hp : k0PrefixGroup0000MaskDomain p) :
    k0PrefixGroup0000TwistLookup p = twistQrMaskWords p := by
  exact False.elim hp

theorem k0PrefixGroup0000_standard_passes
    (row : List ℕ × ℕ) (hrow : row ∈ k0PrefixGroup0000) :
    Erdos848.globalMixedSupportPrefixPasses 0 row.1 = true := by
  have hendpointPass := (List.all_eq_true.mp
    k0PrefixGroup0000_endpoint_passes) row hrow
  have hendpoint : Erdos848.globalMixedSupportEndpoint row.1 =
      max 5_000_000 (row.1.prod * row.2) :=
    of_decide_eq_true hendpointPass
  have hmask := (List.all_eq_true.mp
    k0PrefixGroup0000_mask_passes) row hrow
  have hsupport : ∀ p ∈
      row.1.filter (fun p => decide (p ≤ 2843)),
      k0PrefixGroup0000MaskDomain p := by
    intro p hp
    exact of_decide_eq_true ((List.all_eq_true.mp hmask) p hp)
  have hleaf := (List.all_eq_true.mp k0PrefixGroup0000_passes) row hrow
  unfold k0PrefixGroup0000Passes at hleaf
  rw [← hendpoint] at hleaf
  have hcongr := Erdos848.globalMixedCorePrefixPasses_congr
    k0PrefixGroup0000NormalLookup normalQrMaskWords
    k0PrefixGroup0000TwistLookup twistQrMaskWords 0
    (Erdos848.globalMixedSupportEndpoint row.1) row.1
    (fun p hp => k0PrefixGroup0000NormalLookup_eq_global
      (hsupport p hp))
    (fun p hp => k0PrefixGroup0000TwistLookup_eq_global
      (hsupport p hp))
  rw [hcongr, Erdos848.globalMixedCorePrefixPasses_eq] at hleaf
  exact hleaf

#print axioms k0PrefixGroup0000_standard_passes

end Erdos848.GeneratedTailGlobalMixedSupportCoverage
