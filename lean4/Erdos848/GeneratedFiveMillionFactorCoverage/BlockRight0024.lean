import Erdos848.GeneratedFiveMillionFactorCoverage.BlockLeft0024

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem factorRight0024 :
    factorRightValid0024 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0024 := by
  unfold factorRightValid0024 factorDataChunk0024
  decide

theorem factorBlock0024 :
    factorDataChunk0024.Valid Erdos848.GeneratedFiveMillionPrattCoverage.table :=
  factorValidOfParts0024 factorRoot0024 factorLeft0024 factorRight0024

end Erdos848.GeneratedFiveMillionFactorCoverage
