import Erdos848.GeneratedFiveMillionFactorCoverage.BlockLeft0051

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem factorRight0051 :
    factorRightValid0051 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0051 := by
  unfold factorRightValid0051 factorDataChunk0051
  decide

theorem factorBlock0051 :
    factorDataChunk0051.Valid Erdos848.GeneratedFiveMillionPrattCoverage.table :=
  factorValidOfParts0051 factorRoot0051 factorLeft0051 factorRight0051

end Erdos848.GeneratedFiveMillionFactorCoverage
