import Erdos848.GeneratedFiveMillionFactorCoverage.BlockLeft0173

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem factorRight0173 :
    factorRightValid0173 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0173 := by
  unfold factorRightValid0173 factorDataChunk0173
  decide

theorem factorBlock0173 :
    factorDataChunk0173.Valid Erdos848.GeneratedFiveMillionPrattCoverage.table :=
  factorValidOfParts0173 factorRoot0173 factorLeft0173 factorRight0173

end Erdos848.GeneratedFiveMillionFactorCoverage
