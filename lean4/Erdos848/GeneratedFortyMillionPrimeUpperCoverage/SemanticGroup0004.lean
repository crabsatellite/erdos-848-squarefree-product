import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Certificate

namespace Erdos848.GeneratedFortyMillionPrimeUpperCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def primeUpperBlockGroup0004 : List (Nat × Nat × Nat) :=
  [(1620005, 1636388, 123714),
    (1636389, 1652772, 124822),
    (1652773, 1669156, 125983),
    (1669157, 1685540, 127125),
    (1685541, 1701924, 128286),
    (1701925, 1718308, 129403),
    (1718309, 1734692, 130528),
    (1734693, 1751076, 131688),
    (1751077, 1767460, 132792),
    (1767461, 1783844, 133950),
    (1783845, 1800228, 135089),
    (1800229, 1816612, 136232),
    (1816613, 1832996, 137381),
    (1832997, 1849380, 138502),
    (1849381, 1865764, 139659),
    (1865765, 1882148, 140800)]

theorem primeUpperBlockGroup0004_stop_count
    {block : Nat × Nat × Nat}
    (hmem : block ∈ primeUpperBlockGroup0004) :
    Nat.primeCounting block.2.1 <= block.2.2 := by
  simp only [primeUpperBlockGroup0004, List.mem_cons, List.not_mem_nil, or_false] at hmem
  rcases hmem with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact primeCounting_1636388_le
  · exact primeCounting_1652772_le
  · exact primeCounting_1669156_le
  · exact primeCounting_1685540_le
  · exact primeCounting_1701924_le
  · exact primeCounting_1718308_le
  · exact primeCounting_1734692_le
  · exact primeCounting_1751076_le
  · exact primeCounting_1767460_le
  · exact primeCounting_1783844_le
  · exact primeCounting_1800228_le
  · exact primeCounting_1816612_le
  · exact primeCounting_1832996_le
  · exact primeCounting_1849380_le
  · exact primeCounting_1865764_le
  · exact primeCounting_1882148_le

theorem primeUpperBlockGroup0004_cover
    {y : Nat} (hLower : 1620005 <= y)
    (hUpper : y <= 1882148) :
    ∃ block ∈ primeUpperBlockGroup0004, block.1 <= y ∧ y <= block.2.1 := by
  by_cases h00 : y <= 1636388
  · refine ⟨(1620005, 1636388, 123714), ?_, ?_, h00⟩
    · simp [primeUpperBlockGroup0004]
    · omega
  by_cases h01 : y <= 1652772
  · refine ⟨(1636389, 1652772, 124822), ?_, ?_, h01⟩
    · simp [primeUpperBlockGroup0004]
    · omega
  by_cases h02 : y <= 1669156
  · refine ⟨(1652773, 1669156, 125983), ?_, ?_, h02⟩
    · simp [primeUpperBlockGroup0004]
    · omega
  by_cases h03 : y <= 1685540
  · refine ⟨(1669157, 1685540, 127125), ?_, ?_, h03⟩
    · simp [primeUpperBlockGroup0004]
    · omega
  by_cases h04 : y <= 1701924
  · refine ⟨(1685541, 1701924, 128286), ?_, ?_, h04⟩
    · simp [primeUpperBlockGroup0004]
    · omega
  by_cases h05 : y <= 1718308
  · refine ⟨(1701925, 1718308, 129403), ?_, ?_, h05⟩
    · simp [primeUpperBlockGroup0004]
    · omega
  by_cases h06 : y <= 1734692
  · refine ⟨(1718309, 1734692, 130528), ?_, ?_, h06⟩
    · simp [primeUpperBlockGroup0004]
    · omega
  by_cases h07 : y <= 1751076
  · refine ⟨(1734693, 1751076, 131688), ?_, ?_, h07⟩
    · simp [primeUpperBlockGroup0004]
    · omega
  by_cases h08 : y <= 1767460
  · refine ⟨(1751077, 1767460, 132792), ?_, ?_, h08⟩
    · simp [primeUpperBlockGroup0004]
    · omega
  by_cases h09 : y <= 1783844
  · refine ⟨(1767461, 1783844, 133950), ?_, ?_, h09⟩
    · simp [primeUpperBlockGroup0004]
    · omega
  by_cases h10 : y <= 1800228
  · refine ⟨(1783845, 1800228, 135089), ?_, ?_, h10⟩
    · simp [primeUpperBlockGroup0004]
    · omega
  by_cases h11 : y <= 1816612
  · refine ⟨(1800229, 1816612, 136232), ?_, ?_, h11⟩
    · simp [primeUpperBlockGroup0004]
    · omega
  by_cases h12 : y <= 1832996
  · refine ⟨(1816613, 1832996, 137381), ?_, ?_, h12⟩
    · simp [primeUpperBlockGroup0004]
    · omega
  by_cases h13 : y <= 1849380
  · refine ⟨(1832997, 1849380, 138502), ?_, ?_, h13⟩
    · simp [primeUpperBlockGroup0004]
    · omega
  by_cases h14 : y <= 1865764
  · refine ⟨(1849381, 1865764, 139659), ?_, ?_, h14⟩
    · simp [primeUpperBlockGroup0004]
    · omega
  · refine ⟨(1865765, 1882148, 140800), ?_, ?_, ?_⟩
    · simp [primeUpperBlockGroup0004]
    · omega
    · omega

end Erdos848.GeneratedFortyMillionPrimeUpperCoverage
