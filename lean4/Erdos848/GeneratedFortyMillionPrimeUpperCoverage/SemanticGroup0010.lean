import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Certificate

namespace Erdos848.GeneratedFortyMillionPrimeUpperCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def primeUpperBlockGroup0010 : List (Nat × Nat × Nat) :=
  [(3192869, 3209252, 230846),
    (3209253, 3225636, 231947),
    (3225637, 3242020, 233055),
    (3242021, 3258404, 234133),
    (3258405, 3274788, 235227),
    (3274789, 3291172, 236332),
    (3291173, 3307556, 237400),
    (3307557, 3323940, 238488),
    (3323941, 3340324, 239576),
    (3340325, 3356708, 240655),
    (3356709, 3373092, 241743),
    (3373093, 3389476, 242843),
    (3389477, 3405860, 243941),
    (3405861, 3422244, 245037),
    (3422245, 3438628, 246143),
    (3438629, 3455012, 247236)]

theorem primeUpperBlockGroup0010_stop_count
    {block : Nat × Nat × Nat}
    (hmem : block ∈ primeUpperBlockGroup0010) :
    Nat.primeCounting block.2.1 <= block.2.2 := by
  simp only [primeUpperBlockGroup0010, List.mem_cons, List.not_mem_nil, or_false] at hmem
  rcases hmem with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact primeCounting_3209252_le
  · exact primeCounting_3225636_le
  · exact primeCounting_3242020_le
  · exact primeCounting_3258404_le
  · exact primeCounting_3274788_le
  · exact primeCounting_3291172_le
  · exact primeCounting_3307556_le
  · exact primeCounting_3323940_le
  · exact primeCounting_3340324_le
  · exact primeCounting_3356708_le
  · exact primeCounting_3373092_le
  · exact primeCounting_3389476_le
  · exact primeCounting_3405860_le
  · exact primeCounting_3422244_le
  · exact primeCounting_3438628_le
  · exact primeCounting_3455012_le

theorem primeUpperBlockGroup0010_cover
    {y : Nat} (hLower : 3192869 <= y)
    (hUpper : y <= 3455012) :
    ∃ block ∈ primeUpperBlockGroup0010, block.1 <= y ∧ y <= block.2.1 := by
  by_cases h00 : y <= 3209252
  · refine ⟨(3192869, 3209252, 230846), ?_, ?_, h00⟩
    · simp [primeUpperBlockGroup0010]
    · omega
  by_cases h01 : y <= 3225636
  · refine ⟨(3209253, 3225636, 231947), ?_, ?_, h01⟩
    · simp [primeUpperBlockGroup0010]
    · omega
  by_cases h02 : y <= 3242020
  · refine ⟨(3225637, 3242020, 233055), ?_, ?_, h02⟩
    · simp [primeUpperBlockGroup0010]
    · omega
  by_cases h03 : y <= 3258404
  · refine ⟨(3242021, 3258404, 234133), ?_, ?_, h03⟩
    · simp [primeUpperBlockGroup0010]
    · omega
  by_cases h04 : y <= 3274788
  · refine ⟨(3258405, 3274788, 235227), ?_, ?_, h04⟩
    · simp [primeUpperBlockGroup0010]
    · omega
  by_cases h05 : y <= 3291172
  · refine ⟨(3274789, 3291172, 236332), ?_, ?_, h05⟩
    · simp [primeUpperBlockGroup0010]
    · omega
  by_cases h06 : y <= 3307556
  · refine ⟨(3291173, 3307556, 237400), ?_, ?_, h06⟩
    · simp [primeUpperBlockGroup0010]
    · omega
  by_cases h07 : y <= 3323940
  · refine ⟨(3307557, 3323940, 238488), ?_, ?_, h07⟩
    · simp [primeUpperBlockGroup0010]
    · omega
  by_cases h08 : y <= 3340324
  · refine ⟨(3323941, 3340324, 239576), ?_, ?_, h08⟩
    · simp [primeUpperBlockGroup0010]
    · omega
  by_cases h09 : y <= 3356708
  · refine ⟨(3340325, 3356708, 240655), ?_, ?_, h09⟩
    · simp [primeUpperBlockGroup0010]
    · omega
  by_cases h10 : y <= 3373092
  · refine ⟨(3356709, 3373092, 241743), ?_, ?_, h10⟩
    · simp [primeUpperBlockGroup0010]
    · omega
  by_cases h11 : y <= 3389476
  · refine ⟨(3373093, 3389476, 242843), ?_, ?_, h11⟩
    · simp [primeUpperBlockGroup0010]
    · omega
  by_cases h12 : y <= 3405860
  · refine ⟨(3389477, 3405860, 243941), ?_, ?_, h12⟩
    · simp [primeUpperBlockGroup0010]
    · omega
  by_cases h13 : y <= 3422244
  · refine ⟨(3405861, 3422244, 245037), ?_, ?_, h13⟩
    · simp [primeUpperBlockGroup0010]
    · omega
  by_cases h14 : y <= 3438628
  · refine ⟨(3422245, 3438628, 246143), ?_, ?_, h14⟩
    · simp [primeUpperBlockGroup0010]
    · omega
  · refine ⟨(3438629, 3455012, 247236), ?_, ?_, ?_⟩
    · simp [primeUpperBlockGroup0010]
    · omega
    · omega

end Erdos848.GeneratedFortyMillionPrimeUpperCoverage
