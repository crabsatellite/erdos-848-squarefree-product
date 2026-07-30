import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Certificate

namespace Erdos848.GeneratedFortyMillionPrimeUpperCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def primeUpperBlockGroup0002 : List (Nat × Nat × Nat) :=
  [(1095717, 1112100, 86609),
    (1112101, 1128484, 87765),
    (1128485, 1144868, 88940),
    (1144869, 1161252, 90122),
    (1161253, 1177636, 91309),
    (1177637, 1194020, 92517),
    (1194021, 1210404, 93645),
    (1210405, 1226788, 94829),
    (1226789, 1243172, 95964),
    (1243173, 1259556, 97152),
    (1259557, 1275940, 98320),
    (1275941, 1292324, 99485),
    (1292325, 1308708, 100637),
    (1308709, 1325092, 101809),
    (1325093, 1341476, 102959),
    (1341477, 1357860, 104105)]

theorem primeUpperBlockGroup0002_stop_count
    {block : Nat × Nat × Nat}
    (hmem : block ∈ primeUpperBlockGroup0002) :
    Nat.primeCounting block.2.1 <= block.2.2 := by
  simp only [primeUpperBlockGroup0002, List.mem_cons, List.not_mem_nil, or_false] at hmem
  rcases hmem with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact primeCounting_1112100_le
  · exact primeCounting_1128484_le
  · exact primeCounting_1144868_le
  · exact primeCounting_1161252_le
  · exact primeCounting_1177636_le
  · exact primeCounting_1194020_le
  · exact primeCounting_1210404_le
  · exact primeCounting_1226788_le
  · exact primeCounting_1243172_le
  · exact primeCounting_1259556_le
  · exact primeCounting_1275940_le
  · exact primeCounting_1292324_le
  · exact primeCounting_1308708_le
  · exact primeCounting_1325092_le
  · exact primeCounting_1341476_le
  · exact primeCounting_1357860_le

theorem primeUpperBlockGroup0002_cover
    {y : Nat} (hLower : 1095717 <= y)
    (hUpper : y <= 1357860) :
    ∃ block ∈ primeUpperBlockGroup0002, block.1 <= y ∧ y <= block.2.1 := by
  by_cases h00 : y <= 1112100
  · refine ⟨(1095717, 1112100, 86609), ?_, ?_, h00⟩
    · simp [primeUpperBlockGroup0002]
    · omega
  by_cases h01 : y <= 1128484
  · refine ⟨(1112101, 1128484, 87765), ?_, ?_, h01⟩
    · simp [primeUpperBlockGroup0002]
    · omega
  by_cases h02 : y <= 1144868
  · refine ⟨(1128485, 1144868, 88940), ?_, ?_, h02⟩
    · simp [primeUpperBlockGroup0002]
    · omega
  by_cases h03 : y <= 1161252
  · refine ⟨(1144869, 1161252, 90122), ?_, ?_, h03⟩
    · simp [primeUpperBlockGroup0002]
    · omega
  by_cases h04 : y <= 1177636
  · refine ⟨(1161253, 1177636, 91309), ?_, ?_, h04⟩
    · simp [primeUpperBlockGroup0002]
    · omega
  by_cases h05 : y <= 1194020
  · refine ⟨(1177637, 1194020, 92517), ?_, ?_, h05⟩
    · simp [primeUpperBlockGroup0002]
    · omega
  by_cases h06 : y <= 1210404
  · refine ⟨(1194021, 1210404, 93645), ?_, ?_, h06⟩
    · simp [primeUpperBlockGroup0002]
    · omega
  by_cases h07 : y <= 1226788
  · refine ⟨(1210405, 1226788, 94829), ?_, ?_, h07⟩
    · simp [primeUpperBlockGroup0002]
    · omega
  by_cases h08 : y <= 1243172
  · refine ⟨(1226789, 1243172, 95964), ?_, ?_, h08⟩
    · simp [primeUpperBlockGroup0002]
    · omega
  by_cases h09 : y <= 1259556
  · refine ⟨(1243173, 1259556, 97152), ?_, ?_, h09⟩
    · simp [primeUpperBlockGroup0002]
    · omega
  by_cases h10 : y <= 1275940
  · refine ⟨(1259557, 1275940, 98320), ?_, ?_, h10⟩
    · simp [primeUpperBlockGroup0002]
    · omega
  by_cases h11 : y <= 1292324
  · refine ⟨(1275941, 1292324, 99485), ?_, ?_, h11⟩
    · simp [primeUpperBlockGroup0002]
    · omega
  by_cases h12 : y <= 1308708
  · refine ⟨(1292325, 1308708, 100637), ?_, ?_, h12⟩
    · simp [primeUpperBlockGroup0002]
    · omega
  by_cases h13 : y <= 1325092
  · refine ⟨(1308709, 1325092, 101809), ?_, ?_, h13⟩
    · simp [primeUpperBlockGroup0002]
    · omega
  by_cases h14 : y <= 1341476
  · refine ⟨(1325093, 1341476, 102959), ?_, ?_, h14⟩
    · simp [primeUpperBlockGroup0002]
    · omega
  · refine ⟨(1341477, 1357860, 104105), ?_, ?_, ?_⟩
    · simp [primeUpperBlockGroup0002]
    · omega
    · omega

end Erdos848.GeneratedFortyMillionPrimeUpperCoverage
