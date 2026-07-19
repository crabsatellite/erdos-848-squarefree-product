import Erdos848.GeneratedFiveMillionFactorCoverage.BlockLeft0083

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem factorRight0083 :
    factorRightValid0083 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0083 := by
  unfold factorRightValid0083 factorDataChunk0083
  decide

theorem factorBlock0083 :
    factorDataChunk0083.Valid Erdos848.GeneratedFiveMillionPrattCoverage.table :=
  factorValidOfParts0083 factorRoot0083 factorLeft0083 factorRight0083

end Erdos848.GeneratedFiveMillionFactorCoverage
