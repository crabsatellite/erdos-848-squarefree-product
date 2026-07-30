import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Certificate

namespace Erdos848.GeneratedFortyMillionPrimeUpperCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def primeUpperBlockGroup0000 : List (Nat × Nat × Nat) :=
  [(571429, 587812, 48193),
    (587813, 604196, 49416),
    (604197, 620580, 50658),
    (620581, 636964, 51866),
    (636965, 653348, 53070),
    (653349, 669732, 54288),
    (669733, 686116, 55518),
    (686117, 702500, 56730),
    (702501, 718884, 57947),
    (718885, 735268, 59178),
    (735269, 751652, 60362),
    (751653, 768036, 61584),
    (768037, 784420, 62797),
    (784421, 800804, 64023),
    (800805, 817188, 65214),
    (817189, 833572, 66436)]

theorem primeUpperBlockGroup0000_stop_count
    {block : Nat × Nat × Nat}
    (hmem : block ∈ primeUpperBlockGroup0000) :
    Nat.primeCounting block.2.1 <= block.2.2 := by
  simp only [primeUpperBlockGroup0000, List.mem_cons, List.not_mem_nil, or_false] at hmem
  rcases hmem with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact primeCounting_587812_le
  · exact primeCounting_604196_le
  · exact primeCounting_620580_le
  · exact primeCounting_636964_le
  · exact primeCounting_653348_le
  · exact primeCounting_669732_le
  · exact primeCounting_686116_le
  · exact primeCounting_702500_le
  · exact primeCounting_718884_le
  · exact primeCounting_735268_le
  · exact primeCounting_751652_le
  · exact primeCounting_768036_le
  · exact primeCounting_784420_le
  · exact primeCounting_800804_le
  · exact primeCounting_817188_le
  · exact primeCounting_833572_le

theorem primeUpperBlockGroup0000_cover
    {y : Nat} (hLower : 571429 <= y)
    (hUpper : y <= 833572) :
    ∃ block ∈ primeUpperBlockGroup0000, block.1 <= y ∧ y <= block.2.1 := by
  by_cases h00 : y <= 587812
  · refine ⟨(571429, 587812, 48193), ?_, ?_, h00⟩
    · simp [primeUpperBlockGroup0000]
    · omega
  by_cases h01 : y <= 604196
  · refine ⟨(587813, 604196, 49416), ?_, ?_, h01⟩
    · simp [primeUpperBlockGroup0000]
    · omega
  by_cases h02 : y <= 620580
  · refine ⟨(604197, 620580, 50658), ?_, ?_, h02⟩
    · simp [primeUpperBlockGroup0000]
    · omega
  by_cases h03 : y <= 636964
  · refine ⟨(620581, 636964, 51866), ?_, ?_, h03⟩
    · simp [primeUpperBlockGroup0000]
    · omega
  by_cases h04 : y <= 653348
  · refine ⟨(636965, 653348, 53070), ?_, ?_, h04⟩
    · simp [primeUpperBlockGroup0000]
    · omega
  by_cases h05 : y <= 669732
  · refine ⟨(653349, 669732, 54288), ?_, ?_, h05⟩
    · simp [primeUpperBlockGroup0000]
    · omega
  by_cases h06 : y <= 686116
  · refine ⟨(669733, 686116, 55518), ?_, ?_, h06⟩
    · simp [primeUpperBlockGroup0000]
    · omega
  by_cases h07 : y <= 702500
  · refine ⟨(686117, 702500, 56730), ?_, ?_, h07⟩
    · simp [primeUpperBlockGroup0000]
    · omega
  by_cases h08 : y <= 718884
  · refine ⟨(702501, 718884, 57947), ?_, ?_, h08⟩
    · simp [primeUpperBlockGroup0000]
    · omega
  by_cases h09 : y <= 735268
  · refine ⟨(718885, 735268, 59178), ?_, ?_, h09⟩
    · simp [primeUpperBlockGroup0000]
    · omega
  by_cases h10 : y <= 751652
  · refine ⟨(735269, 751652, 60362), ?_, ?_, h10⟩
    · simp [primeUpperBlockGroup0000]
    · omega
  by_cases h11 : y <= 768036
  · refine ⟨(751653, 768036, 61584), ?_, ?_, h11⟩
    · simp [primeUpperBlockGroup0000]
    · omega
  by_cases h12 : y <= 784420
  · refine ⟨(768037, 784420, 62797), ?_, ?_, h12⟩
    · simp [primeUpperBlockGroup0000]
    · omega
  by_cases h13 : y <= 800804
  · refine ⟨(784421, 800804, 64023), ?_, ?_, h13⟩
    · simp [primeUpperBlockGroup0000]
    · omega
  by_cases h14 : y <= 817188
  · refine ⟨(800805, 817188, 65214), ?_, ?_, h14⟩
    · simp [primeUpperBlockGroup0000]
    · omega
  · refine ⟨(817189, 833572, 66436), ?_, ?_, ?_⟩
    · simp [primeUpperBlockGroup0000]
    · omega
    · omega

end Erdos848.GeneratedFortyMillionPrimeUpperCoverage
