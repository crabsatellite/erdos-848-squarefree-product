import Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage.K5ActualGroup0011Shard00
import Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage.K5ActualGroup0011Shard01
import Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage.K5ActualGroup0011Shard02
import Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage.K5ActualGroup0011Shard03
import Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage.K5ActualGroup0011Shard04
import Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage.K5ActualGroup0011Shard05
import Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage.K5ActualGroup0011Shard06
import Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage.K5ActualGroup0011Shard07
import Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage.K5ActualGroup0011Shard08
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.K5PrefixGroup0011Sound
import Erdos848.TailFortyMillionRootCoefficientBridge

namespace Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem k5PrefixGroup0011ActualRows_pass :
    k5PrefixGroup0011ActualRows.all
      Erdos848.GeneratedFortyMillionRootCoefficientCoverage.k5PrefixGroup0011RootCoefficientPasses = true := by
  have hpartition : k5PrefixGroup0011ActualRows =
      k5PrefixGroup0011ActualShard00Rows ++
      k5PrefixGroup0011ActualShard01Rows ++
      k5PrefixGroup0011ActualShard02Rows ++
      k5PrefixGroup0011ActualShard03Rows ++
      k5PrefixGroup0011ActualShard04Rows ++
      k5PrefixGroup0011ActualShard05Rows ++
      k5PrefixGroup0011ActualShard06Rows ++
      k5PrefixGroup0011ActualShard07Rows ++
      k5PrefixGroup0011ActualShard08Rows := by rfl
  rw [hpartition]
  simp only [List.all_append]
  rw [k5PrefixGroup0011ActualShard00_passes]
  rw [k5PrefixGroup0011ActualShard01_passes]
  rw [k5PrefixGroup0011ActualShard02_passes]
  rw [k5PrefixGroup0011ActualShard03_passes]
  rw [k5PrefixGroup0011ActualShard04_passes]
  rw [k5PrefixGroup0011ActualShard05_passes]
  rw [k5PrefixGroup0011ActualShard06_passes]
  rw [k5PrefixGroup0011ActualShard07_passes]
  rw [k5PrefixGroup0011ActualShard08_passes]
  rfl

theorem k5PrefixGroup0011_actual_global_root_coefficient_passes :
    (k5PrefixGroup0011ActualRows.map Prod.fst).all
      (Erdos848.fortyMillionRootPrefixPasses
        Erdos848.GeneratedFortyMillionRootCoefficientCoverage.coefficientCeiling 5) = true := by
  apply List.all_eq_true.mpr
  intro support hsupport
  obtain ⟨row, hrow, rfl⟩ := List.mem_map.mp hsupport
  have hfiltered : row ∈ Erdos848.GeneratedTailGlobalMixedSupportCoverage.k5PrefixGroup0011.filter (fun row =>
      decide (Erdos848.globalMixedSupportEndpoint row.1 <
        200_000_000)) := by
    rw [← k5PrefixGroup0011ActualRows_eq_filter]
    exact hrow
  have hrowBase := (List.mem_filter.mp hfiltered).1
  have hendpointPass := (List.all_eq_true.mp Erdos848.GeneratedTailGlobalMixedSupportCoverage.k5PrefixGroup0011_endpoint_passes) row hrowBase
  have hendpoint : Erdos848.globalMixedSupportEndpoint row.1 =
      max 5_000_000 (row.1.prod * row.2) :=
    of_decide_eq_true hendpointPass
  have hmask := (List.all_eq_true.mp Erdos848.GeneratedTailGlobalMixedSupportCoverage.k5PrefixGroup0011_mask_passes) row hrowBase
  have hsupportMask : ∀ p ∈ row.1.filter (fun p => decide (p <= 2843)),
      Erdos848.GeneratedTailGlobalMixedSupportCoverage.k5PrefixGroup0011MaskDomain p := by
    intro p hp
    exact of_decide_eq_true ((List.all_eq_true.mp hmask) p hp)
  have hleaf := (List.all_eq_true.mp k5PrefixGroup0011ActualRows_pass) row hrow
  unfold Erdos848.GeneratedFortyMillionRootCoefficientCoverage.k5PrefixGroup0011RootCoefficientPasses at hleaf
  rw [← hendpoint] at hleaf
  have hcongr := Erdos848.fortyMillionRootCorePrefixPasses_congr
    Erdos848.GeneratedFortyMillionRootCoefficientCoverage.coefficientCeiling
    Erdos848.GeneratedTailGlobalMixedSupportCoverage.k5PrefixGroup0011NormalLookup
    Erdos848.GeneratedTailGlobalMixedSupportCoverage.normalQrMaskWords
    Erdos848.GeneratedTailGlobalMixedSupportCoverage.k5PrefixGroup0011TwistLookup
    Erdos848.GeneratedTailGlobalMixedSupportCoverage.twistQrMaskWords
    5 (Erdos848.globalMixedSupportEndpoint row.1) row.1
    (fun p hp => Erdos848.GeneratedTailGlobalMixedSupportCoverage.k5PrefixGroup0011NormalLookup_eq_global
      (hsupportMask p hp))
    (fun p hp => Erdos848.GeneratedTailGlobalMixedSupportCoverage.k5PrefixGroup0011TwistLookup_eq_global
      (hsupportMask p hp))
  rw [hcongr] at hleaf
  simpa [Erdos848.fortyMillionRootPrefixPasses] using hleaf

#print axioms k5PrefixGroup0011_actual_global_root_coefficient_passes

end Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage
