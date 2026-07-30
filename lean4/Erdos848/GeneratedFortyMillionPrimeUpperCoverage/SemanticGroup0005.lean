import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Certificate

namespace Erdos848.GeneratedFortyMillionPrimeUpperCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def primeUpperBlockGroup0005 : List (Nat × Nat × Nat) :=
  [(1882149, 1898532, 141933),
    (1898533, 1914916, 143064),
    (1914917, 1931300, 144210),
    (1931301, 1947684, 145354),
    (1947685, 1964068, 146470),
    (1964069, 1980452, 147568),
    (1980453, 1996836, 148709),
    (1996837, 2013220, 149850),
    (2013221, 2029604, 150991),
    (2029605, 2045988, 152117),
    (2045989, 2062372, 153235),
    (2062373, 2078756, 154353),
    (2078757, 2095140, 155475),
    (2095141, 2111524, 156612),
    (2111525, 2127908, 157728),
    (2127909, 2144292, 158863)]

theorem primeUpperBlockGroup0005_stop_count
    {block : Nat × Nat × Nat}
    (hmem : block ∈ primeUpperBlockGroup0005) :
    Nat.primeCounting block.2.1 <= block.2.2 := by
  simp only [primeUpperBlockGroup0005, List.mem_cons, List.not_mem_nil, or_false] at hmem
  rcases hmem with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact primeCounting_1898532_le
  · exact primeCounting_1914916_le
  · exact primeCounting_1931300_le
  · exact primeCounting_1947684_le
  · exact primeCounting_1964068_le
  · exact primeCounting_1980452_le
  · exact primeCounting_1996836_le
  · exact primeCounting_2013220_le
  · exact primeCounting_2029604_le
  · exact primeCounting_2045988_le
  · exact primeCounting_2062372_le
  · exact primeCounting_2078756_le
  · exact primeCounting_2095140_le
  · exact primeCounting_2111524_le
  · exact primeCounting_2127908_le
  · exact primeCounting_2144292_le

theorem primeUpperBlockGroup0005_cover
    {y : Nat} (hLower : 1882149 <= y)
    (hUpper : y <= 2144292) :
    ∃ block ∈ primeUpperBlockGroup0005, block.1 <= y ∧ y <= block.2.1 := by
  by_cases h00 : y <= 1898532
  · refine ⟨(1882149, 1898532, 141933), ?_, ?_, h00⟩
    · simp [primeUpperBlockGroup0005]
    · omega
  by_cases h01 : y <= 1914916
  · refine ⟨(1898533, 1914916, 143064), ?_, ?_, h01⟩
    · simp [primeUpperBlockGroup0005]
    · omega
  by_cases h02 : y <= 1931300
  · refine ⟨(1914917, 1931300, 144210), ?_, ?_, h02⟩
    · simp [primeUpperBlockGroup0005]
    · omega
  by_cases h03 : y <= 1947684
  · refine ⟨(1931301, 1947684, 145354), ?_, ?_, h03⟩
    · simp [primeUpperBlockGroup0005]
    · omega
  by_cases h04 : y <= 1964068
  · refine ⟨(1947685, 1964068, 146470), ?_, ?_, h04⟩
    · simp [primeUpperBlockGroup0005]
    · omega
  by_cases h05 : y <= 1980452
  · refine ⟨(1964069, 1980452, 147568), ?_, ?_, h05⟩
    · simp [primeUpperBlockGroup0005]
    · omega
  by_cases h06 : y <= 1996836
  · refine ⟨(1980453, 1996836, 148709), ?_, ?_, h06⟩
    · simp [primeUpperBlockGroup0005]
    · omega
  by_cases h07 : y <= 2013220
  · refine ⟨(1996837, 2013220, 149850), ?_, ?_, h07⟩
    · simp [primeUpperBlockGroup0005]
    · omega
  by_cases h08 : y <= 2029604
  · refine ⟨(2013221, 2029604, 150991), ?_, ?_, h08⟩
    · simp [primeUpperBlockGroup0005]
    · omega
  by_cases h09 : y <= 2045988
  · refine ⟨(2029605, 2045988, 152117), ?_, ?_, h09⟩
    · simp [primeUpperBlockGroup0005]
    · omega
  by_cases h10 : y <= 2062372
  · refine ⟨(2045989, 2062372, 153235), ?_, ?_, h10⟩
    · simp [primeUpperBlockGroup0005]
    · omega
  by_cases h11 : y <= 2078756
  · refine ⟨(2062373, 2078756, 154353), ?_, ?_, h11⟩
    · simp [primeUpperBlockGroup0005]
    · omega
  by_cases h12 : y <= 2095140
  · refine ⟨(2078757, 2095140, 155475), ?_, ?_, h12⟩
    · simp [primeUpperBlockGroup0005]
    · omega
  by_cases h13 : y <= 2111524
  · refine ⟨(2095141, 2111524, 156612), ?_, ?_, h13⟩
    · simp [primeUpperBlockGroup0005]
    · omega
  by_cases h14 : y <= 2127908
  · refine ⟨(2111525, 2127908, 157728), ?_, ?_, h14⟩
    · simp [primeUpperBlockGroup0005]
    · omega
  · refine ⟨(2127909, 2144292, 158863), ?_, ?_, ?_⟩
    · simp [primeUpperBlockGroup0005]
    · omega
    · omega

end Erdos848.GeneratedFortyMillionPrimeUpperCoverage
