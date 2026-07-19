import Erdos848.TailGlobalMixedCoreBridge
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.K1PrefixGroup0000

namespace Erdos848.GeneratedTailGlobalMixedSupportCoverage

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def k1PrefixGroup0000MaskDomain (_p : ℕ) : Prop := False

instance k1PrefixGroup0000MaskDomainDecidable (p : ℕ) : Decidable (k1PrefixGroup0000MaskDomain p) := by
  unfold k1PrefixGroup0000MaskDomain
  infer_instance

def k1PrefixGroup0000EndpointPasses (row : List ℕ × ℕ) : Bool :=
  decide (Erdos848.globalMixedSupportEndpoint row.1 =
    max 5_000_000 (row.1.prod * row.2))

def k1PrefixGroup0000MaskPasses (row : List ℕ × ℕ) : Bool :=
    (row.1.filter fun p => decide (p ≤ 2843)).all fun p =>
      decide (k1PrefixGroup0000MaskDomain p)

theorem k1PrefixGroup0000_endpoint_passes :
    k1PrefixGroup0000.all k1PrefixGroup0000EndpointPasses = true := by
  rfl

theorem k1PrefixGroup0000_mask_passes :
    k1PrefixGroup0000.all k1PrefixGroup0000MaskPasses = true := by
  rfl

theorem k1PrefixGroup0000NormalLookup_eq_global
    {p : ℕ} (hp : k1PrefixGroup0000MaskDomain p) :
    k1PrefixGroup0000NormalLookup p = normalQrMaskWords p := by
  exact False.elim hp

theorem k1PrefixGroup0000TwistLookup_eq_global
    {p : ℕ} (hp : k1PrefixGroup0000MaskDomain p) :
    k1PrefixGroup0000TwistLookup p = twistQrMaskWords p := by
  exact False.elim hp

theorem k1PrefixGroup0000_standard_passes
    (row : List ℕ × ℕ) (hrow : row ∈ k1PrefixGroup0000) :
    Erdos848.globalMixedSupportPrefixPasses 1 row.1 = true := by
  have hendpointPass := (List.all_eq_true.mp
    k1PrefixGroup0000_endpoint_passes) row hrow
  have hendpoint : Erdos848.globalMixedSupportEndpoint row.1 =
      max 5_000_000 (row.1.prod * row.2) :=
    of_decide_eq_true hendpointPass
  have hmask := (List.all_eq_true.mp
    k1PrefixGroup0000_mask_passes) row hrow
  have hsupport : ∀ p ∈
      row.1.filter (fun p => decide (p ≤ 2843)),
      k1PrefixGroup0000MaskDomain p := by
    intro p hp
    exact of_decide_eq_true ((List.all_eq_true.mp hmask) p hp)
  have hleaf := (List.all_eq_true.mp k1PrefixGroup0000_passes) row hrow
  unfold k1PrefixGroup0000Passes at hleaf
  rw [← hendpoint] at hleaf
  have hcongr := Erdos848.globalMixedCorePrefixPasses_congr
    k1PrefixGroup0000NormalLookup normalQrMaskWords
    k1PrefixGroup0000TwistLookup twistQrMaskWords 1
    (Erdos848.globalMixedSupportEndpoint row.1) row.1
    (fun p hp => k1PrefixGroup0000NormalLookup_eq_global
      (hsupport p hp))
    (fun p hp => k1PrefixGroup0000TwistLookup_eq_global
      (hsupport p hp))
  rw [hcongr, Erdos848.globalMixedCorePrefixPasses_eq] at hleaf
  exact hleaf

#print axioms k1PrefixGroup0000_standard_passes

end Erdos848.GeneratedTailGlobalMixedSupportCoverage
