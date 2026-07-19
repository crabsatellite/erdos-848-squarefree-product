import Erdos848.GeneratedFiveMillionFactorCoverage.BlockLeft0189

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem factorRight0189 :
    factorRightValid0189 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0189 := by
  unfold factorRightValid0189 factorDataChunk0189
  decide

theorem factorBlock0189 :
    factorDataChunk0189.Valid Erdos848.GeneratedFiveMillionPrattCoverage.table :=
  factorValidOfParts0189 factorRoot0189 factorLeft0189 factorRight0189

end Erdos848.GeneratedFiveMillionFactorCoverage
