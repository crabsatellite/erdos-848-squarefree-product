import Erdos848.GeneratedFiveMillionFactorCoverage.BlockLeft0167

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem factorRight0167 :
    factorRightValid0167 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0167 := by
  unfold factorRightValid0167 factorDataChunk0167
  decide

theorem factorBlock0167 :
    factorDataChunk0167.Valid Erdos848.GeneratedFiveMillionPrattCoverage.table :=
  factorValidOfParts0167 factorRoot0167 factorLeft0167 factorRight0167

end Erdos848.GeneratedFiveMillionFactorCoverage
