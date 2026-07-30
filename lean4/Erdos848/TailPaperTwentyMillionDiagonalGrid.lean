import Erdos848.TailPaperDiagonalGridBounds
import Erdos848.TailTwentyMillionPaperDiagonalBridge

namespace Erdos848

/-! Kernel bridge from the generated diagonal grid to the `20M`--`40M`
uniform selection interface.  This stays separate from the eight-field
certificate assembly so each layer produces a small, reusable `.olean`. -/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

theorem twentyMillionPaperDiagonalGridBound_kernel :
    TwentyMillionPaperDiagonalGridBound := by
  intro N hLower hUpper selection
  have hNLower : 20_000_000 ≤ N := by
    simpa [twentyMillionLower] using hLower
  have hNUpper : N < 40_000_000 := by
    simpa [twentyMillionUpper] using hUpper
  have hLowerGrid : 10_000_000 ≤ N := by
    omega
  have hUpperGrid : N < 200_000_000 := by
    omega
  have hbound :=
    paperDiagonalGrid_ratio_le_envelope
      selection hLowerGrid hUpperGrid
  have hregime :
      paperDiagonalRegimeAt N = .twentyToForty := by
    simp [paperDiagonalRegimeAt, not_lt_of_ge hNLower, hNUpper]
  change
    (((tailDiagonalBad N).filter
      (fun x => truncatedDiagonalAtomOf x ∈ selection.atoms)).card : Rat) /
        N ≤
      (PaperDiagonalRegime.twentyToForty.envelopeNumerator selection : Rat) /
        1_000_000_000
  rw [← hregime]
  exact hbound

end Erdos848
