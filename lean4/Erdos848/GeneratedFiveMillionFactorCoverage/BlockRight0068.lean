import Erdos848.GeneratedFiveMillionFactorCoverage.BlockLeft0068

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem factorRight0068 :
    factorRightValid0068 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0068 := by
  unfold factorRightValid0068 factorDataChunk0068
  decide

theorem factorBlock0068 :
    factorDataChunk0068.Valid Erdos848.GeneratedFiveMillionPrattCoverage.table :=
  factorValidOfParts0068 factorRoot0068 factorLeft0068 factorRight0068

end Erdos848.GeneratedFiveMillionFactorCoverage
