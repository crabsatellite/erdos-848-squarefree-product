import Erdos848.TailGlobalMixedCoreBridge
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.K5PrefixGroup0034
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.MaskDispatchGroup0000
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.MaskDispatchGroup0001
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.MaskDispatchGroup0002
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.MaskDispatchGroup0003

namespace Erdos848.GeneratedTailGlobalMixedSupportCoverage

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def k5PrefixGroup0034MaskDomain (p : ℕ) : Prop :=
  (0 < p ∧ p ≤ 317)

instance k5PrefixGroup0034MaskDomainDecidable (p : ℕ) : Decidable (k5PrefixGroup0034MaskDomain p) := by
  unfold k5PrefixGroup0034MaskDomain
  infer_instance

def k5PrefixGroup0034EndpointPasses (row : List ℕ × ℕ) : Bool :=
  decide (Erdos848.globalMixedSupportEndpoint row.1 =
    max 5_000_000 (row.1.prod * row.2))

def k5PrefixGroup0034MaskPasses (row : List ℕ × ℕ) : Bool :=
    (row.1.filter fun p => decide (p ≤ 2843)).all fun p =>
      decide (k5PrefixGroup0034MaskDomain p)

theorem k5PrefixGroup0034_endpoint_passes :
    k5PrefixGroup0034.all k5PrefixGroup0034EndpointPasses = true := by
  rfl

theorem k5PrefixGroup0034_mask_passes :
    k5PrefixGroup0034.all k5PrefixGroup0034MaskPasses = true := by
  rfl

theorem k5PrefixGroup0034NormalLookup_eq_global_run00
    {p : ℕ} (hlower : 0 < p) (hupper : p ≤ 317) :
    k5PrefixGroup0034NormalLookup p = normalQrMaskWords p := by
  by_cases hcase0 : p ≤ 61
  · have hlocal : k5PrefixGroup0034NormalLookup p = normalQrMaskWords0000 p := by
      simp [k5PrefixGroup0034NormalLookup, hcase0]
    exact hlocal.trans (normalQrMaskWords_eq_group0000 (by omega) hcase0).symm
  by_cases hcase1 : p ≤ 139
  · have hlocal : k5PrefixGroup0034NormalLookup p = normalQrMaskWords0001 p := by
      simp [k5PrefixGroup0034NormalLookup, hcase0, hcase1]
    exact hlocal.trans (normalQrMaskWords_eq_group0001 (by omega) hcase1).symm
  by_cases hcase2 : p ≤ 229
  · have hlocal : k5PrefixGroup0034NormalLookup p = normalQrMaskWords0002 p := by
      simp [k5PrefixGroup0034NormalLookup, hcase0, hcase1, hcase2]
    exact hlocal.trans (normalQrMaskWords_eq_group0002 (by omega) hcase2).symm
  have hlocal : k5PrefixGroup0034NormalLookup p = normalQrMaskWords0003 p := by
    simp [k5PrefixGroup0034NormalLookup, hcase0, hcase1, hcase2, hupper]
  exact hlocal.trans (normalQrMaskWords_eq_group0003 (by omega) hupper).symm

theorem k5PrefixGroup0034NormalLookup_eq_global
    {p : ℕ} (hp : k5PrefixGroup0034MaskDomain p) :
    k5PrefixGroup0034NormalLookup p = normalQrMaskWords p := by
  exact k5PrefixGroup0034NormalLookup_eq_global_run00 hp.1 hp.2

theorem k5PrefixGroup0034TwistLookup_eq_global_run00
    {p : ℕ} (hlower : 0 < p) (hupper : p ≤ 317) :
    k5PrefixGroup0034TwistLookup p = twistQrMaskWords p := by
  by_cases hcase0 : p ≤ 61
  · have hlocal : k5PrefixGroup0034TwistLookup p = twistQrMaskWords0000 p := by
      simp [k5PrefixGroup0034TwistLookup, hcase0]
    exact hlocal.trans (twistQrMaskWords_eq_group0000 (by omega) hcase0).symm
  by_cases hcase1 : p ≤ 139
  · have hlocal : k5PrefixGroup0034TwistLookup p = twistQrMaskWords0001 p := by
      simp [k5PrefixGroup0034TwistLookup, hcase0, hcase1]
    exact hlocal.trans (twistQrMaskWords_eq_group0001 (by omega) hcase1).symm
  by_cases hcase2 : p ≤ 229
  · have hlocal : k5PrefixGroup0034TwistLookup p = twistQrMaskWords0002 p := by
      simp [k5PrefixGroup0034TwistLookup, hcase0, hcase1, hcase2]
    exact hlocal.trans (twistQrMaskWords_eq_group0002 (by omega) hcase2).symm
  have hlocal : k5PrefixGroup0034TwistLookup p = twistQrMaskWords0003 p := by
    simp [k5PrefixGroup0034TwistLookup, hcase0, hcase1, hcase2, hupper]
  exact hlocal.trans (twistQrMaskWords_eq_group0003 (by omega) hupper).symm

theorem k5PrefixGroup0034TwistLookup_eq_global
    {p : ℕ} (hp : k5PrefixGroup0034MaskDomain p) :
    k5PrefixGroup0034TwistLookup p = twistQrMaskWords p := by
  exact k5PrefixGroup0034TwistLookup_eq_global_run00 hp.1 hp.2

theorem k5PrefixGroup0034_standard_passes
    (row : List ℕ × ℕ) (hrow : row ∈ k5PrefixGroup0034) :
    Erdos848.globalMixedSupportPrefixPasses 5 row.1 = true := by
  have hendpointPass := (List.all_eq_true.mp
    k5PrefixGroup0034_endpoint_passes) row hrow
  have hendpoint : Erdos848.globalMixedSupportEndpoint row.1 =
      max 5_000_000 (row.1.prod * row.2) :=
    of_decide_eq_true hendpointPass
  have hmask := (List.all_eq_true.mp
    k5PrefixGroup0034_mask_passes) row hrow
  have hsupport : ∀ p ∈
      row.1.filter (fun p => decide (p ≤ 2843)),
      k5PrefixGroup0034MaskDomain p := by
    intro p hp
    exact of_decide_eq_true ((List.all_eq_true.mp hmask) p hp)
  have hleaf := (List.all_eq_true.mp k5PrefixGroup0034_passes) row hrow
  unfold k5PrefixGroup0034Passes at hleaf
  rw [← hendpoint] at hleaf
  have hcongr := Erdos848.globalMixedCorePrefixPasses_congr
    k5PrefixGroup0034NormalLookup normalQrMaskWords
    k5PrefixGroup0034TwistLookup twistQrMaskWords 5
    (Erdos848.globalMixedSupportEndpoint row.1) row.1
    (fun p hp => k5PrefixGroup0034NormalLookup_eq_global
      (hsupport p hp))
    (fun p hp => k5PrefixGroup0034TwistLookup_eq_global
      (hsupport p hp))
  rw [hcongr, Erdos848.globalMixedCorePrefixPasses_eq] at hleaf
  exact hleaf

#print axioms k5PrefixGroup0034_standard_passes

end Erdos848.GeneratedTailGlobalMixedSupportCoverage
