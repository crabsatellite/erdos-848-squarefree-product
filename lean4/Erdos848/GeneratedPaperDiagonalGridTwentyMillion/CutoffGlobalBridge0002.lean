import Erdos848.GeneratedPaperDiagonalGridTwentyMillion.CutoffShard0002
import Erdos848.GeneratedTruncatedDiagonalTwentyMillionAtoms.TargetData

namespace Erdos848.GeneratedPaperDiagonalGridTwentyMillion

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem cutoffGlobalBridge0002
    (i : Fin 232) (j : Fin 5) :
    (Erdos848.GeneratedTruncatedDiagonalTwentyMillionAtoms.atomTargets (cutoffShard0002Atoms j)).Cutoff (gridRows i).upper
      ((gridRows i).counts.count (cutoffShard0002Atoms j)) := by
  fin_cases j
  · exact (by simpa [Erdos848.GeneratedTruncatedDiagonalTwentyMillionAtoms.atomTargets, Erdos848.GeneratedTruncatedDiagonalTwentyMillionAtoms.atomTargetsOddTrue, Erdos848.GeneratedTruncatedDiagonalTwentyMillionAtoms.oddMarkerTrue_4, cutoffShard0002Targets, cutoffShard0002Atoms, TruncatedDiagonalAtomCounts.count] using (cutoffShard0002 (i := i) (j := ⟨0, by decide⟩)))
  · exact (by simpa [Erdos848.GeneratedTruncatedDiagonalTwentyMillionAtoms.atomTargets, Erdos848.GeneratedTruncatedDiagonalTwentyMillionAtoms.atomTargetsOddFalse, Erdos848.GeneratedTruncatedDiagonalTwentyMillionAtoms.oddMarkerFalse_0, cutoffShard0002Targets, cutoffShard0002Atoms, TruncatedDiagonalAtomCounts.count] using (cutoffShard0002 (i := i) (j := ⟨1, by decide⟩)))
  · exact (by simpa [Erdos848.GeneratedTruncatedDiagonalTwentyMillionAtoms.atomTargets, Erdos848.GeneratedTruncatedDiagonalTwentyMillionAtoms.atomTargetsOddTrue, Erdos848.GeneratedTruncatedDiagonalTwentyMillionAtoms.oddMarkerTrue_3, cutoffShard0002Targets, cutoffShard0002Atoms, TruncatedDiagonalAtomCounts.count] using (cutoffShard0002 (i := i) (j := ⟨2, by decide⟩)))
  · exact (by simpa [Erdos848.GeneratedTruncatedDiagonalTwentyMillionAtoms.atomTargets, Erdos848.GeneratedTruncatedDiagonalTwentyMillionAtoms.atomTargetsOddFalse, Erdos848.GeneratedTruncatedDiagonalTwentyMillionAtoms.oddMarkerFalse_7, cutoffShard0002Targets, cutoffShard0002Atoms, TruncatedDiagonalAtomCounts.count] using (cutoffShard0002 (i := i) (j := ⟨3, by decide⟩)))
  · exact (by simpa [Erdos848.GeneratedTruncatedDiagonalTwentyMillionAtoms.atomTargets, Erdos848.GeneratedTruncatedDiagonalTwentyMillionAtoms.atomTargetsOddFalse, Erdos848.GeneratedTruncatedDiagonalTwentyMillionAtoms.oddMarkerFalse_6, cutoffShard0002Targets, cutoffShard0002Atoms, TruncatedDiagonalAtomCounts.count] using (cutoffShard0002 (i := i) (j := ⟨4, by decide⟩)))

#print axioms cutoffGlobalBridge0002

end Erdos848.GeneratedPaperDiagonalGridTwentyMillion
