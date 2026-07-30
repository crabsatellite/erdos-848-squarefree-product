import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskDataGroup0000
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskDataGroup0001
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskDataGroup0002

namespace Erdos848.GeneratedHybridPaperRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

/-- Thin view of the existing Block-3 masks used by the final route. -/
def highQrFinalNormalMaskWords (p : Nat) : List Nat :=
  if p ≤ 61 then block3QrMaskWordsGroup0000 p
  else if p ≤ 139 then block3QrMaskWordsGroup0001 p
  else block3QrMaskWordsGroup0002 p

end Erdos848.GeneratedHybridPaperRootCoverage
