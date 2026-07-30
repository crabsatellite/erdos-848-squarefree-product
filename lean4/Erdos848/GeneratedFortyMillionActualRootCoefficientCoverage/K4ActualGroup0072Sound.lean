import Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage.K4ActualGroup0072Shard00
import Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage.K4ActualGroup0072Shard01
import Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage.K4ActualGroup0072Shard02
import Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage.K4ActualGroup0072Shard03
import Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage.K4ActualGroup0072Shard04
import Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage.K4ActualGroup0072Shard05
import Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage.K4ActualGroup0072Shard06
import Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage.K4ActualGroup0072Shard07
import Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage.K4ActualGroup0072Shard08
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.K4PrefixGroup0072Sound
import Erdos848.TailFortyMillionRootCoefficientBridge

namespace Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem k4PrefixGroup0072ActualRows_pass :
    k4PrefixGroup0072ActualRows.all
      Erdos848.GeneratedFortyMillionRootCoefficientCoverage.k4PrefixGroup0072RootCoefficientPasses = true := by
  have hpartition : k4PrefixGroup0072ActualRows =
      k4PrefixGroup0072ActualShard00Rows ++
      k4PrefixGroup0072ActualShard01Rows ++
      k4PrefixGroup0072ActualShard02Rows ++
      k4PrefixGroup0072ActualShard03Rows ++
      k4PrefixGroup0072ActualShard04Rows ++
      k4PrefixGroup0072ActualShard05Rows ++
      k4PrefixGroup0072ActualShard06Rows ++
      k4PrefixGroup0072ActualShard07Rows ++
      k4PrefixGroup0072ActualShard08Rows := by rfl
  rw [hpartition]
  simp only [List.all_append]
  rw [k4PrefixGroup0072ActualShard00_passes]
  rw [k4PrefixGroup0072ActualShard01_passes]
  rw [k4PrefixGroup0072ActualShard02_passes]
  rw [k4PrefixGroup0072ActualShard03_passes]
  rw [k4PrefixGroup0072ActualShard04_passes]
  rw [k4PrefixGroup0072ActualShard05_passes]
  rw [k4PrefixGroup0072ActualShard06_passes]
  rw [k4PrefixGroup0072ActualShard07_passes]
  rw [k4PrefixGroup0072ActualShard08_passes]
  rfl

theorem k4PrefixGroup0072_actual_global_root_coefficient_passes :
    (k4PrefixGroup0072ActualRows.map Prod.fst).all
      (Erdos848.fortyMillionRootPrefixPasses
        Erdos848.GeneratedFortyMillionRootCoefficientCoverage.coefficientCeiling 4) = true := by
  apply List.all_eq_true.mpr
  intro support hsupport
  obtain ⟨row, hrow, rfl⟩ := List.mem_map.mp hsupport
  have hfiltered : row ∈ Erdos848.GeneratedTailGlobalMixedSupportCoverage.k4PrefixGroup0072.filter (fun row =>
      decide (Erdos848.globalMixedSupportEndpoint row.1 <
        200_000_000)) := by
    rw [← k4PrefixGroup0072ActualRows_eq_filter]
    exact hrow
  have hrowBase := (List.mem_filter.mp hfiltered).1
  have hendpointPass := (List.all_eq_true.mp Erdos848.GeneratedTailGlobalMixedSupportCoverage.k4PrefixGroup0072_endpoint_passes) row hrowBase
  have hendpoint : Erdos848.globalMixedSupportEndpoint row.1 =
      max 5_000_000 (row.1.prod * row.2) :=
    of_decide_eq_true hendpointPass
  have hmask := (List.all_eq_true.mp Erdos848.GeneratedTailGlobalMixedSupportCoverage.k4PrefixGroup0072_mask_passes) row hrowBase
  have hsupportMask : ∀ p ∈ row.1.filter (fun p => decide (p <= 2843)),
      Erdos848.GeneratedTailGlobalMixedSupportCoverage.k4PrefixGroup0072MaskDomain p := by
    intro p hp
    exact of_decide_eq_true ((List.all_eq_true.mp hmask) p hp)
  have hleaf := (List.all_eq_true.mp k4PrefixGroup0072ActualRows_pass) row hrow
  unfold Erdos848.GeneratedFortyMillionRootCoefficientCoverage.k4PrefixGroup0072RootCoefficientPasses at hleaf
  rw [← hendpoint] at hleaf
  have hcongr := Erdos848.fortyMillionRootCorePrefixPasses_congr
    Erdos848.GeneratedFortyMillionRootCoefficientCoverage.coefficientCeiling
    Erdos848.GeneratedTailGlobalMixedSupportCoverage.k4PrefixGroup0072NormalLookup
    Erdos848.GeneratedTailGlobalMixedSupportCoverage.normalQrMaskWords
    Erdos848.GeneratedTailGlobalMixedSupportCoverage.k4PrefixGroup0072TwistLookup
    Erdos848.GeneratedTailGlobalMixedSupportCoverage.twistQrMaskWords
    4 (Erdos848.globalMixedSupportEndpoint row.1) row.1
    (fun p hp => Erdos848.GeneratedTailGlobalMixedSupportCoverage.k4PrefixGroup0072NormalLookup_eq_global
      (hsupportMask p hp))
    (fun p hp => Erdos848.GeneratedTailGlobalMixedSupportCoverage.k4PrefixGroup0072TwistLookup_eq_global
      (hsupportMask p hp))
  rw [hcongr] at hleaf
  simpa [Erdos848.fortyMillionRootPrefixPasses] using hleaf

#print axioms k4PrefixGroup0072_actual_global_root_coefficient_passes

end Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage
