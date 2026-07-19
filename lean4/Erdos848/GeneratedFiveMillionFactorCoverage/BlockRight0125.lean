import Erdos848.GeneratedFiveMillionFactorCoverage.BlockLeft0125

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem factorRight0125 :
    factorRightValid0125 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0125 := by
  unfold factorRightValid0125 factorDataChunk0125
  decide

theorem factorBlock0125 :
    factorDataChunk0125.Valid Erdos848.GeneratedFiveMillionPrattCoverage.table :=
  factorValidOfParts0125 factorRoot0125 factorLeft0125 factorRight0125

end Erdos848.GeneratedFiveMillionFactorCoverage
