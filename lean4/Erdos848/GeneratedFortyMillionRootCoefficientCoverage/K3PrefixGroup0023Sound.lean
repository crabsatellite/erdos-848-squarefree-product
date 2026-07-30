import Erdos848.GeneratedFortyMillionRootCoefficientCoverage.K3PrefixGroup0023Shard00
import Erdos848.GeneratedFortyMillionRootCoefficientCoverage.K3PrefixGroup0023Shard01
import Erdos848.GeneratedFortyMillionRootCoefficientCoverage.K3PrefixGroup0023Shard02
import Erdos848.GeneratedFortyMillionRootCoefficientCoverage.K3PrefixGroup0023Shard03
import Erdos848.GeneratedFortyMillionRootCoefficientCoverage.K3PrefixGroup0023Shard04
import Erdos848.GeneratedFortyMillionRootCoefficientCoverage.K3PrefixGroup0023Shard05
import Erdos848.GeneratedFortyMillionRootCoefficientCoverage.K3PrefixGroup0023Shard06
import Erdos848.GeneratedFortyMillionRootCoefficientCoverage.K3PrefixGroup0023Shard07
import Erdos848.GeneratedFortyMillionRootCoefficientCoverage.K3PrefixGroup0023Shard08
import Erdos848.GeneratedFortyMillionRootCoefficientCoverage.K3PrefixGroup0023Shard09
import Erdos848.GeneratedFortyMillionRootCoefficientCoverage.K3PrefixGroup0023Shard10
import Erdos848.GeneratedFortyMillionRootCoefficientCoverage.K3PrefixGroup0023Shard11
import Erdos848.GeneratedFortyMillionRootCoefficientCoverage.K3PrefixGroup0023Shard12
import Erdos848.GeneratedFortyMillionRootCoefficientCoverage.K3PrefixGroup0023Shard13
import Erdos848.GeneratedFortyMillionRootCoefficientCoverage.K3PrefixGroup0023Shard14
import Erdos848.GeneratedFortyMillionRootCoefficientCoverage.K3PrefixGroup0023Shard15
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.K3PrefixGroup0023Sound
import Erdos848.TailFortyMillionRootCoefficientBridge

namespace Erdos848.GeneratedFortyMillionRootCoefficientCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem k3PrefixGroup0023_root_coefficient_passes :
    Erdos848.GeneratedTailGlobalMixedSupportCoverage.k3PrefixGroup0023.all k3PrefixGroup0023RootCoefficientPasses = true := by
  have hpartition : Erdos848.GeneratedTailGlobalMixedSupportCoverage.k3PrefixGroup0023 =
      k3PrefixGroup0023Shard00Rows ++
      k3PrefixGroup0023Shard01Rows ++
      k3PrefixGroup0023Shard02Rows ++
      k3PrefixGroup0023Shard03Rows ++
      k3PrefixGroup0023Shard04Rows ++
      k3PrefixGroup0023Shard05Rows ++
      k3PrefixGroup0023Shard06Rows ++
      k3PrefixGroup0023Shard07Rows ++
      k3PrefixGroup0023Shard08Rows ++
      k3PrefixGroup0023Shard09Rows ++
      k3PrefixGroup0023Shard10Rows ++
      k3PrefixGroup0023Shard11Rows ++
      k3PrefixGroup0023Shard12Rows ++
      k3PrefixGroup0023Shard13Rows ++
      k3PrefixGroup0023Shard14Rows ++
      k3PrefixGroup0023Shard15Rows := by rfl
  rw [hpartition]
  simp only [List.all_append]
  rw [k3PrefixGroup0023Shard00_root_coefficient_passes]
  rw [k3PrefixGroup0023Shard01_root_coefficient_passes]
  rw [k3PrefixGroup0023Shard02_root_coefficient_passes]
  rw [k3PrefixGroup0023Shard03_root_coefficient_passes]
  rw [k3PrefixGroup0023Shard04_root_coefficient_passes]
  rw [k3PrefixGroup0023Shard05_root_coefficient_passes]
  rw [k3PrefixGroup0023Shard06_root_coefficient_passes]
  rw [k3PrefixGroup0023Shard07_root_coefficient_passes]
  rw [k3PrefixGroup0023Shard08_root_coefficient_passes]
  rw [k3PrefixGroup0023Shard09_root_coefficient_passes]
  rw [k3PrefixGroup0023Shard10_root_coefficient_passes]
  rw [k3PrefixGroup0023Shard11_root_coefficient_passes]
  rw [k3PrefixGroup0023Shard12_root_coefficient_passes]
  rw [k3PrefixGroup0023Shard13_root_coefficient_passes]
  rw [k3PrefixGroup0023Shard14_root_coefficient_passes]
  rw [k3PrefixGroup0023Shard15_root_coefficient_passes]
  rfl

theorem k3PrefixGroup0023_endpoint_threshold_passes :
    (Erdos848.GeneratedTailGlobalMixedSupportCoverage.k3PrefixGroup0023.map Prod.fst).all (fun support =>
      decide (Erdos848.globalMixedSupportEndpoint support <=
        Erdos848.globalMixedSupportProductThreshold 3)) = true := by
  rfl

theorem k3PrefixGroup0023_global_root_coefficient_passes :
    (Erdos848.GeneratedTailGlobalMixedSupportCoverage.k3PrefixGroup0023.map Prod.fst).all
      (Erdos848.fortyMillionRootPrefixPasses coefficientCeiling 3) = true := by
  apply List.all_eq_true.mpr
  intro support hsupport
  obtain ⟨row, hrow, rfl⟩ := List.mem_map.mp hsupport
  have hendpointPass := (List.all_eq_true.mp Erdos848.GeneratedTailGlobalMixedSupportCoverage.k3PrefixGroup0023_endpoint_passes) row hrow
  have hendpoint : Erdos848.globalMixedSupportEndpoint row.1 =
      max 5_000_000 (row.1.prod * row.2) :=
    of_decide_eq_true hendpointPass
  have hmask := (List.all_eq_true.mp Erdos848.GeneratedTailGlobalMixedSupportCoverage.k3PrefixGroup0023_mask_passes) row hrow
  have hsupportMask : ∀ p ∈ row.1.filter (fun p => decide (p <= 2843)),
      Erdos848.GeneratedTailGlobalMixedSupportCoverage.k3PrefixGroup0023MaskDomain p := by
    intro p hp
    exact of_decide_eq_true ((List.all_eq_true.mp hmask) p hp)
  have hleaf := (List.all_eq_true.mp k3PrefixGroup0023_root_coefficient_passes) row hrow
  unfold k3PrefixGroup0023RootCoefficientPasses at hleaf
  rw [← hendpoint] at hleaf
  have hcongr := Erdos848.fortyMillionRootCorePrefixPasses_congr
    coefficientCeiling
    Erdos848.GeneratedTailGlobalMixedSupportCoverage.k3PrefixGroup0023NormalLookup
    Erdos848.GeneratedTailGlobalMixedSupportCoverage.normalQrMaskWords
    Erdos848.GeneratedTailGlobalMixedSupportCoverage.k3PrefixGroup0023TwistLookup
    Erdos848.GeneratedTailGlobalMixedSupportCoverage.twistQrMaskWords
    3 (Erdos848.globalMixedSupportEndpoint row.1) row.1
    (fun p hp => Erdos848.GeneratedTailGlobalMixedSupportCoverage.k3PrefixGroup0023NormalLookup_eq_global
      (hsupportMask p hp))
    (fun p hp => Erdos848.GeneratedTailGlobalMixedSupportCoverage.k3PrefixGroup0023TwistLookup_eq_global
      (hsupportMask p hp))
  rw [hcongr] at hleaf
  simpa [Erdos848.fortyMillionRootPrefixPasses] using hleaf

#print axioms k3PrefixGroup0023_global_root_coefficient_passes

end Erdos848.GeneratedFortyMillionRootCoefficientCoverage
