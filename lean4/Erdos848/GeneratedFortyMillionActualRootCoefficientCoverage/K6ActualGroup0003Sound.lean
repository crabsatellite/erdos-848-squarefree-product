import Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage.K6ActualGroup0003Shard00
import Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage.K6ActualGroup0003Shard01
import Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage.K6ActualGroup0003Shard02
import Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage.K6ActualGroup0003Shard03
import Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage.K6ActualGroup0003Shard04
import Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage.K6ActualGroup0003Shard05
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.K6PrefixGroup0003Sound
import Erdos848.TailFortyMillionRootCoefficientBridge

namespace Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem k6PrefixGroup0003ActualRows_pass :
    k6PrefixGroup0003ActualRows.all
      Erdos848.GeneratedFortyMillionRootCoefficientCoverage.k6PrefixGroup0003RootCoefficientPasses = true := by
  have hpartition : k6PrefixGroup0003ActualRows =
      k6PrefixGroup0003ActualShard00Rows ++
      k6PrefixGroup0003ActualShard01Rows ++
      k6PrefixGroup0003ActualShard02Rows ++
      k6PrefixGroup0003ActualShard03Rows ++
      k6PrefixGroup0003ActualShard04Rows ++
      k6PrefixGroup0003ActualShard05Rows := by rfl
  rw [hpartition]
  simp only [List.all_append]
  rw [k6PrefixGroup0003ActualShard00_passes]
  rw [k6PrefixGroup0003ActualShard01_passes]
  rw [k6PrefixGroup0003ActualShard02_passes]
  rw [k6PrefixGroup0003ActualShard03_passes]
  rw [k6PrefixGroup0003ActualShard04_passes]
  rw [k6PrefixGroup0003ActualShard05_passes]
  rfl

theorem k6PrefixGroup0003_actual_global_root_coefficient_passes :
    (k6PrefixGroup0003ActualRows.map Prod.fst).all
      (Erdos848.fortyMillionRootPrefixPasses
        Erdos848.GeneratedFortyMillionRootCoefficientCoverage.coefficientCeiling 6) = true := by
  apply List.all_eq_true.mpr
  intro support hsupport
  obtain ⟨row, hrow, rfl⟩ := List.mem_map.mp hsupport
  have hfiltered : row ∈ Erdos848.GeneratedTailGlobalMixedSupportCoverage.k6PrefixGroup0003.filter (fun row =>
      decide (Erdos848.globalMixedSupportEndpoint row.1 <
        200_000_000)) := by
    rw [← k6PrefixGroup0003ActualRows_eq_filter]
    exact hrow
  have hrowBase := (List.mem_filter.mp hfiltered).1
  have hendpointPass := (List.all_eq_true.mp Erdos848.GeneratedTailGlobalMixedSupportCoverage.k6PrefixGroup0003_endpoint_passes) row hrowBase
  have hendpoint : Erdos848.globalMixedSupportEndpoint row.1 =
      max 5_000_000 (row.1.prod * row.2) :=
    of_decide_eq_true hendpointPass
  have hmask := (List.all_eq_true.mp Erdos848.GeneratedTailGlobalMixedSupportCoverage.k6PrefixGroup0003_mask_passes) row hrowBase
  have hsupportMask : ∀ p ∈ row.1.filter (fun p => decide (p <= 2843)),
      Erdos848.GeneratedTailGlobalMixedSupportCoverage.k6PrefixGroup0003MaskDomain p := by
    intro p hp
    exact of_decide_eq_true ((List.all_eq_true.mp hmask) p hp)
  have hleaf := (List.all_eq_true.mp k6PrefixGroup0003ActualRows_pass) row hrow
  unfold Erdos848.GeneratedFortyMillionRootCoefficientCoverage.k6PrefixGroup0003RootCoefficientPasses at hleaf
  rw [← hendpoint] at hleaf
  have hcongr := Erdos848.fortyMillionRootCorePrefixPasses_congr
    Erdos848.GeneratedFortyMillionRootCoefficientCoverage.coefficientCeiling
    Erdos848.GeneratedTailGlobalMixedSupportCoverage.k6PrefixGroup0003NormalLookup
    Erdos848.GeneratedTailGlobalMixedSupportCoverage.normalQrMaskWords
    Erdos848.GeneratedTailGlobalMixedSupportCoverage.k6PrefixGroup0003TwistLookup
    Erdos848.GeneratedTailGlobalMixedSupportCoverage.twistQrMaskWords
    6 (Erdos848.globalMixedSupportEndpoint row.1) row.1
    (fun p hp => Erdos848.GeneratedTailGlobalMixedSupportCoverage.k6PrefixGroup0003NormalLookup_eq_global
      (hsupportMask p hp))
    (fun p hp => Erdos848.GeneratedTailGlobalMixedSupportCoverage.k6PrefixGroup0003TwistLookup_eq_global
      (hsupportMask p hp))
  rw [hcongr] at hleaf
  simpa [Erdos848.fortyMillionRootPrefixPasses] using hleaf

#print axioms k6PrefixGroup0003_actual_global_root_coefficient_passes

end Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage
