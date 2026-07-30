import Erdos848.GeneratedFortyMillionRootCoefficientCoverage.K3PrefixGroup0016Shard00
import Erdos848.GeneratedFortyMillionRootCoefficientCoverage.K3PrefixGroup0016Shard01
import Erdos848.GeneratedFortyMillionRootCoefficientCoverage.K3PrefixGroup0016Shard02
import Erdos848.GeneratedFortyMillionRootCoefficientCoverage.K3PrefixGroup0016Shard03
import Erdos848.GeneratedFortyMillionRootCoefficientCoverage.K3PrefixGroup0016Shard04
import Erdos848.GeneratedFortyMillionRootCoefficientCoverage.K3PrefixGroup0016Shard05
import Erdos848.GeneratedFortyMillionRootCoefficientCoverage.K3PrefixGroup0016Shard06
import Erdos848.GeneratedFortyMillionRootCoefficientCoverage.K3PrefixGroup0016Shard07
import Erdos848.GeneratedFortyMillionRootCoefficientCoverage.K3PrefixGroup0016Shard08
import Erdos848.GeneratedFortyMillionRootCoefficientCoverage.K3PrefixGroup0016Shard09
import Erdos848.GeneratedFortyMillionRootCoefficientCoverage.K3PrefixGroup0016Shard10
import Erdos848.GeneratedFortyMillionRootCoefficientCoverage.K3PrefixGroup0016Shard11
import Erdos848.GeneratedFortyMillionRootCoefficientCoverage.K3PrefixGroup0016Shard12
import Erdos848.GeneratedFortyMillionRootCoefficientCoverage.K3PrefixGroup0016Shard13
import Erdos848.GeneratedFortyMillionRootCoefficientCoverage.K3PrefixGroup0016Shard14
import Erdos848.GeneratedFortyMillionRootCoefficientCoverage.K3PrefixGroup0016Shard15
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.K3PrefixGroup0016Sound
import Erdos848.TailFortyMillionRootCoefficientBridge

namespace Erdos848.GeneratedFortyMillionRootCoefficientCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem k3PrefixGroup0016_root_coefficient_passes :
    Erdos848.GeneratedTailGlobalMixedSupportCoverage.k3PrefixGroup0016.all k3PrefixGroup0016RootCoefficientPasses = true := by
  have hpartition : Erdos848.GeneratedTailGlobalMixedSupportCoverage.k3PrefixGroup0016 =
      k3PrefixGroup0016Shard00Rows ++
      k3PrefixGroup0016Shard01Rows ++
      k3PrefixGroup0016Shard02Rows ++
      k3PrefixGroup0016Shard03Rows ++
      k3PrefixGroup0016Shard04Rows ++
      k3PrefixGroup0016Shard05Rows ++
      k3PrefixGroup0016Shard06Rows ++
      k3PrefixGroup0016Shard07Rows ++
      k3PrefixGroup0016Shard08Rows ++
      k3PrefixGroup0016Shard09Rows ++
      k3PrefixGroup0016Shard10Rows ++
      k3PrefixGroup0016Shard11Rows ++
      k3PrefixGroup0016Shard12Rows ++
      k3PrefixGroup0016Shard13Rows ++
      k3PrefixGroup0016Shard14Rows ++
      k3PrefixGroup0016Shard15Rows := by rfl
  rw [hpartition]
  simp only [List.all_append]
  rw [k3PrefixGroup0016Shard00_root_coefficient_passes]
  rw [k3PrefixGroup0016Shard01_root_coefficient_passes]
  rw [k3PrefixGroup0016Shard02_root_coefficient_passes]
  rw [k3PrefixGroup0016Shard03_root_coefficient_passes]
  rw [k3PrefixGroup0016Shard04_root_coefficient_passes]
  rw [k3PrefixGroup0016Shard05_root_coefficient_passes]
  rw [k3PrefixGroup0016Shard06_root_coefficient_passes]
  rw [k3PrefixGroup0016Shard07_root_coefficient_passes]
  rw [k3PrefixGroup0016Shard08_root_coefficient_passes]
  rw [k3PrefixGroup0016Shard09_root_coefficient_passes]
  rw [k3PrefixGroup0016Shard10_root_coefficient_passes]
  rw [k3PrefixGroup0016Shard11_root_coefficient_passes]
  rw [k3PrefixGroup0016Shard12_root_coefficient_passes]
  rw [k3PrefixGroup0016Shard13_root_coefficient_passes]
  rw [k3PrefixGroup0016Shard14_root_coefficient_passes]
  rw [k3PrefixGroup0016Shard15_root_coefficient_passes]
  rfl

theorem k3PrefixGroup0016_endpoint_threshold_passes :
    (Erdos848.GeneratedTailGlobalMixedSupportCoverage.k3PrefixGroup0016.map Prod.fst).all (fun support =>
      decide (Erdos848.globalMixedSupportEndpoint support <=
        Erdos848.globalMixedSupportProductThreshold 3)) = true := by
  rfl

theorem k3PrefixGroup0016_global_root_coefficient_passes :
    (Erdos848.GeneratedTailGlobalMixedSupportCoverage.k3PrefixGroup0016.map Prod.fst).all
      (Erdos848.fortyMillionRootPrefixPasses coefficientCeiling 3) = true := by
  apply List.all_eq_true.mpr
  intro support hsupport
  obtain ⟨row, hrow, rfl⟩ := List.mem_map.mp hsupport
  have hendpointPass := (List.all_eq_true.mp Erdos848.GeneratedTailGlobalMixedSupportCoverage.k3PrefixGroup0016_endpoint_passes) row hrow
  have hendpoint : Erdos848.globalMixedSupportEndpoint row.1 =
      max 5_000_000 (row.1.prod * row.2) :=
    of_decide_eq_true hendpointPass
  have hmask := (List.all_eq_true.mp Erdos848.GeneratedTailGlobalMixedSupportCoverage.k3PrefixGroup0016_mask_passes) row hrow
  have hsupportMask : ∀ p ∈ row.1.filter (fun p => decide (p <= 2843)),
      Erdos848.GeneratedTailGlobalMixedSupportCoverage.k3PrefixGroup0016MaskDomain p := by
    intro p hp
    exact of_decide_eq_true ((List.all_eq_true.mp hmask) p hp)
  have hleaf := (List.all_eq_true.mp k3PrefixGroup0016_root_coefficient_passes) row hrow
  unfold k3PrefixGroup0016RootCoefficientPasses at hleaf
  rw [← hendpoint] at hleaf
  have hcongr := Erdos848.fortyMillionRootCorePrefixPasses_congr
    coefficientCeiling
    Erdos848.GeneratedTailGlobalMixedSupportCoverage.k3PrefixGroup0016NormalLookup
    Erdos848.GeneratedTailGlobalMixedSupportCoverage.normalQrMaskWords
    Erdos848.GeneratedTailGlobalMixedSupportCoverage.k3PrefixGroup0016TwistLookup
    Erdos848.GeneratedTailGlobalMixedSupportCoverage.twistQrMaskWords
    3 (Erdos848.globalMixedSupportEndpoint row.1) row.1
    (fun p hp => Erdos848.GeneratedTailGlobalMixedSupportCoverage.k3PrefixGroup0016NormalLookup_eq_global
      (hsupportMask p hp))
    (fun p hp => Erdos848.GeneratedTailGlobalMixedSupportCoverage.k3PrefixGroup0016TwistLookup_eq_global
      (hsupportMask p hp))
  rw [hcongr] at hleaf
  simpa [Erdos848.fortyMillionRootPrefixPasses] using hleaf

#print axioms k3PrefixGroup0016_global_root_coefficient_passes

end Erdos848.GeneratedFortyMillionRootCoefficientCoverage
