import Erdos848.TailGlobalMixedCoreBridge
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.K4PrefixGroup0005
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.MaskDispatchGroup0000
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.MaskDispatchGroup0001
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.MaskDispatchGroup0002
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.MaskDispatchGroup0003
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.MaskDispatchGroup0004
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.MaskDispatchGroup0005
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.MaskDispatchGroup0006
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.MaskDispatchGroup0007
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.MaskDispatchGroup0008
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.MaskDispatchGroup0009
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.MaskDispatchGroup0010
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.MaskDispatchGroup0011
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.MaskDispatchGroup0012
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.MaskDispatchGroup0013
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.MaskDispatchGroup0014
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.MaskDispatchGroup0015
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.MaskDispatchGroup0016
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.MaskDispatchGroup0017
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.MaskDispatchGroup0018

namespace Erdos848.GeneratedTailGlobalMixedSupportCoverage

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def k4PrefixGroup0005MaskDomain (p : ℕ) : Prop :=
  (0 < p ∧ p ≤ 2017)

instance k4PrefixGroup0005MaskDomainDecidable (p : ℕ) : Decidable (k4PrefixGroup0005MaskDomain p) := by
  unfold k4PrefixGroup0005MaskDomain
  infer_instance

def k4PrefixGroup0005EndpointPasses (row : List ℕ × ℕ) : Bool :=
  decide (Erdos848.globalMixedSupportEndpoint row.1 =
    max 5_000_000 (row.1.prod * row.2))

def k4PrefixGroup0005MaskPasses (row : List ℕ × ℕ) : Bool :=
    (row.1.filter fun p => decide (p ≤ 2843)).all fun p =>
      decide (k4PrefixGroup0005MaskDomain p)

theorem k4PrefixGroup0005_endpoint_passes :
    k4PrefixGroup0005.all k4PrefixGroup0005EndpointPasses = true := by
  rfl

theorem k4PrefixGroup0005_mask_passes :
    k4PrefixGroup0005.all k4PrefixGroup0005MaskPasses = true := by
  rfl

theorem k4PrefixGroup0005NormalLookup_eq_global_run00
    {p : ℕ} (hlower : 0 < p) (hupper : p ≤ 2017) :
    k4PrefixGroup0005NormalLookup p = normalQrMaskWords p := by
  by_cases hcase0 : p ≤ 61
  · have hlocal : k4PrefixGroup0005NormalLookup p = normalQrMaskWords0000 p := by
      simp [k4PrefixGroup0005NormalLookup, hcase0]
    exact hlocal.trans (normalQrMaskWords_eq_group0000 (by omega) hcase0).symm
  by_cases hcase1 : p ≤ 139
  · have hlocal : k4PrefixGroup0005NormalLookup p = normalQrMaskWords0001 p := by
      simp [k4PrefixGroup0005NormalLookup, hcase0, hcase1]
    exact hlocal.trans (normalQrMaskWords_eq_group0001 (by omega) hcase1).symm
  by_cases hcase2 : p ≤ 229
  · have hlocal : k4PrefixGroup0005NormalLookup p = normalQrMaskWords0002 p := by
      simp [k4PrefixGroup0005NormalLookup, hcase0, hcase1, hcase2]
    exact hlocal.trans (normalQrMaskWords_eq_group0002 (by omega) hcase2).symm
  by_cases hcase3 : p ≤ 317
  · have hlocal : k4PrefixGroup0005NormalLookup p = normalQrMaskWords0003 p := by
      simp [k4PrefixGroup0005NormalLookup, hcase0, hcase1, hcase2, hcase3]
    exact hlocal.trans (normalQrMaskWords_eq_group0003 (by omega) hcase3).symm
  by_cases hcase4 : p ≤ 421
  · have hlocal : k4PrefixGroup0005NormalLookup p = normalQrMaskWords0004 p := by
      simp [k4PrefixGroup0005NormalLookup, hcase0, hcase1, hcase2, hcase3, hcase4]
    exact hlocal.trans (normalQrMaskWords_eq_group0004 (by omega) hcase4).symm
  by_cases hcase5 : p ≤ 521
  · have hlocal : k4PrefixGroup0005NormalLookup p = normalQrMaskWords0005 p := by
      simp [k4PrefixGroup0005NormalLookup, hcase0, hcase1, hcase2, hcase3, hcase4, hcase5]
    exact hlocal.trans (normalQrMaskWords_eq_group0005 (by omega) hcase5).symm
  by_cases hcase6 : p ≤ 619
  · have hlocal : k4PrefixGroup0005NormalLookup p = normalQrMaskWords0006 p := by
      simp [k4PrefixGroup0005NormalLookup, hcase0, hcase1, hcase2, hcase3, hcase4, hcase5, hcase6]
    exact hlocal.trans (normalQrMaskWords_eq_group0006 (by omega) hcase6).symm
  by_cases hcase7 : p ≤ 733
  · have hlocal : k4PrefixGroup0005NormalLookup p = normalQrMaskWords0007 p := by
      simp [k4PrefixGroup0005NormalLookup, hcase0, hcase1, hcase2, hcase3, hcase4, hcase5, hcase6, hcase7]
    exact hlocal.trans (normalQrMaskWords_eq_group0007 (by omega) hcase7).symm
  by_cases hcase8 : p ≤ 839
  · have hlocal : k4PrefixGroup0005NormalLookup p = normalQrMaskWords0008 p := by
      simp [k4PrefixGroup0005NormalLookup, hcase0, hcase1, hcase2, hcase3, hcase4, hcase5, hcase6, hcase7, hcase8]
    exact hlocal.trans (normalQrMaskWords_eq_group0008 (by omega) hcase8).symm
  by_cases hcase9 : p ≤ 953
  · have hlocal : k4PrefixGroup0005NormalLookup p = normalQrMaskWords0009 p := by
      simp [k4PrefixGroup0005NormalLookup, hcase0, hcase1, hcase2, hcase3, hcase4, hcase5, hcase6, hcase7, hcase8, hcase9]
    exact hlocal.trans (normalQrMaskWords_eq_group0009 (by omega) hcase9).symm
  by_cases hcase10 : p ≤ 1061
  · have hlocal : k4PrefixGroup0005NormalLookup p = normalQrMaskWords0010 p := by
      simp [k4PrefixGroup0005NormalLookup, hcase0, hcase1, hcase2, hcase3, hcase4, hcase5, hcase6, hcase7, hcase8, hcase9, hcase10]
    exact hlocal.trans (normalQrMaskWords_eq_group0010 (by omega) hcase10).symm
  by_cases hcase11 : p ≤ 1181
  · have hlocal : k4PrefixGroup0005NormalLookup p = normalQrMaskWords0011 p := by
      simp [k4PrefixGroup0005NormalLookup, hcase0, hcase1, hcase2, hcase3, hcase4, hcase5, hcase6, hcase7, hcase8, hcase9, hcase10, hcase11]
    exact hlocal.trans (normalQrMaskWords_eq_group0011 (by omega) hcase11).symm
  by_cases hcase12 : p ≤ 1291
  · have hlocal : k4PrefixGroup0005NormalLookup p = normalQrMaskWords0012 p := by
      simp [k4PrefixGroup0005NormalLookup, hcase0, hcase1, hcase2, hcase3, hcase4, hcase5, hcase6, hcase7, hcase8, hcase9, hcase10, hcase11, hcase12]
    exact hlocal.trans (normalQrMaskWords_eq_group0012 (by omega) hcase12).symm
  by_cases hcase13 : p ≤ 1429
  · have hlocal : k4PrefixGroup0005NormalLookup p = normalQrMaskWords0013 p := by
      simp [k4PrefixGroup0005NormalLookup, hcase0, hcase1, hcase2, hcase3, hcase4, hcase5, hcase6, hcase7, hcase8, hcase9, hcase10, hcase11, hcase12, hcase13]
    exact hlocal.trans (normalQrMaskWords_eq_group0013 (by omega) hcase13).symm
  by_cases hcase14 : p ≤ 1531
  · have hlocal : k4PrefixGroup0005NormalLookup p = normalQrMaskWords0014 p := by
      simp [k4PrefixGroup0005NormalLookup, hcase0, hcase1, hcase2, hcase3, hcase4, hcase5, hcase6, hcase7, hcase8, hcase9, hcase10, hcase11, hcase12, hcase13, hcase14]
    exact hlocal.trans (normalQrMaskWords_eq_group0014 (by omega) hcase14).symm
  by_cases hcase15 : p ≤ 1627
  · have hlocal : k4PrefixGroup0005NormalLookup p = normalQrMaskWords0015 p := by
      simp [k4PrefixGroup0005NormalLookup, hcase0, hcase1, hcase2, hcase3, hcase4, hcase5, hcase6, hcase7, hcase8, hcase9, hcase10, hcase11, hcase12, hcase13, hcase14, hcase15]
    exact hlocal.trans (normalQrMaskWords_eq_group0015 (by omega) hcase15).symm
  by_cases hcase16 : p ≤ 1759
  · have hlocal : k4PrefixGroup0005NormalLookup p = normalQrMaskWords0016 p := by
      simp [k4PrefixGroup0005NormalLookup, hcase0, hcase1, hcase2, hcase3, hcase4, hcase5, hcase6, hcase7, hcase8, hcase9, hcase10, hcase11, hcase12, hcase13, hcase14, hcase15, hcase16]
    exact hlocal.trans (normalQrMaskWords_eq_group0016 (by omega) hcase16).symm
  by_cases hcase17 : p ≤ 1889
  · have hlocal : k4PrefixGroup0005NormalLookup p = normalQrMaskWords0017 p := by
      simp [k4PrefixGroup0005NormalLookup, hcase0, hcase1, hcase2, hcase3, hcase4, hcase5, hcase6, hcase7, hcase8, hcase9, hcase10, hcase11, hcase12, hcase13, hcase14, hcase15, hcase16, hcase17]
    exact hlocal.trans (normalQrMaskWords_eq_group0017 (by omega) hcase17).symm
  have hlocal : k4PrefixGroup0005NormalLookup p = normalQrMaskWords0018 p := by
    simp [k4PrefixGroup0005NormalLookup, hcase0, hcase1, hcase2, hcase3, hcase4, hcase5, hcase6, hcase7, hcase8, hcase9, hcase10, hcase11, hcase12, hcase13, hcase14, hcase15, hcase16, hcase17, hupper]
  exact hlocal.trans (normalQrMaskWords_eq_group0018 (by omega) hupper).symm

theorem k4PrefixGroup0005NormalLookup_eq_global
    {p : ℕ} (hp : k4PrefixGroup0005MaskDomain p) :
    k4PrefixGroup0005NormalLookup p = normalQrMaskWords p := by
  exact k4PrefixGroup0005NormalLookup_eq_global_run00 hp.1 hp.2

theorem k4PrefixGroup0005TwistLookup_eq_global_run00
    {p : ℕ} (hlower : 0 < p) (hupper : p ≤ 2017) :
    k4PrefixGroup0005TwistLookup p = twistQrMaskWords p := by
  by_cases hcase0 : p ≤ 61
  · have hlocal : k4PrefixGroup0005TwistLookup p = twistQrMaskWords0000 p := by
      simp [k4PrefixGroup0005TwistLookup, hcase0]
    exact hlocal.trans (twistQrMaskWords_eq_group0000 (by omega) hcase0).symm
  by_cases hcase1 : p ≤ 139
  · have hlocal : k4PrefixGroup0005TwistLookup p = twistQrMaskWords0001 p := by
      simp [k4PrefixGroup0005TwistLookup, hcase0, hcase1]
    exact hlocal.trans (twistQrMaskWords_eq_group0001 (by omega) hcase1).symm
  by_cases hcase2 : p ≤ 229
  · have hlocal : k4PrefixGroup0005TwistLookup p = twistQrMaskWords0002 p := by
      simp [k4PrefixGroup0005TwistLookup, hcase0, hcase1, hcase2]
    exact hlocal.trans (twistQrMaskWords_eq_group0002 (by omega) hcase2).symm
  by_cases hcase3 : p ≤ 317
  · have hlocal : k4PrefixGroup0005TwistLookup p = twistQrMaskWords0003 p := by
      simp [k4PrefixGroup0005TwistLookup, hcase0, hcase1, hcase2, hcase3]
    exact hlocal.trans (twistQrMaskWords_eq_group0003 (by omega) hcase3).symm
  by_cases hcase4 : p ≤ 421
  · have hlocal : k4PrefixGroup0005TwistLookup p = twistQrMaskWords0004 p := by
      simp [k4PrefixGroup0005TwistLookup, hcase0, hcase1, hcase2, hcase3, hcase4]
    exact hlocal.trans (twistQrMaskWords_eq_group0004 (by omega) hcase4).symm
  by_cases hcase5 : p ≤ 521
  · have hlocal : k4PrefixGroup0005TwistLookup p = twistQrMaskWords0005 p := by
      simp [k4PrefixGroup0005TwistLookup, hcase0, hcase1, hcase2, hcase3, hcase4, hcase5]
    exact hlocal.trans (twistQrMaskWords_eq_group0005 (by omega) hcase5).symm
  by_cases hcase6 : p ≤ 619
  · have hlocal : k4PrefixGroup0005TwistLookup p = twistQrMaskWords0006 p := by
      simp [k4PrefixGroup0005TwistLookup, hcase0, hcase1, hcase2, hcase3, hcase4, hcase5, hcase6]
    exact hlocal.trans (twistQrMaskWords_eq_group0006 (by omega) hcase6).symm
  by_cases hcase7 : p ≤ 733
  · have hlocal : k4PrefixGroup0005TwistLookup p = twistQrMaskWords0007 p := by
      simp [k4PrefixGroup0005TwistLookup, hcase0, hcase1, hcase2, hcase3, hcase4, hcase5, hcase6, hcase7]
    exact hlocal.trans (twistQrMaskWords_eq_group0007 (by omega) hcase7).symm
  by_cases hcase8 : p ≤ 839
  · have hlocal : k4PrefixGroup0005TwistLookup p = twistQrMaskWords0008 p := by
      simp [k4PrefixGroup0005TwistLookup, hcase0, hcase1, hcase2, hcase3, hcase4, hcase5, hcase6, hcase7, hcase8]
    exact hlocal.trans (twistQrMaskWords_eq_group0008 (by omega) hcase8).symm
  by_cases hcase9 : p ≤ 953
  · have hlocal : k4PrefixGroup0005TwistLookup p = twistQrMaskWords0009 p := by
      simp [k4PrefixGroup0005TwistLookup, hcase0, hcase1, hcase2, hcase3, hcase4, hcase5, hcase6, hcase7, hcase8, hcase9]
    exact hlocal.trans (twistQrMaskWords_eq_group0009 (by omega) hcase9).symm
  by_cases hcase10 : p ≤ 1061
  · have hlocal : k4PrefixGroup0005TwistLookup p = twistQrMaskWords0010 p := by
      simp [k4PrefixGroup0005TwistLookup, hcase0, hcase1, hcase2, hcase3, hcase4, hcase5, hcase6, hcase7, hcase8, hcase9, hcase10]
    exact hlocal.trans (twistQrMaskWords_eq_group0010 (by omega) hcase10).symm
  by_cases hcase11 : p ≤ 1181
  · have hlocal : k4PrefixGroup0005TwistLookup p = twistQrMaskWords0011 p := by
      simp [k4PrefixGroup0005TwistLookup, hcase0, hcase1, hcase2, hcase3, hcase4, hcase5, hcase6, hcase7, hcase8, hcase9, hcase10, hcase11]
    exact hlocal.trans (twistQrMaskWords_eq_group0011 (by omega) hcase11).symm
  by_cases hcase12 : p ≤ 1291
  · have hlocal : k4PrefixGroup0005TwistLookup p = twistQrMaskWords0012 p := by
      simp [k4PrefixGroup0005TwistLookup, hcase0, hcase1, hcase2, hcase3, hcase4, hcase5, hcase6, hcase7, hcase8, hcase9, hcase10, hcase11, hcase12]
    exact hlocal.trans (twistQrMaskWords_eq_group0012 (by omega) hcase12).symm
  by_cases hcase13 : p ≤ 1429
  · have hlocal : k4PrefixGroup0005TwistLookup p = twistQrMaskWords0013 p := by
      simp [k4PrefixGroup0005TwistLookup, hcase0, hcase1, hcase2, hcase3, hcase4, hcase5, hcase6, hcase7, hcase8, hcase9, hcase10, hcase11, hcase12, hcase13]
    exact hlocal.trans (twistQrMaskWords_eq_group0013 (by omega) hcase13).symm
  by_cases hcase14 : p ≤ 1531
  · have hlocal : k4PrefixGroup0005TwistLookup p = twistQrMaskWords0014 p := by
      simp [k4PrefixGroup0005TwistLookup, hcase0, hcase1, hcase2, hcase3, hcase4, hcase5, hcase6, hcase7, hcase8, hcase9, hcase10, hcase11, hcase12, hcase13, hcase14]
    exact hlocal.trans (twistQrMaskWords_eq_group0014 (by omega) hcase14).symm
  by_cases hcase15 : p ≤ 1627
  · have hlocal : k4PrefixGroup0005TwistLookup p = twistQrMaskWords0015 p := by
      simp [k4PrefixGroup0005TwistLookup, hcase0, hcase1, hcase2, hcase3, hcase4, hcase5, hcase6, hcase7, hcase8, hcase9, hcase10, hcase11, hcase12, hcase13, hcase14, hcase15]
    exact hlocal.trans (twistQrMaskWords_eq_group0015 (by omega) hcase15).symm
  by_cases hcase16 : p ≤ 1759
  · have hlocal : k4PrefixGroup0005TwistLookup p = twistQrMaskWords0016 p := by
      simp [k4PrefixGroup0005TwistLookup, hcase0, hcase1, hcase2, hcase3, hcase4, hcase5, hcase6, hcase7, hcase8, hcase9, hcase10, hcase11, hcase12, hcase13, hcase14, hcase15, hcase16]
    exact hlocal.trans (twistQrMaskWords_eq_group0016 (by omega) hcase16).symm
  by_cases hcase17 : p ≤ 1889
  · have hlocal : k4PrefixGroup0005TwistLookup p = twistQrMaskWords0017 p := by
      simp [k4PrefixGroup0005TwistLookup, hcase0, hcase1, hcase2, hcase3, hcase4, hcase5, hcase6, hcase7, hcase8, hcase9, hcase10, hcase11, hcase12, hcase13, hcase14, hcase15, hcase16, hcase17]
    exact hlocal.trans (twistQrMaskWords_eq_group0017 (by omega) hcase17).symm
  have hlocal : k4PrefixGroup0005TwistLookup p = twistQrMaskWords0018 p := by
    simp [k4PrefixGroup0005TwistLookup, hcase0, hcase1, hcase2, hcase3, hcase4, hcase5, hcase6, hcase7, hcase8, hcase9, hcase10, hcase11, hcase12, hcase13, hcase14, hcase15, hcase16, hcase17, hupper]
  exact hlocal.trans (twistQrMaskWords_eq_group0018 (by omega) hupper).symm

theorem k4PrefixGroup0005TwistLookup_eq_global
    {p : ℕ} (hp : k4PrefixGroup0005MaskDomain p) :
    k4PrefixGroup0005TwistLookup p = twistQrMaskWords p := by
  exact k4PrefixGroup0005TwistLookup_eq_global_run00 hp.1 hp.2

theorem k4PrefixGroup0005_standard_passes
    (row : List ℕ × ℕ) (hrow : row ∈ k4PrefixGroup0005) :
    Erdos848.globalMixedSupportPrefixPasses 4 row.1 = true := by
  have hendpointPass := (List.all_eq_true.mp
    k4PrefixGroup0005_endpoint_passes) row hrow
  have hendpoint : Erdos848.globalMixedSupportEndpoint row.1 =
      max 5_000_000 (row.1.prod * row.2) :=
    of_decide_eq_true hendpointPass
  have hmask := (List.all_eq_true.mp
    k4PrefixGroup0005_mask_passes) row hrow
  have hsupport : ∀ p ∈
      row.1.filter (fun p => decide (p ≤ 2843)),
      k4PrefixGroup0005MaskDomain p := by
    intro p hp
    exact of_decide_eq_true ((List.all_eq_true.mp hmask) p hp)
  have hleaf := (List.all_eq_true.mp k4PrefixGroup0005_passes) row hrow
  unfold k4PrefixGroup0005Passes at hleaf
  rw [← hendpoint] at hleaf
  have hcongr := Erdos848.globalMixedCorePrefixPasses_congr
    k4PrefixGroup0005NormalLookup normalQrMaskWords
    k4PrefixGroup0005TwistLookup twistQrMaskWords 4
    (Erdos848.globalMixedSupportEndpoint row.1) row.1
    (fun p hp => k4PrefixGroup0005NormalLookup_eq_global
      (hsupport p hp))
    (fun p hp => k4PrefixGroup0005TwistLookup_eq_global
      (hsupport p hp))
  rw [hcongr, Erdos848.globalMixedCorePrefixPasses_eq] at hleaf
  exact hleaf

#print axioms k4PrefixGroup0005_standard_passes

end Erdos848.GeneratedTailGlobalMixedSupportCoverage
