import Erdos848.TailGlobalMixedCoreBridge
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.K2PrefixGroup0001

namespace Erdos848.GeneratedTailGlobalMixedSupportCoverage

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def k2PrefixGroup0001MaskDomain (_p : ℕ) : Prop := False

instance k2PrefixGroup0001MaskDomainDecidable (p : ℕ) : Decidable (k2PrefixGroup0001MaskDomain p) := by
  unfold k2PrefixGroup0001MaskDomain
  infer_instance

def k2PrefixGroup0001EndpointPasses (row : List ℕ × ℕ) : Bool :=
  decide (Erdos848.globalMixedSupportEndpoint row.1 =
    max 5_000_000 (row.1.prod * row.2))

def k2PrefixGroup0001MaskPasses (row : List ℕ × ℕ) : Bool :=
    (row.1.filter fun p => decide (p ≤ 2843)).all fun p =>
      decide (k2PrefixGroup0001MaskDomain p)

theorem k2PrefixGroup0001_endpoint_passes :
    k2PrefixGroup0001.all k2PrefixGroup0001EndpointPasses = true := by
  rfl

theorem k2PrefixGroup0001_mask_passes :
    k2PrefixGroup0001.all k2PrefixGroup0001MaskPasses = true := by
  rfl

theorem k2PrefixGroup0001NormalLookup_eq_global
    {p : ℕ} (hp : k2PrefixGroup0001MaskDomain p) :
    k2PrefixGroup0001NormalLookup p = normalQrMaskWords p := by
  exact False.elim hp

theorem k2PrefixGroup0001TwistLookup_eq_global
    {p : ℕ} (hp : k2PrefixGroup0001MaskDomain p) :
    k2PrefixGroup0001TwistLookup p = twistQrMaskWords p := by
  exact False.elim hp

theorem k2PrefixGroup0001_standard_passes
    (row : List ℕ × ℕ) (hrow : row ∈ k2PrefixGroup0001) :
    Erdos848.globalMixedSupportPrefixPasses 2 row.1 = true := by
  have hendpointPass := (List.all_eq_true.mp
    k2PrefixGroup0001_endpoint_passes) row hrow
  have hendpoint : Erdos848.globalMixedSupportEndpoint row.1 =
      max 5_000_000 (row.1.prod * row.2) :=
    of_decide_eq_true hendpointPass
  have hmask := (List.all_eq_true.mp
    k2PrefixGroup0001_mask_passes) row hrow
  have hsupport : ∀ p ∈
      row.1.filter (fun p => decide (p ≤ 2843)),
      k2PrefixGroup0001MaskDomain p := by
    intro p hp
    exact of_decide_eq_true ((List.all_eq_true.mp hmask) p hp)
  have hleaf := (List.all_eq_true.mp k2PrefixGroup0001_passes) row hrow
  unfold k2PrefixGroup0001Passes at hleaf
  rw [← hendpoint] at hleaf
  have hcongr := Erdos848.globalMixedCorePrefixPasses_congr
    k2PrefixGroup0001NormalLookup normalQrMaskWords
    k2PrefixGroup0001TwistLookup twistQrMaskWords 2
    (Erdos848.globalMixedSupportEndpoint row.1) row.1
    (fun p hp => k2PrefixGroup0001NormalLookup_eq_global
      (hsupport p hp))
    (fun p hp => k2PrefixGroup0001TwistLookup_eq_global
      (hsupport p hp))
  rw [hcongr, Erdos848.globalMixedCorePrefixPasses_eq] at hleaf
  exact hleaf

#print axioms k2PrefixGroup0001_standard_passes

end Erdos848.GeneratedTailGlobalMixedSupportCoverage
