import Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage.K4ActualGroup0051Shard00
import Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage.K4ActualGroup0051Shard01
import Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage.K4ActualGroup0051Shard02
import Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage.K4ActualGroup0051Shard03
import Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage.K4ActualGroup0051Shard04
import Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage.K4ActualGroup0051Shard05
import Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage.K4ActualGroup0051Shard06
import Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage.K4ActualGroup0051Shard07
import Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage.K4ActualGroup0051Shard08
import Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage.K4ActualGroup0051Shard09
import Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage.K4ActualGroup0051Shard10
import Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage.K4ActualGroup0051Shard11
import Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage.K4ActualGroup0051Shard12
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.K4PrefixGroup0051Sound
import Erdos848.TailFortyMillionRootCoefficientBridge

namespace Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem k4PrefixGroup0051ActualRows_pass :
    k4PrefixGroup0051ActualRows.all
      Erdos848.GeneratedFortyMillionRootCoefficientCoverage.k4PrefixGroup0051RootCoefficientPasses = true := by
  have hpartition : k4PrefixGroup0051ActualRows =
      k4PrefixGroup0051ActualShard00Rows ++
      k4PrefixGroup0051ActualShard01Rows ++
      k4PrefixGroup0051ActualShard02Rows ++
      k4PrefixGroup0051ActualShard03Rows ++
      k4PrefixGroup0051ActualShard04Rows ++
      k4PrefixGroup0051ActualShard05Rows ++
      k4PrefixGroup0051ActualShard06Rows ++
      k4PrefixGroup0051ActualShard07Rows ++
      k4PrefixGroup0051ActualShard08Rows ++
      k4PrefixGroup0051ActualShard09Rows ++
      k4PrefixGroup0051ActualShard10Rows ++
      k4PrefixGroup0051ActualShard11Rows ++
      k4PrefixGroup0051ActualShard12Rows := by rfl
  rw [hpartition]
  simp only [List.all_append]
  rw [k4PrefixGroup0051ActualShard00_passes]
  rw [k4PrefixGroup0051ActualShard01_passes]
  rw [k4PrefixGroup0051ActualShard02_passes]
  rw [k4PrefixGroup0051ActualShard03_passes]
  rw [k4PrefixGroup0051ActualShard04_passes]
  rw [k4PrefixGroup0051ActualShard05_passes]
  rw [k4PrefixGroup0051ActualShard06_passes]
  rw [k4PrefixGroup0051ActualShard07_passes]
  rw [k4PrefixGroup0051ActualShard08_passes]
  rw [k4PrefixGroup0051ActualShard09_passes]
  rw [k4PrefixGroup0051ActualShard10_passes]
  rw [k4PrefixGroup0051ActualShard11_passes]
  rw [k4PrefixGroup0051ActualShard12_passes]
  rfl

theorem k4PrefixGroup0051_actual_global_root_coefficient_passes :
    (k4PrefixGroup0051ActualRows.map Prod.fst).all
      (Erdos848.fortyMillionRootPrefixPasses
        Erdos848.GeneratedFortyMillionRootCoefficientCoverage.coefficientCeiling 4) = true := by
  apply List.all_eq_true.mpr
  intro support hsupport
  obtain ⟨row, hrow, rfl⟩ := List.mem_map.mp hsupport
  have hfiltered : row ∈ Erdos848.GeneratedTailGlobalMixedSupportCoverage.k4PrefixGroup0051.filter (fun row =>
      decide (Erdos848.globalMixedSupportEndpoint row.1 <
        200_000_000)) := by
    rw [← k4PrefixGroup0051ActualRows_eq_filter]
    exact hrow
  have hrowBase := (List.mem_filter.mp hfiltered).1
  have hendpointPass := (List.all_eq_true.mp Erdos848.GeneratedTailGlobalMixedSupportCoverage.k4PrefixGroup0051_endpoint_passes) row hrowBase
  have hendpoint : Erdos848.globalMixedSupportEndpoint row.1 =
      max 5_000_000 (row.1.prod * row.2) :=
    of_decide_eq_true hendpointPass
  have hmask := (List.all_eq_true.mp Erdos848.GeneratedTailGlobalMixedSupportCoverage.k4PrefixGroup0051_mask_passes) row hrowBase
  have hsupportMask : ∀ p ∈ row.1.filter (fun p => decide (p <= 2843)),
      Erdos848.GeneratedTailGlobalMixedSupportCoverage.k4PrefixGroup0051MaskDomain p := by
    intro p hp
    exact of_decide_eq_true ((List.all_eq_true.mp hmask) p hp)
  have hleaf := (List.all_eq_true.mp k4PrefixGroup0051ActualRows_pass) row hrow
  unfold Erdos848.GeneratedFortyMillionRootCoefficientCoverage.k4PrefixGroup0051RootCoefficientPasses at hleaf
  rw [← hendpoint] at hleaf
  have hcongr := Erdos848.fortyMillionRootCorePrefixPasses_congr
    Erdos848.GeneratedFortyMillionRootCoefficientCoverage.coefficientCeiling
    Erdos848.GeneratedTailGlobalMixedSupportCoverage.k4PrefixGroup0051NormalLookup
    Erdos848.GeneratedTailGlobalMixedSupportCoverage.normalQrMaskWords
    Erdos848.GeneratedTailGlobalMixedSupportCoverage.k4PrefixGroup0051TwistLookup
    Erdos848.GeneratedTailGlobalMixedSupportCoverage.twistQrMaskWords
    4 (Erdos848.globalMixedSupportEndpoint row.1) row.1
    (fun p hp => Erdos848.GeneratedTailGlobalMixedSupportCoverage.k4PrefixGroup0051NormalLookup_eq_global
      (hsupportMask p hp))
    (fun p hp => Erdos848.GeneratedTailGlobalMixedSupportCoverage.k4PrefixGroup0051TwistLookup_eq_global
      (hsupportMask p hp))
  rw [hcongr] at hleaf
  simpa [Erdos848.fortyMillionRootPrefixPasses] using hleaf

#print axioms k4PrefixGroup0051_actual_global_root_coefficient_passes

end Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage
