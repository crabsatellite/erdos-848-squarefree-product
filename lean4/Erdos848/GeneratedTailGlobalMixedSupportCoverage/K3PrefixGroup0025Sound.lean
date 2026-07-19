import Erdos848.TailGlobalMixedCoreBridge
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.K3PrefixGroup0025
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.MaskDispatchGroup0004
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.MaskDispatchGroup0005
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.MaskDispatchGroup0006
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.MaskDispatchGroup0007

namespace Erdos848.GeneratedTailGlobalMixedSupportCoverage

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def k3PrefixGroup0025MaskDomain (p : ℕ) : Prop :=
  (317 < p ∧ p ≤ 733)

instance k3PrefixGroup0025MaskDomainDecidable (p : ℕ) : Decidable (k3PrefixGroup0025MaskDomain p) := by
  unfold k3PrefixGroup0025MaskDomain
  infer_instance

def k3PrefixGroup0025EndpointPasses (row : List ℕ × ℕ) : Bool :=
  decide (Erdos848.globalMixedSupportEndpoint row.1 =
    max 5_000_000 (row.1.prod * row.2))

def k3PrefixGroup0025MaskPasses (row : List ℕ × ℕ) : Bool :=
    (row.1.filter fun p => decide (p ≤ 2843)).all fun p =>
      decide (k3PrefixGroup0025MaskDomain p)

theorem k3PrefixGroup0025_endpoint_passes :
    k3PrefixGroup0025.all k3PrefixGroup0025EndpointPasses = true := by
  rfl

theorem k3PrefixGroup0025_mask_passes :
    k3PrefixGroup0025.all k3PrefixGroup0025MaskPasses = true := by
  rfl

theorem k3PrefixGroup0025NormalLookup_eq_global_run00
    {p : ℕ} (hlower : 317 < p) (hupper : p ≤ 733) :
    k3PrefixGroup0025NormalLookup p = normalQrMaskWords p := by
  by_cases hcase0 : p ≤ 421
  · have hlocal : k3PrefixGroup0025NormalLookup p = normalQrMaskWords0004 p := by
      simp [k3PrefixGroup0025NormalLookup, hcase0]
    exact hlocal.trans (normalQrMaskWords_eq_group0004 (by omega) hcase0).symm
  by_cases hcase1 : p ≤ 521
  · have hlocal : k3PrefixGroup0025NormalLookup p = normalQrMaskWords0005 p := by
      simp [k3PrefixGroup0025NormalLookup, hcase0, hcase1]
    exact hlocal.trans (normalQrMaskWords_eq_group0005 (by omega) hcase1).symm
  by_cases hcase2 : p ≤ 619
  · have hlocal : k3PrefixGroup0025NormalLookup p = normalQrMaskWords0006 p := by
      simp [k3PrefixGroup0025NormalLookup, hcase0, hcase1, hcase2]
    exact hlocal.trans (normalQrMaskWords_eq_group0006 (by omega) hcase2).symm
  have hlocal : k3PrefixGroup0025NormalLookup p = normalQrMaskWords0007 p := by
    simp [k3PrefixGroup0025NormalLookup, hcase0, hcase1, hcase2, hupper]
  exact hlocal.trans (normalQrMaskWords_eq_group0007 (by omega) hupper).symm

theorem k3PrefixGroup0025NormalLookup_eq_global
    {p : ℕ} (hp : k3PrefixGroup0025MaskDomain p) :
    k3PrefixGroup0025NormalLookup p = normalQrMaskWords p := by
  exact k3PrefixGroup0025NormalLookup_eq_global_run00 hp.1 hp.2

theorem k3PrefixGroup0025TwistLookup_eq_global_run00
    {p : ℕ} (hlower : 317 < p) (hupper : p ≤ 733) :
    k3PrefixGroup0025TwistLookup p = twistQrMaskWords p := by
  by_cases hcase0 : p ≤ 421
  · have hlocal : k3PrefixGroup0025TwistLookup p = twistQrMaskWords0004 p := by
      simp [k3PrefixGroup0025TwistLookup, hcase0]
    exact hlocal.trans (twistQrMaskWords_eq_group0004 (by omega) hcase0).symm
  by_cases hcase1 : p ≤ 521
  · have hlocal : k3PrefixGroup0025TwistLookup p = twistQrMaskWords0005 p := by
      simp [k3PrefixGroup0025TwistLookup, hcase0, hcase1]
    exact hlocal.trans (twistQrMaskWords_eq_group0005 (by omega) hcase1).symm
  by_cases hcase2 : p ≤ 619
  · have hlocal : k3PrefixGroup0025TwistLookup p = twistQrMaskWords0006 p := by
      simp [k3PrefixGroup0025TwistLookup, hcase0, hcase1, hcase2]
    exact hlocal.trans (twistQrMaskWords_eq_group0006 (by omega) hcase2).symm
  have hlocal : k3PrefixGroup0025TwistLookup p = twistQrMaskWords0007 p := by
    simp [k3PrefixGroup0025TwistLookup, hcase0, hcase1, hcase2, hupper]
  exact hlocal.trans (twistQrMaskWords_eq_group0007 (by omega) hupper).symm

theorem k3PrefixGroup0025TwistLookup_eq_global
    {p : ℕ} (hp : k3PrefixGroup0025MaskDomain p) :
    k3PrefixGroup0025TwistLookup p = twistQrMaskWords p := by
  exact k3PrefixGroup0025TwistLookup_eq_global_run00 hp.1 hp.2

theorem k3PrefixGroup0025_standard_passes
    (row : List ℕ × ℕ) (hrow : row ∈ k3PrefixGroup0025) :
    Erdos848.globalMixedSupportPrefixPasses 3 row.1 = true := by
  have hendpointPass := (List.all_eq_true.mp
    k3PrefixGroup0025_endpoint_passes) row hrow
  have hendpoint : Erdos848.globalMixedSupportEndpoint row.1 =
      max 5_000_000 (row.1.prod * row.2) :=
    of_decide_eq_true hendpointPass
  have hmask := (List.all_eq_true.mp
    k3PrefixGroup0025_mask_passes) row hrow
  have hsupport : ∀ p ∈
      row.1.filter (fun p => decide (p ≤ 2843)),
      k3PrefixGroup0025MaskDomain p := by
    intro p hp
    exact of_decide_eq_true ((List.all_eq_true.mp hmask) p hp)
  have hleaf := (List.all_eq_true.mp k3PrefixGroup0025_passes) row hrow
  unfold k3PrefixGroup0025Passes at hleaf
  rw [← hendpoint] at hleaf
  have hcongr := Erdos848.globalMixedCorePrefixPasses_congr
    k3PrefixGroup0025NormalLookup normalQrMaskWords
    k3PrefixGroup0025TwistLookup twistQrMaskWords 3
    (Erdos848.globalMixedSupportEndpoint row.1) row.1
    (fun p hp => k3PrefixGroup0025NormalLookup_eq_global
      (hsupport p hp))
    (fun p hp => k3PrefixGroup0025TwistLookup_eq_global
      (hsupport p hp))
  rw [hcongr, Erdos848.globalMixedCorePrefixPasses_eq] at hleaf
  exact hleaf

#print axioms k3PrefixGroup0025_standard_passes

end Erdos848.GeneratedTailGlobalMixedSupportCoverage
