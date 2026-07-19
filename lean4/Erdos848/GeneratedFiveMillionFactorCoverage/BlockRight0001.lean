import Erdos848.GeneratedFiveMillionFactorCoverage.BlockLeft0001

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem factorRight0001 :
    factorRightValid0001 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0001 := by
  unfold factorRightValid0001 factorDataChunk0001
  decide

theorem factorBlock0001 :
    factorDataChunk0001.Valid Erdos848.GeneratedFiveMillionPrattCoverage.table :=
  factorValidOfParts0001 factorRoot0001 factorLeft0001 factorRight0001

end Erdos848.GeneratedFiveMillionFactorCoverage
