import Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage.K5ActualGroup0033Shard00
import Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage.K5ActualGroup0033Shard01
import Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage.K5ActualGroup0033Shard02
import Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage.K5ActualGroup0033Shard03
import Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage.K5ActualGroup0033Shard04
import Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage.K5ActualGroup0033Shard05
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.K5PrefixGroup0033Sound
import Erdos848.TailFortyMillionRootCoefficientBridge

namespace Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem k5PrefixGroup0033ActualRows_pass :
    k5PrefixGroup0033ActualRows.all
      Erdos848.GeneratedFortyMillionRootCoefficientCoverage.k5PrefixGroup0033RootCoefficientPasses = true := by
  have hpartition : k5PrefixGroup0033ActualRows =
      k5PrefixGroup0033ActualShard00Rows ++
      k5PrefixGroup0033ActualShard01Rows ++
      k5PrefixGroup0033ActualShard02Rows ++
      k5PrefixGroup0033ActualShard03Rows ++
      k5PrefixGroup0033ActualShard04Rows ++
      k5PrefixGroup0033ActualShard05Rows := by rfl
  rw [hpartition]
  simp only [List.all_append]
  rw [k5PrefixGroup0033ActualShard00_passes]
  rw [k5PrefixGroup0033ActualShard01_passes]
  rw [k5PrefixGroup0033ActualShard02_passes]
  rw [k5PrefixGroup0033ActualShard03_passes]
  rw [k5PrefixGroup0033ActualShard04_passes]
  rw [k5PrefixGroup0033ActualShard05_passes]
  rfl

theorem k5PrefixGroup0033_actual_global_root_coefficient_passes :
    (k5PrefixGroup0033ActualRows.map Prod.fst).all
      (Erdos848.fortyMillionRootPrefixPasses
        Erdos848.GeneratedFortyMillionRootCoefficientCoverage.coefficientCeiling 5) = true := by
  apply List.all_eq_true.mpr
  intro support hsupport
  obtain ⟨row, hrow, rfl⟩ := List.mem_map.mp hsupport
  have hfiltered : row ∈ Erdos848.GeneratedTailGlobalMixedSupportCoverage.k5PrefixGroup0033.filter (fun row =>
      decide (Erdos848.globalMixedSupportEndpoint row.1 <
        200_000_000)) := by
    rw [← k5PrefixGroup0033ActualRows_eq_filter]
    exact hrow
  have hrowBase := (List.mem_filter.mp hfiltered).1
  have hendpointPass := (List.all_eq_true.mp Erdos848.GeneratedTailGlobalMixedSupportCoverage.k5PrefixGroup0033_endpoint_passes) row hrowBase
  have hendpoint : Erdos848.globalMixedSupportEndpoint row.1 =
      max 5_000_000 (row.1.prod * row.2) :=
    of_decide_eq_true hendpointPass
  have hmask := (List.all_eq_true.mp Erdos848.GeneratedTailGlobalMixedSupportCoverage.k5PrefixGroup0033_mask_passes) row hrowBase
  have hsupportMask : ∀ p ∈ row.1.filter (fun p => decide (p <= 2843)),
      Erdos848.GeneratedTailGlobalMixedSupportCoverage.k5PrefixGroup0033MaskDomain p := by
    intro p hp
    exact of_decide_eq_true ((List.all_eq_true.mp hmask) p hp)
  have hleaf := (List.all_eq_true.mp k5PrefixGroup0033ActualRows_pass) row hrow
  unfold Erdos848.GeneratedFortyMillionRootCoefficientCoverage.k5PrefixGroup0033RootCoefficientPasses at hleaf
  rw [← hendpoint] at hleaf
  have hcongr := Erdos848.fortyMillionRootCorePrefixPasses_congr
    Erdos848.GeneratedFortyMillionRootCoefficientCoverage.coefficientCeiling
    Erdos848.GeneratedTailGlobalMixedSupportCoverage.k5PrefixGroup0033NormalLookup
    Erdos848.GeneratedTailGlobalMixedSupportCoverage.normalQrMaskWords
    Erdos848.GeneratedTailGlobalMixedSupportCoverage.k5PrefixGroup0033TwistLookup
    Erdos848.GeneratedTailGlobalMixedSupportCoverage.twistQrMaskWords
    5 (Erdos848.globalMixedSupportEndpoint row.1) row.1
    (fun p hp => Erdos848.GeneratedTailGlobalMixedSupportCoverage.k5PrefixGroup0033NormalLookup_eq_global
      (hsupportMask p hp))
    (fun p hp => Erdos848.GeneratedTailGlobalMixedSupportCoverage.k5PrefixGroup0033TwistLookup_eq_global
      (hsupportMask p hp))
  rw [hcongr] at hleaf
  simpa [Erdos848.fortyMillionRootPrefixPasses] using hleaf

#print axioms k5PrefixGroup0033_actual_global_root_coefficient_passes

end Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage
