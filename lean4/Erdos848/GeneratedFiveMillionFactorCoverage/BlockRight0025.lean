import Erdos848.GeneratedFiveMillionFactorCoverage.BlockLeft0025

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem factorRight0025 :
    factorRightValid0025 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0025 := by
  unfold factorRightValid0025 factorDataChunk0025
  decide

theorem factorBlock0025 :
    factorDataChunk0025.Valid Erdos848.GeneratedFiveMillionPrattCoverage.table :=
  factorValidOfParts0025 factorRoot0025 factorLeft0025 factorRight0025

end Erdos848.GeneratedFiveMillionFactorCoverage
