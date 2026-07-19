import Erdos848.GeneratedFiveMillionFactorCoverage.BlockLeft0139

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem factorRight0139 :
    factorRightValid0139 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0139 := by
  unfold factorRightValid0139 factorDataChunk0139
  decide

theorem factorBlock0139 :
    factorDataChunk0139.Valid Erdos848.GeneratedFiveMillionPrattCoverage.table :=
  factorValidOfParts0139 factorRoot0139 factorLeft0139 factorRight0139

end Erdos848.GeneratedFiveMillionFactorCoverage
