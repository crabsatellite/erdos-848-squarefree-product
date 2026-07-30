import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Certificate

namespace Erdos848.GeneratedFortyMillionPrimeUpperCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def primeUpperBlockGroup0003 : List (Nat × Nat × Nat) :=
  [(1357861, 1374244, 105259),
    (1374245, 1390628, 106429),
    (1390629, 1407012, 107592),
    (1407013, 1423396, 108725),
    (1423397, 1439780, 109916),
    (1439781, 1456164, 111080),
    (1456165, 1472548, 112218),
    (1472549, 1488932, 113373),
    (1488933, 1505316, 114555),
    (1505317, 1521700, 115703),
    (1521701, 1538084, 116835),
    (1538085, 1554468, 117975),
    (1554469, 1570852, 119116),
    (1570853, 1587236, 120247),
    (1587237, 1603620, 121403),
    (1603621, 1620004, 122541)]

theorem primeUpperBlockGroup0003_stop_count
    {block : Nat × Nat × Nat}
    (hmem : block ∈ primeUpperBlockGroup0003) :
    Nat.primeCounting block.2.1 <= block.2.2 := by
  simp only [primeUpperBlockGroup0003, List.mem_cons, List.not_mem_nil, or_false] at hmem
  rcases hmem with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact primeCounting_1374244_le
  · exact primeCounting_1390628_le
  · exact primeCounting_1407012_le
  · exact primeCounting_1423396_le
  · exact primeCounting_1439780_le
  · exact primeCounting_1456164_le
  · exact primeCounting_1472548_le
  · exact primeCounting_1488932_le
  · exact primeCounting_1505316_le
  · exact primeCounting_1521700_le
  · exact primeCounting_1538084_le
  · exact primeCounting_1554468_le
  · exact primeCounting_1570852_le
  · exact primeCounting_1587236_le
  · exact primeCounting_1603620_le
  · exact primeCounting_1620004_le

theorem primeUpperBlockGroup0003_cover
    {y : Nat} (hLower : 1357861 <= y)
    (hUpper : y <= 1620004) :
    ∃ block ∈ primeUpperBlockGroup0003, block.1 <= y ∧ y <= block.2.1 := by
  by_cases h00 : y <= 1374244
  · refine ⟨(1357861, 1374244, 105259), ?_, ?_, h00⟩
    · simp [primeUpperBlockGroup0003]
    · omega
  by_cases h01 : y <= 1390628
  · refine ⟨(1374245, 1390628, 106429), ?_, ?_, h01⟩
    · simp [primeUpperBlockGroup0003]
    · omega
  by_cases h02 : y <= 1407012
  · refine ⟨(1390629, 1407012, 107592), ?_, ?_, h02⟩
    · simp [primeUpperBlockGroup0003]
    · omega
  by_cases h03 : y <= 1423396
  · refine ⟨(1407013, 1423396, 108725), ?_, ?_, h03⟩
    · simp [primeUpperBlockGroup0003]
    · omega
  by_cases h04 : y <= 1439780
  · refine ⟨(1423397, 1439780, 109916), ?_, ?_, h04⟩
    · simp [primeUpperBlockGroup0003]
    · omega
  by_cases h05 : y <= 1456164
  · refine ⟨(1439781, 1456164, 111080), ?_, ?_, h05⟩
    · simp [primeUpperBlockGroup0003]
    · omega
  by_cases h06 : y <= 1472548
  · refine ⟨(1456165, 1472548, 112218), ?_, ?_, h06⟩
    · simp [primeUpperBlockGroup0003]
    · omega
  by_cases h07 : y <= 1488932
  · refine ⟨(1472549, 1488932, 113373), ?_, ?_, h07⟩
    · simp [primeUpperBlockGroup0003]
    · omega
  by_cases h08 : y <= 1505316
  · refine ⟨(1488933, 1505316, 114555), ?_, ?_, h08⟩
    · simp [primeUpperBlockGroup0003]
    · omega
  by_cases h09 : y <= 1521700
  · refine ⟨(1505317, 1521700, 115703), ?_, ?_, h09⟩
    · simp [primeUpperBlockGroup0003]
    · omega
  by_cases h10 : y <= 1538084
  · refine ⟨(1521701, 1538084, 116835), ?_, ?_, h10⟩
    · simp [primeUpperBlockGroup0003]
    · omega
  by_cases h11 : y <= 1554468
  · refine ⟨(1538085, 1554468, 117975), ?_, ?_, h11⟩
    · simp [primeUpperBlockGroup0003]
    · omega
  by_cases h12 : y <= 1570852
  · refine ⟨(1554469, 1570852, 119116), ?_, ?_, h12⟩
    · simp [primeUpperBlockGroup0003]
    · omega
  by_cases h13 : y <= 1587236
  · refine ⟨(1570853, 1587236, 120247), ?_, ?_, h13⟩
    · simp [primeUpperBlockGroup0003]
    · omega
  by_cases h14 : y <= 1603620
  · refine ⟨(1587237, 1603620, 121403), ?_, ?_, h14⟩
    · simp [primeUpperBlockGroup0003]
    · omega
  · refine ⟨(1603621, 1620004, 122541), ?_, ?_, ?_⟩
    · simp [primeUpperBlockGroup0003]
    · omega
    · omega

end Erdos848.GeneratedFortyMillionPrimeUpperCoverage
