import Erdos848.GeneratedFortyMillionRootCoefficientCoverage.K3PrefixGroup0011Shard00
import Erdos848.GeneratedFortyMillionRootCoefficientCoverage.K3PrefixGroup0011Shard01
import Erdos848.GeneratedFortyMillionRootCoefficientCoverage.K3PrefixGroup0011Shard02
import Erdos848.GeneratedFortyMillionRootCoefficientCoverage.K3PrefixGroup0011Shard03
import Erdos848.GeneratedFortyMillionRootCoefficientCoverage.K3PrefixGroup0011Shard04
import Erdos848.GeneratedFortyMillionRootCoefficientCoverage.K3PrefixGroup0011Shard05
import Erdos848.GeneratedFortyMillionRootCoefficientCoverage.K3PrefixGroup0011Shard06
import Erdos848.GeneratedFortyMillionRootCoefficientCoverage.K3PrefixGroup0011Shard07
import Erdos848.GeneratedFortyMillionRootCoefficientCoverage.K3PrefixGroup0011Shard08
import Erdos848.GeneratedFortyMillionRootCoefficientCoverage.K3PrefixGroup0011Shard09
import Erdos848.GeneratedFortyMillionRootCoefficientCoverage.K3PrefixGroup0011Shard10
import Erdos848.GeneratedFortyMillionRootCoefficientCoverage.K3PrefixGroup0011Shard11
import Erdos848.GeneratedFortyMillionRootCoefficientCoverage.K3PrefixGroup0011Shard12
import Erdos848.GeneratedFortyMillionRootCoefficientCoverage.K3PrefixGroup0011Shard13
import Erdos848.GeneratedFortyMillionRootCoefficientCoverage.K3PrefixGroup0011Shard14
import Erdos848.GeneratedFortyMillionRootCoefficientCoverage.K3PrefixGroup0011Shard15
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.K3PrefixGroup0011Sound
import Erdos848.TailFortyMillionRootCoefficientBridge

namespace Erdos848.GeneratedFortyMillionRootCoefficientCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem k3PrefixGroup0011_root_coefficient_passes :
    Erdos848.GeneratedTailGlobalMixedSupportCoverage.k3PrefixGroup0011.all k3PrefixGroup0011RootCoefficientPasses = true := by
  have hpartition : Erdos848.GeneratedTailGlobalMixedSupportCoverage.k3PrefixGroup0011 =
      k3PrefixGroup0011Shard00Rows ++
      k3PrefixGroup0011Shard01Rows ++
      k3PrefixGroup0011Shard02Rows ++
      k3PrefixGroup0011Shard03Rows ++
      k3PrefixGroup0011Shard04Rows ++
      k3PrefixGroup0011Shard05Rows ++
      k3PrefixGroup0011Shard06Rows ++
      k3PrefixGroup0011Shard07Rows ++
      k3PrefixGroup0011Shard08Rows ++
      k3PrefixGroup0011Shard09Rows ++
      k3PrefixGroup0011Shard10Rows ++
      k3PrefixGroup0011Shard11Rows ++
      k3PrefixGroup0011Shard12Rows ++
      k3PrefixGroup0011Shard13Rows ++
      k3PrefixGroup0011Shard14Rows ++
      k3PrefixGroup0011Shard15Rows := by rfl
  rw [hpartition]
  simp only [List.all_append]
  rw [k3PrefixGroup0011Shard00_root_coefficient_passes]
  rw [k3PrefixGroup0011Shard01_root_coefficient_passes]
  rw [k3PrefixGroup0011Shard02_root_coefficient_passes]
  rw [k3PrefixGroup0011Shard03_root_coefficient_passes]
  rw [k3PrefixGroup0011Shard04_root_coefficient_passes]
  rw [k3PrefixGroup0011Shard05_root_coefficient_passes]
  rw [k3PrefixGroup0011Shard06_root_coefficient_passes]
  rw [k3PrefixGroup0011Shard07_root_coefficient_passes]
  rw [k3PrefixGroup0011Shard08_root_coefficient_passes]
  rw [k3PrefixGroup0011Shard09_root_coefficient_passes]
  rw [k3PrefixGroup0011Shard10_root_coefficient_passes]
  rw [k3PrefixGroup0011Shard11_root_coefficient_passes]
  rw [k3PrefixGroup0011Shard12_root_coefficient_passes]
  rw [k3PrefixGroup0011Shard13_root_coefficient_passes]
  rw [k3PrefixGroup0011Shard14_root_coefficient_passes]
  rw [k3PrefixGroup0011Shard15_root_coefficient_passes]
  rfl

theorem k3PrefixGroup0011_endpoint_threshold_passes :
    (Erdos848.GeneratedTailGlobalMixedSupportCoverage.k3PrefixGroup0011.map Prod.fst).all (fun support =>
      decide (Erdos848.globalMixedSupportEndpoint support <=
        Erdos848.globalMixedSupportProductThreshold 3)) = true := by
  rfl

theorem k3PrefixGroup0011_global_root_coefficient_passes :
    (Erdos848.GeneratedTailGlobalMixedSupportCoverage.k3PrefixGroup0011.map Prod.fst).all
      (Erdos848.fortyMillionRootPrefixPasses coefficientCeiling 3) = true := by
  apply List.all_eq_true.mpr
  intro support hsupport
  obtain ⟨row, hrow, rfl⟩ := List.mem_map.mp hsupport
  have hendpointPass := (List.all_eq_true.mp Erdos848.GeneratedTailGlobalMixedSupportCoverage.k3PrefixGroup0011_endpoint_passes) row hrow
  have hendpoint : Erdos848.globalMixedSupportEndpoint row.1 =
      max 5_000_000 (row.1.prod * row.2) :=
    of_decide_eq_true hendpointPass
  have hmask := (List.all_eq_true.mp Erdos848.GeneratedTailGlobalMixedSupportCoverage.k3PrefixGroup0011_mask_passes) row hrow
  have hsupportMask : ∀ p ∈ row.1.filter (fun p => decide (p <= 2843)),
      Erdos848.GeneratedTailGlobalMixedSupportCoverage.k3PrefixGroup0011MaskDomain p := by
    intro p hp
    exact of_decide_eq_true ((List.all_eq_true.mp hmask) p hp)
  have hleaf := (List.all_eq_true.mp k3PrefixGroup0011_root_coefficient_passes) row hrow
  unfold k3PrefixGroup0011RootCoefficientPasses at hleaf
  rw [← hendpoint] at hleaf
  have hcongr := Erdos848.fortyMillionRootCorePrefixPasses_congr
    coefficientCeiling
    Erdos848.GeneratedTailGlobalMixedSupportCoverage.k3PrefixGroup0011NormalLookup
    Erdos848.GeneratedTailGlobalMixedSupportCoverage.normalQrMaskWords
    Erdos848.GeneratedTailGlobalMixedSupportCoverage.k3PrefixGroup0011TwistLookup
    Erdos848.GeneratedTailGlobalMixedSupportCoverage.twistQrMaskWords
    3 (Erdos848.globalMixedSupportEndpoint row.1) row.1
    (fun p hp => Erdos848.GeneratedTailGlobalMixedSupportCoverage.k3PrefixGroup0011NormalLookup_eq_global
      (hsupportMask p hp))
    (fun p hp => Erdos848.GeneratedTailGlobalMixedSupportCoverage.k3PrefixGroup0011TwistLookup_eq_global
      (hsupportMask p hp))
  rw [hcongr] at hleaf
  simpa [Erdos848.fortyMillionRootPrefixPasses] using hleaf

#print axioms k3PrefixGroup0011_global_root_coefficient_passes

end Erdos848.GeneratedFortyMillionRootCoefficientCoverage
