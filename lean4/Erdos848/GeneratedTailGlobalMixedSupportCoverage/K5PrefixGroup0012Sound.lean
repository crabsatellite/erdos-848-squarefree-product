import Erdos848.TailGlobalMixedCoreBridge
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.K5PrefixGroup0012
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.MaskDispatchGroup0000
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.MaskDispatchGroup0001
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.MaskDispatchGroup0002
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.MaskDispatchGroup0003
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.MaskDispatchGroup0004
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.MaskDispatchGroup0005
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.MaskDispatchGroup0006

namespace Erdos848.GeneratedTailGlobalMixedSupportCoverage

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def k5PrefixGroup0012MaskDomain (p : ℕ) : Prop :=
  (0 < p ∧ p ≤ 619)

instance k5PrefixGroup0012MaskDomainDecidable (p : ℕ) : Decidable (k5PrefixGroup0012MaskDomain p) := by
  unfold k5PrefixGroup0012MaskDomain
  infer_instance

def k5PrefixGroup0012EndpointPasses (row : List ℕ × ℕ) : Bool :=
  decide (Erdos848.globalMixedSupportEndpoint row.1 =
    max 5_000_000 (row.1.prod * row.2))

def k5PrefixGroup0012MaskPasses (row : List ℕ × ℕ) : Bool :=
    (row.1.filter fun p => decide (p ≤ 2843)).all fun p =>
      decide (k5PrefixGroup0012MaskDomain p)

theorem k5PrefixGroup0012_endpoint_passes :
    k5PrefixGroup0012.all k5PrefixGroup0012EndpointPasses = true := by
  rfl

theorem k5PrefixGroup0012_mask_passes :
    k5PrefixGroup0012.all k5PrefixGroup0012MaskPasses = true := by
  rfl

theorem k5PrefixGroup0012NormalLookup_eq_global_run00
    {p : ℕ} (hlower : 0 < p) (hupper : p ≤ 619) :
    k5PrefixGroup0012NormalLookup p = normalQrMaskWords p := by
  by_cases hcase0 : p ≤ 61
  · have hlocal : k5PrefixGroup0012NormalLookup p = normalQrMaskWords0000 p := by
      simp [k5PrefixGroup0012NormalLookup, hcase0]
    exact hlocal.trans (normalQrMaskWords_eq_group0000 (by omega) hcase0).symm
  by_cases hcase1 : p ≤ 139
  · have hlocal : k5PrefixGroup0012NormalLookup p = normalQrMaskWords0001 p := by
      simp [k5PrefixGroup0012NormalLookup, hcase0, hcase1]
    exact hlocal.trans (normalQrMaskWords_eq_group0001 (by omega) hcase1).symm
  by_cases hcase2 : p ≤ 229
  · have hlocal : k5PrefixGroup0012NormalLookup p = normalQrMaskWords0002 p := by
      simp [k5PrefixGroup0012NormalLookup, hcase0, hcase1, hcase2]
    exact hlocal.trans (normalQrMaskWords_eq_group0002 (by omega) hcase2).symm
  by_cases hcase3 : p ≤ 317
  · have hlocal : k5PrefixGroup0012NormalLookup p = normalQrMaskWords0003 p := by
      simp [k5PrefixGroup0012NormalLookup, hcase0, hcase1, hcase2, hcase3]
    exact hlocal.trans (normalQrMaskWords_eq_group0003 (by omega) hcase3).symm
  by_cases hcase4 : p ≤ 421
  · have hlocal : k5PrefixGroup0012NormalLookup p = normalQrMaskWords0004 p := by
      simp [k5PrefixGroup0012NormalLookup, hcase0, hcase1, hcase2, hcase3, hcase4]
    exact hlocal.trans (normalQrMaskWords_eq_group0004 (by omega) hcase4).symm
  by_cases hcase5 : p ≤ 521
  · have hlocal : k5PrefixGroup0012NormalLookup p = normalQrMaskWords0005 p := by
      simp [k5PrefixGroup0012NormalLookup, hcase0, hcase1, hcase2, hcase3, hcase4, hcase5]
    exact hlocal.trans (normalQrMaskWords_eq_group0005 (by omega) hcase5).symm
  have hlocal : k5PrefixGroup0012NormalLookup p = normalQrMaskWords0006 p := by
    simp [k5PrefixGroup0012NormalLookup, hcase0, hcase1, hcase2, hcase3, hcase4, hcase5, hupper]
  exact hlocal.trans (normalQrMaskWords_eq_group0006 (by omega) hupper).symm

theorem k5PrefixGroup0012NormalLookup_eq_global
    {p : ℕ} (hp : k5PrefixGroup0012MaskDomain p) :
    k5PrefixGroup0012NormalLookup p = normalQrMaskWords p := by
  exact k5PrefixGroup0012NormalLookup_eq_global_run00 hp.1 hp.2

theorem k5PrefixGroup0012TwistLookup_eq_global_run00
    {p : ℕ} (hlower : 0 < p) (hupper : p ≤ 619) :
    k5PrefixGroup0012TwistLookup p = twistQrMaskWords p := by
  by_cases hcase0 : p ≤ 61
  · have hlocal : k5PrefixGroup0012TwistLookup p = twistQrMaskWords0000 p := by
      simp [k5PrefixGroup0012TwistLookup, hcase0]
    exact hlocal.trans (twistQrMaskWords_eq_group0000 (by omega) hcase0).symm
  by_cases hcase1 : p ≤ 139
  · have hlocal : k5PrefixGroup0012TwistLookup p = twistQrMaskWords0001 p := by
      simp [k5PrefixGroup0012TwistLookup, hcase0, hcase1]
    exact hlocal.trans (twistQrMaskWords_eq_group0001 (by omega) hcase1).symm
  by_cases hcase2 : p ≤ 229
  · have hlocal : k5PrefixGroup0012TwistLookup p = twistQrMaskWords0002 p := by
      simp [k5PrefixGroup0012TwistLookup, hcase0, hcase1, hcase2]
    exact hlocal.trans (twistQrMaskWords_eq_group0002 (by omega) hcase2).symm
  by_cases hcase3 : p ≤ 317
  · have hlocal : k5PrefixGroup0012TwistLookup p = twistQrMaskWords0003 p := by
      simp [k5PrefixGroup0012TwistLookup, hcase0, hcase1, hcase2, hcase3]
    exact hlocal.trans (twistQrMaskWords_eq_group0003 (by omega) hcase3).symm
  by_cases hcase4 : p ≤ 421
  · have hlocal : k5PrefixGroup0012TwistLookup p = twistQrMaskWords0004 p := by
      simp [k5PrefixGroup0012TwistLookup, hcase0, hcase1, hcase2, hcase3, hcase4]
    exact hlocal.trans (twistQrMaskWords_eq_group0004 (by omega) hcase4).symm
  by_cases hcase5 : p ≤ 521
  · have hlocal : k5PrefixGroup0012TwistLookup p = twistQrMaskWords0005 p := by
      simp [k5PrefixGroup0012TwistLookup, hcase0, hcase1, hcase2, hcase3, hcase4, hcase5]
    exact hlocal.trans (twistQrMaskWords_eq_group0005 (by omega) hcase5).symm
  have hlocal : k5PrefixGroup0012TwistLookup p = twistQrMaskWords0006 p := by
    simp [k5PrefixGroup0012TwistLookup, hcase0, hcase1, hcase2, hcase3, hcase4, hcase5, hupper]
  exact hlocal.trans (twistQrMaskWords_eq_group0006 (by omega) hupper).symm

theorem k5PrefixGroup0012TwistLookup_eq_global
    {p : ℕ} (hp : k5PrefixGroup0012MaskDomain p) :
    k5PrefixGroup0012TwistLookup p = twistQrMaskWords p := by
  exact k5PrefixGroup0012TwistLookup_eq_global_run00 hp.1 hp.2

theorem k5PrefixGroup0012_standard_passes
    (row : List ℕ × ℕ) (hrow : row ∈ k5PrefixGroup0012) :
    Erdos848.globalMixedSupportPrefixPasses 5 row.1 = true := by
  have hendpointPass := (List.all_eq_true.mp
    k5PrefixGroup0012_endpoint_passes) row hrow
  have hendpoint : Erdos848.globalMixedSupportEndpoint row.1 =
      max 5_000_000 (row.1.prod * row.2) :=
    of_decide_eq_true hendpointPass
  have hmask := (List.all_eq_true.mp
    k5PrefixGroup0012_mask_passes) row hrow
  have hsupport : ∀ p ∈
      row.1.filter (fun p => decide (p ≤ 2843)),
      k5PrefixGroup0012MaskDomain p := by
    intro p hp
    exact of_decide_eq_true ((List.all_eq_true.mp hmask) p hp)
  have hleaf := (List.all_eq_true.mp k5PrefixGroup0012_passes) row hrow
  unfold k5PrefixGroup0012Passes at hleaf
  rw [← hendpoint] at hleaf
  have hcongr := Erdos848.globalMixedCorePrefixPasses_congr
    k5PrefixGroup0012NormalLookup normalQrMaskWords
    k5PrefixGroup0012TwistLookup twistQrMaskWords 5
    (Erdos848.globalMixedSupportEndpoint row.1) row.1
    (fun p hp => k5PrefixGroup0012NormalLookup_eq_global
      (hsupport p hp))
    (fun p hp => k5PrefixGroup0012TwistLookup_eq_global
      (hsupport p hp))
  rw [hcongr, Erdos848.globalMixedCorePrefixPasses_eq] at hleaf
  exact hleaf

#print axioms k5PrefixGroup0012_standard_passes

end Erdos848.GeneratedTailGlobalMixedSupportCoverage
