import Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage.K4ActualGroup0032Shard00
import Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage.K4ActualGroup0032Shard01
import Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage.K4ActualGroup0032Shard02
import Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage.K4ActualGroup0032Shard03
import Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage.K4ActualGroup0032Shard04
import Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage.K4ActualGroup0032Shard05
import Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage.K4ActualGroup0032Shard06
import Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage.K4ActualGroup0032Shard07
import Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage.K4ActualGroup0032Shard08
import Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage.K4ActualGroup0032Shard09
import Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage.K4ActualGroup0032Shard10
import Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage.K4ActualGroup0032Shard11
import Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage.K4ActualGroup0032Shard12
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.K4PrefixGroup0032Sound
import Erdos848.TailFortyMillionRootCoefficientBridge

namespace Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem k4PrefixGroup0032ActualRows_pass :
    k4PrefixGroup0032ActualRows.all
      Erdos848.GeneratedFortyMillionRootCoefficientCoverage.k4PrefixGroup0032RootCoefficientPasses = true := by
  have hpartition : k4PrefixGroup0032ActualRows =
      k4PrefixGroup0032ActualShard00Rows ++
      k4PrefixGroup0032ActualShard01Rows ++
      k4PrefixGroup0032ActualShard02Rows ++
      k4PrefixGroup0032ActualShard03Rows ++
      k4PrefixGroup0032ActualShard04Rows ++
      k4PrefixGroup0032ActualShard05Rows ++
      k4PrefixGroup0032ActualShard06Rows ++
      k4PrefixGroup0032ActualShard07Rows ++
      k4PrefixGroup0032ActualShard08Rows ++
      k4PrefixGroup0032ActualShard09Rows ++
      k4PrefixGroup0032ActualShard10Rows ++
      k4PrefixGroup0032ActualShard11Rows ++
      k4PrefixGroup0032ActualShard12Rows := by rfl
  rw [hpartition]
  simp only [List.all_append]
  rw [k4PrefixGroup0032ActualShard00_passes]
  rw [k4PrefixGroup0032ActualShard01_passes]
  rw [k4PrefixGroup0032ActualShard02_passes]
  rw [k4PrefixGroup0032ActualShard03_passes]
  rw [k4PrefixGroup0032ActualShard04_passes]
  rw [k4PrefixGroup0032ActualShard05_passes]
  rw [k4PrefixGroup0032ActualShard06_passes]
  rw [k4PrefixGroup0032ActualShard07_passes]
  rw [k4PrefixGroup0032ActualShard08_passes]
  rw [k4PrefixGroup0032ActualShard09_passes]
  rw [k4PrefixGroup0032ActualShard10_passes]
  rw [k4PrefixGroup0032ActualShard11_passes]
  rw [k4PrefixGroup0032ActualShard12_passes]
  rfl

theorem k4PrefixGroup0032_actual_global_root_coefficient_passes :
    (k4PrefixGroup0032ActualRows.map Prod.fst).all
      (Erdos848.fortyMillionRootPrefixPasses
        Erdos848.GeneratedFortyMillionRootCoefficientCoverage.coefficientCeiling 4) = true := by
  apply List.all_eq_true.mpr
  intro support hsupport
  obtain ⟨row, hrow, rfl⟩ := List.mem_map.mp hsupport
  have hfiltered : row ∈ Erdos848.GeneratedTailGlobalMixedSupportCoverage.k4PrefixGroup0032.filter (fun row =>
      decide (Erdos848.globalMixedSupportEndpoint row.1 <
        200_000_000)) := by
    rw [← k4PrefixGroup0032ActualRows_eq_filter]
    exact hrow
  have hrowBase := (List.mem_filter.mp hfiltered).1
  have hendpointPass := (List.all_eq_true.mp Erdos848.GeneratedTailGlobalMixedSupportCoverage.k4PrefixGroup0032_endpoint_passes) row hrowBase
  have hendpoint : Erdos848.globalMixedSupportEndpoint row.1 =
      max 5_000_000 (row.1.prod * row.2) :=
    of_decide_eq_true hendpointPass
  have hmask := (List.all_eq_true.mp Erdos848.GeneratedTailGlobalMixedSupportCoverage.k4PrefixGroup0032_mask_passes) row hrowBase
  have hsupportMask : ∀ p ∈ row.1.filter (fun p => decide (p <= 2843)),
      Erdos848.GeneratedTailGlobalMixedSupportCoverage.k4PrefixGroup0032MaskDomain p := by
    intro p hp
    exact of_decide_eq_true ((List.all_eq_true.mp hmask) p hp)
  have hleaf := (List.all_eq_true.mp k4PrefixGroup0032ActualRows_pass) row hrow
  unfold Erdos848.GeneratedFortyMillionRootCoefficientCoverage.k4PrefixGroup0032RootCoefficientPasses at hleaf
  rw [← hendpoint] at hleaf
  have hcongr := Erdos848.fortyMillionRootCorePrefixPasses_congr
    Erdos848.GeneratedFortyMillionRootCoefficientCoverage.coefficientCeiling
    Erdos848.GeneratedTailGlobalMixedSupportCoverage.k4PrefixGroup0032NormalLookup
    Erdos848.GeneratedTailGlobalMixedSupportCoverage.normalQrMaskWords
    Erdos848.GeneratedTailGlobalMixedSupportCoverage.k4PrefixGroup0032TwistLookup
    Erdos848.GeneratedTailGlobalMixedSupportCoverage.twistQrMaskWords
    4 (Erdos848.globalMixedSupportEndpoint row.1) row.1
    (fun p hp => Erdos848.GeneratedTailGlobalMixedSupportCoverage.k4PrefixGroup0032NormalLookup_eq_global
      (hsupportMask p hp))
    (fun p hp => Erdos848.GeneratedTailGlobalMixedSupportCoverage.k4PrefixGroup0032TwistLookup_eq_global
      (hsupportMask p hp))
  rw [hcongr] at hleaf
  simpa [Erdos848.fortyMillionRootPrefixPasses] using hleaf

#print axioms k4PrefixGroup0032_actual_global_root_coefficient_passes

end Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage
