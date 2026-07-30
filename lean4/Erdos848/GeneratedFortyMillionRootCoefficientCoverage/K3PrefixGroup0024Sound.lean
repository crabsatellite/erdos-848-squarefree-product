import Erdos848.GeneratedFortyMillionRootCoefficientCoverage.K3PrefixGroup0024Shard00
import Erdos848.GeneratedFortyMillionRootCoefficientCoverage.K3PrefixGroup0024Shard01
import Erdos848.GeneratedFortyMillionRootCoefficientCoverage.K3PrefixGroup0024Shard02
import Erdos848.GeneratedFortyMillionRootCoefficientCoverage.K3PrefixGroup0024Shard03
import Erdos848.GeneratedFortyMillionRootCoefficientCoverage.K3PrefixGroup0024Shard04
import Erdos848.GeneratedFortyMillionRootCoefficientCoverage.K3PrefixGroup0024Shard05
import Erdos848.GeneratedFortyMillionRootCoefficientCoverage.K3PrefixGroup0024Shard06
import Erdos848.GeneratedFortyMillionRootCoefficientCoverage.K3PrefixGroup0024Shard07
import Erdos848.GeneratedFortyMillionRootCoefficientCoverage.K3PrefixGroup0024Shard08
import Erdos848.GeneratedFortyMillionRootCoefficientCoverage.K3PrefixGroup0024Shard09
import Erdos848.GeneratedFortyMillionRootCoefficientCoverage.K3PrefixGroup0024Shard10
import Erdos848.GeneratedFortyMillionRootCoefficientCoverage.K3PrefixGroup0024Shard11
import Erdos848.GeneratedFortyMillionRootCoefficientCoverage.K3PrefixGroup0024Shard12
import Erdos848.GeneratedFortyMillionRootCoefficientCoverage.K3PrefixGroup0024Shard13
import Erdos848.GeneratedFortyMillionRootCoefficientCoverage.K3PrefixGroup0024Shard14
import Erdos848.GeneratedFortyMillionRootCoefficientCoverage.K3PrefixGroup0024Shard15
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.K3PrefixGroup0024Sound
import Erdos848.TailFortyMillionRootCoefficientBridge

namespace Erdos848.GeneratedFortyMillionRootCoefficientCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem k3PrefixGroup0024_root_coefficient_passes :
    Erdos848.GeneratedTailGlobalMixedSupportCoverage.k3PrefixGroup0024.all k3PrefixGroup0024RootCoefficientPasses = true := by
  have hpartition : Erdos848.GeneratedTailGlobalMixedSupportCoverage.k3PrefixGroup0024 =
      k3PrefixGroup0024Shard00Rows ++
      k3PrefixGroup0024Shard01Rows ++
      k3PrefixGroup0024Shard02Rows ++
      k3PrefixGroup0024Shard03Rows ++
      k3PrefixGroup0024Shard04Rows ++
      k3PrefixGroup0024Shard05Rows ++
      k3PrefixGroup0024Shard06Rows ++
      k3PrefixGroup0024Shard07Rows ++
      k3PrefixGroup0024Shard08Rows ++
      k3PrefixGroup0024Shard09Rows ++
      k3PrefixGroup0024Shard10Rows ++
      k3PrefixGroup0024Shard11Rows ++
      k3PrefixGroup0024Shard12Rows ++
      k3PrefixGroup0024Shard13Rows ++
      k3PrefixGroup0024Shard14Rows ++
      k3PrefixGroup0024Shard15Rows := by rfl
  rw [hpartition]
  simp only [List.all_append]
  rw [k3PrefixGroup0024Shard00_root_coefficient_passes]
  rw [k3PrefixGroup0024Shard01_root_coefficient_passes]
  rw [k3PrefixGroup0024Shard02_root_coefficient_passes]
  rw [k3PrefixGroup0024Shard03_root_coefficient_passes]
  rw [k3PrefixGroup0024Shard04_root_coefficient_passes]
  rw [k3PrefixGroup0024Shard05_root_coefficient_passes]
  rw [k3PrefixGroup0024Shard06_root_coefficient_passes]
  rw [k3PrefixGroup0024Shard07_root_coefficient_passes]
  rw [k3PrefixGroup0024Shard08_root_coefficient_passes]
  rw [k3PrefixGroup0024Shard09_root_coefficient_passes]
  rw [k3PrefixGroup0024Shard10_root_coefficient_passes]
  rw [k3PrefixGroup0024Shard11_root_coefficient_passes]
  rw [k3PrefixGroup0024Shard12_root_coefficient_passes]
  rw [k3PrefixGroup0024Shard13_root_coefficient_passes]
  rw [k3PrefixGroup0024Shard14_root_coefficient_passes]
  rw [k3PrefixGroup0024Shard15_root_coefficient_passes]
  rfl

theorem k3PrefixGroup0024_endpoint_threshold_passes :
    (Erdos848.GeneratedTailGlobalMixedSupportCoverage.k3PrefixGroup0024.map Prod.fst).all (fun support =>
      decide (Erdos848.globalMixedSupportEndpoint support <=
        Erdos848.globalMixedSupportProductThreshold 3)) = true := by
  rfl

theorem k3PrefixGroup0024_global_root_coefficient_passes :
    (Erdos848.GeneratedTailGlobalMixedSupportCoverage.k3PrefixGroup0024.map Prod.fst).all
      (Erdos848.fortyMillionRootPrefixPasses coefficientCeiling 3) = true := by
  apply List.all_eq_true.mpr
  intro support hsupport
  obtain ⟨row, hrow, rfl⟩ := List.mem_map.mp hsupport
  have hendpointPass := (List.all_eq_true.mp Erdos848.GeneratedTailGlobalMixedSupportCoverage.k3PrefixGroup0024_endpoint_passes) row hrow
  have hendpoint : Erdos848.globalMixedSupportEndpoint row.1 =
      max 5_000_000 (row.1.prod * row.2) :=
    of_decide_eq_true hendpointPass
  have hmask := (List.all_eq_true.mp Erdos848.GeneratedTailGlobalMixedSupportCoverage.k3PrefixGroup0024_mask_passes) row hrow
  have hsupportMask : ∀ p ∈ row.1.filter (fun p => decide (p <= 2843)),
      Erdos848.GeneratedTailGlobalMixedSupportCoverage.k3PrefixGroup0024MaskDomain p := by
    intro p hp
    exact of_decide_eq_true ((List.all_eq_true.mp hmask) p hp)
  have hleaf := (List.all_eq_true.mp k3PrefixGroup0024_root_coefficient_passes) row hrow
  unfold k3PrefixGroup0024RootCoefficientPasses at hleaf
  rw [← hendpoint] at hleaf
  have hcongr := Erdos848.fortyMillionRootCorePrefixPasses_congr
    coefficientCeiling
    Erdos848.GeneratedTailGlobalMixedSupportCoverage.k3PrefixGroup0024NormalLookup
    Erdos848.GeneratedTailGlobalMixedSupportCoverage.normalQrMaskWords
    Erdos848.GeneratedTailGlobalMixedSupportCoverage.k3PrefixGroup0024TwistLookup
    Erdos848.GeneratedTailGlobalMixedSupportCoverage.twistQrMaskWords
    3 (Erdos848.globalMixedSupportEndpoint row.1) row.1
    (fun p hp => Erdos848.GeneratedTailGlobalMixedSupportCoverage.k3PrefixGroup0024NormalLookup_eq_global
      (hsupportMask p hp))
    (fun p hp => Erdos848.GeneratedTailGlobalMixedSupportCoverage.k3PrefixGroup0024TwistLookup_eq_global
      (hsupportMask p hp))
  rw [hcongr] at hleaf
  simpa [Erdos848.fortyMillionRootPrefixPasses] using hleaf

#print axioms k3PrefixGroup0024_global_root_coefficient_passes

end Erdos848.GeneratedFortyMillionRootCoefficientCoverage
