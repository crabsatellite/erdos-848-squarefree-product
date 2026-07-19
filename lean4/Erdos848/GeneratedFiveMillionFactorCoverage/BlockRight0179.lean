import Erdos848.GeneratedFiveMillionFactorCoverage.BlockLeft0179

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem factorRight0179 :
    factorRightValid0179 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0179 := by
  unfold factorRightValid0179 factorDataChunk0179
  decide

theorem factorBlock0179 :
    factorDataChunk0179.Valid Erdos848.GeneratedFiveMillionPrattCoverage.table :=
  factorValidOfParts0179 factorRoot0179 factorLeft0179 factorRight0179

end Erdos848.GeneratedFiveMillionFactorCoverage
