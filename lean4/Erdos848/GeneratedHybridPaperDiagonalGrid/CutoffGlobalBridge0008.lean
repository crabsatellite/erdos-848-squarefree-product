import Erdos848.GeneratedHybridPaperDiagonalGrid.CutoffShard0008
import Erdos848.GeneratedHybridHighDiagonalTwoBillionAtoms.TargetData

namespace Erdos848.GeneratedHybridPaperDiagonalGrid

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem cutoffGlobalBridge0008
    (i : Fin 463) (j : Fin 6) :
    (Erdos848.GeneratedHybridHighDiagonalTwoBillionAtoms.atomTargets (cutoffShard0008Atoms j)).Cutoff (gridRows i).upper
      ((gridRows i).counts.count (cutoffShard0008Atoms j)) := by
  fin_cases j
  · exact (by simpa [Erdos848.GeneratedHybridHighDiagonalTwoBillionAtoms.atomTargets, Erdos848.GeneratedHybridHighDiagonalTwoBillionAtoms.atomTargetsOddTrue, Erdos848.GeneratedHybridHighDiagonalTwoBillionAtoms.oddMarkerTrue_3, cutoffShard0008Targets, cutoffShard0008Atoms, TruncatedDiagonalAtomCounts.count] using (cutoffShard0008 (i := i) (j := ⟨0, by decide⟩)))
  · exact (by simpa [Erdos848.GeneratedHybridHighDiagonalTwoBillionAtoms.atomTargets, Erdos848.GeneratedHybridHighDiagonalTwoBillionAtoms.atomTargetsOddTrue, Erdos848.GeneratedHybridHighDiagonalTwoBillionAtoms.oddMarkerTrue_4, cutoffShard0008Targets, cutoffShard0008Atoms, TruncatedDiagonalAtomCounts.count] using (cutoffShard0008 (i := i) (j := ⟨1, by decide⟩)))
  · exact (by simpa [Erdos848.GeneratedHybridHighDiagonalTwoBillionAtoms.atomTargets, Erdos848.GeneratedHybridHighDiagonalTwoBillionAtoms.atomTargetsOddTrue, Erdos848.GeneratedHybridHighDiagonalTwoBillionAtoms.oddMarkerTrue_5, cutoffShard0008Targets, cutoffShard0008Atoms, TruncatedDiagonalAtomCounts.count] using (cutoffShard0008 (i := i) (j := ⟨2, by decide⟩)))
  · exact (by simpa [Erdos848.GeneratedHybridHighDiagonalTwoBillionAtoms.atomTargets, Erdos848.GeneratedHybridHighDiagonalTwoBillionAtoms.atomTargetsOddTrue, Erdos848.GeneratedHybridHighDiagonalTwoBillionAtoms.oddMarkerTrue_6, cutoffShard0008Targets, cutoffShard0008Atoms, TruncatedDiagonalAtomCounts.count] using (cutoffShard0008 (i := i) (j := ⟨3, by decide⟩)))
  · exact (by simpa [Erdos848.GeneratedHybridHighDiagonalTwoBillionAtoms.atomTargets, Erdos848.GeneratedHybridHighDiagonalTwoBillionAtoms.atomTargetsOddTrue, Erdos848.GeneratedHybridHighDiagonalTwoBillionAtoms.oddMarkerTrue_7, cutoffShard0008Targets, cutoffShard0008Atoms, TruncatedDiagonalAtomCounts.count] using (cutoffShard0008 (i := i) (j := ⟨4, by decide⟩)))
  · exact (by simpa [Erdos848.GeneratedHybridHighDiagonalTwoBillionAtoms.atomTargets, Erdos848.GeneratedHybridHighDiagonalTwoBillionAtoms.atomTargetsOddTrue, Erdos848.GeneratedHybridHighDiagonalTwoBillionAtoms.oddMarkerTrue_8, cutoffShard0008Targets, cutoffShard0008Atoms, TruncatedDiagonalAtomCounts.count] using (cutoffShard0008 (i := i) (j := ⟨5, by decide⟩)))

#print axioms cutoffGlobalBridge0008

end Erdos848.GeneratedHybridPaperDiagonalGrid
