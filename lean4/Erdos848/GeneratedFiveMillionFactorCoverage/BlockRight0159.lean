import Erdos848.GeneratedFiveMillionFactorCoverage.BlockLeft0159

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem factorRight0159 :
    factorRightValid0159 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0159 := by
  unfold factorRightValid0159 factorDataChunk0159
  decide

theorem factorBlock0159 :
    factorDataChunk0159.Valid Erdos848.GeneratedFiveMillionPrattCoverage.table :=
  factorValidOfParts0159 factorRoot0159 factorLeft0159 factorRight0159

end Erdos848.GeneratedFiveMillionFactorCoverage
