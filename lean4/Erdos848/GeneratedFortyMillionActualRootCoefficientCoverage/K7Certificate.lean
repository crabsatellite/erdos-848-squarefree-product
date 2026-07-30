import Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage.K7ActualGroup0000Sound
import Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage.K7ActualGroup0001Sound
import Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage.K7ActualGroup0002Sound
import Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage.K7ActualGroup0003Sound
import Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage.K7ActualGroup0004Sound
import Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage.K7ActualGroup0005Sound
import Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage.K7ActualGroup0006Sound
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.K7SoundCertificate

namespace Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem k7ActualRootCoefficientPass
    {supportPrefix : List Nat}
    (hmem : supportPrefix ∈ Erdos848.globalMixedFeasiblePrefixesKernel 7)
    (hUpper : Erdos848.globalMixedSupportEndpoint supportPrefix <
      200_000_000) :
    Erdos848.fortyMillionRootPrefixPasses
      Erdos848.GeneratedFortyMillionRootCoefficientCoverage.coefficientCeiling 7
      supportPrefix = true := by
  have hbase : supportPrefix ∈ Erdos848.GeneratedTailGlobalMixedSupportCoverage.k7StandardCertifiedPrefixes := by
    rw [Erdos848.GeneratedTailGlobalMixedSupportCoverage.k7StandardCertifiedPrefixes_eq]
    exact hmem
  unfold Erdos848.GeneratedTailGlobalMixedSupportCoverage.k7StandardCertifiedPrefixes at hbase
  simp only [List.append_assoc] at hbase
  rcases List.mem_append.mp hbase with h0 | hbase
  · obtain ⟨row, hrow, rfl⟩ := List.mem_map.mp h0
    have hfiltered : row ∈ Erdos848.GeneratedTailGlobalMixedSupportCoverage.k7PrefixGroup0000.filter (fun row =>
        decide (Erdos848.globalMixedSupportEndpoint row.1 <
          200_000_000)) :=
      List.mem_filter.mpr ⟨hrow, by simpa using hUpper⟩
    have hactual : row ∈ k7PrefixGroup0000ActualRows := by
      rw [k7PrefixGroup0000ActualRows_eq_filter]
      exact hfiltered
    exact (List.all_eq_true.mp k7PrefixGroup0000_actual_global_root_coefficient_passes)
      row.1 (List.mem_map.mpr ⟨row, hactual, rfl⟩)
  rcases List.mem_append.mp hbase with h1 | hbase
  · obtain ⟨row, hrow, rfl⟩ := List.mem_map.mp h1
    have hfiltered : row ∈ Erdos848.GeneratedTailGlobalMixedSupportCoverage.k7PrefixGroup0001.filter (fun row =>
        decide (Erdos848.globalMixedSupportEndpoint row.1 <
          200_000_000)) :=
      List.mem_filter.mpr ⟨hrow, by simpa using hUpper⟩
    have hactual : row ∈ k7PrefixGroup0001ActualRows := by
      rw [k7PrefixGroup0001ActualRows_eq_filter]
      exact hfiltered
    exact (List.all_eq_true.mp k7PrefixGroup0001_actual_global_root_coefficient_passes)
      row.1 (List.mem_map.mpr ⟨row, hactual, rfl⟩)
  rcases List.mem_append.mp hbase with h2 | hbase
  · obtain ⟨row, hrow, rfl⟩ := List.mem_map.mp h2
    have hfiltered : row ∈ Erdos848.GeneratedTailGlobalMixedSupportCoverage.k7PrefixGroup0002.filter (fun row =>
        decide (Erdos848.globalMixedSupportEndpoint row.1 <
          200_000_000)) :=
      List.mem_filter.mpr ⟨hrow, by simpa using hUpper⟩
    have hactual : row ∈ k7PrefixGroup0002ActualRows := by
      rw [k7PrefixGroup0002ActualRows_eq_filter]
      exact hfiltered
    exact (List.all_eq_true.mp k7PrefixGroup0002_actual_global_root_coefficient_passes)
      row.1 (List.mem_map.mpr ⟨row, hactual, rfl⟩)
  rcases List.mem_append.mp hbase with h3 | hbase
  · obtain ⟨row, hrow, rfl⟩ := List.mem_map.mp h3
    have hfiltered : row ∈ Erdos848.GeneratedTailGlobalMixedSupportCoverage.k7PrefixGroup0003.filter (fun row =>
        decide (Erdos848.globalMixedSupportEndpoint row.1 <
          200_000_000)) :=
      List.mem_filter.mpr ⟨hrow, by simpa using hUpper⟩
    have hactual : row ∈ k7PrefixGroup0003ActualRows := by
      rw [k7PrefixGroup0003ActualRows_eq_filter]
      exact hfiltered
    exact (List.all_eq_true.mp k7PrefixGroup0003_actual_global_root_coefficient_passes)
      row.1 (List.mem_map.mpr ⟨row, hactual, rfl⟩)
  rcases List.mem_append.mp hbase with h4 | hbase
  · obtain ⟨row, hrow, rfl⟩ := List.mem_map.mp h4
    have hfiltered : row ∈ Erdos848.GeneratedTailGlobalMixedSupportCoverage.k7PrefixGroup0004.filter (fun row =>
        decide (Erdos848.globalMixedSupportEndpoint row.1 <
          200_000_000)) :=
      List.mem_filter.mpr ⟨hrow, by simpa using hUpper⟩
    have hactual : row ∈ k7PrefixGroup0004ActualRows := by
      rw [k7PrefixGroup0004ActualRows_eq_filter]
      exact hfiltered
    exact (List.all_eq_true.mp k7PrefixGroup0004_actual_global_root_coefficient_passes)
      row.1 (List.mem_map.mpr ⟨row, hactual, rfl⟩)
  rcases List.mem_append.mp hbase with h5 | hbase
  · obtain ⟨row, hrow, rfl⟩ := List.mem_map.mp h5
    have hfiltered : row ∈ Erdos848.GeneratedTailGlobalMixedSupportCoverage.k7PrefixGroup0005.filter (fun row =>
        decide (Erdos848.globalMixedSupportEndpoint row.1 <
          200_000_000)) :=
      List.mem_filter.mpr ⟨hrow, by simpa using hUpper⟩
    have hactual : row ∈ k7PrefixGroup0005ActualRows := by
      rw [k7PrefixGroup0005ActualRows_eq_filter]
      exact hfiltered
    exact (List.all_eq_true.mp k7PrefixGroup0005_actual_global_root_coefficient_passes)
      row.1 (List.mem_map.mpr ⟨row, hactual, rfl⟩)
  obtain ⟨row, hrow, rfl⟩ := List.mem_map.mp hbase
  have hfiltered : row ∈ Erdos848.GeneratedTailGlobalMixedSupportCoverage.k7PrefixGroup0006.filter (fun row =>
      decide (Erdos848.globalMixedSupportEndpoint row.1 <
        200_000_000)) :=
    List.mem_filter.mpr ⟨hrow, by simpa using hUpper⟩
  have hactual : row ∈ k7PrefixGroup0006ActualRows := by
    rw [k7PrefixGroup0006ActualRows_eq_filter]
    exact hfiltered
  exact (List.all_eq_true.mp k7PrefixGroup0006_actual_global_root_coefficient_passes)
    row.1 (List.mem_map.mpr ⟨row, hactual, rfl⟩)

#print axioms k7ActualRootCoefficientPass

end Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage
