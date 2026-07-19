import Erdos848.TailGlobalMixedCoreBridge
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.K4PrefixGroup0064
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.MaskDispatchGroup0000
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.MaskDispatchGroup0001
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.MaskDispatchGroup0002
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.MaskDispatchGroup0003
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.MaskDispatchGroup0004

namespace Erdos848.GeneratedTailGlobalMixedSupportCoverage

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def k4PrefixGroup0064MaskDomain (p : ℕ) : Prop :=
  (0 < p ∧ p ≤ 421)

instance k4PrefixGroup0064MaskDomainDecidable (p : ℕ) : Decidable (k4PrefixGroup0064MaskDomain p) := by
  unfold k4PrefixGroup0064MaskDomain
  infer_instance

def k4PrefixGroup0064EndpointPasses (row : List ℕ × ℕ) : Bool :=
  decide (Erdos848.globalMixedSupportEndpoint row.1 =
    max 5_000_000 (row.1.prod * row.2))

def k4PrefixGroup0064MaskPasses (row : List ℕ × ℕ) : Bool :=
    (row.1.filter fun p => decide (p ≤ 2843)).all fun p =>
      decide (k4PrefixGroup0064MaskDomain p)

theorem k4PrefixGroup0064_endpoint_passes :
    k4PrefixGroup0064.all k4PrefixGroup0064EndpointPasses = true := by
  rfl

theorem k4PrefixGroup0064_mask_passes :
    k4PrefixGroup0064.all k4PrefixGroup0064MaskPasses = true := by
  rfl

theorem k4PrefixGroup0064NormalLookup_eq_global_run00
    {p : ℕ} (hlower : 0 < p) (hupper : p ≤ 421) :
    k4PrefixGroup0064NormalLookup p = normalQrMaskWords p := by
  by_cases hcase0 : p ≤ 61
  · have hlocal : k4PrefixGroup0064NormalLookup p = normalQrMaskWords0000 p := by
      simp [k4PrefixGroup0064NormalLookup, hcase0]
    exact hlocal.trans (normalQrMaskWords_eq_group0000 (by omega) hcase0).symm
  by_cases hcase1 : p ≤ 139
  · have hlocal : k4PrefixGroup0064NormalLookup p = normalQrMaskWords0001 p := by
      simp [k4PrefixGroup0064NormalLookup, hcase0, hcase1]
    exact hlocal.trans (normalQrMaskWords_eq_group0001 (by omega) hcase1).symm
  by_cases hcase2 : p ≤ 229
  · have hlocal : k4PrefixGroup0064NormalLookup p = normalQrMaskWords0002 p := by
      simp [k4PrefixGroup0064NormalLookup, hcase0, hcase1, hcase2]
    exact hlocal.trans (normalQrMaskWords_eq_group0002 (by omega) hcase2).symm
  by_cases hcase3 : p ≤ 317
  · have hlocal : k4PrefixGroup0064NormalLookup p = normalQrMaskWords0003 p := by
      simp [k4PrefixGroup0064NormalLookup, hcase0, hcase1, hcase2, hcase3]
    exact hlocal.trans (normalQrMaskWords_eq_group0003 (by omega) hcase3).symm
  have hlocal : k4PrefixGroup0064NormalLookup p = normalQrMaskWords0004 p := by
    simp [k4PrefixGroup0064NormalLookup, hcase0, hcase1, hcase2, hcase3, hupper]
  exact hlocal.trans (normalQrMaskWords_eq_group0004 (by omega) hupper).symm

theorem k4PrefixGroup0064NormalLookup_eq_global
    {p : ℕ} (hp : k4PrefixGroup0064MaskDomain p) :
    k4PrefixGroup0064NormalLookup p = normalQrMaskWords p := by
  exact k4PrefixGroup0064NormalLookup_eq_global_run00 hp.1 hp.2

theorem k4PrefixGroup0064TwistLookup_eq_global_run00
    {p : ℕ} (hlower : 0 < p) (hupper : p ≤ 421) :
    k4PrefixGroup0064TwistLookup p = twistQrMaskWords p := by
  by_cases hcase0 : p ≤ 61
  · have hlocal : k4PrefixGroup0064TwistLookup p = twistQrMaskWords0000 p := by
      simp [k4PrefixGroup0064TwistLookup, hcase0]
    exact hlocal.trans (twistQrMaskWords_eq_group0000 (by omega) hcase0).symm
  by_cases hcase1 : p ≤ 139
  · have hlocal : k4PrefixGroup0064TwistLookup p = twistQrMaskWords0001 p := by
      simp [k4PrefixGroup0064TwistLookup, hcase0, hcase1]
    exact hlocal.trans (twistQrMaskWords_eq_group0001 (by omega) hcase1).symm
  by_cases hcase2 : p ≤ 229
  · have hlocal : k4PrefixGroup0064TwistLookup p = twistQrMaskWords0002 p := by
      simp [k4PrefixGroup0064TwistLookup, hcase0, hcase1, hcase2]
    exact hlocal.trans (twistQrMaskWords_eq_group0002 (by omega) hcase2).symm
  by_cases hcase3 : p ≤ 317
  · have hlocal : k4PrefixGroup0064TwistLookup p = twistQrMaskWords0003 p := by
      simp [k4PrefixGroup0064TwistLookup, hcase0, hcase1, hcase2, hcase3]
    exact hlocal.trans (twistQrMaskWords_eq_group0003 (by omega) hcase3).symm
  have hlocal : k4PrefixGroup0064TwistLookup p = twistQrMaskWords0004 p := by
    simp [k4PrefixGroup0064TwistLookup, hcase0, hcase1, hcase2, hcase3, hupper]
  exact hlocal.trans (twistQrMaskWords_eq_group0004 (by omega) hupper).symm

theorem k4PrefixGroup0064TwistLookup_eq_global
    {p : ℕ} (hp : k4PrefixGroup0064MaskDomain p) :
    k4PrefixGroup0064TwistLookup p = twistQrMaskWords p := by
  exact k4PrefixGroup0064TwistLookup_eq_global_run00 hp.1 hp.2

theorem k4PrefixGroup0064_standard_passes
    (row : List ℕ × ℕ) (hrow : row ∈ k4PrefixGroup0064) :
    Erdos848.globalMixedSupportPrefixPasses 4 row.1 = true := by
  have hendpointPass := (List.all_eq_true.mp
    k4PrefixGroup0064_endpoint_passes) row hrow
  have hendpoint : Erdos848.globalMixedSupportEndpoint row.1 =
      max 5_000_000 (row.1.prod * row.2) :=
    of_decide_eq_true hendpointPass
  have hmask := (List.all_eq_true.mp
    k4PrefixGroup0064_mask_passes) row hrow
  have hsupport : ∀ p ∈
      row.1.filter (fun p => decide (p ≤ 2843)),
      k4PrefixGroup0064MaskDomain p := by
    intro p hp
    exact of_decide_eq_true ((List.all_eq_true.mp hmask) p hp)
  have hleaf := (List.all_eq_true.mp k4PrefixGroup0064_passes) row hrow
  unfold k4PrefixGroup0064Passes at hleaf
  rw [← hendpoint] at hleaf
  have hcongr := Erdos848.globalMixedCorePrefixPasses_congr
    k4PrefixGroup0064NormalLookup normalQrMaskWords
    k4PrefixGroup0064TwistLookup twistQrMaskWords 4
    (Erdos848.globalMixedSupportEndpoint row.1) row.1
    (fun p hp => k4PrefixGroup0064NormalLookup_eq_global
      (hsupport p hp))
    (fun p hp => k4PrefixGroup0064TwistLookup_eq_global
      (hsupport p hp))
  rw [hcongr, Erdos848.globalMixedCorePrefixPasses_eq] at hleaf
  exact hleaf

#print axioms k4PrefixGroup0064_standard_passes

end Erdos848.GeneratedTailGlobalMixedSupportCoverage
