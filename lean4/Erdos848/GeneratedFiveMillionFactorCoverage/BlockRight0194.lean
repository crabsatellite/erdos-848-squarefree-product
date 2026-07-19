import Erdos848.GeneratedFiveMillionFactorCoverage.BlockLeft0194

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem factorRight0194 :
    factorRightValid0194 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0194 := by
  unfold factorRightValid0194 factorDataChunk0194
  decide

theorem factorBlock0194 :
    factorDataChunk0194.Valid Erdos848.GeneratedFiveMillionPrattCoverage.table :=
  factorValidOfParts0194 factorRoot0194 factorLeft0194 factorRight0194

end Erdos848.GeneratedFiveMillionFactorCoverage
