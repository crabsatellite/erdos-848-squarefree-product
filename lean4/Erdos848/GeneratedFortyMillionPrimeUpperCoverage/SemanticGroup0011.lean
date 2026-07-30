import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Certificate

namespace Erdos848.GeneratedFortyMillionPrimeUpperCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def primeUpperBlockGroup0011 : List (Nat × Nat × Nat) :=
  [(3455013, 3471396, 248291),
    (3471397, 3487780, 249341),
    (3487781, 3504164, 250424),
    (3504165, 3520548, 251497),
    (3520549, 3536932, 252566),
    (3536933, 3553316, 253629),
    (3553317, 3569700, 254726),
    (3569701, 3586084, 255794),
    (3586085, 3602468, 256894),
    (3602469, 3618852, 258020),
    (3618853, 3635236, 259120),
    (3635237, 3636363, 259187)]

theorem primeUpperBlockGroup0011_stop_count
    {block : Nat × Nat × Nat}
    (hmem : block ∈ primeUpperBlockGroup0011) :
    Nat.primeCounting block.2.1 <= block.2.2 := by
  simp only [primeUpperBlockGroup0011, List.mem_cons, List.not_mem_nil, or_false] at hmem
  rcases hmem with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact primeCounting_3471396_le
  · exact primeCounting_3487780_le
  · exact primeCounting_3504164_le
  · exact primeCounting_3520548_le
  · exact primeCounting_3536932_le
  · exact primeCounting_3553316_le
  · exact primeCounting_3569700_le
  · exact primeCounting_3586084_le
  · exact primeCounting_3602468_le
  · exact primeCounting_3618852_le
  · exact primeCounting_3635236_le
  · exact primeCounting_3636363_le

theorem primeUpperBlockGroup0011_cover
    {y : Nat} (hLower : 3455013 <= y)
    (hUpper : y <= 3636363) :
    ∃ block ∈ primeUpperBlockGroup0011, block.1 <= y ∧ y <= block.2.1 := by
  by_cases h00 : y <= 3471396
  · refine ⟨(3455013, 3471396, 248291), ?_, ?_, h00⟩
    · simp [primeUpperBlockGroup0011]
    · omega
  by_cases h01 : y <= 3487780
  · refine ⟨(3471397, 3487780, 249341), ?_, ?_, h01⟩
    · simp [primeUpperBlockGroup0011]
    · omega
  by_cases h02 : y <= 3504164
  · refine ⟨(3487781, 3504164, 250424), ?_, ?_, h02⟩
    · simp [primeUpperBlockGroup0011]
    · omega
  by_cases h03 : y <= 3520548
  · refine ⟨(3504165, 3520548, 251497), ?_, ?_, h03⟩
    · simp [primeUpperBlockGroup0011]
    · omega
  by_cases h04 : y <= 3536932
  · refine ⟨(3520549, 3536932, 252566), ?_, ?_, h04⟩
    · simp [primeUpperBlockGroup0011]
    · omega
  by_cases h05 : y <= 3553316
  · refine ⟨(3536933, 3553316, 253629), ?_, ?_, h05⟩
    · simp [primeUpperBlockGroup0011]
    · omega
  by_cases h06 : y <= 3569700
  · refine ⟨(3553317, 3569700, 254726), ?_, ?_, h06⟩
    · simp [primeUpperBlockGroup0011]
    · omega
  by_cases h07 : y <= 3586084
  · refine ⟨(3569701, 3586084, 255794), ?_, ?_, h07⟩
    · simp [primeUpperBlockGroup0011]
    · omega
  by_cases h08 : y <= 3602468
  · refine ⟨(3586085, 3602468, 256894), ?_, ?_, h08⟩
    · simp [primeUpperBlockGroup0011]
    · omega
  by_cases h09 : y <= 3618852
  · refine ⟨(3602469, 3618852, 258020), ?_, ?_, h09⟩
    · simp [primeUpperBlockGroup0011]
    · omega
  by_cases h10 : y <= 3635236
  · refine ⟨(3618853, 3635236, 259120), ?_, ?_, h10⟩
    · simp [primeUpperBlockGroup0011]
    · omega
  · refine ⟨(3635237, 3636363, 259187), ?_, ?_, ?_⟩
    · simp [primeUpperBlockGroup0011]
    · omega
    · omega

end Erdos848.GeneratedFortyMillionPrimeUpperCoverage
