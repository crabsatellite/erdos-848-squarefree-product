import Erdos848.GeneratedFiveMillionFactorCoverage.BlockLeft0116

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem factorRight0116 :
    factorRightValid0116 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0116 := by
  unfold factorRightValid0116 factorDataChunk0116
  decide

theorem factorBlock0116 :
    factorDataChunk0116.Valid Erdos848.GeneratedFiveMillionPrattCoverage.table :=
  factorValidOfParts0116 factorRoot0116 factorLeft0116 factorRight0116

end Erdos848.GeneratedFiveMillionFactorCoverage
