import Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage.K4ActualGroup0034Shard00
import Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage.K4ActualGroup0034Shard01
import Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage.K4ActualGroup0034Shard02
import Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage.K4ActualGroup0034Shard03
import Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage.K4ActualGroup0034Shard04
import Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage.K4ActualGroup0034Shard05
import Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage.K4ActualGroup0034Shard06
import Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage.K4ActualGroup0034Shard07
import Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage.K4ActualGroup0034Shard08
import Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage.K4ActualGroup0034Shard09
import Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage.K4ActualGroup0034Shard10
import Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage.K4ActualGroup0034Shard11
import Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage.K4ActualGroup0034Shard12
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.K4PrefixGroup0034Sound
import Erdos848.TailFortyMillionRootCoefficientBridge

namespace Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem k4PrefixGroup0034ActualRows_pass :
    k4PrefixGroup0034ActualRows.all
      Erdos848.GeneratedFortyMillionRootCoefficientCoverage.k4PrefixGroup0034RootCoefficientPasses = true := by
  have hpartition : k4PrefixGroup0034ActualRows =
      k4PrefixGroup0034ActualShard00Rows ++
      k4PrefixGroup0034ActualShard01Rows ++
      k4PrefixGroup0034ActualShard02Rows ++
      k4PrefixGroup0034ActualShard03Rows ++
      k4PrefixGroup0034ActualShard04Rows ++
      k4PrefixGroup0034ActualShard05Rows ++
      k4PrefixGroup0034ActualShard06Rows ++
      k4PrefixGroup0034ActualShard07Rows ++
      k4PrefixGroup0034ActualShard08Rows ++
      k4PrefixGroup0034ActualShard09Rows ++
      k4PrefixGroup0034ActualShard10Rows ++
      k4PrefixGroup0034ActualShard11Rows ++
      k4PrefixGroup0034ActualShard12Rows := by rfl
  rw [hpartition]
  simp only [List.all_append]
  rw [k4PrefixGroup0034ActualShard00_passes]
  rw [k4PrefixGroup0034ActualShard01_passes]
  rw [k4PrefixGroup0034ActualShard02_passes]
  rw [k4PrefixGroup0034ActualShard03_passes]
  rw [k4PrefixGroup0034ActualShard04_passes]
  rw [k4PrefixGroup0034ActualShard05_passes]
  rw [k4PrefixGroup0034ActualShard06_passes]
  rw [k4PrefixGroup0034ActualShard07_passes]
  rw [k4PrefixGroup0034ActualShard08_passes]
  rw [k4PrefixGroup0034ActualShard09_passes]
  rw [k4PrefixGroup0034ActualShard10_passes]
  rw [k4PrefixGroup0034ActualShard11_passes]
  rw [k4PrefixGroup0034ActualShard12_passes]
  rfl

theorem k4PrefixGroup0034_actual_global_root_coefficient_passes :
    (k4PrefixGroup0034ActualRows.map Prod.fst).all
      (Erdos848.fortyMillionRootPrefixPasses
        Erdos848.GeneratedFortyMillionRootCoefficientCoverage.coefficientCeiling 4) = true := by
  apply List.all_eq_true.mpr
  intro support hsupport
  obtain ⟨row, hrow, rfl⟩ := List.mem_map.mp hsupport
  have hfiltered : row ∈ Erdos848.GeneratedTailGlobalMixedSupportCoverage.k4PrefixGroup0034.filter (fun row =>
      decide (Erdos848.globalMixedSupportEndpoint row.1 <
        200_000_000)) := by
    rw [← k4PrefixGroup0034ActualRows_eq_filter]
    exact hrow
  have hrowBase := (List.mem_filter.mp hfiltered).1
  have hendpointPass := (List.all_eq_true.mp Erdos848.GeneratedTailGlobalMixedSupportCoverage.k4PrefixGroup0034_endpoint_passes) row hrowBase
  have hendpoint : Erdos848.globalMixedSupportEndpoint row.1 =
      max 5_000_000 (row.1.prod * row.2) :=
    of_decide_eq_true hendpointPass
  have hmask := (List.all_eq_true.mp Erdos848.GeneratedTailGlobalMixedSupportCoverage.k4PrefixGroup0034_mask_passes) row hrowBase
  have hsupportMask : ∀ p ∈ row.1.filter (fun p => decide (p <= 2843)),
      Erdos848.GeneratedTailGlobalMixedSupportCoverage.k4PrefixGroup0034MaskDomain p := by
    intro p hp
    exact of_decide_eq_true ((List.all_eq_true.mp hmask) p hp)
  have hleaf := (List.all_eq_true.mp k4PrefixGroup0034ActualRows_pass) row hrow
  unfold Erdos848.GeneratedFortyMillionRootCoefficientCoverage.k4PrefixGroup0034RootCoefficientPasses at hleaf
  rw [← hendpoint] at hleaf
  have hcongr := Erdos848.fortyMillionRootCorePrefixPasses_congr
    Erdos848.GeneratedFortyMillionRootCoefficientCoverage.coefficientCeiling
    Erdos848.GeneratedTailGlobalMixedSupportCoverage.k4PrefixGroup0034NormalLookup
    Erdos848.GeneratedTailGlobalMixedSupportCoverage.normalQrMaskWords
    Erdos848.GeneratedTailGlobalMixedSupportCoverage.k4PrefixGroup0034TwistLookup
    Erdos848.GeneratedTailGlobalMixedSupportCoverage.twistQrMaskWords
    4 (Erdos848.globalMixedSupportEndpoint row.1) row.1
    (fun p hp => Erdos848.GeneratedTailGlobalMixedSupportCoverage.k4PrefixGroup0034NormalLookup_eq_global
      (hsupportMask p hp))
    (fun p hp => Erdos848.GeneratedTailGlobalMixedSupportCoverage.k4PrefixGroup0034TwistLookup_eq_global
      (hsupportMask p hp))
  rw [hcongr] at hleaf
  simpa [Erdos848.fortyMillionRootPrefixPasses] using hleaf

#print axioms k4PrefixGroup0034_actual_global_root_coefficient_passes

end Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage
