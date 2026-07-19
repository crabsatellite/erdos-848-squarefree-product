import Erdos848.TailGlobalMixedCoreBridge
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.K3PrefixGroup0019
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.MaskDispatchGroup0002
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.MaskDispatchGroup0003
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.MaskDispatchGroup0004
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.MaskDispatchGroup0005
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.MaskDispatchGroup0006
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.MaskDispatchGroup0007
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.MaskDispatchGroup0008
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.MaskDispatchGroup0009
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.MaskDispatchGroup0010

namespace Erdos848.GeneratedTailGlobalMixedSupportCoverage

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def k3PrefixGroup0019MaskDomain (p : ℕ) : Prop :=
  (139 < p ∧ p ≤ 1061)

instance k3PrefixGroup0019MaskDomainDecidable (p : ℕ) : Decidable (k3PrefixGroup0019MaskDomain p) := by
  unfold k3PrefixGroup0019MaskDomain
  infer_instance

def k3PrefixGroup0019EndpointPasses (row : List ℕ × ℕ) : Bool :=
  decide (Erdos848.globalMixedSupportEndpoint row.1 =
    max 5_000_000 (row.1.prod * row.2))

def k3PrefixGroup0019MaskPasses (row : List ℕ × ℕ) : Bool :=
    (row.1.filter fun p => decide (p ≤ 2843)).all fun p =>
      decide (k3PrefixGroup0019MaskDomain p)

theorem k3PrefixGroup0019_endpoint_passes :
    k3PrefixGroup0019.all k3PrefixGroup0019EndpointPasses = true := by
  rfl

theorem k3PrefixGroup0019_mask_passes :
    k3PrefixGroup0019.all k3PrefixGroup0019MaskPasses = true := by
  rfl

theorem k3PrefixGroup0019NormalLookup_eq_global_run00
    {p : ℕ} (hlower : 139 < p) (hupper : p ≤ 1061) :
    k3PrefixGroup0019NormalLookup p = normalQrMaskWords p := by
  by_cases hcase0 : p ≤ 229
  · have hlocal : k3PrefixGroup0019NormalLookup p = normalQrMaskWords0002 p := by
      simp [k3PrefixGroup0019NormalLookup, hcase0]
    exact hlocal.trans (normalQrMaskWords_eq_group0002 (by omega) hcase0).symm
  by_cases hcase1 : p ≤ 317
  · have hlocal : k3PrefixGroup0019NormalLookup p = normalQrMaskWords0003 p := by
      simp [k3PrefixGroup0019NormalLookup, hcase0, hcase1]
    exact hlocal.trans (normalQrMaskWords_eq_group0003 (by omega) hcase1).symm
  by_cases hcase2 : p ≤ 421
  · have hlocal : k3PrefixGroup0019NormalLookup p = normalQrMaskWords0004 p := by
      simp [k3PrefixGroup0019NormalLookup, hcase0, hcase1, hcase2]
    exact hlocal.trans (normalQrMaskWords_eq_group0004 (by omega) hcase2).symm
  by_cases hcase3 : p ≤ 521
  · have hlocal : k3PrefixGroup0019NormalLookup p = normalQrMaskWords0005 p := by
      simp [k3PrefixGroup0019NormalLookup, hcase0, hcase1, hcase2, hcase3]
    exact hlocal.trans (normalQrMaskWords_eq_group0005 (by omega) hcase3).symm
  by_cases hcase4 : p ≤ 619
  · have hlocal : k3PrefixGroup0019NormalLookup p = normalQrMaskWords0006 p := by
      simp [k3PrefixGroup0019NormalLookup, hcase0, hcase1, hcase2, hcase3, hcase4]
    exact hlocal.trans (normalQrMaskWords_eq_group0006 (by omega) hcase4).symm
  by_cases hcase5 : p ≤ 733
  · have hlocal : k3PrefixGroup0019NormalLookup p = normalQrMaskWords0007 p := by
      simp [k3PrefixGroup0019NormalLookup, hcase0, hcase1, hcase2, hcase3, hcase4, hcase5]
    exact hlocal.trans (normalQrMaskWords_eq_group0007 (by omega) hcase5).symm
  by_cases hcase6 : p ≤ 839
  · have hlocal : k3PrefixGroup0019NormalLookup p = normalQrMaskWords0008 p := by
      simp [k3PrefixGroup0019NormalLookup, hcase0, hcase1, hcase2, hcase3, hcase4, hcase5, hcase6]
    exact hlocal.trans (normalQrMaskWords_eq_group0008 (by omega) hcase6).symm
  by_cases hcase7 : p ≤ 953
  · have hlocal : k3PrefixGroup0019NormalLookup p = normalQrMaskWords0009 p := by
      simp [k3PrefixGroup0019NormalLookup, hcase0, hcase1, hcase2, hcase3, hcase4, hcase5, hcase6, hcase7]
    exact hlocal.trans (normalQrMaskWords_eq_group0009 (by omega) hcase7).symm
  have hlocal : k3PrefixGroup0019NormalLookup p = normalQrMaskWords0010 p := by
    simp [k3PrefixGroup0019NormalLookup, hcase0, hcase1, hcase2, hcase3, hcase4, hcase5, hcase6, hcase7, hupper]
  exact hlocal.trans (normalQrMaskWords_eq_group0010 (by omega) hupper).symm

theorem k3PrefixGroup0019NormalLookup_eq_global
    {p : ℕ} (hp : k3PrefixGroup0019MaskDomain p) :
    k3PrefixGroup0019NormalLookup p = normalQrMaskWords p := by
  exact k3PrefixGroup0019NormalLookup_eq_global_run00 hp.1 hp.2

theorem k3PrefixGroup0019TwistLookup_eq_global_run00
    {p : ℕ} (hlower : 139 < p) (hupper : p ≤ 1061) :
    k3PrefixGroup0019TwistLookup p = twistQrMaskWords p := by
  by_cases hcase0 : p ≤ 229
  · have hlocal : k3PrefixGroup0019TwistLookup p = twistQrMaskWords0002 p := by
      simp [k3PrefixGroup0019TwistLookup, hcase0]
    exact hlocal.trans (twistQrMaskWords_eq_group0002 (by omega) hcase0).symm
  by_cases hcase1 : p ≤ 317
  · have hlocal : k3PrefixGroup0019TwistLookup p = twistQrMaskWords0003 p := by
      simp [k3PrefixGroup0019TwistLookup, hcase0, hcase1]
    exact hlocal.trans (twistQrMaskWords_eq_group0003 (by omega) hcase1).symm
  by_cases hcase2 : p ≤ 421
  · have hlocal : k3PrefixGroup0019TwistLookup p = twistQrMaskWords0004 p := by
      simp [k3PrefixGroup0019TwistLookup, hcase0, hcase1, hcase2]
    exact hlocal.trans (twistQrMaskWords_eq_group0004 (by omega) hcase2).symm
  by_cases hcase3 : p ≤ 521
  · have hlocal : k3PrefixGroup0019TwistLookup p = twistQrMaskWords0005 p := by
      simp [k3PrefixGroup0019TwistLookup, hcase0, hcase1, hcase2, hcase3]
    exact hlocal.trans (twistQrMaskWords_eq_group0005 (by omega) hcase3).symm
  by_cases hcase4 : p ≤ 619
  · have hlocal : k3PrefixGroup0019TwistLookup p = twistQrMaskWords0006 p := by
      simp [k3PrefixGroup0019TwistLookup, hcase0, hcase1, hcase2, hcase3, hcase4]
    exact hlocal.trans (twistQrMaskWords_eq_group0006 (by omega) hcase4).symm
  by_cases hcase5 : p ≤ 733
  · have hlocal : k3PrefixGroup0019TwistLookup p = twistQrMaskWords0007 p := by
      simp [k3PrefixGroup0019TwistLookup, hcase0, hcase1, hcase2, hcase3, hcase4, hcase5]
    exact hlocal.trans (twistQrMaskWords_eq_group0007 (by omega) hcase5).symm
  by_cases hcase6 : p ≤ 839
  · have hlocal : k3PrefixGroup0019TwistLookup p = twistQrMaskWords0008 p := by
      simp [k3PrefixGroup0019TwistLookup, hcase0, hcase1, hcase2, hcase3, hcase4, hcase5, hcase6]
    exact hlocal.trans (twistQrMaskWords_eq_group0008 (by omega) hcase6).symm
  by_cases hcase7 : p ≤ 953
  · have hlocal : k3PrefixGroup0019TwistLookup p = twistQrMaskWords0009 p := by
      simp [k3PrefixGroup0019TwistLookup, hcase0, hcase1, hcase2, hcase3, hcase4, hcase5, hcase6, hcase7]
    exact hlocal.trans (twistQrMaskWords_eq_group0009 (by omega) hcase7).symm
  have hlocal : k3PrefixGroup0019TwistLookup p = twistQrMaskWords0010 p := by
    simp [k3PrefixGroup0019TwistLookup, hcase0, hcase1, hcase2, hcase3, hcase4, hcase5, hcase6, hcase7, hupper]
  exact hlocal.trans (twistQrMaskWords_eq_group0010 (by omega) hupper).symm

theorem k3PrefixGroup0019TwistLookup_eq_global
    {p : ℕ} (hp : k3PrefixGroup0019MaskDomain p) :
    k3PrefixGroup0019TwistLookup p = twistQrMaskWords p := by
  exact k3PrefixGroup0019TwistLookup_eq_global_run00 hp.1 hp.2

theorem k3PrefixGroup0019_standard_passes
    (row : List ℕ × ℕ) (hrow : row ∈ k3PrefixGroup0019) :
    Erdos848.globalMixedSupportPrefixPasses 3 row.1 = true := by
  have hendpointPass := (List.all_eq_true.mp
    k3PrefixGroup0019_endpoint_passes) row hrow
  have hendpoint : Erdos848.globalMixedSupportEndpoint row.1 =
      max 5_000_000 (row.1.prod * row.2) :=
    of_decide_eq_true hendpointPass
  have hmask := (List.all_eq_true.mp
    k3PrefixGroup0019_mask_passes) row hrow
  have hsupport : ∀ p ∈
      row.1.filter (fun p => decide (p ≤ 2843)),
      k3PrefixGroup0019MaskDomain p := by
    intro p hp
    exact of_decide_eq_true ((List.all_eq_true.mp hmask) p hp)
  have hleaf := (List.all_eq_true.mp k3PrefixGroup0019_passes) row hrow
  unfold k3PrefixGroup0019Passes at hleaf
  rw [← hendpoint] at hleaf
  have hcongr := Erdos848.globalMixedCorePrefixPasses_congr
    k3PrefixGroup0019NormalLookup normalQrMaskWords
    k3PrefixGroup0019TwistLookup twistQrMaskWords 3
    (Erdos848.globalMixedSupportEndpoint row.1) row.1
    (fun p hp => k3PrefixGroup0019NormalLookup_eq_global
      (hsupport p hp))
    (fun p hp => k3PrefixGroup0019TwistLookup_eq_global
      (hsupport p hp))
  rw [hcongr, Erdos848.globalMixedCorePrefixPasses_eq] at hleaf
  exact hleaf

#print axioms k3PrefixGroup0019_standard_passes

end Erdos848.GeneratedTailGlobalMixedSupportCoverage
