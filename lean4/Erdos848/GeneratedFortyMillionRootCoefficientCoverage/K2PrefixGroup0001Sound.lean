import Erdos848.GeneratedFortyMillionRootCoefficientCoverage.K2PrefixGroup0001Shard00
import Erdos848.GeneratedFortyMillionRootCoefficientCoverage.K2PrefixGroup0001Shard01
import Erdos848.GeneratedFortyMillionRootCoefficientCoverage.K2PrefixGroup0001Shard02
import Erdos848.GeneratedFortyMillionRootCoefficientCoverage.K2PrefixGroup0001Shard03
import Erdos848.GeneratedFortyMillionRootCoefficientCoverage.K2PrefixGroup0001Shard04
import Erdos848.GeneratedFortyMillionRootCoefficientCoverage.K2PrefixGroup0001Shard05
import Erdos848.GeneratedFortyMillionRootCoefficientCoverage.K2PrefixGroup0001Shard06
import Erdos848.GeneratedFortyMillionRootCoefficientCoverage.K2PrefixGroup0001Shard07
import Erdos848.GeneratedFortyMillionRootCoefficientCoverage.K2PrefixGroup0001Shard08
import Erdos848.GeneratedFortyMillionRootCoefficientCoverage.K2PrefixGroup0001Shard09
import Erdos848.GeneratedFortyMillionRootCoefficientCoverage.K2PrefixGroup0001Shard10
import Erdos848.GeneratedFortyMillionRootCoefficientCoverage.K2PrefixGroup0001Shard11
import Erdos848.GeneratedFortyMillionRootCoefficientCoverage.K2PrefixGroup0001Shard12
import Erdos848.GeneratedFortyMillionRootCoefficientCoverage.K2PrefixGroup0001Shard13
import Erdos848.GeneratedFortyMillionRootCoefficientCoverage.K2PrefixGroup0001Shard14
import Erdos848.GeneratedFortyMillionRootCoefficientCoverage.K2PrefixGroup0001Shard15
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.K2PrefixGroup0001Sound
import Erdos848.TailFortyMillionRootCoefficientBridge

namespace Erdos848.GeneratedFortyMillionRootCoefficientCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem k2PrefixGroup0001_root_coefficient_passes :
    Erdos848.GeneratedTailGlobalMixedSupportCoverage.k2PrefixGroup0001.all k2PrefixGroup0001RootCoefficientPasses = true := by
  have hpartition : Erdos848.GeneratedTailGlobalMixedSupportCoverage.k2PrefixGroup0001 =
      k2PrefixGroup0001Shard00Rows ++
      k2PrefixGroup0001Shard01Rows ++
      k2PrefixGroup0001Shard02Rows ++
      k2PrefixGroup0001Shard03Rows ++
      k2PrefixGroup0001Shard04Rows ++
      k2PrefixGroup0001Shard05Rows ++
      k2PrefixGroup0001Shard06Rows ++
      k2PrefixGroup0001Shard07Rows ++
      k2PrefixGroup0001Shard08Rows ++
      k2PrefixGroup0001Shard09Rows ++
      k2PrefixGroup0001Shard10Rows ++
      k2PrefixGroup0001Shard11Rows ++
      k2PrefixGroup0001Shard12Rows ++
      k2PrefixGroup0001Shard13Rows ++
      k2PrefixGroup0001Shard14Rows ++
      k2PrefixGroup0001Shard15Rows := by rfl
  rw [hpartition]
  simp only [List.all_append]
  rw [k2PrefixGroup0001Shard00_root_coefficient_passes]
  rw [k2PrefixGroup0001Shard01_root_coefficient_passes]
  rw [k2PrefixGroup0001Shard02_root_coefficient_passes]
  rw [k2PrefixGroup0001Shard03_root_coefficient_passes]
  rw [k2PrefixGroup0001Shard04_root_coefficient_passes]
  rw [k2PrefixGroup0001Shard05_root_coefficient_passes]
  rw [k2PrefixGroup0001Shard06_root_coefficient_passes]
  rw [k2PrefixGroup0001Shard07_root_coefficient_passes]
  rw [k2PrefixGroup0001Shard08_root_coefficient_passes]
  rw [k2PrefixGroup0001Shard09_root_coefficient_passes]
  rw [k2PrefixGroup0001Shard10_root_coefficient_passes]
  rw [k2PrefixGroup0001Shard11_root_coefficient_passes]
  rw [k2PrefixGroup0001Shard12_root_coefficient_passes]
  rw [k2PrefixGroup0001Shard13_root_coefficient_passes]
  rw [k2PrefixGroup0001Shard14_root_coefficient_passes]
  rw [k2PrefixGroup0001Shard15_root_coefficient_passes]
  rfl

theorem k2PrefixGroup0001_endpoint_threshold_passes :
    (Erdos848.GeneratedTailGlobalMixedSupportCoverage.k2PrefixGroup0001.map Prod.fst).all (fun support =>
      decide (Erdos848.globalMixedSupportEndpoint support <=
        Erdos848.globalMixedSupportProductThreshold 2)) = true := by
  rfl

theorem k2PrefixGroup0001_global_root_coefficient_passes :
    (Erdos848.GeneratedTailGlobalMixedSupportCoverage.k2PrefixGroup0001.map Prod.fst).all
      (Erdos848.fortyMillionRootPrefixPasses coefficientCeiling 2) = true := by
  apply List.all_eq_true.mpr
  intro support hsupport
  obtain ⟨row, hrow, rfl⟩ := List.mem_map.mp hsupport
  have hendpointPass := (List.all_eq_true.mp Erdos848.GeneratedTailGlobalMixedSupportCoverage.k2PrefixGroup0001_endpoint_passes) row hrow
  have hendpoint : Erdos848.globalMixedSupportEndpoint row.1 =
      max 5_000_000 (row.1.prod * row.2) :=
    of_decide_eq_true hendpointPass
  have hmask := (List.all_eq_true.mp Erdos848.GeneratedTailGlobalMixedSupportCoverage.k2PrefixGroup0001_mask_passes) row hrow
  have hsupportMask : ∀ p ∈ row.1.filter (fun p => decide (p <= 2843)),
      Erdos848.GeneratedTailGlobalMixedSupportCoverage.k2PrefixGroup0001MaskDomain p := by
    intro p hp
    exact of_decide_eq_true ((List.all_eq_true.mp hmask) p hp)
  have hleaf := (List.all_eq_true.mp k2PrefixGroup0001_root_coefficient_passes) row hrow
  unfold k2PrefixGroup0001RootCoefficientPasses at hleaf
  rw [← hendpoint] at hleaf
  have hcongr := Erdos848.fortyMillionRootCorePrefixPasses_congr
    coefficientCeiling
    Erdos848.GeneratedTailGlobalMixedSupportCoverage.k2PrefixGroup0001NormalLookup
    Erdos848.GeneratedTailGlobalMixedSupportCoverage.normalQrMaskWords
    Erdos848.GeneratedTailGlobalMixedSupportCoverage.k2PrefixGroup0001TwistLookup
    Erdos848.GeneratedTailGlobalMixedSupportCoverage.twistQrMaskWords
    2 (Erdos848.globalMixedSupportEndpoint row.1) row.1
    (fun p hp => Erdos848.GeneratedTailGlobalMixedSupportCoverage.k2PrefixGroup0001NormalLookup_eq_global
      (hsupportMask p hp))
    (fun p hp => Erdos848.GeneratedTailGlobalMixedSupportCoverage.k2PrefixGroup0001TwistLookup_eq_global
      (hsupportMask p hp))
  rw [hcongr] at hleaf
  simpa [Erdos848.fortyMillionRootPrefixPasses] using hleaf

#print axioms k2PrefixGroup0001_global_root_coefficient_passes

end Erdos848.GeneratedFortyMillionRootCoefficientCoverage
