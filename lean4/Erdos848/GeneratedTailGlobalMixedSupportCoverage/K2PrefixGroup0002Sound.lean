import Erdos848.TailGlobalMixedCoreBridge
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.K2PrefixGroup0002

namespace Erdos848.GeneratedTailGlobalMixedSupportCoverage

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def k2PrefixGroup0002MaskDomain (_p : ℕ) : Prop := False

instance k2PrefixGroup0002MaskDomainDecidable (p : ℕ) : Decidable (k2PrefixGroup0002MaskDomain p) := by
  unfold k2PrefixGroup0002MaskDomain
  infer_instance

def k2PrefixGroup0002EndpointPasses (row : List ℕ × ℕ) : Bool :=
  decide (Erdos848.globalMixedSupportEndpoint row.1 =
    max 5_000_000 (row.1.prod * row.2))

def k2PrefixGroup0002MaskPasses (row : List ℕ × ℕ) : Bool :=
    (row.1.filter fun p => decide (p ≤ 2843)).all fun p =>
      decide (k2PrefixGroup0002MaskDomain p)

theorem k2PrefixGroup0002_endpoint_passes :
    k2PrefixGroup0002.all k2PrefixGroup0002EndpointPasses = true := by
  rfl

theorem k2PrefixGroup0002_mask_passes :
    k2PrefixGroup0002.all k2PrefixGroup0002MaskPasses = true := by
  rfl

theorem k2PrefixGroup0002NormalLookup_eq_global
    {p : ℕ} (hp : k2PrefixGroup0002MaskDomain p) :
    k2PrefixGroup0002NormalLookup p = normalQrMaskWords p := by
  exact False.elim hp

theorem k2PrefixGroup0002TwistLookup_eq_global
    {p : ℕ} (hp : k2PrefixGroup0002MaskDomain p) :
    k2PrefixGroup0002TwistLookup p = twistQrMaskWords p := by
  exact False.elim hp

theorem k2PrefixGroup0002_standard_passes
    (row : List ℕ × ℕ) (hrow : row ∈ k2PrefixGroup0002) :
    Erdos848.globalMixedSupportPrefixPasses 2 row.1 = true := by
  have hendpointPass := (List.all_eq_true.mp
    k2PrefixGroup0002_endpoint_passes) row hrow
  have hendpoint : Erdos848.globalMixedSupportEndpoint row.1 =
      max 5_000_000 (row.1.prod * row.2) :=
    of_decide_eq_true hendpointPass
  have hmask := (List.all_eq_true.mp
    k2PrefixGroup0002_mask_passes) row hrow
  have hsupport : ∀ p ∈
      row.1.filter (fun p => decide (p ≤ 2843)),
      k2PrefixGroup0002MaskDomain p := by
    intro p hp
    exact of_decide_eq_true ((List.all_eq_true.mp hmask) p hp)
  have hleaf := (List.all_eq_true.mp k2PrefixGroup0002_passes) row hrow
  unfold k2PrefixGroup0002Passes at hleaf
  rw [← hendpoint] at hleaf
  have hcongr := Erdos848.globalMixedCorePrefixPasses_congr
    k2PrefixGroup0002NormalLookup normalQrMaskWords
    k2PrefixGroup0002TwistLookup twistQrMaskWords 2
    (Erdos848.globalMixedSupportEndpoint row.1) row.1
    (fun p hp => k2PrefixGroup0002NormalLookup_eq_global
      (hsupport p hp))
    (fun p hp => k2PrefixGroup0002TwistLookup_eq_global
      (hsupport p hp))
  rw [hcongr, Erdos848.globalMixedCorePrefixPasses_eq] at hleaf
  exact hleaf

#print axioms k2PrefixGroup0002_standard_passes

end Erdos848.GeneratedTailGlobalMixedSupportCoverage
