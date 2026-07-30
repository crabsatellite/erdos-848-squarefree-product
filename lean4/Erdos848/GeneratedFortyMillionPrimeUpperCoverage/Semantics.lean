import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.SemanticGroup0000
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.SemanticGroup0001
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.SemanticGroup0002
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.SemanticGroup0003
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.SemanticGroup0004
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.SemanticGroup0005
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.SemanticGroup0006
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.SemanticGroup0007
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.SemanticGroup0008
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.SemanticGroup0009
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.SemanticGroup0010
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.SemanticGroup0011

namespace Erdos848.GeneratedFortyMillionPrimeUpperCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def fortyMillionPrimeUpperBlocks : List (Nat × Nat × Nat) :=
  primeUpperBlockGroup0000 ++ (primeUpperBlockGroup0001 ++ (primeUpperBlockGroup0002 ++ (primeUpperBlockGroup0003 ++ (primeUpperBlockGroup0004 ++ (primeUpperBlockGroup0005 ++ (primeUpperBlockGroup0006 ++ (primeUpperBlockGroup0007 ++ (primeUpperBlockGroup0008 ++ (primeUpperBlockGroup0009 ++ (primeUpperBlockGroup0010 ++ (primeUpperBlockGroup0011)))))))))))

theorem fortyMillionPrimeUpperBlocks_stop_count
    {block : Nat × Nat × Nat}
    (hmem : block ∈ fortyMillionPrimeUpperBlocks) :
    Nat.primeCounting block.2.1 <= block.2.2 := by
  simp only [fortyMillionPrimeUpperBlocks, List.mem_append] at hmem
  rcases hmem with hmem | hmem | hmem | hmem | hmem | hmem | hmem | hmem | hmem | hmem | hmem | hmem
  · exact primeUpperBlockGroup0000_stop_count hmem
  · exact primeUpperBlockGroup0001_stop_count hmem
  · exact primeUpperBlockGroup0002_stop_count hmem
  · exact primeUpperBlockGroup0003_stop_count hmem
  · exact primeUpperBlockGroup0004_stop_count hmem
  · exact primeUpperBlockGroup0005_stop_count hmem
  · exact primeUpperBlockGroup0006_stop_count hmem
  · exact primeUpperBlockGroup0007_stop_count hmem
  · exact primeUpperBlockGroup0008_stop_count hmem
  · exact primeUpperBlockGroup0009_stop_count hmem
  · exact primeUpperBlockGroup0010_stop_count hmem
  · exact primeUpperBlockGroup0011_stop_count hmem

theorem fortyMillionPrimeUpperBlocks_cover
    {y : Nat} (hLower : 571_429 <= y) (hUpper : y <= 3_636_363) :
    ∃ block ∈ fortyMillionPrimeUpperBlocks,
      block.1 <= y ∧ y <= block.2.1 := by
  by_cases h0000 : y <= 833572
  · obtain ⟨block, hmem, hstart, hstop⟩ := primeUpperBlockGroup0000_cover (by omega) h0000
    refine ⟨block, ?_, hstart, hstop⟩
    simp only [fortyMillionPrimeUpperBlocks, List.mem_append]
    exact Or.inl hmem
  by_cases h0001 : y <= 1095716
  · obtain ⟨block, hmem, hstart, hstop⟩ := primeUpperBlockGroup0001_cover (by omega) h0001
    refine ⟨block, ?_, hstart, hstop⟩
    simp only [fortyMillionPrimeUpperBlocks, List.mem_append]
    exact Or.inr (Or.inl hmem)
  by_cases h0002 : y <= 1357860
  · obtain ⟨block, hmem, hstart, hstop⟩ := primeUpperBlockGroup0002_cover (by omega) h0002
    refine ⟨block, ?_, hstart, hstop⟩
    simp only [fortyMillionPrimeUpperBlocks, List.mem_append]
    exact Or.inr (Or.inr (Or.inl hmem))
  by_cases h0003 : y <= 1620004
  · obtain ⟨block, hmem, hstart, hstop⟩ := primeUpperBlockGroup0003_cover (by omega) h0003
    refine ⟨block, ?_, hstart, hstop⟩
    simp only [fortyMillionPrimeUpperBlocks, List.mem_append]
    exact Or.inr (Or.inr (Or.inr (Or.inl hmem)))
  by_cases h0004 : y <= 1882148
  · obtain ⟨block, hmem, hstart, hstop⟩ := primeUpperBlockGroup0004_cover (by omega) h0004
    refine ⟨block, ?_, hstart, hstop⟩
    simp only [fortyMillionPrimeUpperBlocks, List.mem_append]
    exact Or.inr (Or.inr (Or.inr (Or.inr (Or.inl hmem))))
  by_cases h0005 : y <= 2144292
  · obtain ⟨block, hmem, hstart, hstop⟩ := primeUpperBlockGroup0005_cover (by omega) h0005
    refine ⟨block, ?_, hstart, hstop⟩
    simp only [fortyMillionPrimeUpperBlocks, List.mem_append]
    exact Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl hmem)))))
  by_cases h0006 : y <= 2406436
  · obtain ⟨block, hmem, hstart, hstop⟩ := primeUpperBlockGroup0006_cover (by omega) h0006
    refine ⟨block, ?_, hstart, hstop⟩
    simp only [fortyMillionPrimeUpperBlocks, List.mem_append]
    exact Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl hmem))))))
  by_cases h0007 : y <= 2668580
  · obtain ⟨block, hmem, hstart, hstop⟩ := primeUpperBlockGroup0007_cover (by omega) h0007
    refine ⟨block, ?_, hstart, hstop⟩
    simp only [fortyMillionPrimeUpperBlocks, List.mem_append]
    exact Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl hmem)))))))
  by_cases h0008 : y <= 2930724
  · obtain ⟨block, hmem, hstart, hstop⟩ := primeUpperBlockGroup0008_cover (by omega) h0008
    refine ⟨block, ?_, hstart, hstop⟩
    simp only [fortyMillionPrimeUpperBlocks, List.mem_append]
    exact Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl hmem))))))))
  by_cases h0009 : y <= 3192868
  · obtain ⟨block, hmem, hstart, hstop⟩ := primeUpperBlockGroup0009_cover (by omega) h0009
    refine ⟨block, ?_, hstart, hstop⟩
    simp only [fortyMillionPrimeUpperBlocks, List.mem_append]
    exact Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl hmem)))))))))
  by_cases h0010 : y <= 3455012
  · obtain ⟨block, hmem, hstart, hstop⟩ := primeUpperBlockGroup0010_cover (by omega) h0010
    refine ⟨block, ?_, hstart, hstop⟩
    simp only [fortyMillionPrimeUpperBlocks, List.mem_append]
    exact Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl hmem))))))))))
  · obtain ⟨block, hmem, hstart, hstop⟩ := primeUpperBlockGroup0011_cover (by omega) hUpper
    refine ⟨block, ?_, hstart, hstop⟩
    simp only [fortyMillionPrimeUpperBlocks, List.mem_append]
    exact Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (hmem)))))))))))

#print axioms fortyMillionPrimeUpperBlocks_stop_count
#print axioms fortyMillionPrimeUpperBlocks_cover

end Erdos848.GeneratedFortyMillionPrimeUpperCoverage
