import Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage.K5ActualGroup0045Shard00
import Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage.K5ActualGroup0045Shard01
import Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage.K5ActualGroup0045Shard02
import Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage.K5ActualGroup0045Shard03
import Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage.K5ActualGroup0045Shard04
import Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage.K5ActualGroup0045Shard05
import Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage.K5ActualGroup0045Shard06
import Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage.K5ActualGroup0045Shard07
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.K5PrefixGroup0045Sound
import Erdos848.TailFortyMillionRootCoefficientBridge

namespace Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem k5PrefixGroup0045ActualRows_pass :
    k5PrefixGroup0045ActualRows.all
      Erdos848.GeneratedFortyMillionRootCoefficientCoverage.k5PrefixGroup0045RootCoefficientPasses = true := by
  have hpartition : k5PrefixGroup0045ActualRows =
      k5PrefixGroup0045ActualShard00Rows ++
      k5PrefixGroup0045ActualShard01Rows ++
      k5PrefixGroup0045ActualShard02Rows ++
      k5PrefixGroup0045ActualShard03Rows ++
      k5PrefixGroup0045ActualShard04Rows ++
      k5PrefixGroup0045ActualShard05Rows ++
      k5PrefixGroup0045ActualShard06Rows ++
      k5PrefixGroup0045ActualShard07Rows := by rfl
  rw [hpartition]
  simp only [List.all_append]
  rw [k5PrefixGroup0045ActualShard00_passes]
  rw [k5PrefixGroup0045ActualShard01_passes]
  rw [k5PrefixGroup0045ActualShard02_passes]
  rw [k5PrefixGroup0045ActualShard03_passes]
  rw [k5PrefixGroup0045ActualShard04_passes]
  rw [k5PrefixGroup0045ActualShard05_passes]
  rw [k5PrefixGroup0045ActualShard06_passes]
  rw [k5PrefixGroup0045ActualShard07_passes]
  rfl

theorem k5PrefixGroup0045_actual_global_root_coefficient_passes :
    (k5PrefixGroup0045ActualRows.map Prod.fst).all
      (Erdos848.fortyMillionRootPrefixPasses
        Erdos848.GeneratedFortyMillionRootCoefficientCoverage.coefficientCeiling 5) = true := by
  apply List.all_eq_true.mpr
  intro support hsupport
  obtain ⟨row, hrow, rfl⟩ := List.mem_map.mp hsupport
  have hfiltered : row ∈ Erdos848.GeneratedTailGlobalMixedSupportCoverage.k5PrefixGroup0045.filter (fun row =>
      decide (Erdos848.globalMixedSupportEndpoint row.1 <
        200_000_000)) := by
    rw [← k5PrefixGroup0045ActualRows_eq_filter]
    exact hrow
  have hrowBase := (List.mem_filter.mp hfiltered).1
  have hendpointPass := (List.all_eq_true.mp Erdos848.GeneratedTailGlobalMixedSupportCoverage.k5PrefixGroup0045_endpoint_passes) row hrowBase
  have hendpoint : Erdos848.globalMixedSupportEndpoint row.1 =
      max 5_000_000 (row.1.prod * row.2) :=
    of_decide_eq_true hendpointPass
  have hmask := (List.all_eq_true.mp Erdos848.GeneratedTailGlobalMixedSupportCoverage.k5PrefixGroup0045_mask_passes) row hrowBase
  have hsupportMask : ∀ p ∈ row.1.filter (fun p => decide (p <= 2843)),
      Erdos848.GeneratedTailGlobalMixedSupportCoverage.k5PrefixGroup0045MaskDomain p := by
    intro p hp
    exact of_decide_eq_true ((List.all_eq_true.mp hmask) p hp)
  have hleaf := (List.all_eq_true.mp k5PrefixGroup0045ActualRows_pass) row hrow
  unfold Erdos848.GeneratedFortyMillionRootCoefficientCoverage.k5PrefixGroup0045RootCoefficientPasses at hleaf
  rw [← hendpoint] at hleaf
  have hcongr := Erdos848.fortyMillionRootCorePrefixPasses_congr
    Erdos848.GeneratedFortyMillionRootCoefficientCoverage.coefficientCeiling
    Erdos848.GeneratedTailGlobalMixedSupportCoverage.k5PrefixGroup0045NormalLookup
    Erdos848.GeneratedTailGlobalMixedSupportCoverage.normalQrMaskWords
    Erdos848.GeneratedTailGlobalMixedSupportCoverage.k5PrefixGroup0045TwistLookup
    Erdos848.GeneratedTailGlobalMixedSupportCoverage.twistQrMaskWords
    5 (Erdos848.globalMixedSupportEndpoint row.1) row.1
    (fun p hp => Erdos848.GeneratedTailGlobalMixedSupportCoverage.k5PrefixGroup0045NormalLookup_eq_global
      (hsupportMask p hp))
    (fun p hp => Erdos848.GeneratedTailGlobalMixedSupportCoverage.k5PrefixGroup0045TwistLookup_eq_global
      (hsupportMask p hp))
  rw [hcongr] at hleaf
  simpa [Erdos848.fortyMillionRootPrefixPasses] using hleaf

#print axioms k5PrefixGroup0045_actual_global_root_coefficient_passes

end Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage
