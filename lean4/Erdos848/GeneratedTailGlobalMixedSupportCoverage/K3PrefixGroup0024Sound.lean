import Erdos848.TailGlobalMixedCoreBridge
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.K3PrefixGroup0024
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.MaskDispatchGroup0003
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.MaskDispatchGroup0004
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.MaskDispatchGroup0005
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.MaskDispatchGroup0006
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.MaskDispatchGroup0007
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.MaskDispatchGroup0008

namespace Erdos848.GeneratedTailGlobalMixedSupportCoverage

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def k3PrefixGroup0024MaskDomain (p : ℕ) : Prop :=
  (229 < p ∧ p ≤ 839)

instance k3PrefixGroup0024MaskDomainDecidable (p : ℕ) : Decidable (k3PrefixGroup0024MaskDomain p) := by
  unfold k3PrefixGroup0024MaskDomain
  infer_instance

def k3PrefixGroup0024EndpointPasses (row : List ℕ × ℕ) : Bool :=
  decide (Erdos848.globalMixedSupportEndpoint row.1 =
    max 5_000_000 (row.1.prod * row.2))

def k3PrefixGroup0024MaskPasses (row : List ℕ × ℕ) : Bool :=
    (row.1.filter fun p => decide (p ≤ 2843)).all fun p =>
      decide (k3PrefixGroup0024MaskDomain p)

theorem k3PrefixGroup0024_endpoint_passes :
    k3PrefixGroup0024.all k3PrefixGroup0024EndpointPasses = true := by
  rfl

theorem k3PrefixGroup0024_mask_passes :
    k3PrefixGroup0024.all k3PrefixGroup0024MaskPasses = true := by
  rfl

theorem k3PrefixGroup0024NormalLookup_eq_global_run00
    {p : ℕ} (hlower : 229 < p) (hupper : p ≤ 839) :
    k3PrefixGroup0024NormalLookup p = normalQrMaskWords p := by
  by_cases hcase0 : p ≤ 317
  · have hlocal : k3PrefixGroup0024NormalLookup p = normalQrMaskWords0003 p := by
      simp [k3PrefixGroup0024NormalLookup, hcase0]
    exact hlocal.trans (normalQrMaskWords_eq_group0003 (by omega) hcase0).symm
  by_cases hcase1 : p ≤ 421
  · have hlocal : k3PrefixGroup0024NormalLookup p = normalQrMaskWords0004 p := by
      simp [k3PrefixGroup0024NormalLookup, hcase0, hcase1]
    exact hlocal.trans (normalQrMaskWords_eq_group0004 (by omega) hcase1).symm
  by_cases hcase2 : p ≤ 521
  · have hlocal : k3PrefixGroup0024NormalLookup p = normalQrMaskWords0005 p := by
      simp [k3PrefixGroup0024NormalLookup, hcase0, hcase1, hcase2]
    exact hlocal.trans (normalQrMaskWords_eq_group0005 (by omega) hcase2).symm
  by_cases hcase3 : p ≤ 619
  · have hlocal : k3PrefixGroup0024NormalLookup p = normalQrMaskWords0006 p := by
      simp [k3PrefixGroup0024NormalLookup, hcase0, hcase1, hcase2, hcase3]
    exact hlocal.trans (normalQrMaskWords_eq_group0006 (by omega) hcase3).symm
  by_cases hcase4 : p ≤ 733
  · have hlocal : k3PrefixGroup0024NormalLookup p = normalQrMaskWords0007 p := by
      simp [k3PrefixGroup0024NormalLookup, hcase0, hcase1, hcase2, hcase3, hcase4]
    exact hlocal.trans (normalQrMaskWords_eq_group0007 (by omega) hcase4).symm
  have hlocal : k3PrefixGroup0024NormalLookup p = normalQrMaskWords0008 p := by
    simp [k3PrefixGroup0024NormalLookup, hcase0, hcase1, hcase2, hcase3, hcase4, hupper]
  exact hlocal.trans (normalQrMaskWords_eq_group0008 (by omega) hupper).symm

theorem k3PrefixGroup0024NormalLookup_eq_global
    {p : ℕ} (hp : k3PrefixGroup0024MaskDomain p) :
    k3PrefixGroup0024NormalLookup p = normalQrMaskWords p := by
  exact k3PrefixGroup0024NormalLookup_eq_global_run00 hp.1 hp.2

theorem k3PrefixGroup0024TwistLookup_eq_global_run00
    {p : ℕ} (hlower : 229 < p) (hupper : p ≤ 839) :
    k3PrefixGroup0024TwistLookup p = twistQrMaskWords p := by
  by_cases hcase0 : p ≤ 317
  · have hlocal : k3PrefixGroup0024TwistLookup p = twistQrMaskWords0003 p := by
      simp [k3PrefixGroup0024TwistLookup, hcase0]
    exact hlocal.trans (twistQrMaskWords_eq_group0003 (by omega) hcase0).symm
  by_cases hcase1 : p ≤ 421
  · have hlocal : k3PrefixGroup0024TwistLookup p = twistQrMaskWords0004 p := by
      simp [k3PrefixGroup0024TwistLookup, hcase0, hcase1]
    exact hlocal.trans (twistQrMaskWords_eq_group0004 (by omega) hcase1).symm
  by_cases hcase2 : p ≤ 521
  · have hlocal : k3PrefixGroup0024TwistLookup p = twistQrMaskWords0005 p := by
      simp [k3PrefixGroup0024TwistLookup, hcase0, hcase1, hcase2]
    exact hlocal.trans (twistQrMaskWords_eq_group0005 (by omega) hcase2).symm
  by_cases hcase3 : p ≤ 619
  · have hlocal : k3PrefixGroup0024TwistLookup p = twistQrMaskWords0006 p := by
      simp [k3PrefixGroup0024TwistLookup, hcase0, hcase1, hcase2, hcase3]
    exact hlocal.trans (twistQrMaskWords_eq_group0006 (by omega) hcase3).symm
  by_cases hcase4 : p ≤ 733
  · have hlocal : k3PrefixGroup0024TwistLookup p = twistQrMaskWords0007 p := by
      simp [k3PrefixGroup0024TwistLookup, hcase0, hcase1, hcase2, hcase3, hcase4]
    exact hlocal.trans (twistQrMaskWords_eq_group0007 (by omega) hcase4).symm
  have hlocal : k3PrefixGroup0024TwistLookup p = twistQrMaskWords0008 p := by
    simp [k3PrefixGroup0024TwistLookup, hcase0, hcase1, hcase2, hcase3, hcase4, hupper]
  exact hlocal.trans (twistQrMaskWords_eq_group0008 (by omega) hupper).symm

theorem k3PrefixGroup0024TwistLookup_eq_global
    {p : ℕ} (hp : k3PrefixGroup0024MaskDomain p) :
    k3PrefixGroup0024TwistLookup p = twistQrMaskWords p := by
  exact k3PrefixGroup0024TwistLookup_eq_global_run00 hp.1 hp.2

theorem k3PrefixGroup0024_standard_passes
    (row : List ℕ × ℕ) (hrow : row ∈ k3PrefixGroup0024) :
    Erdos848.globalMixedSupportPrefixPasses 3 row.1 = true := by
  have hendpointPass := (List.all_eq_true.mp
    k3PrefixGroup0024_endpoint_passes) row hrow
  have hendpoint : Erdos848.globalMixedSupportEndpoint row.1 =
      max 5_000_000 (row.1.prod * row.2) :=
    of_decide_eq_true hendpointPass
  have hmask := (List.all_eq_true.mp
    k3PrefixGroup0024_mask_passes) row hrow
  have hsupport : ∀ p ∈
      row.1.filter (fun p => decide (p ≤ 2843)),
      k3PrefixGroup0024MaskDomain p := by
    intro p hp
    exact of_decide_eq_true ((List.all_eq_true.mp hmask) p hp)
  have hleaf := (List.all_eq_true.mp k3PrefixGroup0024_passes) row hrow
  unfold k3PrefixGroup0024Passes at hleaf
  rw [← hendpoint] at hleaf
  have hcongr := Erdos848.globalMixedCorePrefixPasses_congr
    k3PrefixGroup0024NormalLookup normalQrMaskWords
    k3PrefixGroup0024TwistLookup twistQrMaskWords 3
    (Erdos848.globalMixedSupportEndpoint row.1) row.1
    (fun p hp => k3PrefixGroup0024NormalLookup_eq_global
      (hsupport p hp))
    (fun p hp => k3PrefixGroup0024TwistLookup_eq_global
      (hsupport p hp))
  rw [hcongr, Erdos848.globalMixedCorePrefixPasses_eq] at hleaf
  exact hleaf

#print axioms k3PrefixGroup0024_standard_passes

end Erdos848.GeneratedTailGlobalMixedSupportCoverage
