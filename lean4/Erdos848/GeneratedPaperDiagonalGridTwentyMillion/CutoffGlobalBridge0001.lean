import Erdos848.GeneratedPaperDiagonalGridTwentyMillion.CutoffShard0001
import Erdos848.GeneratedTruncatedDiagonalTwentyMillionAtoms.TargetData

namespace Erdos848.GeneratedPaperDiagonalGridTwentyMillion

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem cutoffGlobalBridge0001
    (i : Fin 232) (j : Fin 5) :
    (Erdos848.GeneratedTruncatedDiagonalTwentyMillionAtoms.atomTargets (cutoffShard0001Atoms j)).Cutoff (gridRows i).upper
      ((gridRows i).counts.count (cutoffShard0001Atoms j)) := by
  fin_cases j
  · exact (by simpa [Erdos848.GeneratedTruncatedDiagonalTwentyMillionAtoms.atomTargets, Erdos848.GeneratedTruncatedDiagonalTwentyMillionAtoms.atomTargetsOddFalse, Erdos848.GeneratedTruncatedDiagonalTwentyMillionAtoms.oddMarkerFalse_3, cutoffShard0001Targets, cutoffShard0001Atoms, TruncatedDiagonalAtomCounts.count] using (cutoffShard0001 (i := i) (j := ⟨0, by decide⟩)))
  · exact (by simpa [Erdos848.GeneratedTruncatedDiagonalTwentyMillionAtoms.atomTargets, Erdos848.GeneratedTruncatedDiagonalTwentyMillionAtoms.atomTargetsOddFalse, Erdos848.GeneratedTruncatedDiagonalTwentyMillionAtoms.oddMarkerFalse_4, cutoffShard0001Targets, cutoffShard0001Atoms, TruncatedDiagonalAtomCounts.count] using (cutoffShard0001 (i := i) (j := ⟨1, by decide⟩)))
  · exact (by simpa [Erdos848.GeneratedTruncatedDiagonalTwentyMillionAtoms.atomTargets, Erdos848.GeneratedTruncatedDiagonalTwentyMillionAtoms.atomTargetsOddFalse, Erdos848.GeneratedTruncatedDiagonalTwentyMillionAtoms.oddMarkerFalse_8, cutoffShard0001Targets, cutoffShard0001Atoms, TruncatedDiagonalAtomCounts.count] using (cutoffShard0001 (i := i) (j := ⟨2, by decide⟩)))
  · exact (by simpa [Erdos848.GeneratedTruncatedDiagonalTwentyMillionAtoms.atomTargets, Erdos848.GeneratedTruncatedDiagonalTwentyMillionAtoms.atomTargetsOddTrue, Erdos848.GeneratedTruncatedDiagonalTwentyMillionAtoms.oddMarkerTrue_5, cutoffShard0001Targets, cutoffShard0001Atoms, TruncatedDiagonalAtomCounts.count] using (cutoffShard0001 (i := i) (j := ⟨3, by decide⟩)))
  · exact (by simpa [Erdos848.GeneratedTruncatedDiagonalTwentyMillionAtoms.atomTargets, Erdos848.GeneratedTruncatedDiagonalTwentyMillionAtoms.atomTargetsOddTrue, Erdos848.GeneratedTruncatedDiagonalTwentyMillionAtoms.oddMarkerTrue_6, cutoffShard0001Targets, cutoffShard0001Atoms, TruncatedDiagonalAtomCounts.count] using (cutoffShard0001 (i := i) (j := ⟨4, by decide⟩)))

#print axioms cutoffGlobalBridge0001

end Erdos848.GeneratedPaperDiagonalGridTwentyMillion
