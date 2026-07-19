import Erdos848.TailGlobalMixedCoreBridge
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.K3PrefixGroup0003
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
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.MaskDispatchGroup0019
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.MaskDispatchGroup0020
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.MaskDispatchGroup0021
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.MaskDispatchGroup0022
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.MaskDispatchGroup0023
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.MaskDispatchGroup0024
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.MaskDispatchGroup0025

namespace Erdos848.GeneratedTailGlobalMixedSupportCoverage

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def k3PrefixGroup0003MaskDomain (p : ℕ) : Prop :=
  (0 < p ∧ p ≤ 2843)

instance k3PrefixGroup0003MaskDomainDecidable (p : ℕ) : Decidable (k3PrefixGroup0003MaskDomain p) := by
  unfold k3PrefixGroup0003MaskDomain
  infer_instance

def k3PrefixGroup0003EndpointPasses (row : List ℕ × ℕ) : Bool :=
  decide (Erdos848.globalMixedSupportEndpoint row.1 =
    max 5_000_000 (row.1.prod * row.2))

def k3PrefixGroup0003MaskPasses (row : List ℕ × ℕ) : Bool :=
    (row.1.filter fun p => decide (p ≤ 2843)).all fun p =>
      decide (k3PrefixGroup0003MaskDomain p)

theorem k3PrefixGroup0003_endpoint_passes :
    k3PrefixGroup0003.all k3PrefixGroup0003EndpointPasses = true := by
  rfl

theorem k3PrefixGroup0003_mask_passes :
    k3PrefixGroup0003.all k3PrefixGroup0003MaskPasses = true := by
  rfl

theorem k3PrefixGroup0003NormalLookup_eq_global_run00
    {p : ℕ} (hlower : 0 < p) (hupper : p ≤ 2843) :
    k3PrefixGroup0003NormalLookup p = normalQrMaskWords p := by
  by_cases hcase0 : p ≤ 61
  · have hlocal : k3PrefixGroup0003NormalLookup p = normalQrMaskWords0000 p := by
      simp [k3PrefixGroup0003NormalLookup, hcase0]
    exact hlocal.trans (normalQrMaskWords_eq_group0000 (by omega) hcase0).symm
  by_cases hcase1 : p ≤ 139
  · have hlocal : k3PrefixGroup0003NormalLookup p = normalQrMaskWords0001 p := by
      simp [k3PrefixGroup0003NormalLookup, hcase0, hcase1]
    exact hlocal.trans (normalQrMaskWords_eq_group0001 (by omega) hcase1).symm
  by_cases hcase2 : p ≤ 229
  · have hlocal : k3PrefixGroup0003NormalLookup p = normalQrMaskWords0002 p := by
      simp [k3PrefixGroup0003NormalLookup, hcase0, hcase1, hcase2]
    exact hlocal.trans (normalQrMaskWords_eq_group0002 (by omega) hcase2).symm
  by_cases hcase3 : p ≤ 317
  · have hlocal : k3PrefixGroup0003NormalLookup p = normalQrMaskWords0003 p := by
      simp [k3PrefixGroup0003NormalLookup, hcase0, hcase1, hcase2, hcase3]
    exact hlocal.trans (normalQrMaskWords_eq_group0003 (by omega) hcase3).symm
  by_cases hcase4 : p ≤ 421
  · have hlocal : k3PrefixGroup0003NormalLookup p = normalQrMaskWords0004 p := by
      simp [k3PrefixGroup0003NormalLookup, hcase0, hcase1, hcase2, hcase3, hcase4]
    exact hlocal.trans (normalQrMaskWords_eq_group0004 (by omega) hcase4).symm
  by_cases hcase5 : p ≤ 521
  · have hlocal : k3PrefixGroup0003NormalLookup p = normalQrMaskWords0005 p := by
      simp [k3PrefixGroup0003NormalLookup, hcase0, hcase1, hcase2, hcase3, hcase4, hcase5]
    exact hlocal.trans (normalQrMaskWords_eq_group0005 (by omega) hcase5).symm
  by_cases hcase6 : p ≤ 619
  · have hlocal : k3PrefixGroup0003NormalLookup p = normalQrMaskWords0006 p := by
      simp [k3PrefixGroup0003NormalLookup, hcase0, hcase1, hcase2, hcase3, hcase4, hcase5, hcase6]
    exact hlocal.trans (normalQrMaskWords_eq_group0006 (by omega) hcase6).symm
  by_cases hcase7 : p ≤ 733
  · have hlocal : k3PrefixGroup0003NormalLookup p = normalQrMaskWords0007 p := by
      simp [k3PrefixGroup0003NormalLookup, hcase0, hcase1, hcase2, hcase3, hcase4, hcase5, hcase6, hcase7]
    exact hlocal.trans (normalQrMaskWords_eq_group0007 (by omega) hcase7).symm
  by_cases hcase8 : p ≤ 839
  · have hlocal : k3PrefixGroup0003NormalLookup p = normalQrMaskWords0008 p := by
      simp [k3PrefixGroup0003NormalLookup, hcase0, hcase1, hcase2, hcase3, hcase4, hcase5, hcase6, hcase7, hcase8]
    exact hlocal.trans (normalQrMaskWords_eq_group0008 (by omega) hcase8).symm
  by_cases hcase9 : p ≤ 953
  · have hlocal : k3PrefixGroup0003NormalLookup p = normalQrMaskWords0009 p := by
      simp [k3PrefixGroup0003NormalLookup, hcase0, hcase1, hcase2, hcase3, hcase4, hcase5, hcase6, hcase7, hcase8, hcase9]
    exact hlocal.trans (normalQrMaskWords_eq_group0009 (by omega) hcase9).symm
  by_cases hcase10 : p ≤ 1061
  · have hlocal : k3PrefixGroup0003NormalLookup p = normalQrMaskWords0010 p := by
      simp [k3PrefixGroup0003NormalLookup, hcase0, hcase1, hcase2, hcase3, hcase4, hcase5, hcase6, hcase7, hcase8, hcase9, hcase10]
    exact hlocal.trans (normalQrMaskWords_eq_group0010 (by omega) hcase10).symm
  by_cases hcase11 : p ≤ 1181
  · have hlocal : k3PrefixGroup0003NormalLookup p = normalQrMaskWords0011 p := by
      simp [k3PrefixGroup0003NormalLookup, hcase0, hcase1, hcase2, hcase3, hcase4, hcase5, hcase6, hcase7, hcase8, hcase9, hcase10, hcase11]
    exact hlocal.trans (normalQrMaskWords_eq_group0011 (by omega) hcase11).symm
  by_cases hcase12 : p ≤ 1291
  · have hlocal : k3PrefixGroup0003NormalLookup p = normalQrMaskWords0012 p := by
      simp [k3PrefixGroup0003NormalLookup, hcase0, hcase1, hcase2, hcase3, hcase4, hcase5, hcase6, hcase7, hcase8, hcase9, hcase10, hcase11, hcase12]
    exact hlocal.trans (normalQrMaskWords_eq_group0012 (by omega) hcase12).symm
  by_cases hcase13 : p ≤ 1429
  · have hlocal : k3PrefixGroup0003NormalLookup p = normalQrMaskWords0013 p := by
      simp [k3PrefixGroup0003NormalLookup, hcase0, hcase1, hcase2, hcase3, hcase4, hcase5, hcase6, hcase7, hcase8, hcase9, hcase10, hcase11, hcase12, hcase13]
    exact hlocal.trans (normalQrMaskWords_eq_group0013 (by omega) hcase13).symm
  by_cases hcase14 : p ≤ 1531
  · have hlocal : k3PrefixGroup0003NormalLookup p = normalQrMaskWords0014 p := by
      simp [k3PrefixGroup0003NormalLookup, hcase0, hcase1, hcase2, hcase3, hcase4, hcase5, hcase6, hcase7, hcase8, hcase9, hcase10, hcase11, hcase12, hcase13, hcase14]
    exact hlocal.trans (normalQrMaskWords_eq_group0014 (by omega) hcase14).symm
  by_cases hcase15 : p ≤ 1627
  · have hlocal : k3PrefixGroup0003NormalLookup p = normalQrMaskWords0015 p := by
      simp [k3PrefixGroup0003NormalLookup, hcase0, hcase1, hcase2, hcase3, hcase4, hcase5, hcase6, hcase7, hcase8, hcase9, hcase10, hcase11, hcase12, hcase13, hcase14, hcase15]
    exact hlocal.trans (normalQrMaskWords_eq_group0015 (by omega) hcase15).symm
  by_cases hcase16 : p ≤ 1759
  · have hlocal : k3PrefixGroup0003NormalLookup p = normalQrMaskWords0016 p := by
      simp [k3PrefixGroup0003NormalLookup, hcase0, hcase1, hcase2, hcase3, hcase4, hcase5, hcase6, hcase7, hcase8, hcase9, hcase10, hcase11, hcase12, hcase13, hcase14, hcase15, hcase16]
    exact hlocal.trans (normalQrMaskWords_eq_group0016 (by omega) hcase16).symm
  by_cases hcase17 : p ≤ 1889
  · have hlocal : k3PrefixGroup0003NormalLookup p = normalQrMaskWords0017 p := by
      simp [k3PrefixGroup0003NormalLookup, hcase0, hcase1, hcase2, hcase3, hcase4, hcase5, hcase6, hcase7, hcase8, hcase9, hcase10, hcase11, hcase12, hcase13, hcase14, hcase15, hcase16, hcase17]
    exact hlocal.trans (normalQrMaskWords_eq_group0017 (by omega) hcase17).symm
  by_cases hcase18 : p ≤ 2017
  · have hlocal : k3PrefixGroup0003NormalLookup p = normalQrMaskWords0018 p := by
      simp [k3PrefixGroup0003NormalLookup, hcase0, hcase1, hcase2, hcase3, hcase4, hcase5, hcase6, hcase7, hcase8, hcase9, hcase10, hcase11, hcase12, hcase13, hcase14, hcase15, hcase16, hcase17, hcase18]
    exact hlocal.trans (normalQrMaskWords_eq_group0018 (by omega) hcase18).symm
  by_cases hcase19 : p ≤ 2137
  · have hlocal : k3PrefixGroup0003NormalLookup p = normalQrMaskWords0019 p := by
      simp [k3PrefixGroup0003NormalLookup, hcase0, hcase1, hcase2, hcase3, hcase4, hcase5, hcase6, hcase7, hcase8, hcase9, hcase10, hcase11, hcase12, hcase13, hcase14, hcase15, hcase16, hcase17, hcase18, hcase19]
    exact hlocal.trans (normalQrMaskWords_eq_group0019 (by omega) hcase19).symm
  by_cases hcase20 : p ≤ 2273
  · have hlocal : k3PrefixGroup0003NormalLookup p = normalQrMaskWords0020 p := by
      simp [k3PrefixGroup0003NormalLookup, hcase0, hcase1, hcase2, hcase3, hcase4, hcase5, hcase6, hcase7, hcase8, hcase9, hcase10, hcase11, hcase12, hcase13, hcase14, hcase15, hcase16, hcase17, hcase18, hcase19, hcase20]
    exact hlocal.trans (normalQrMaskWords_eq_group0020 (by omega) hcase20).symm
  by_cases hcase21 : p ≤ 2383
  · have hlocal : k3PrefixGroup0003NormalLookup p = normalQrMaskWords0021 p := by
      simp [k3PrefixGroup0003NormalLookup, hcase0, hcase1, hcase2, hcase3, hcase4, hcase5, hcase6, hcase7, hcase8, hcase9, hcase10, hcase11, hcase12, hcase13, hcase14, hcase15, hcase16, hcase17, hcase18, hcase19, hcase20, hcase21]
    exact hlocal.trans (normalQrMaskWords_eq_group0021 (by omega) hcase21).symm
  by_cases hcase22 : p ≤ 2531
  · have hlocal : k3PrefixGroup0003NormalLookup p = normalQrMaskWords0022 p := by
      simp [k3PrefixGroup0003NormalLookup, hcase0, hcase1, hcase2, hcase3, hcase4, hcase5, hcase6, hcase7, hcase8, hcase9, hcase10, hcase11, hcase12, hcase13, hcase14, hcase15, hcase16, hcase17, hcase18, hcase19, hcase20, hcase21, hcase22]
    exact hlocal.trans (normalQrMaskWords_eq_group0022 (by omega) hcase22).symm
  by_cases hcase23 : p ≤ 2663
  · have hlocal : k3PrefixGroup0003NormalLookup p = normalQrMaskWords0023 p := by
      simp [k3PrefixGroup0003NormalLookup, hcase0, hcase1, hcase2, hcase3, hcase4, hcase5, hcase6, hcase7, hcase8, hcase9, hcase10, hcase11, hcase12, hcase13, hcase14, hcase15, hcase16, hcase17, hcase18, hcase19, hcase20, hcase21, hcase22, hcase23]
    exact hlocal.trans (normalQrMaskWords_eq_group0023 (by omega) hcase23).symm
  by_cases hcase24 : p ≤ 2753
  · have hlocal : k3PrefixGroup0003NormalLookup p = normalQrMaskWords0024 p := by
      simp [k3PrefixGroup0003NormalLookup, hcase0, hcase1, hcase2, hcase3, hcase4, hcase5, hcase6, hcase7, hcase8, hcase9, hcase10, hcase11, hcase12, hcase13, hcase14, hcase15, hcase16, hcase17, hcase18, hcase19, hcase20, hcase21, hcase22, hcase23, hcase24]
    exact hlocal.trans (normalQrMaskWords_eq_group0024 (by omega) hcase24).symm
  have hlocal : k3PrefixGroup0003NormalLookup p = normalQrMaskWords0025 p := by
    simp [k3PrefixGroup0003NormalLookup, hcase0, hcase1, hcase2, hcase3, hcase4, hcase5, hcase6, hcase7, hcase8, hcase9, hcase10, hcase11, hcase12, hcase13, hcase14, hcase15, hcase16, hcase17, hcase18, hcase19, hcase20, hcase21, hcase22, hcase23, hcase24, hupper]
  exact hlocal.trans (normalQrMaskWords_eq_group0025 (by omega) hupper).symm

theorem k3PrefixGroup0003NormalLookup_eq_global
    {p : ℕ} (hp : k3PrefixGroup0003MaskDomain p) :
    k3PrefixGroup0003NormalLookup p = normalQrMaskWords p := by
  exact k3PrefixGroup0003NormalLookup_eq_global_run00 hp.1 hp.2

theorem k3PrefixGroup0003TwistLookup_eq_global_run00
    {p : ℕ} (hlower : 0 < p) (hupper : p ≤ 2843) :
    k3PrefixGroup0003TwistLookup p = twistQrMaskWords p := by
  by_cases hcase0 : p ≤ 61
  · have hlocal : k3PrefixGroup0003TwistLookup p = twistQrMaskWords0000 p := by
      simp [k3PrefixGroup0003TwistLookup, hcase0]
    exact hlocal.trans (twistQrMaskWords_eq_group0000 (by omega) hcase0).symm
  by_cases hcase1 : p ≤ 139
  · have hlocal : k3PrefixGroup0003TwistLookup p = twistQrMaskWords0001 p := by
      simp [k3PrefixGroup0003TwistLookup, hcase0, hcase1]
    exact hlocal.trans (twistQrMaskWords_eq_group0001 (by omega) hcase1).symm
  by_cases hcase2 : p ≤ 229
  · have hlocal : k3PrefixGroup0003TwistLookup p = twistQrMaskWords0002 p := by
      simp [k3PrefixGroup0003TwistLookup, hcase0, hcase1, hcase2]
    exact hlocal.trans (twistQrMaskWords_eq_group0002 (by omega) hcase2).symm
  by_cases hcase3 : p ≤ 317
  · have hlocal : k3PrefixGroup0003TwistLookup p = twistQrMaskWords0003 p := by
      simp [k3PrefixGroup0003TwistLookup, hcase0, hcase1, hcase2, hcase3]
    exact hlocal.trans (twistQrMaskWords_eq_group0003 (by omega) hcase3).symm
  by_cases hcase4 : p ≤ 421
  · have hlocal : k3PrefixGroup0003TwistLookup p = twistQrMaskWords0004 p := by
      simp [k3PrefixGroup0003TwistLookup, hcase0, hcase1, hcase2, hcase3, hcase4]
    exact hlocal.trans (twistQrMaskWords_eq_group0004 (by omega) hcase4).symm
  by_cases hcase5 : p ≤ 521
  · have hlocal : k3PrefixGroup0003TwistLookup p = twistQrMaskWords0005 p := by
      simp [k3PrefixGroup0003TwistLookup, hcase0, hcase1, hcase2, hcase3, hcase4, hcase5]
    exact hlocal.trans (twistQrMaskWords_eq_group0005 (by omega) hcase5).symm
  by_cases hcase6 : p ≤ 619
  · have hlocal : k3PrefixGroup0003TwistLookup p = twistQrMaskWords0006 p := by
      simp [k3PrefixGroup0003TwistLookup, hcase0, hcase1, hcase2, hcase3, hcase4, hcase5, hcase6]
    exact hlocal.trans (twistQrMaskWords_eq_group0006 (by omega) hcase6).symm
  by_cases hcase7 : p ≤ 733
  · have hlocal : k3PrefixGroup0003TwistLookup p = twistQrMaskWords0007 p := by
      simp [k3PrefixGroup0003TwistLookup, hcase0, hcase1, hcase2, hcase3, hcase4, hcase5, hcase6, hcase7]
    exact hlocal.trans (twistQrMaskWords_eq_group0007 (by omega) hcase7).symm
  by_cases hcase8 : p ≤ 839
  · have hlocal : k3PrefixGroup0003TwistLookup p = twistQrMaskWords0008 p := by
      simp [k3PrefixGroup0003TwistLookup, hcase0, hcase1, hcase2, hcase3, hcase4, hcase5, hcase6, hcase7, hcase8]
    exact hlocal.trans (twistQrMaskWords_eq_group0008 (by omega) hcase8).symm
  by_cases hcase9 : p ≤ 953
  · have hlocal : k3PrefixGroup0003TwistLookup p = twistQrMaskWords0009 p := by
      simp [k3PrefixGroup0003TwistLookup, hcase0, hcase1, hcase2, hcase3, hcase4, hcase5, hcase6, hcase7, hcase8, hcase9]
    exact hlocal.trans (twistQrMaskWords_eq_group0009 (by omega) hcase9).symm
  by_cases hcase10 : p ≤ 1061
  · have hlocal : k3PrefixGroup0003TwistLookup p = twistQrMaskWords0010 p := by
      simp [k3PrefixGroup0003TwistLookup, hcase0, hcase1, hcase2, hcase3, hcase4, hcase5, hcase6, hcase7, hcase8, hcase9, hcase10]
    exact hlocal.trans (twistQrMaskWords_eq_group0010 (by omega) hcase10).symm
  by_cases hcase11 : p ≤ 1181
  · have hlocal : k3PrefixGroup0003TwistLookup p = twistQrMaskWords0011 p := by
      simp [k3PrefixGroup0003TwistLookup, hcase0, hcase1, hcase2, hcase3, hcase4, hcase5, hcase6, hcase7, hcase8, hcase9, hcase10, hcase11]
    exact hlocal.trans (twistQrMaskWords_eq_group0011 (by omega) hcase11).symm
  by_cases hcase12 : p ≤ 1291
  · have hlocal : k3PrefixGroup0003TwistLookup p = twistQrMaskWords0012 p := by
      simp [k3PrefixGroup0003TwistLookup, hcase0, hcase1, hcase2, hcase3, hcase4, hcase5, hcase6, hcase7, hcase8, hcase9, hcase10, hcase11, hcase12]
    exact hlocal.trans (twistQrMaskWords_eq_group0012 (by omega) hcase12).symm
  by_cases hcase13 : p ≤ 1429
  · have hlocal : k3PrefixGroup0003TwistLookup p = twistQrMaskWords0013 p := by
      simp [k3PrefixGroup0003TwistLookup, hcase0, hcase1, hcase2, hcase3, hcase4, hcase5, hcase6, hcase7, hcase8, hcase9, hcase10, hcase11, hcase12, hcase13]
    exact hlocal.trans (twistQrMaskWords_eq_group0013 (by omega) hcase13).symm
  by_cases hcase14 : p ≤ 1531
  · have hlocal : k3PrefixGroup0003TwistLookup p = twistQrMaskWords0014 p := by
      simp [k3PrefixGroup0003TwistLookup, hcase0, hcase1, hcase2, hcase3, hcase4, hcase5, hcase6, hcase7, hcase8, hcase9, hcase10, hcase11, hcase12, hcase13, hcase14]
    exact hlocal.trans (twistQrMaskWords_eq_group0014 (by omega) hcase14).symm
  by_cases hcase15 : p ≤ 1627
  · have hlocal : k3PrefixGroup0003TwistLookup p = twistQrMaskWords0015 p := by
      simp [k3PrefixGroup0003TwistLookup, hcase0, hcase1, hcase2, hcase3, hcase4, hcase5, hcase6, hcase7, hcase8, hcase9, hcase10, hcase11, hcase12, hcase13, hcase14, hcase15]
    exact hlocal.trans (twistQrMaskWords_eq_group0015 (by omega) hcase15).symm
  by_cases hcase16 : p ≤ 1759
  · have hlocal : k3PrefixGroup0003TwistLookup p = twistQrMaskWords0016 p := by
      simp [k3PrefixGroup0003TwistLookup, hcase0, hcase1, hcase2, hcase3, hcase4, hcase5, hcase6, hcase7, hcase8, hcase9, hcase10, hcase11, hcase12, hcase13, hcase14, hcase15, hcase16]
    exact hlocal.trans (twistQrMaskWords_eq_group0016 (by omega) hcase16).symm
  by_cases hcase17 : p ≤ 1889
  · have hlocal : k3PrefixGroup0003TwistLookup p = twistQrMaskWords0017 p := by
      simp [k3PrefixGroup0003TwistLookup, hcase0, hcase1, hcase2, hcase3, hcase4, hcase5, hcase6, hcase7, hcase8, hcase9, hcase10, hcase11, hcase12, hcase13, hcase14, hcase15, hcase16, hcase17]
    exact hlocal.trans (twistQrMaskWords_eq_group0017 (by omega) hcase17).symm
  by_cases hcase18 : p ≤ 2017
  · have hlocal : k3PrefixGroup0003TwistLookup p = twistQrMaskWords0018 p := by
      simp [k3PrefixGroup0003TwistLookup, hcase0, hcase1, hcase2, hcase3, hcase4, hcase5, hcase6, hcase7, hcase8, hcase9, hcase10, hcase11, hcase12, hcase13, hcase14, hcase15, hcase16, hcase17, hcase18]
    exact hlocal.trans (twistQrMaskWords_eq_group0018 (by omega) hcase18).symm
  by_cases hcase19 : p ≤ 2137
  · have hlocal : k3PrefixGroup0003TwistLookup p = twistQrMaskWords0019 p := by
      simp [k3PrefixGroup0003TwistLookup, hcase0, hcase1, hcase2, hcase3, hcase4, hcase5, hcase6, hcase7, hcase8, hcase9, hcase10, hcase11, hcase12, hcase13, hcase14, hcase15, hcase16, hcase17, hcase18, hcase19]
    exact hlocal.trans (twistQrMaskWords_eq_group0019 (by omega) hcase19).symm
  by_cases hcase20 : p ≤ 2273
  · have hlocal : k3PrefixGroup0003TwistLookup p = twistQrMaskWords0020 p := by
      simp [k3PrefixGroup0003TwistLookup, hcase0, hcase1, hcase2, hcase3, hcase4, hcase5, hcase6, hcase7, hcase8, hcase9, hcase10, hcase11, hcase12, hcase13, hcase14, hcase15, hcase16, hcase17, hcase18, hcase19, hcase20]
    exact hlocal.trans (twistQrMaskWords_eq_group0020 (by omega) hcase20).symm
  by_cases hcase21 : p ≤ 2383
  · have hlocal : k3PrefixGroup0003TwistLookup p = twistQrMaskWords0021 p := by
      simp [k3PrefixGroup0003TwistLookup, hcase0, hcase1, hcase2, hcase3, hcase4, hcase5, hcase6, hcase7, hcase8, hcase9, hcase10, hcase11, hcase12, hcase13, hcase14, hcase15, hcase16, hcase17, hcase18, hcase19, hcase20, hcase21]
    exact hlocal.trans (twistQrMaskWords_eq_group0021 (by omega) hcase21).symm
  by_cases hcase22 : p ≤ 2531
  · have hlocal : k3PrefixGroup0003TwistLookup p = twistQrMaskWords0022 p := by
      simp [k3PrefixGroup0003TwistLookup, hcase0, hcase1, hcase2, hcase3, hcase4, hcase5, hcase6, hcase7, hcase8, hcase9, hcase10, hcase11, hcase12, hcase13, hcase14, hcase15, hcase16, hcase17, hcase18, hcase19, hcase20, hcase21, hcase22]
    exact hlocal.trans (twistQrMaskWords_eq_group0022 (by omega) hcase22).symm
  by_cases hcase23 : p ≤ 2663
  · have hlocal : k3PrefixGroup0003TwistLookup p = twistQrMaskWords0023 p := by
      simp [k3PrefixGroup0003TwistLookup, hcase0, hcase1, hcase2, hcase3, hcase4, hcase5, hcase6, hcase7, hcase8, hcase9, hcase10, hcase11, hcase12, hcase13, hcase14, hcase15, hcase16, hcase17, hcase18, hcase19, hcase20, hcase21, hcase22, hcase23]
    exact hlocal.trans (twistQrMaskWords_eq_group0023 (by omega) hcase23).symm
  by_cases hcase24 : p ≤ 2753
  · have hlocal : k3PrefixGroup0003TwistLookup p = twistQrMaskWords0024 p := by
      simp [k3PrefixGroup0003TwistLookup, hcase0, hcase1, hcase2, hcase3, hcase4, hcase5, hcase6, hcase7, hcase8, hcase9, hcase10, hcase11, hcase12, hcase13, hcase14, hcase15, hcase16, hcase17, hcase18, hcase19, hcase20, hcase21, hcase22, hcase23, hcase24]
    exact hlocal.trans (twistQrMaskWords_eq_group0024 (by omega) hcase24).symm
  have hlocal : k3PrefixGroup0003TwistLookup p = twistQrMaskWords0025 p := by
    simp [k3PrefixGroup0003TwistLookup, hcase0, hcase1, hcase2, hcase3, hcase4, hcase5, hcase6, hcase7, hcase8, hcase9, hcase10, hcase11, hcase12, hcase13, hcase14, hcase15, hcase16, hcase17, hcase18, hcase19, hcase20, hcase21, hcase22, hcase23, hcase24, hupper]
  exact hlocal.trans (twistQrMaskWords_eq_group0025 (by omega) hupper).symm

theorem k3PrefixGroup0003TwistLookup_eq_global
    {p : ℕ} (hp : k3PrefixGroup0003MaskDomain p) :
    k3PrefixGroup0003TwistLookup p = twistQrMaskWords p := by
  exact k3PrefixGroup0003TwistLookup_eq_global_run00 hp.1 hp.2

theorem k3PrefixGroup0003_standard_passes
    (row : List ℕ × ℕ) (hrow : row ∈ k3PrefixGroup0003) :
    Erdos848.globalMixedSupportPrefixPasses 3 row.1 = true := by
  have hendpointPass := (List.all_eq_true.mp
    k3PrefixGroup0003_endpoint_passes) row hrow
  have hendpoint : Erdos848.globalMixedSupportEndpoint row.1 =
      max 5_000_000 (row.1.prod * row.2) :=
    of_decide_eq_true hendpointPass
  have hmask := (List.all_eq_true.mp
    k3PrefixGroup0003_mask_passes) row hrow
  have hsupport : ∀ p ∈
      row.1.filter (fun p => decide (p ≤ 2843)),
      k3PrefixGroup0003MaskDomain p := by
    intro p hp
    exact of_decide_eq_true ((List.all_eq_true.mp hmask) p hp)
  have hleaf := (List.all_eq_true.mp k3PrefixGroup0003_passes) row hrow
  unfold k3PrefixGroup0003Passes at hleaf
  rw [← hendpoint] at hleaf
  have hcongr := Erdos848.globalMixedCorePrefixPasses_congr
    k3PrefixGroup0003NormalLookup normalQrMaskWords
    k3PrefixGroup0003TwistLookup twistQrMaskWords 3
    (Erdos848.globalMixedSupportEndpoint row.1) row.1
    (fun p hp => k3PrefixGroup0003NormalLookup_eq_global
      (hsupport p hp))
    (fun p hp => k3PrefixGroup0003TwistLookup_eq_global
      (hsupport p hp))
  rw [hcongr, Erdos848.globalMixedCorePrefixPasses_eq] at hleaf
  exact hleaf

#print axioms k3PrefixGroup0003_standard_passes

end Erdos848.GeneratedTailGlobalMixedSupportCoverage
