import Erdos848.GeneratedFiveMillionFactorCoverage.BlockLeft0156

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem factorRight0156 :
    factorRightValid0156 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0156 := by
  unfold factorRightValid0156 factorDataChunk0156
  decide

theorem factorBlock0156 :
    factorDataChunk0156.Valid Erdos848.GeneratedFiveMillionPrattCoverage.table :=
  factorValidOfParts0156 factorRoot0156 factorLeft0156 factorRight0156

end Erdos848.GeneratedFiveMillionFactorCoverage
