import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Certificate

namespace Erdos848.GeneratedFortyMillionPrimeUpperCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def primeUpperBlockGroup0008 : List (Nat × Nat × Nat) :=
  [(2668581, 2684964, 195611),
    (2684965, 2701348, 196738),
    (2701349, 2717732, 197855),
    (2717733, 2734116, 198937),
    (2734117, 2750500, 200027),
    (2750501, 2766884, 201136),
    (2766885, 2783268, 202231),
    (2783269, 2799652, 203332),
    (2799653, 2816036, 204473),
    (2816037, 2832420, 205579),
    (2832421, 2848804, 206709),
    (2848805, 2865188, 207789),
    (2865189, 2881572, 208880),
    (2881573, 2897956, 209965),
    (2897957, 2914340, 211074),
    (2914341, 2930724, 212174)]

theorem primeUpperBlockGroup0008_stop_count
    {block : Nat × Nat × Nat}
    (hmem : block ∈ primeUpperBlockGroup0008) :
    Nat.primeCounting block.2.1 <= block.2.2 := by
  simp only [primeUpperBlockGroup0008, List.mem_cons, List.not_mem_nil, or_false] at hmem
  rcases hmem with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact primeCounting_2684964_le
  · exact primeCounting_2701348_le
  · exact primeCounting_2717732_le
  · exact primeCounting_2734116_le
  · exact primeCounting_2750500_le
  · exact primeCounting_2766884_le
  · exact primeCounting_2783268_le
  · exact primeCounting_2799652_le
  · exact primeCounting_2816036_le
  · exact primeCounting_2832420_le
  · exact primeCounting_2848804_le
  · exact primeCounting_2865188_le
  · exact primeCounting_2881572_le
  · exact primeCounting_2897956_le
  · exact primeCounting_2914340_le
  · exact primeCounting_2930724_le

theorem primeUpperBlockGroup0008_cover
    {y : Nat} (hLower : 2668581 <= y)
    (hUpper : y <= 2930724) :
    ∃ block ∈ primeUpperBlockGroup0008, block.1 <= y ∧ y <= block.2.1 := by
  by_cases h00 : y <= 2684964
  · refine ⟨(2668581, 2684964, 195611), ?_, ?_, h00⟩
    · simp [primeUpperBlockGroup0008]
    · omega
  by_cases h01 : y <= 2701348
  · refine ⟨(2684965, 2701348, 196738), ?_, ?_, h01⟩
    · simp [primeUpperBlockGroup0008]
    · omega
  by_cases h02 : y <= 2717732
  · refine ⟨(2701349, 2717732, 197855), ?_, ?_, h02⟩
    · simp [primeUpperBlockGroup0008]
    · omega
  by_cases h03 : y <= 2734116
  · refine ⟨(2717733, 2734116, 198937), ?_, ?_, h03⟩
    · simp [primeUpperBlockGroup0008]
    · omega
  by_cases h04 : y <= 2750500
  · refine ⟨(2734117, 2750500, 200027), ?_, ?_, h04⟩
    · simp [primeUpperBlockGroup0008]
    · omega
  by_cases h05 : y <= 2766884
  · refine ⟨(2750501, 2766884, 201136), ?_, ?_, h05⟩
    · simp [primeUpperBlockGroup0008]
    · omega
  by_cases h06 : y <= 2783268
  · refine ⟨(2766885, 2783268, 202231), ?_, ?_, h06⟩
    · simp [primeUpperBlockGroup0008]
    · omega
  by_cases h07 : y <= 2799652
  · refine ⟨(2783269, 2799652, 203332), ?_, ?_, h07⟩
    · simp [primeUpperBlockGroup0008]
    · omega
  by_cases h08 : y <= 2816036
  · refine ⟨(2799653, 2816036, 204473), ?_, ?_, h08⟩
    · simp [primeUpperBlockGroup0008]
    · omega
  by_cases h09 : y <= 2832420
  · refine ⟨(2816037, 2832420, 205579), ?_, ?_, h09⟩
    · simp [primeUpperBlockGroup0008]
    · omega
  by_cases h10 : y <= 2848804
  · refine ⟨(2832421, 2848804, 206709), ?_, ?_, h10⟩
    · simp [primeUpperBlockGroup0008]
    · omega
  by_cases h11 : y <= 2865188
  · refine ⟨(2848805, 2865188, 207789), ?_, ?_, h11⟩
    · simp [primeUpperBlockGroup0008]
    · omega
  by_cases h12 : y <= 2881572
  · refine ⟨(2865189, 2881572, 208880), ?_, ?_, h12⟩
    · simp [primeUpperBlockGroup0008]
    · omega
  by_cases h13 : y <= 2897956
  · refine ⟨(2881573, 2897956, 209965), ?_, ?_, h13⟩
    · simp [primeUpperBlockGroup0008]
    · omega
  by_cases h14 : y <= 2914340
  · refine ⟨(2897957, 2914340, 211074), ?_, ?_, h14⟩
    · simp [primeUpperBlockGroup0008]
    · omega
  · refine ⟨(2914341, 2930724, 212174), ?_, ?_, ?_⟩
    · simp [primeUpperBlockGroup0008]
    · omega
    · omega

end Erdos848.GeneratedFortyMillionPrimeUpperCoverage
