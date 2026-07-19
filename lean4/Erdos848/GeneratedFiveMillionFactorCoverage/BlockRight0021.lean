import Erdos848.GeneratedFiveMillionFactorCoverage.BlockLeft0021

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem factorRight0021 :
    factorRightValid0021 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0021 := by
  unfold factorRightValid0021 factorDataChunk0021
  decide

theorem factorBlock0021 :
    factorDataChunk0021.Valid Erdos848.GeneratedFiveMillionPrattCoverage.table :=
  factorValidOfParts0021 factorRoot0021 factorLeft0021 factorRight0021

end Erdos848.GeneratedFiveMillionFactorCoverage
