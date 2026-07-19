import Erdos848.GeneratedFiveMillionFactorCoverage.BlockLeft0195

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem factorRight0195 :
    factorRightValid0195 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0195 := by
  unfold factorRightValid0195 factorDataChunk0195
  decide

theorem factorBlock0195 :
    factorDataChunk0195.Valid Erdos848.GeneratedFiveMillionPrattCoverage.table :=
  factorValidOfParts0195 factorRoot0195 factorLeft0195 factorRight0195

end Erdos848.GeneratedFiveMillionFactorCoverage
