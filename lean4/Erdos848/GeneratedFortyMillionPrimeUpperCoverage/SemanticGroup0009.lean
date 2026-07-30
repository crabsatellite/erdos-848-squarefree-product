import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Certificate

namespace Erdos848.GeneratedFortyMillionPrimeUpperCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def primeUpperBlockGroup0009 : List (Nat × Nat × Nat) :=
  [(2930725, 2947108, 213256),
    (2947109, 2963492, 214354),
    (2963493, 2979876, 215449),
    (2979877, 2996260, 216555),
    (2996261, 3012644, 217679),
    (3012645, 3029028, 218756),
    (3029029, 3045412, 219836),
    (3045413, 3061796, 220919),
    (3061797, 3078180, 222030),
    (3078181, 3094564, 223145),
    (3094565, 3110948, 224231),
    (3110949, 3127332, 225325),
    (3127333, 3143716, 226414),
    (3143717, 3160100, 227519),
    (3160101, 3176484, 228620),
    (3176485, 3192868, 229722)]

theorem primeUpperBlockGroup0009_stop_count
    {block : Nat × Nat × Nat}
    (hmem : block ∈ primeUpperBlockGroup0009) :
    Nat.primeCounting block.2.1 <= block.2.2 := by
  simp only [primeUpperBlockGroup0009, List.mem_cons, List.not_mem_nil, or_false] at hmem
  rcases hmem with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact primeCounting_2947108_le
  · exact primeCounting_2963492_le
  · exact primeCounting_2979876_le
  · exact primeCounting_2996260_le
  · exact primeCounting_3012644_le
  · exact primeCounting_3029028_le
  · exact primeCounting_3045412_le
  · exact primeCounting_3061796_le
  · exact primeCounting_3078180_le
  · exact primeCounting_3094564_le
  · exact primeCounting_3110948_le
  · exact primeCounting_3127332_le
  · exact primeCounting_3143716_le
  · exact primeCounting_3160100_le
  · exact primeCounting_3176484_le
  · exact primeCounting_3192868_le

theorem primeUpperBlockGroup0009_cover
    {y : Nat} (hLower : 2930725 <= y)
    (hUpper : y <= 3192868) :
    ∃ block ∈ primeUpperBlockGroup0009, block.1 <= y ∧ y <= block.2.1 := by
  by_cases h00 : y <= 2947108
  · refine ⟨(2930725, 2947108, 213256), ?_, ?_, h00⟩
    · simp [primeUpperBlockGroup0009]
    · omega
  by_cases h01 : y <= 2963492
  · refine ⟨(2947109, 2963492, 214354), ?_, ?_, h01⟩
    · simp [primeUpperBlockGroup0009]
    · omega
  by_cases h02 : y <= 2979876
  · refine ⟨(2963493, 2979876, 215449), ?_, ?_, h02⟩
    · simp [primeUpperBlockGroup0009]
    · omega
  by_cases h03 : y <= 2996260
  · refine ⟨(2979877, 2996260, 216555), ?_, ?_, h03⟩
    · simp [primeUpperBlockGroup0009]
    · omega
  by_cases h04 : y <= 3012644
  · refine ⟨(2996261, 3012644, 217679), ?_, ?_, h04⟩
    · simp [primeUpperBlockGroup0009]
    · omega
  by_cases h05 : y <= 3029028
  · refine ⟨(3012645, 3029028, 218756), ?_, ?_, h05⟩
    · simp [primeUpperBlockGroup0009]
    · omega
  by_cases h06 : y <= 3045412
  · refine ⟨(3029029, 3045412, 219836), ?_, ?_, h06⟩
    · simp [primeUpperBlockGroup0009]
    · omega
  by_cases h07 : y <= 3061796
  · refine ⟨(3045413, 3061796, 220919), ?_, ?_, h07⟩
    · simp [primeUpperBlockGroup0009]
    · omega
  by_cases h08 : y <= 3078180
  · refine ⟨(3061797, 3078180, 222030), ?_, ?_, h08⟩
    · simp [primeUpperBlockGroup0009]
    · omega
  by_cases h09 : y <= 3094564
  · refine ⟨(3078181, 3094564, 223145), ?_, ?_, h09⟩
    · simp [primeUpperBlockGroup0009]
    · omega
  by_cases h10 : y <= 3110948
  · refine ⟨(3094565, 3110948, 224231), ?_, ?_, h10⟩
    · simp [primeUpperBlockGroup0009]
    · omega
  by_cases h11 : y <= 3127332
  · refine ⟨(3110949, 3127332, 225325), ?_, ?_, h11⟩
    · simp [primeUpperBlockGroup0009]
    · omega
  by_cases h12 : y <= 3143716
  · refine ⟨(3127333, 3143716, 226414), ?_, ?_, h12⟩
    · simp [primeUpperBlockGroup0009]
    · omega
  by_cases h13 : y <= 3160100
  · refine ⟨(3143717, 3160100, 227519), ?_, ?_, h13⟩
    · simp [primeUpperBlockGroup0009]
    · omega
  by_cases h14 : y <= 3176484
  · refine ⟨(3160101, 3176484, 228620), ?_, ?_, h14⟩
    · simp [primeUpperBlockGroup0009]
    · omega
  · refine ⟨(3176485, 3192868, 229722), ?_, ?_, ?_⟩
    · simp [primeUpperBlockGroup0009]
    · omega
    · omega

end Erdos848.GeneratedFortyMillionPrimeUpperCoverage
