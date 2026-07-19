import Erdos848.GeneratedFiveMillionFactorCoverage.BlockLeft0049

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem factorRight0049 :
    factorRightValid0049 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0049 := by
  unfold factorRightValid0049 factorDataChunk0049
  decide

theorem factorBlock0049 :
    factorDataChunk0049.Valid Erdos848.GeneratedFiveMillionPrattCoverage.table :=
  factorValidOfParts0049 factorRoot0049 factorLeft0049 factorRight0049

end Erdos848.GeneratedFiveMillionFactorCoverage
