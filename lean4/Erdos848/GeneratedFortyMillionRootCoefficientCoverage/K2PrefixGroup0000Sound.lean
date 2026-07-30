import Erdos848.GeneratedFortyMillionRootCoefficientCoverage.K2PrefixGroup0000Shard00
import Erdos848.GeneratedFortyMillionRootCoefficientCoverage.K2PrefixGroup0000Shard01
import Erdos848.GeneratedFortyMillionRootCoefficientCoverage.K2PrefixGroup0000Shard02
import Erdos848.GeneratedFortyMillionRootCoefficientCoverage.K2PrefixGroup0000Shard03
import Erdos848.GeneratedFortyMillionRootCoefficientCoverage.K2PrefixGroup0000Shard04
import Erdos848.GeneratedFortyMillionRootCoefficientCoverage.K2PrefixGroup0000Shard05
import Erdos848.GeneratedFortyMillionRootCoefficientCoverage.K2PrefixGroup0000Shard06
import Erdos848.GeneratedFortyMillionRootCoefficientCoverage.K2PrefixGroup0000Shard07
import Erdos848.GeneratedFortyMillionRootCoefficientCoverage.K2PrefixGroup0000Shard08
import Erdos848.GeneratedFortyMillionRootCoefficientCoverage.K2PrefixGroup0000Shard09
import Erdos848.GeneratedFortyMillionRootCoefficientCoverage.K2PrefixGroup0000Shard10
import Erdos848.GeneratedFortyMillionRootCoefficientCoverage.K2PrefixGroup0000Shard11
import Erdos848.GeneratedFortyMillionRootCoefficientCoverage.K2PrefixGroup0000Shard12
import Erdos848.GeneratedFortyMillionRootCoefficientCoverage.K2PrefixGroup0000Shard13
import Erdos848.GeneratedFortyMillionRootCoefficientCoverage.K2PrefixGroup0000Shard14
import Erdos848.GeneratedFortyMillionRootCoefficientCoverage.K2PrefixGroup0000Shard15
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.K2PrefixGroup0000Sound
import Erdos848.TailFortyMillionRootCoefficientBridge

namespace Erdos848.GeneratedFortyMillionRootCoefficientCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem k2PrefixGroup0000_root_coefficient_passes :
    Erdos848.GeneratedTailGlobalMixedSupportCoverage.k2PrefixGroup0000.all k2PrefixGroup0000RootCoefficientPasses = true := by
  have hpartition : Erdos848.GeneratedTailGlobalMixedSupportCoverage.k2PrefixGroup0000 =
      k2PrefixGroup0000Shard00Rows ++
      k2PrefixGroup0000Shard01Rows ++
      k2PrefixGroup0000Shard02Rows ++
      k2PrefixGroup0000Shard03Rows ++
      k2PrefixGroup0000Shard04Rows ++
      k2PrefixGroup0000Shard05Rows ++
      k2PrefixGroup0000Shard06Rows ++
      k2PrefixGroup0000Shard07Rows ++
      k2PrefixGroup0000Shard08Rows ++
      k2PrefixGroup0000Shard09Rows ++
      k2PrefixGroup0000Shard10Rows ++
      k2PrefixGroup0000Shard11Rows ++
      k2PrefixGroup0000Shard12Rows ++
      k2PrefixGroup0000Shard13Rows ++
      k2PrefixGroup0000Shard14Rows ++
      k2PrefixGroup0000Shard15Rows := by rfl
  rw [hpartition]
  simp only [List.all_append]
  rw [k2PrefixGroup0000Shard00_root_coefficient_passes]
  rw [k2PrefixGroup0000Shard01_root_coefficient_passes]
  rw [k2PrefixGroup0000Shard02_root_coefficient_passes]
  rw [k2PrefixGroup0000Shard03_root_coefficient_passes]
  rw [k2PrefixGroup0000Shard04_root_coefficient_passes]
  rw [k2PrefixGroup0000Shard05_root_coefficient_passes]
  rw [k2PrefixGroup0000Shard06_root_coefficient_passes]
  rw [k2PrefixGroup0000Shard07_root_coefficient_passes]
  rw [k2PrefixGroup0000Shard08_root_coefficient_passes]
  rw [k2PrefixGroup0000Shard09_root_coefficient_passes]
  rw [k2PrefixGroup0000Shard10_root_coefficient_passes]
  rw [k2PrefixGroup0000Shard11_root_coefficient_passes]
  rw [k2PrefixGroup0000Shard12_root_coefficient_passes]
  rw [k2PrefixGroup0000Shard13_root_coefficient_passes]
  rw [k2PrefixGroup0000Shard14_root_coefficient_passes]
  rw [k2PrefixGroup0000Shard15_root_coefficient_passes]
  rfl

theorem k2PrefixGroup0000_endpoint_threshold_passes :
    (Erdos848.GeneratedTailGlobalMixedSupportCoverage.k2PrefixGroup0000.map Prod.fst).all (fun support =>
      decide (Erdos848.globalMixedSupportEndpoint support <=
        Erdos848.globalMixedSupportProductThreshold 2)) = true := by
  rfl

theorem k2PrefixGroup0000_global_root_coefficient_passes :
    (Erdos848.GeneratedTailGlobalMixedSupportCoverage.k2PrefixGroup0000.map Prod.fst).all
      (Erdos848.fortyMillionRootPrefixPasses coefficientCeiling 2) = true := by
  apply List.all_eq_true.mpr
  intro support hsupport
  obtain ⟨row, hrow, rfl⟩ := List.mem_map.mp hsupport
  have hendpointPass := (List.all_eq_true.mp Erdos848.GeneratedTailGlobalMixedSupportCoverage.k2PrefixGroup0000_endpoint_passes) row hrow
  have hendpoint : Erdos848.globalMixedSupportEndpoint row.1 =
      max 5_000_000 (row.1.prod * row.2) :=
    of_decide_eq_true hendpointPass
  have hmask := (List.all_eq_true.mp Erdos848.GeneratedTailGlobalMixedSupportCoverage.k2PrefixGroup0000_mask_passes) row hrow
  have hsupportMask : ∀ p ∈ row.1.filter (fun p => decide (p <= 2843)),
      Erdos848.GeneratedTailGlobalMixedSupportCoverage.k2PrefixGroup0000MaskDomain p := by
    intro p hp
    exact of_decide_eq_true ((List.all_eq_true.mp hmask) p hp)
  have hleaf := (List.all_eq_true.mp k2PrefixGroup0000_root_coefficient_passes) row hrow
  unfold k2PrefixGroup0000RootCoefficientPasses at hleaf
  rw [← hendpoint] at hleaf
  have hcongr := Erdos848.fortyMillionRootCorePrefixPasses_congr
    coefficientCeiling
    Erdos848.GeneratedTailGlobalMixedSupportCoverage.k2PrefixGroup0000NormalLookup
    Erdos848.GeneratedTailGlobalMixedSupportCoverage.normalQrMaskWords
    Erdos848.GeneratedTailGlobalMixedSupportCoverage.k2PrefixGroup0000TwistLookup
    Erdos848.GeneratedTailGlobalMixedSupportCoverage.twistQrMaskWords
    2 (Erdos848.globalMixedSupportEndpoint row.1) row.1
    (fun p hp => Erdos848.GeneratedTailGlobalMixedSupportCoverage.k2PrefixGroup0000NormalLookup_eq_global
      (hsupportMask p hp))
    (fun p hp => Erdos848.GeneratedTailGlobalMixedSupportCoverage.k2PrefixGroup0000TwistLookup_eq_global
      (hsupportMask p hp))
  rw [hcongr] at hleaf
  simpa [Erdos848.fortyMillionRootPrefixPasses] using hleaf

#print axioms k2PrefixGroup0000_global_root_coefficient_passes

end Erdos848.GeneratedFortyMillionRootCoefficientCoverage
