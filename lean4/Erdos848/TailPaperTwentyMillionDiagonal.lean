import Erdos848.TailPaperTwentyMillionDiagonalGrid
import Erdos848.TailTwentyMillionPaperDiagonalBridge

namespace Erdos848

/-! The generated `10M`--`200M` grid discharges every parameterized paper
diagonal obligation on `20M`--`40M`. -/

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

theorem twentyMillionPaperDiagonalCertificates_kernel :
    TwentyMillionPaperDiagonalCertificates :=
  twentyMillionPaperDiagonalCertificates_of_grid
    twentyMillionPaperDiagonalGridBound_kernel

end Erdos848
