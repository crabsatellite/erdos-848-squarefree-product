import Erdos848.GeneratedFiveMillionFactorCoverage.BlockLeft0161

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem factorRight0161 :
    factorRightValid0161 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0161 := by
  unfold factorRightValid0161 factorDataChunk0161
  decide

theorem factorBlock0161 :
    factorDataChunk0161.Valid Erdos848.GeneratedFiveMillionPrattCoverage.table :=
  factorValidOfParts0161 factorRoot0161 factorLeft0161 factorRight0161

end Erdos848.GeneratedFiveMillionFactorCoverage
