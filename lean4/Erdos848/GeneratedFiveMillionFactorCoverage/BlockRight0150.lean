import Erdos848.GeneratedFiveMillionFactorCoverage.BlockLeft0150

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem factorRight0150 :
    factorRightValid0150 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0150 := by
  unfold factorRightValid0150 factorDataChunk0150
  decide

theorem factorBlock0150 :
    factorDataChunk0150.Valid Erdos848.GeneratedFiveMillionPrattCoverage.table :=
  factorValidOfParts0150 factorRoot0150 factorLeft0150 factorRight0150

end Erdos848.GeneratedFiveMillionFactorCoverage
