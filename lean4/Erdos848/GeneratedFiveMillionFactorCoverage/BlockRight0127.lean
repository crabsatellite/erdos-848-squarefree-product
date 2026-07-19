import Erdos848.GeneratedFiveMillionFactorCoverage.BlockLeft0127

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem factorRight0127 :
    factorRightValid0127 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0127 := by
  unfold factorRightValid0127 factorDataChunk0127
  decide

theorem factorBlock0127 :
    factorDataChunk0127.Valid Erdos848.GeneratedFiveMillionPrattCoverage.table :=
  factorValidOfParts0127 factorRoot0127 factorLeft0127 factorRight0127

end Erdos848.GeneratedFiveMillionFactorCoverage
