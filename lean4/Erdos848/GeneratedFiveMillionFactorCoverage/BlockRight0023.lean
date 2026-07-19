import Erdos848.GeneratedFiveMillionFactorCoverage.BlockLeft0023

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem factorRight0023 :
    factorRightValid0023 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0023 := by
  unfold factorRightValid0023 factorDataChunk0023
  decide

theorem factorBlock0023 :
    factorDataChunk0023.Valid Erdos848.GeneratedFiveMillionPrattCoverage.table :=
  factorValidOfParts0023 factorRoot0023 factorLeft0023 factorRight0023

end Erdos848.GeneratedFiveMillionFactorCoverage
