import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Certificate

namespace Erdos848.GeneratedFortyMillionPrimeUpperCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def primeUpperBlockGroup0001 : List (Nat × Nat × Nat) :=
  [(833573, 849956, 67613),
    (849957, 866340, 68821),
    (866341, 882724, 70025),
    (882725, 899108, 71217),
    (899109, 915492, 72401),
    (915493, 931876, 73600),
    (931877, 948260, 74784),
    (948261, 964644, 75966),
    (964645, 981028, 77137),
    (981029, 997412, 78316),
    (997413, 1013796, 79522),
    (1013797, 1030180, 80717),
    (1030181, 1046564, 81881),
    (1046565, 1062948, 83029),
    (1062949, 1079332, 84217),
    (1079333, 1095716, 85413)]

theorem primeUpperBlockGroup0001_stop_count
    {block : Nat × Nat × Nat}
    (hmem : block ∈ primeUpperBlockGroup0001) :
    Nat.primeCounting block.2.1 <= block.2.2 := by
  simp only [primeUpperBlockGroup0001, List.mem_cons, List.not_mem_nil, or_false] at hmem
  rcases hmem with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact primeCounting_849956_le
  · exact primeCounting_866340_le
  · exact primeCounting_882724_le
  · exact primeCounting_899108_le
  · exact primeCounting_915492_le
  · exact primeCounting_931876_le
  · exact primeCounting_948260_le
  · exact primeCounting_964644_le
  · exact primeCounting_981028_le
  · exact primeCounting_997412_le
  · exact primeCounting_1013796_le
  · exact primeCounting_1030180_le
  · exact primeCounting_1046564_le
  · exact primeCounting_1062948_le
  · exact primeCounting_1079332_le
  · exact primeCounting_1095716_le

theorem primeUpperBlockGroup0001_cover
    {y : Nat} (hLower : 833573 <= y)
    (hUpper : y <= 1095716) :
    ∃ block ∈ primeUpperBlockGroup0001, block.1 <= y ∧ y <= block.2.1 := by
  by_cases h00 : y <= 849956
  · refine ⟨(833573, 849956, 67613), ?_, ?_, h00⟩
    · simp [primeUpperBlockGroup0001]
    · omega
  by_cases h01 : y <= 866340
  · refine ⟨(849957, 866340, 68821), ?_, ?_, h01⟩
    · simp [primeUpperBlockGroup0001]
    · omega
  by_cases h02 : y <= 882724
  · refine ⟨(866341, 882724, 70025), ?_, ?_, h02⟩
    · simp [primeUpperBlockGroup0001]
    · omega
  by_cases h03 : y <= 899108
  · refine ⟨(882725, 899108, 71217), ?_, ?_, h03⟩
    · simp [primeUpperBlockGroup0001]
    · omega
  by_cases h04 : y <= 915492
  · refine ⟨(899109, 915492, 72401), ?_, ?_, h04⟩
    · simp [primeUpperBlockGroup0001]
    · omega
  by_cases h05 : y <= 931876
  · refine ⟨(915493, 931876, 73600), ?_, ?_, h05⟩
    · simp [primeUpperBlockGroup0001]
    · omega
  by_cases h06 : y <= 948260
  · refine ⟨(931877, 948260, 74784), ?_, ?_, h06⟩
    · simp [primeUpperBlockGroup0001]
    · omega
  by_cases h07 : y <= 964644
  · refine ⟨(948261, 964644, 75966), ?_, ?_, h07⟩
    · simp [primeUpperBlockGroup0001]
    · omega
  by_cases h08 : y <= 981028
  · refine ⟨(964645, 981028, 77137), ?_, ?_, h08⟩
    · simp [primeUpperBlockGroup0001]
    · omega
  by_cases h09 : y <= 997412
  · refine ⟨(981029, 997412, 78316), ?_, ?_, h09⟩
    · simp [primeUpperBlockGroup0001]
    · omega
  by_cases h10 : y <= 1013796
  · refine ⟨(997413, 1013796, 79522), ?_, ?_, h10⟩
    · simp [primeUpperBlockGroup0001]
    · omega
  by_cases h11 : y <= 1030180
  · refine ⟨(1013797, 1030180, 80717), ?_, ?_, h11⟩
    · simp [primeUpperBlockGroup0001]
    · omega
  by_cases h12 : y <= 1046564
  · refine ⟨(1030181, 1046564, 81881), ?_, ?_, h12⟩
    · simp [primeUpperBlockGroup0001]
    · omega
  by_cases h13 : y <= 1062948
  · refine ⟨(1046565, 1062948, 83029), ?_, ?_, h13⟩
    · simp [primeUpperBlockGroup0001]
    · omega
  by_cases h14 : y <= 1079332
  · refine ⟨(1062949, 1079332, 84217), ?_, ?_, h14⟩
    · simp [primeUpperBlockGroup0001]
    · omega
  · refine ⟨(1079333, 1095716, 85413), ?_, ?_, ?_⟩
    · simp [primeUpperBlockGroup0001]
    · omega
    · omega

end Erdos848.GeneratedFortyMillionPrimeUpperCoverage
