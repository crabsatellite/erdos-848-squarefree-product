import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Certificate

namespace Erdos848.GeneratedFortyMillionPrimeUpperCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def primeUpperBlockGroup0007 : List (Nat × Nat × Nat) :=
  [(2406437, 2422820, 177854),
    (2422821, 2439204, 178934),
    (2439205, 2455588, 180066),
    (2455589, 2471972, 181176),
    (2471973, 2488356, 182291),
    (2488357, 2504740, 183397),
    (2504741, 2521124, 184498),
    (2521125, 2537508, 185621),
    (2537509, 2553892, 186723),
    (2553893, 2570276, 187828),
    (2570277, 2586660, 188973),
    (2586661, 2603044, 190075),
    (2603045, 2619428, 191183),
    (2619429, 2635812, 192288),
    (2635813, 2652196, 193413),
    (2652197, 2668580, 194524)]

theorem primeUpperBlockGroup0007_stop_count
    {block : Nat × Nat × Nat}
    (hmem : block ∈ primeUpperBlockGroup0007) :
    Nat.primeCounting block.2.1 <= block.2.2 := by
  simp only [primeUpperBlockGroup0007, List.mem_cons, List.not_mem_nil, or_false] at hmem
  rcases hmem with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact primeCounting_2422820_le
  · exact primeCounting_2439204_le
  · exact primeCounting_2455588_le
  · exact primeCounting_2471972_le
  · exact primeCounting_2488356_le
  · exact primeCounting_2504740_le
  · exact primeCounting_2521124_le
  · exact primeCounting_2537508_le
  · exact primeCounting_2553892_le
  · exact primeCounting_2570276_le
  · exact primeCounting_2586660_le
  · exact primeCounting_2603044_le
  · exact primeCounting_2619428_le
  · exact primeCounting_2635812_le
  · exact primeCounting_2652196_le
  · exact primeCounting_2668580_le

theorem primeUpperBlockGroup0007_cover
    {y : Nat} (hLower : 2406437 <= y)
    (hUpper : y <= 2668580) :
    ∃ block ∈ primeUpperBlockGroup0007, block.1 <= y ∧ y <= block.2.1 := by
  by_cases h00 : y <= 2422820
  · refine ⟨(2406437, 2422820, 177854), ?_, ?_, h00⟩
    · simp [primeUpperBlockGroup0007]
    · omega
  by_cases h01 : y <= 2439204
  · refine ⟨(2422821, 2439204, 178934), ?_, ?_, h01⟩
    · simp [primeUpperBlockGroup0007]
    · omega
  by_cases h02 : y <= 2455588
  · refine ⟨(2439205, 2455588, 180066), ?_, ?_, h02⟩
    · simp [primeUpperBlockGroup0007]
    · omega
  by_cases h03 : y <= 2471972
  · refine ⟨(2455589, 2471972, 181176), ?_, ?_, h03⟩
    · simp [primeUpperBlockGroup0007]
    · omega
  by_cases h04 : y <= 2488356
  · refine ⟨(2471973, 2488356, 182291), ?_, ?_, h04⟩
    · simp [primeUpperBlockGroup0007]
    · omega
  by_cases h05 : y <= 2504740
  · refine ⟨(2488357, 2504740, 183397), ?_, ?_, h05⟩
    · simp [primeUpperBlockGroup0007]
    · omega
  by_cases h06 : y <= 2521124
  · refine ⟨(2504741, 2521124, 184498), ?_, ?_, h06⟩
    · simp [primeUpperBlockGroup0007]
    · omega
  by_cases h07 : y <= 2537508
  · refine ⟨(2521125, 2537508, 185621), ?_, ?_, h07⟩
    · simp [primeUpperBlockGroup0007]
    · omega
  by_cases h08 : y <= 2553892
  · refine ⟨(2537509, 2553892, 186723), ?_, ?_, h08⟩
    · simp [primeUpperBlockGroup0007]
    · omega
  by_cases h09 : y <= 2570276
  · refine ⟨(2553893, 2570276, 187828), ?_, ?_, h09⟩
    · simp [primeUpperBlockGroup0007]
    · omega
  by_cases h10 : y <= 2586660
  · refine ⟨(2570277, 2586660, 188973), ?_, ?_, h10⟩
    · simp [primeUpperBlockGroup0007]
    · omega
  by_cases h11 : y <= 2603044
  · refine ⟨(2586661, 2603044, 190075), ?_, ?_, h11⟩
    · simp [primeUpperBlockGroup0007]
    · omega
  by_cases h12 : y <= 2619428
  · refine ⟨(2603045, 2619428, 191183), ?_, ?_, h12⟩
    · simp [primeUpperBlockGroup0007]
    · omega
  by_cases h13 : y <= 2635812
  · refine ⟨(2619429, 2635812, 192288), ?_, ?_, h13⟩
    · simp [primeUpperBlockGroup0007]
    · omega
  by_cases h14 : y <= 2652196
  · refine ⟨(2635813, 2652196, 193413), ?_, ?_, h14⟩
    · simp [primeUpperBlockGroup0007]
    · omega
  · refine ⟨(2652197, 2668580, 194524), ?_, ?_, ?_⟩
    · simp [primeUpperBlockGroup0007]
    · omega
    · omega

end Erdos848.GeneratedFortyMillionPrimeUpperCoverage
