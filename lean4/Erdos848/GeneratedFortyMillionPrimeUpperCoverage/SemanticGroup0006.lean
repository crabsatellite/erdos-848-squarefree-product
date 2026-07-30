import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Certificate

namespace Erdos848.GeneratedFortyMillionPrimeUpperCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def primeUpperBlockGroup0006 : List (Nat × Nat × Nat) :=
  [(2144293, 2160676, 160006),
    (2160677, 2177060, 161121),
    (2177061, 2193444, 162237),
    (2193445, 2209828, 163347),
    (2209829, 2226212, 164442),
    (2226213, 2242596, 165569),
    (2242597, 2258980, 166706),
    (2258981, 2275364, 167861),
    (2275365, 2291748, 168946),
    (2291749, 2308132, 170064),
    (2308133, 2324516, 171162),
    (2324517, 2340900, 172273),
    (2340901, 2357284, 173367),
    (2357285, 2373668, 174503),
    (2373669, 2390052, 175626),
    (2390053, 2406436, 176726)]

theorem primeUpperBlockGroup0006_stop_count
    {block : Nat × Nat × Nat}
    (hmem : block ∈ primeUpperBlockGroup0006) :
    Nat.primeCounting block.2.1 <= block.2.2 := by
  simp only [primeUpperBlockGroup0006, List.mem_cons, List.not_mem_nil, or_false] at hmem
  rcases hmem with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact primeCounting_2160676_le
  · exact primeCounting_2177060_le
  · exact primeCounting_2193444_le
  · exact primeCounting_2209828_le
  · exact primeCounting_2226212_le
  · exact primeCounting_2242596_le
  · exact primeCounting_2258980_le
  · exact primeCounting_2275364_le
  · exact primeCounting_2291748_le
  · exact primeCounting_2308132_le
  · exact primeCounting_2324516_le
  · exact primeCounting_2340900_le
  · exact primeCounting_2357284_le
  · exact primeCounting_2373668_le
  · exact primeCounting_2390052_le
  · exact primeCounting_2406436_le

theorem primeUpperBlockGroup0006_cover
    {y : Nat} (hLower : 2144293 <= y)
    (hUpper : y <= 2406436) :
    ∃ block ∈ primeUpperBlockGroup0006, block.1 <= y ∧ y <= block.2.1 := by
  by_cases h00 : y <= 2160676
  · refine ⟨(2144293, 2160676, 160006), ?_, ?_, h00⟩
    · simp [primeUpperBlockGroup0006]
    · omega
  by_cases h01 : y <= 2177060
  · refine ⟨(2160677, 2177060, 161121), ?_, ?_, h01⟩
    · simp [primeUpperBlockGroup0006]
    · omega
  by_cases h02 : y <= 2193444
  · refine ⟨(2177061, 2193444, 162237), ?_, ?_, h02⟩
    · simp [primeUpperBlockGroup0006]
    · omega
  by_cases h03 : y <= 2209828
  · refine ⟨(2193445, 2209828, 163347), ?_, ?_, h03⟩
    · simp [primeUpperBlockGroup0006]
    · omega
  by_cases h04 : y <= 2226212
  · refine ⟨(2209829, 2226212, 164442), ?_, ?_, h04⟩
    · simp [primeUpperBlockGroup0006]
    · omega
  by_cases h05 : y <= 2242596
  · refine ⟨(2226213, 2242596, 165569), ?_, ?_, h05⟩
    · simp [primeUpperBlockGroup0006]
    · omega
  by_cases h06 : y <= 2258980
  · refine ⟨(2242597, 2258980, 166706), ?_, ?_, h06⟩
    · simp [primeUpperBlockGroup0006]
    · omega
  by_cases h07 : y <= 2275364
  · refine ⟨(2258981, 2275364, 167861), ?_, ?_, h07⟩
    · simp [primeUpperBlockGroup0006]
    · omega
  by_cases h08 : y <= 2291748
  · refine ⟨(2275365, 2291748, 168946), ?_, ?_, h08⟩
    · simp [primeUpperBlockGroup0006]
    · omega
  by_cases h09 : y <= 2308132
  · refine ⟨(2291749, 2308132, 170064), ?_, ?_, h09⟩
    · simp [primeUpperBlockGroup0006]
    · omega
  by_cases h10 : y <= 2324516
  · refine ⟨(2308133, 2324516, 171162), ?_, ?_, h10⟩
    · simp [primeUpperBlockGroup0006]
    · omega
  by_cases h11 : y <= 2340900
  · refine ⟨(2324517, 2340900, 172273), ?_, ?_, h11⟩
    · simp [primeUpperBlockGroup0006]
    · omega
  by_cases h12 : y <= 2357284
  · refine ⟨(2340901, 2357284, 173367), ?_, ?_, h12⟩
    · simp [primeUpperBlockGroup0006]
    · omega
  by_cases h13 : y <= 2373668
  · refine ⟨(2357285, 2373668, 174503), ?_, ?_, h13⟩
    · simp [primeUpperBlockGroup0006]
    · omega
  by_cases h14 : y <= 2390052
  · refine ⟨(2373669, 2390052, 175626), ?_, ?_, h14⟩
    · simp [primeUpperBlockGroup0006]
    · omega
  · refine ⟨(2390053, 2406436, 176726), ?_, ?_, ?_⟩
    · simp [primeUpperBlockGroup0006]
    · omega
    · omega

end Erdos848.GeneratedFortyMillionPrimeUpperCoverage
