import Erdos848.GeneratedFiveMillionFactorCoverage.BlockLeft0136

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem factorRight0136 :
    factorRightValid0136 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0136 := by
  unfold factorRightValid0136 factorDataChunk0136
  decide

theorem factorBlock0136 :
    factorDataChunk0136.Valid Erdos848.GeneratedFiveMillionPrattCoverage.table :=
  factorValidOfParts0136 factorRoot0136 factorLeft0136 factorRight0136

end Erdos848.GeneratedFiveMillionFactorCoverage
