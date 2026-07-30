import Erdos848.GeneratedFortyMillionRootCoefficientCoverage.K0PrefixGroup0000Shard00
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.K0PrefixGroup0000Sound
import Erdos848.TailFortyMillionRootCoefficientBridge

namespace Erdos848.GeneratedFortyMillionRootCoefficientCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem k0PrefixGroup0000_root_coefficient_passes :
    Erdos848.GeneratedTailGlobalMixedSupportCoverage.k0PrefixGroup0000.all k0PrefixGroup0000RootCoefficientPasses = true := by
  have hpartition : Erdos848.GeneratedTailGlobalMixedSupportCoverage.k0PrefixGroup0000 =
      k0PrefixGroup0000Shard00Rows := by rfl
  rw [hpartition]
  exact k0PrefixGroup0000Shard00_root_coefficient_passes

theorem k0PrefixGroup0000_endpoint_threshold_passes :
    (Erdos848.GeneratedTailGlobalMixedSupportCoverage.k0PrefixGroup0000.map Prod.fst).all (fun support =>
      decide (Erdos848.globalMixedSupportEndpoint support <=
        Erdos848.globalMixedSupportProductThreshold 0)) = true := by
  rfl

theorem k0PrefixGroup0000_global_root_coefficient_passes :
    (Erdos848.GeneratedTailGlobalMixedSupportCoverage.k0PrefixGroup0000.map Prod.fst).all
      (Erdos848.fortyMillionRootPrefixPasses coefficientCeiling 0) = true := by
  apply List.all_eq_true.mpr
  intro support hsupport
  obtain ⟨row, hrow, rfl⟩ := List.mem_map.mp hsupport
  have hendpointPass := (List.all_eq_true.mp Erdos848.GeneratedTailGlobalMixedSupportCoverage.k0PrefixGroup0000_endpoint_passes) row hrow
  have hendpoint : Erdos848.globalMixedSupportEndpoint row.1 =
      max 5_000_000 (row.1.prod * row.2) :=
    of_decide_eq_true hendpointPass
  have hmask := (List.all_eq_true.mp Erdos848.GeneratedTailGlobalMixedSupportCoverage.k0PrefixGroup0000_mask_passes) row hrow
  have hsupportMask : ∀ p ∈ row.1.filter (fun p => decide (p <= 2843)),
      Erdos848.GeneratedTailGlobalMixedSupportCoverage.k0PrefixGroup0000MaskDomain p := by
    intro p hp
    exact of_decide_eq_true ((List.all_eq_true.mp hmask) p hp)
  have hleaf := (List.all_eq_true.mp k0PrefixGroup0000_root_coefficient_passes) row hrow
  unfold k0PrefixGroup0000RootCoefficientPasses at hleaf
  rw [← hendpoint] at hleaf
  have hcongr := Erdos848.fortyMillionRootCorePrefixPasses_congr
    coefficientCeiling
    Erdos848.GeneratedTailGlobalMixedSupportCoverage.k0PrefixGroup0000NormalLookup
    Erdos848.GeneratedTailGlobalMixedSupportCoverage.normalQrMaskWords
    Erdos848.GeneratedTailGlobalMixedSupportCoverage.k0PrefixGroup0000TwistLookup
    Erdos848.GeneratedTailGlobalMixedSupportCoverage.twistQrMaskWords
    0 (Erdos848.globalMixedSupportEndpoint row.1) row.1
    (fun p hp => Erdos848.GeneratedTailGlobalMixedSupportCoverage.k0PrefixGroup0000NormalLookup_eq_global
      (hsupportMask p hp))
    (fun p hp => Erdos848.GeneratedTailGlobalMixedSupportCoverage.k0PrefixGroup0000TwistLookup_eq_global
      (hsupportMask p hp))
  rw [hcongr] at hleaf
  simpa [Erdos848.fortyMillionRootPrefixPasses] using hleaf

#print axioms k0PrefixGroup0000_global_root_coefficient_passes

end Erdos848.GeneratedFortyMillionRootCoefficientCoverage
