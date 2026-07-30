import Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage.K6ActualGroup0000Sound
import Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage.K6ActualGroup0001Sound
import Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage.K6ActualGroup0002Sound
import Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage.K6ActualGroup0003Sound
import Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage.K6ActualGroup0004Sound
import Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage.K6ActualGroup0005Sound
import Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage.K6ActualGroup0006Sound
import Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage.K6ActualGroup0007Sound
import Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage.K6ActualGroup0008Sound
import Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage.K6ActualGroup0009Sound
import Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage.K6ActualGroup0010Sound
import Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage.K6ActualGroup0011Sound
import Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage.K6ActualGroup0012Sound
import Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage.K6ActualGroup0013Sound
import Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage.K6ActualGroup0014Sound
import Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage.K6ActualGroup0015Sound
import Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage.K6ActualGroup0016Sound
import Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage.K6ActualGroup0017Sound
import Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage.K6ActualGroup0018Sound
import Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage.K6ActualGroup0019Sound
import Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage.K6ActualGroup0020Sound
import Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage.K6ActualGroup0021Sound
import Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage.K6ActualGroup0022Sound
import Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage.K6ActualGroup0023Sound
import Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage.K6ActualGroup0024Sound
import Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage.K6ActualGroup0025Sound
import Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage.K6ActualGroup0026Sound
import Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage.K6ActualGroup0027Sound
import Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage.K6ActualGroup0028Sound
import Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage.K6ActualGroup0029Sound
import Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage.K6ActualGroup0030Sound
import Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage.K6ActualGroup0031Sound
import Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage.K6ActualGroup0032Sound
import Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage.K6ActualGroup0033Sound
import Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage.K6ActualGroup0034Sound
import Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage.K6ActualGroup0035Sound
import Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage.K6ActualGroup0036Sound
import Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage.K6ActualGroup0037Sound
import Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage.K6ActualGroup0038Sound
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.K6SoundCertificate

namespace Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem k6ActualRootCoefficientPass
    {supportPrefix : List Nat}
    (hmem : supportPrefix ∈ Erdos848.globalMixedFeasiblePrefixesKernel 6)
    (hUpper : Erdos848.globalMixedSupportEndpoint supportPrefix <
      200_000_000) :
    Erdos848.fortyMillionRootPrefixPasses
      Erdos848.GeneratedFortyMillionRootCoefficientCoverage.coefficientCeiling 6
      supportPrefix = true := by
  have hbase : supportPrefix ∈ Erdos848.GeneratedTailGlobalMixedSupportCoverage.k6StandardCertifiedPrefixes := by
    rw [Erdos848.GeneratedTailGlobalMixedSupportCoverage.k6StandardCertifiedPrefixes_eq]
    exact hmem
  unfold Erdos848.GeneratedTailGlobalMixedSupportCoverage.k6StandardCertifiedPrefixes at hbase
  simp only [List.append_assoc] at hbase
  rcases List.mem_append.mp hbase with h0 | hbase
  · obtain ⟨row, hrow, rfl⟩ := List.mem_map.mp h0
    have hfiltered : row ∈ Erdos848.GeneratedTailGlobalMixedSupportCoverage.k6PrefixGroup0000.filter (fun row =>
        decide (Erdos848.globalMixedSupportEndpoint row.1 <
          200_000_000)) :=
      List.mem_filter.mpr ⟨hrow, by simpa using hUpper⟩
    have hactual : row ∈ k6PrefixGroup0000ActualRows := by
      rw [k6PrefixGroup0000ActualRows_eq_filter]
      exact hfiltered
    exact (List.all_eq_true.mp k6PrefixGroup0000_actual_global_root_coefficient_passes)
      row.1 (List.mem_map.mpr ⟨row, hactual, rfl⟩)
  rcases List.mem_append.mp hbase with h1 | hbase
  · obtain ⟨row, hrow, rfl⟩ := List.mem_map.mp h1
    have hfiltered : row ∈ Erdos848.GeneratedTailGlobalMixedSupportCoverage.k6PrefixGroup0001.filter (fun row =>
        decide (Erdos848.globalMixedSupportEndpoint row.1 <
          200_000_000)) :=
      List.mem_filter.mpr ⟨hrow, by simpa using hUpper⟩
    have hactual : row ∈ k6PrefixGroup0001ActualRows := by
      rw [k6PrefixGroup0001ActualRows_eq_filter]
      exact hfiltered
    exact (List.all_eq_true.mp k6PrefixGroup0001_actual_global_root_coefficient_passes)
      row.1 (List.mem_map.mpr ⟨row, hactual, rfl⟩)
  rcases List.mem_append.mp hbase with h2 | hbase
  · obtain ⟨row, hrow, rfl⟩ := List.mem_map.mp h2
    have hfiltered : row ∈ Erdos848.GeneratedTailGlobalMixedSupportCoverage.k6PrefixGroup0002.filter (fun row =>
        decide (Erdos848.globalMixedSupportEndpoint row.1 <
          200_000_000)) :=
      List.mem_filter.mpr ⟨hrow, by simpa using hUpper⟩
    have hactual : row ∈ k6PrefixGroup0002ActualRows := by
      rw [k6PrefixGroup0002ActualRows_eq_filter]
      exact hfiltered
    exact (List.all_eq_true.mp k6PrefixGroup0002_actual_global_root_coefficient_passes)
      row.1 (List.mem_map.mpr ⟨row, hactual, rfl⟩)
  rcases List.mem_append.mp hbase with h3 | hbase
  · obtain ⟨row, hrow, rfl⟩ := List.mem_map.mp h3
    have hfiltered : row ∈ Erdos848.GeneratedTailGlobalMixedSupportCoverage.k6PrefixGroup0003.filter (fun row =>
        decide (Erdos848.globalMixedSupportEndpoint row.1 <
          200_000_000)) :=
      List.mem_filter.mpr ⟨hrow, by simpa using hUpper⟩
    have hactual : row ∈ k6PrefixGroup0003ActualRows := by
      rw [k6PrefixGroup0003ActualRows_eq_filter]
      exact hfiltered
    exact (List.all_eq_true.mp k6PrefixGroup0003_actual_global_root_coefficient_passes)
      row.1 (List.mem_map.mpr ⟨row, hactual, rfl⟩)
  rcases List.mem_append.mp hbase with h4 | hbase
  · obtain ⟨row, hrow, rfl⟩ := List.mem_map.mp h4
    have hfiltered : row ∈ Erdos848.GeneratedTailGlobalMixedSupportCoverage.k6PrefixGroup0004.filter (fun row =>
        decide (Erdos848.globalMixedSupportEndpoint row.1 <
          200_000_000)) :=
      List.mem_filter.mpr ⟨hrow, by simpa using hUpper⟩
    have hactual : row ∈ k6PrefixGroup0004ActualRows := by
      rw [k6PrefixGroup0004ActualRows_eq_filter]
      exact hfiltered
    exact (List.all_eq_true.mp k6PrefixGroup0004_actual_global_root_coefficient_passes)
      row.1 (List.mem_map.mpr ⟨row, hactual, rfl⟩)
  rcases List.mem_append.mp hbase with h5 | hbase
  · obtain ⟨row, hrow, rfl⟩ := List.mem_map.mp h5
    have hfiltered : row ∈ Erdos848.GeneratedTailGlobalMixedSupportCoverage.k6PrefixGroup0005.filter (fun row =>
        decide (Erdos848.globalMixedSupportEndpoint row.1 <
          200_000_000)) :=
      List.mem_filter.mpr ⟨hrow, by simpa using hUpper⟩
    have hactual : row ∈ k6PrefixGroup0005ActualRows := by
      rw [k6PrefixGroup0005ActualRows_eq_filter]
      exact hfiltered
    exact (List.all_eq_true.mp k6PrefixGroup0005_actual_global_root_coefficient_passes)
      row.1 (List.mem_map.mpr ⟨row, hactual, rfl⟩)
  rcases List.mem_append.mp hbase with h6 | hbase
  · obtain ⟨row, hrow, rfl⟩ := List.mem_map.mp h6
    have hfiltered : row ∈ Erdos848.GeneratedTailGlobalMixedSupportCoverage.k6PrefixGroup0006.filter (fun row =>
        decide (Erdos848.globalMixedSupportEndpoint row.1 <
          200_000_000)) :=
      List.mem_filter.mpr ⟨hrow, by simpa using hUpper⟩
    have hactual : row ∈ k6PrefixGroup0006ActualRows := by
      rw [k6PrefixGroup0006ActualRows_eq_filter]
      exact hfiltered
    exact (List.all_eq_true.mp k6PrefixGroup0006_actual_global_root_coefficient_passes)
      row.1 (List.mem_map.mpr ⟨row, hactual, rfl⟩)
  rcases List.mem_append.mp hbase with h7 | hbase
  · obtain ⟨row, hrow, rfl⟩ := List.mem_map.mp h7
    have hfiltered : row ∈ Erdos848.GeneratedTailGlobalMixedSupportCoverage.k6PrefixGroup0007.filter (fun row =>
        decide (Erdos848.globalMixedSupportEndpoint row.1 <
          200_000_000)) :=
      List.mem_filter.mpr ⟨hrow, by simpa using hUpper⟩
    have hactual : row ∈ k6PrefixGroup0007ActualRows := by
      rw [k6PrefixGroup0007ActualRows_eq_filter]
      exact hfiltered
    exact (List.all_eq_true.mp k6PrefixGroup0007_actual_global_root_coefficient_passes)
      row.1 (List.mem_map.mpr ⟨row, hactual, rfl⟩)
  rcases List.mem_append.mp hbase with h8 | hbase
  · obtain ⟨row, hrow, rfl⟩ := List.mem_map.mp h8
    have hfiltered : row ∈ Erdos848.GeneratedTailGlobalMixedSupportCoverage.k6PrefixGroup0008.filter (fun row =>
        decide (Erdos848.globalMixedSupportEndpoint row.1 <
          200_000_000)) :=
      List.mem_filter.mpr ⟨hrow, by simpa using hUpper⟩
    have hactual : row ∈ k6PrefixGroup0008ActualRows := by
      rw [k6PrefixGroup0008ActualRows_eq_filter]
      exact hfiltered
    exact (List.all_eq_true.mp k6PrefixGroup0008_actual_global_root_coefficient_passes)
      row.1 (List.mem_map.mpr ⟨row, hactual, rfl⟩)
  rcases List.mem_append.mp hbase with h9 | hbase
  · obtain ⟨row, hrow, rfl⟩ := List.mem_map.mp h9
    have hfiltered : row ∈ Erdos848.GeneratedTailGlobalMixedSupportCoverage.k6PrefixGroup0009.filter (fun row =>
        decide (Erdos848.globalMixedSupportEndpoint row.1 <
          200_000_000)) :=
      List.mem_filter.mpr ⟨hrow, by simpa using hUpper⟩
    have hactual : row ∈ k6PrefixGroup0009ActualRows := by
      rw [k6PrefixGroup0009ActualRows_eq_filter]
      exact hfiltered
    exact (List.all_eq_true.mp k6PrefixGroup0009_actual_global_root_coefficient_passes)
      row.1 (List.mem_map.mpr ⟨row, hactual, rfl⟩)
  rcases List.mem_append.mp hbase with h10 | hbase
  · obtain ⟨row, hrow, rfl⟩ := List.mem_map.mp h10
    have hfiltered : row ∈ Erdos848.GeneratedTailGlobalMixedSupportCoverage.k6PrefixGroup0010.filter (fun row =>
        decide (Erdos848.globalMixedSupportEndpoint row.1 <
          200_000_000)) :=
      List.mem_filter.mpr ⟨hrow, by simpa using hUpper⟩
    have hactual : row ∈ k6PrefixGroup0010ActualRows := by
      rw [k6PrefixGroup0010ActualRows_eq_filter]
      exact hfiltered
    exact (List.all_eq_true.mp k6PrefixGroup0010_actual_global_root_coefficient_passes)
      row.1 (List.mem_map.mpr ⟨row, hactual, rfl⟩)
  rcases List.mem_append.mp hbase with h11 | hbase
  · obtain ⟨row, hrow, rfl⟩ := List.mem_map.mp h11
    have hfiltered : row ∈ Erdos848.GeneratedTailGlobalMixedSupportCoverage.k6PrefixGroup0011.filter (fun row =>
        decide (Erdos848.globalMixedSupportEndpoint row.1 <
          200_000_000)) :=
      List.mem_filter.mpr ⟨hrow, by simpa using hUpper⟩
    have hactual : row ∈ k6PrefixGroup0011ActualRows := by
      rw [k6PrefixGroup0011ActualRows_eq_filter]
      exact hfiltered
    exact (List.all_eq_true.mp k6PrefixGroup0011_actual_global_root_coefficient_passes)
      row.1 (List.mem_map.mpr ⟨row, hactual, rfl⟩)
  rcases List.mem_append.mp hbase with h12 | hbase
  · obtain ⟨row, hrow, rfl⟩ := List.mem_map.mp h12
    have hfiltered : row ∈ Erdos848.GeneratedTailGlobalMixedSupportCoverage.k6PrefixGroup0012.filter (fun row =>
        decide (Erdos848.globalMixedSupportEndpoint row.1 <
          200_000_000)) :=
      List.mem_filter.mpr ⟨hrow, by simpa using hUpper⟩
    have hactual : row ∈ k6PrefixGroup0012ActualRows := by
      rw [k6PrefixGroup0012ActualRows_eq_filter]
      exact hfiltered
    exact (List.all_eq_true.mp k6PrefixGroup0012_actual_global_root_coefficient_passes)
      row.1 (List.mem_map.mpr ⟨row, hactual, rfl⟩)
  rcases List.mem_append.mp hbase with h13 | hbase
  · obtain ⟨row, hrow, rfl⟩ := List.mem_map.mp h13
    have hfiltered : row ∈ Erdos848.GeneratedTailGlobalMixedSupportCoverage.k6PrefixGroup0013.filter (fun row =>
        decide (Erdos848.globalMixedSupportEndpoint row.1 <
          200_000_000)) :=
      List.mem_filter.mpr ⟨hrow, by simpa using hUpper⟩
    have hactual : row ∈ k6PrefixGroup0013ActualRows := by
      rw [k6PrefixGroup0013ActualRows_eq_filter]
      exact hfiltered
    exact (List.all_eq_true.mp k6PrefixGroup0013_actual_global_root_coefficient_passes)
      row.1 (List.mem_map.mpr ⟨row, hactual, rfl⟩)
  rcases List.mem_append.mp hbase with h14 | hbase
  · obtain ⟨row, hrow, rfl⟩ := List.mem_map.mp h14
    have hfiltered : row ∈ Erdos848.GeneratedTailGlobalMixedSupportCoverage.k6PrefixGroup0014.filter (fun row =>
        decide (Erdos848.globalMixedSupportEndpoint row.1 <
          200_000_000)) :=
      List.mem_filter.mpr ⟨hrow, by simpa using hUpper⟩
    have hactual : row ∈ k6PrefixGroup0014ActualRows := by
      rw [k6PrefixGroup0014ActualRows_eq_filter]
      exact hfiltered
    exact (List.all_eq_true.mp k6PrefixGroup0014_actual_global_root_coefficient_passes)
      row.1 (List.mem_map.mpr ⟨row, hactual, rfl⟩)
  rcases List.mem_append.mp hbase with h15 | hbase
  · obtain ⟨row, hrow, rfl⟩ := List.mem_map.mp h15
    have hfiltered : row ∈ Erdos848.GeneratedTailGlobalMixedSupportCoverage.k6PrefixGroup0015.filter (fun row =>
        decide (Erdos848.globalMixedSupportEndpoint row.1 <
          200_000_000)) :=
      List.mem_filter.mpr ⟨hrow, by simpa using hUpper⟩
    have hactual : row ∈ k6PrefixGroup0015ActualRows := by
      rw [k6PrefixGroup0015ActualRows_eq_filter]
      exact hfiltered
    exact (List.all_eq_true.mp k6PrefixGroup0015_actual_global_root_coefficient_passes)
      row.1 (List.mem_map.mpr ⟨row, hactual, rfl⟩)
  rcases List.mem_append.mp hbase with h16 | hbase
  · obtain ⟨row, hrow, rfl⟩ := List.mem_map.mp h16
    have hfiltered : row ∈ Erdos848.GeneratedTailGlobalMixedSupportCoverage.k6PrefixGroup0016.filter (fun row =>
        decide (Erdos848.globalMixedSupportEndpoint row.1 <
          200_000_000)) :=
      List.mem_filter.mpr ⟨hrow, by simpa using hUpper⟩
    have hactual : row ∈ k6PrefixGroup0016ActualRows := by
      rw [k6PrefixGroup0016ActualRows_eq_filter]
      exact hfiltered
    exact (List.all_eq_true.mp k6PrefixGroup0016_actual_global_root_coefficient_passes)
      row.1 (List.mem_map.mpr ⟨row, hactual, rfl⟩)
  rcases List.mem_append.mp hbase with h17 | hbase
  · obtain ⟨row, hrow, rfl⟩ := List.mem_map.mp h17
    have hfiltered : row ∈ Erdos848.GeneratedTailGlobalMixedSupportCoverage.k6PrefixGroup0017.filter (fun row =>
        decide (Erdos848.globalMixedSupportEndpoint row.1 <
          200_000_000)) :=
      List.mem_filter.mpr ⟨hrow, by simpa using hUpper⟩
    have hactual : row ∈ k6PrefixGroup0017ActualRows := by
      rw [k6PrefixGroup0017ActualRows_eq_filter]
      exact hfiltered
    exact (List.all_eq_true.mp k6PrefixGroup0017_actual_global_root_coefficient_passes)
      row.1 (List.mem_map.mpr ⟨row, hactual, rfl⟩)
  rcases List.mem_append.mp hbase with h18 | hbase
  · obtain ⟨row, hrow, rfl⟩ := List.mem_map.mp h18
    have hfiltered : row ∈ Erdos848.GeneratedTailGlobalMixedSupportCoverage.k6PrefixGroup0018.filter (fun row =>
        decide (Erdos848.globalMixedSupportEndpoint row.1 <
          200_000_000)) :=
      List.mem_filter.mpr ⟨hrow, by simpa using hUpper⟩
    have hactual : row ∈ k6PrefixGroup0018ActualRows := by
      rw [k6PrefixGroup0018ActualRows_eq_filter]
      exact hfiltered
    exact (List.all_eq_true.mp k6PrefixGroup0018_actual_global_root_coefficient_passes)
      row.1 (List.mem_map.mpr ⟨row, hactual, rfl⟩)
  rcases List.mem_append.mp hbase with h19 | hbase
  · obtain ⟨row, hrow, rfl⟩ := List.mem_map.mp h19
    have hfiltered : row ∈ Erdos848.GeneratedTailGlobalMixedSupportCoverage.k6PrefixGroup0019.filter (fun row =>
        decide (Erdos848.globalMixedSupportEndpoint row.1 <
          200_000_000)) :=
      List.mem_filter.mpr ⟨hrow, by simpa using hUpper⟩
    have hactual : row ∈ k6PrefixGroup0019ActualRows := by
      rw [k6PrefixGroup0019ActualRows_eq_filter]
      exact hfiltered
    exact (List.all_eq_true.mp k6PrefixGroup0019_actual_global_root_coefficient_passes)
      row.1 (List.mem_map.mpr ⟨row, hactual, rfl⟩)
  rcases List.mem_append.mp hbase with h20 | hbase
  · obtain ⟨row, hrow, rfl⟩ := List.mem_map.mp h20
    have hfiltered : row ∈ Erdos848.GeneratedTailGlobalMixedSupportCoverage.k6PrefixGroup0020.filter (fun row =>
        decide (Erdos848.globalMixedSupportEndpoint row.1 <
          200_000_000)) :=
      List.mem_filter.mpr ⟨hrow, by simpa using hUpper⟩
    have hactual : row ∈ k6PrefixGroup0020ActualRows := by
      rw [k6PrefixGroup0020ActualRows_eq_filter]
      exact hfiltered
    exact (List.all_eq_true.mp k6PrefixGroup0020_actual_global_root_coefficient_passes)
      row.1 (List.mem_map.mpr ⟨row, hactual, rfl⟩)
  rcases List.mem_append.mp hbase with h21 | hbase
  · obtain ⟨row, hrow, rfl⟩ := List.mem_map.mp h21
    have hfiltered : row ∈ Erdos848.GeneratedTailGlobalMixedSupportCoverage.k6PrefixGroup0021.filter (fun row =>
        decide (Erdos848.globalMixedSupportEndpoint row.1 <
          200_000_000)) :=
      List.mem_filter.mpr ⟨hrow, by simpa using hUpper⟩
    have hactual : row ∈ k6PrefixGroup0021ActualRows := by
      rw [k6PrefixGroup0021ActualRows_eq_filter]
      exact hfiltered
    exact (List.all_eq_true.mp k6PrefixGroup0021_actual_global_root_coefficient_passes)
      row.1 (List.mem_map.mpr ⟨row, hactual, rfl⟩)
  rcases List.mem_append.mp hbase with h22 | hbase
  · obtain ⟨row, hrow, rfl⟩ := List.mem_map.mp h22
    have hfiltered : row ∈ Erdos848.GeneratedTailGlobalMixedSupportCoverage.k6PrefixGroup0022.filter (fun row =>
        decide (Erdos848.globalMixedSupportEndpoint row.1 <
          200_000_000)) :=
      List.mem_filter.mpr ⟨hrow, by simpa using hUpper⟩
    have hactual : row ∈ k6PrefixGroup0022ActualRows := by
      rw [k6PrefixGroup0022ActualRows_eq_filter]
      exact hfiltered
    exact (List.all_eq_true.mp k6PrefixGroup0022_actual_global_root_coefficient_passes)
      row.1 (List.mem_map.mpr ⟨row, hactual, rfl⟩)
  rcases List.mem_append.mp hbase with h23 | hbase
  · obtain ⟨row, hrow, rfl⟩ := List.mem_map.mp h23
    have hfiltered : row ∈ Erdos848.GeneratedTailGlobalMixedSupportCoverage.k6PrefixGroup0023.filter (fun row =>
        decide (Erdos848.globalMixedSupportEndpoint row.1 <
          200_000_000)) :=
      List.mem_filter.mpr ⟨hrow, by simpa using hUpper⟩
    have hactual : row ∈ k6PrefixGroup0023ActualRows := by
      rw [k6PrefixGroup0023ActualRows_eq_filter]
      exact hfiltered
    exact (List.all_eq_true.mp k6PrefixGroup0023_actual_global_root_coefficient_passes)
      row.1 (List.mem_map.mpr ⟨row, hactual, rfl⟩)
  rcases List.mem_append.mp hbase with h24 | hbase
  · obtain ⟨row, hrow, rfl⟩ := List.mem_map.mp h24
    have hfiltered : row ∈ Erdos848.GeneratedTailGlobalMixedSupportCoverage.k6PrefixGroup0024.filter (fun row =>
        decide (Erdos848.globalMixedSupportEndpoint row.1 <
          200_000_000)) :=
      List.mem_filter.mpr ⟨hrow, by simpa using hUpper⟩
    have hactual : row ∈ k6PrefixGroup0024ActualRows := by
      rw [k6PrefixGroup0024ActualRows_eq_filter]
      exact hfiltered
    exact (List.all_eq_true.mp k6PrefixGroup0024_actual_global_root_coefficient_passes)
      row.1 (List.mem_map.mpr ⟨row, hactual, rfl⟩)
  rcases List.mem_append.mp hbase with h25 | hbase
  · obtain ⟨row, hrow, rfl⟩ := List.mem_map.mp h25
    have hfiltered : row ∈ Erdos848.GeneratedTailGlobalMixedSupportCoverage.k6PrefixGroup0025.filter (fun row =>
        decide (Erdos848.globalMixedSupportEndpoint row.1 <
          200_000_000)) :=
      List.mem_filter.mpr ⟨hrow, by simpa using hUpper⟩
    have hactual : row ∈ k6PrefixGroup0025ActualRows := by
      rw [k6PrefixGroup0025ActualRows_eq_filter]
      exact hfiltered
    exact (List.all_eq_true.mp k6PrefixGroup0025_actual_global_root_coefficient_passes)
      row.1 (List.mem_map.mpr ⟨row, hactual, rfl⟩)
  rcases List.mem_append.mp hbase with h26 | hbase
  · obtain ⟨row, hrow, rfl⟩ := List.mem_map.mp h26
    have hfiltered : row ∈ Erdos848.GeneratedTailGlobalMixedSupportCoverage.k6PrefixGroup0026.filter (fun row =>
        decide (Erdos848.globalMixedSupportEndpoint row.1 <
          200_000_000)) :=
      List.mem_filter.mpr ⟨hrow, by simpa using hUpper⟩
    have hactual : row ∈ k6PrefixGroup0026ActualRows := by
      rw [k6PrefixGroup0026ActualRows_eq_filter]
      exact hfiltered
    exact (List.all_eq_true.mp k6PrefixGroup0026_actual_global_root_coefficient_passes)
      row.1 (List.mem_map.mpr ⟨row, hactual, rfl⟩)
  rcases List.mem_append.mp hbase with h27 | hbase
  · obtain ⟨row, hrow, rfl⟩ := List.mem_map.mp h27
    have hfiltered : row ∈ Erdos848.GeneratedTailGlobalMixedSupportCoverage.k6PrefixGroup0027.filter (fun row =>
        decide (Erdos848.globalMixedSupportEndpoint row.1 <
          200_000_000)) :=
      List.mem_filter.mpr ⟨hrow, by simpa using hUpper⟩
    have hactual : row ∈ k6PrefixGroup0027ActualRows := by
      rw [k6PrefixGroup0027ActualRows_eq_filter]
      exact hfiltered
    exact (List.all_eq_true.mp k6PrefixGroup0027_actual_global_root_coefficient_passes)
      row.1 (List.mem_map.mpr ⟨row, hactual, rfl⟩)
  rcases List.mem_append.mp hbase with h28 | hbase
  · obtain ⟨row, hrow, rfl⟩ := List.mem_map.mp h28
    have hfiltered : row ∈ Erdos848.GeneratedTailGlobalMixedSupportCoverage.k6PrefixGroup0028.filter (fun row =>
        decide (Erdos848.globalMixedSupportEndpoint row.1 <
          200_000_000)) :=
      List.mem_filter.mpr ⟨hrow, by simpa using hUpper⟩
    have hactual : row ∈ k6PrefixGroup0028ActualRows := by
      rw [k6PrefixGroup0028ActualRows_eq_filter]
      exact hfiltered
    exact (List.all_eq_true.mp k6PrefixGroup0028_actual_global_root_coefficient_passes)
      row.1 (List.mem_map.mpr ⟨row, hactual, rfl⟩)
  rcases List.mem_append.mp hbase with h29 | hbase
  · obtain ⟨row, hrow, rfl⟩ := List.mem_map.mp h29
    have hfiltered : row ∈ Erdos848.GeneratedTailGlobalMixedSupportCoverage.k6PrefixGroup0029.filter (fun row =>
        decide (Erdos848.globalMixedSupportEndpoint row.1 <
          200_000_000)) :=
      List.mem_filter.mpr ⟨hrow, by simpa using hUpper⟩
    have hactual : row ∈ k6PrefixGroup0029ActualRows := by
      rw [k6PrefixGroup0029ActualRows_eq_filter]
      exact hfiltered
    exact (List.all_eq_true.mp k6PrefixGroup0029_actual_global_root_coefficient_passes)
      row.1 (List.mem_map.mpr ⟨row, hactual, rfl⟩)
  rcases List.mem_append.mp hbase with h30 | hbase
  · obtain ⟨row, hrow, rfl⟩ := List.mem_map.mp h30
    have hfiltered : row ∈ Erdos848.GeneratedTailGlobalMixedSupportCoverage.k6PrefixGroup0030.filter (fun row =>
        decide (Erdos848.globalMixedSupportEndpoint row.1 <
          200_000_000)) :=
      List.mem_filter.mpr ⟨hrow, by simpa using hUpper⟩
    have hactual : row ∈ k6PrefixGroup0030ActualRows := by
      rw [k6PrefixGroup0030ActualRows_eq_filter]
      exact hfiltered
    exact (List.all_eq_true.mp k6PrefixGroup0030_actual_global_root_coefficient_passes)
      row.1 (List.mem_map.mpr ⟨row, hactual, rfl⟩)
  rcases List.mem_append.mp hbase with h31 | hbase
  · obtain ⟨row, hrow, rfl⟩ := List.mem_map.mp h31
    have hfiltered : row ∈ Erdos848.GeneratedTailGlobalMixedSupportCoverage.k6PrefixGroup0031.filter (fun row =>
        decide (Erdos848.globalMixedSupportEndpoint row.1 <
          200_000_000)) :=
      List.mem_filter.mpr ⟨hrow, by simpa using hUpper⟩
    have hactual : row ∈ k6PrefixGroup0031ActualRows := by
      rw [k6PrefixGroup0031ActualRows_eq_filter]
      exact hfiltered
    exact (List.all_eq_true.mp k6PrefixGroup0031_actual_global_root_coefficient_passes)
      row.1 (List.mem_map.mpr ⟨row, hactual, rfl⟩)
  rcases List.mem_append.mp hbase with h32 | hbase
  · obtain ⟨row, hrow, rfl⟩ := List.mem_map.mp h32
    have hfiltered : row ∈ Erdos848.GeneratedTailGlobalMixedSupportCoverage.k6PrefixGroup0032.filter (fun row =>
        decide (Erdos848.globalMixedSupportEndpoint row.1 <
          200_000_000)) :=
      List.mem_filter.mpr ⟨hrow, by simpa using hUpper⟩
    have hactual : row ∈ k6PrefixGroup0032ActualRows := by
      rw [k6PrefixGroup0032ActualRows_eq_filter]
      exact hfiltered
    exact (List.all_eq_true.mp k6PrefixGroup0032_actual_global_root_coefficient_passes)
      row.1 (List.mem_map.mpr ⟨row, hactual, rfl⟩)
  rcases List.mem_append.mp hbase with h33 | hbase
  · obtain ⟨row, hrow, rfl⟩ := List.mem_map.mp h33
    have hfiltered : row ∈ Erdos848.GeneratedTailGlobalMixedSupportCoverage.k6PrefixGroup0033.filter (fun row =>
        decide (Erdos848.globalMixedSupportEndpoint row.1 <
          200_000_000)) :=
      List.mem_filter.mpr ⟨hrow, by simpa using hUpper⟩
    have hactual : row ∈ k6PrefixGroup0033ActualRows := by
      rw [k6PrefixGroup0033ActualRows_eq_filter]
      exact hfiltered
    exact (List.all_eq_true.mp k6PrefixGroup0033_actual_global_root_coefficient_passes)
      row.1 (List.mem_map.mpr ⟨row, hactual, rfl⟩)
  rcases List.mem_append.mp hbase with h34 | hbase
  · obtain ⟨row, hrow, rfl⟩ := List.mem_map.mp h34
    have hfiltered : row ∈ Erdos848.GeneratedTailGlobalMixedSupportCoverage.k6PrefixGroup0034.filter (fun row =>
        decide (Erdos848.globalMixedSupportEndpoint row.1 <
          200_000_000)) :=
      List.mem_filter.mpr ⟨hrow, by simpa using hUpper⟩
    have hactual : row ∈ k6PrefixGroup0034ActualRows := by
      rw [k6PrefixGroup0034ActualRows_eq_filter]
      exact hfiltered
    exact (List.all_eq_true.mp k6PrefixGroup0034_actual_global_root_coefficient_passes)
      row.1 (List.mem_map.mpr ⟨row, hactual, rfl⟩)
  rcases List.mem_append.mp hbase with h35 | hbase
  · obtain ⟨row, hrow, rfl⟩ := List.mem_map.mp h35
    have hfiltered : row ∈ Erdos848.GeneratedTailGlobalMixedSupportCoverage.k6PrefixGroup0035.filter (fun row =>
        decide (Erdos848.globalMixedSupportEndpoint row.1 <
          200_000_000)) :=
      List.mem_filter.mpr ⟨hrow, by simpa using hUpper⟩
    have hactual : row ∈ k6PrefixGroup0035ActualRows := by
      rw [k6PrefixGroup0035ActualRows_eq_filter]
      exact hfiltered
    exact (List.all_eq_true.mp k6PrefixGroup0035_actual_global_root_coefficient_passes)
      row.1 (List.mem_map.mpr ⟨row, hactual, rfl⟩)
  rcases List.mem_append.mp hbase with h36 | hbase
  · obtain ⟨row, hrow, rfl⟩ := List.mem_map.mp h36
    have hfiltered : row ∈ Erdos848.GeneratedTailGlobalMixedSupportCoverage.k6PrefixGroup0036.filter (fun row =>
        decide (Erdos848.globalMixedSupportEndpoint row.1 <
          200_000_000)) :=
      List.mem_filter.mpr ⟨hrow, by simpa using hUpper⟩
    have hactual : row ∈ k6PrefixGroup0036ActualRows := by
      rw [k6PrefixGroup0036ActualRows_eq_filter]
      exact hfiltered
    exact (List.all_eq_true.mp k6PrefixGroup0036_actual_global_root_coefficient_passes)
      row.1 (List.mem_map.mpr ⟨row, hactual, rfl⟩)
  rcases List.mem_append.mp hbase with h37 | hbase
  · obtain ⟨row, hrow, rfl⟩ := List.mem_map.mp h37
    have hfiltered : row ∈ Erdos848.GeneratedTailGlobalMixedSupportCoverage.k6PrefixGroup0037.filter (fun row =>
        decide (Erdos848.globalMixedSupportEndpoint row.1 <
          200_000_000)) :=
      List.mem_filter.mpr ⟨hrow, by simpa using hUpper⟩
    have hactual : row ∈ k6PrefixGroup0037ActualRows := by
      rw [k6PrefixGroup0037ActualRows_eq_filter]
      exact hfiltered
    exact (List.all_eq_true.mp k6PrefixGroup0037_actual_global_root_coefficient_passes)
      row.1 (List.mem_map.mpr ⟨row, hactual, rfl⟩)
  obtain ⟨row, hrow, rfl⟩ := List.mem_map.mp hbase
  have hfiltered : row ∈ Erdos848.GeneratedTailGlobalMixedSupportCoverage.k6PrefixGroup0038.filter (fun row =>
      decide (Erdos848.globalMixedSupportEndpoint row.1 <
        200_000_000)) :=
    List.mem_filter.mpr ⟨hrow, by simpa using hUpper⟩
  have hactual : row ∈ k6PrefixGroup0038ActualRows := by
    rw [k6PrefixGroup0038ActualRows_eq_filter]
    exact hfiltered
  exact (List.all_eq_true.mp k6PrefixGroup0038_actual_global_root_coefficient_passes)
    row.1 (List.mem_map.mpr ⟨row, hactual, rfl⟩)

#print axioms k6ActualRootCoefficientPass

end Erdos848.GeneratedFortyMillionActualRootCoefficientCoverage
