import Erdos848.GeneratedFortyMillionRootCoefficientCoverage.K3PrefixGroup0015Shard00
import Erdos848.GeneratedFortyMillionRootCoefficientCoverage.K3PrefixGroup0015Shard01
import Erdos848.GeneratedFortyMillionRootCoefficientCoverage.K3PrefixGroup0015Shard02
import Erdos848.GeneratedFortyMillionRootCoefficientCoverage.K3PrefixGroup0015Shard03
import Erdos848.GeneratedFortyMillionRootCoefficientCoverage.K3PrefixGroup0015Shard04
import Erdos848.GeneratedFortyMillionRootCoefficientCoverage.K3PrefixGroup0015Shard05
import Erdos848.GeneratedFortyMillionRootCoefficientCoverage.K3PrefixGroup0015Shard06
import Erdos848.GeneratedFortyMillionRootCoefficientCoverage.K3PrefixGroup0015Shard07
import Erdos848.GeneratedFortyMillionRootCoefficientCoverage.K3PrefixGroup0015Shard08
import Erdos848.GeneratedFortyMillionRootCoefficientCoverage.K3PrefixGroup0015Shard09
import Erdos848.GeneratedFortyMillionRootCoefficientCoverage.K3PrefixGroup0015Shard10
import Erdos848.GeneratedFortyMillionRootCoefficientCoverage.K3PrefixGroup0015Shard11
import Erdos848.GeneratedFortyMillionRootCoefficientCoverage.K3PrefixGroup0015Shard12
import Erdos848.GeneratedFortyMillionRootCoefficientCoverage.K3PrefixGroup0015Shard13
import Erdos848.GeneratedFortyMillionRootCoefficientCoverage.K3PrefixGroup0015Shard14
import Erdos848.GeneratedFortyMillionRootCoefficientCoverage.K3PrefixGroup0015Shard15
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.K3PrefixGroup0015Sound
import Erdos848.TailFortyMillionRootCoefficientBridge

namespace Erdos848.GeneratedFortyMillionRootCoefficientCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem k3PrefixGroup0015_root_coefficient_passes :
    Erdos848.GeneratedTailGlobalMixedSupportCoverage.k3PrefixGroup0015.all k3PrefixGroup0015RootCoefficientPasses = true := by
  have hpartition : Erdos848.GeneratedTailGlobalMixedSupportCoverage.k3PrefixGroup0015 =
      k3PrefixGroup0015Shard00Rows ++
      k3PrefixGroup0015Shard01Rows ++
      k3PrefixGroup0015Shard02Rows ++
      k3PrefixGroup0015Shard03Rows ++
      k3PrefixGroup0015Shard04Rows ++
      k3PrefixGroup0015Shard05Rows ++
      k3PrefixGroup0015Shard06Rows ++
      k3PrefixGroup0015Shard07Rows ++
      k3PrefixGroup0015Shard08Rows ++
      k3PrefixGroup0015Shard09Rows ++
      k3PrefixGroup0015Shard10Rows ++
      k3PrefixGroup0015Shard11Rows ++
      k3PrefixGroup0015Shard12Rows ++
      k3PrefixGroup0015Shard13Rows ++
      k3PrefixGroup0015Shard14Rows ++
      k3PrefixGroup0015Shard15Rows := by rfl
  rw [hpartition]
  simp only [List.all_append]
  rw [k3PrefixGroup0015Shard00_root_coefficient_passes]
  rw [k3PrefixGroup0015Shard01_root_coefficient_passes]
  rw [k3PrefixGroup0015Shard02_root_coefficient_passes]
  rw [k3PrefixGroup0015Shard03_root_coefficient_passes]
  rw [k3PrefixGroup0015Shard04_root_coefficient_passes]
  rw [k3PrefixGroup0015Shard05_root_coefficient_passes]
  rw [k3PrefixGroup0015Shard06_root_coefficient_passes]
  rw [k3PrefixGroup0015Shard07_root_coefficient_passes]
  rw [k3PrefixGroup0015Shard08_root_coefficient_passes]
  rw [k3PrefixGroup0015Shard09_root_coefficient_passes]
  rw [k3PrefixGroup0015Shard10_root_coefficient_passes]
  rw [k3PrefixGroup0015Shard11_root_coefficient_passes]
  rw [k3PrefixGroup0015Shard12_root_coefficient_passes]
  rw [k3PrefixGroup0015Shard13_root_coefficient_passes]
  rw [k3PrefixGroup0015Shard14_root_coefficient_passes]
  rw [k3PrefixGroup0015Shard15_root_coefficient_passes]
  rfl

theorem k3PrefixGroup0015_endpoint_threshold_passes :
    (Erdos848.GeneratedTailGlobalMixedSupportCoverage.k3PrefixGroup0015.map Prod.fst).all (fun support =>
      decide (Erdos848.globalMixedSupportEndpoint support <=
        Erdos848.globalMixedSupportProductThreshold 3)) = true := by
  rfl

theorem k3PrefixGroup0015_global_root_coefficient_passes :
    (Erdos848.GeneratedTailGlobalMixedSupportCoverage.k3PrefixGroup0015.map Prod.fst).all
      (Erdos848.fortyMillionRootPrefixPasses coefficientCeiling 3) = true := by
  apply List.all_eq_true.mpr
  intro support hsupport
  obtain ⟨row, hrow, rfl⟩ := List.mem_map.mp hsupport
  have hendpointPass := (List.all_eq_true.mp Erdos848.GeneratedTailGlobalMixedSupportCoverage.k3PrefixGroup0015_endpoint_passes) row hrow
  have hendpoint : Erdos848.globalMixedSupportEndpoint row.1 =
      max 5_000_000 (row.1.prod * row.2) :=
    of_decide_eq_true hendpointPass
  have hmask := (List.all_eq_true.mp Erdos848.GeneratedTailGlobalMixedSupportCoverage.k3PrefixGroup0015_mask_passes) row hrow
  have hsupportMask : ∀ p ∈ row.1.filter (fun p => decide (p <= 2843)),
      Erdos848.GeneratedTailGlobalMixedSupportCoverage.k3PrefixGroup0015MaskDomain p := by
    intro p hp
    exact of_decide_eq_true ((List.all_eq_true.mp hmask) p hp)
  have hleaf := (List.all_eq_true.mp k3PrefixGroup0015_root_coefficient_passes) row hrow
  unfold k3PrefixGroup0015RootCoefficientPasses at hleaf
  rw [← hendpoint] at hleaf
  have hcongr := Erdos848.fortyMillionRootCorePrefixPasses_congr
    coefficientCeiling
    Erdos848.GeneratedTailGlobalMixedSupportCoverage.k3PrefixGroup0015NormalLookup
    Erdos848.GeneratedTailGlobalMixedSupportCoverage.normalQrMaskWords
    Erdos848.GeneratedTailGlobalMixedSupportCoverage.k3PrefixGroup0015TwistLookup
    Erdos848.GeneratedTailGlobalMixedSupportCoverage.twistQrMaskWords
    3 (Erdos848.globalMixedSupportEndpoint row.1) row.1
    (fun p hp => Erdos848.GeneratedTailGlobalMixedSupportCoverage.k3PrefixGroup0015NormalLookup_eq_global
      (hsupportMask p hp))
    (fun p hp => Erdos848.GeneratedTailGlobalMixedSupportCoverage.k3PrefixGroup0015TwistLookup_eq_global
      (hsupportMask p hp))
  rw [hcongr] at hleaf
  simpa [Erdos848.fortyMillionRootPrefixPasses] using hleaf

#print axioms k3PrefixGroup0015_global_root_coefficient_passes

end Erdos848.GeneratedFortyMillionRootCoefficientCoverage
