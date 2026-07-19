import Erdos848.GeneratedFiveMillionFactorCoverage.BlockLeft0178

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem factorRight0178 :
    factorRightValid0178 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0178 := by
  unfold factorRightValid0178 factorDataChunk0178
  decide

theorem factorBlock0178 :
    factorDataChunk0178.Valid Erdos848.GeneratedFiveMillionPrattCoverage.table :=
  factorValidOfParts0178 factorRoot0178 factorLeft0178 factorRight0178

end Erdos848.GeneratedFiveMillionFactorCoverage
