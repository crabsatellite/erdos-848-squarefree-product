import Erdos848.GeneratedFiveMillionFactorCoverage.BlockLeft0046

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem factorRight0046 :
    factorRightValid0046 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0046 := by
  unfold factorRightValid0046 factorDataChunk0046
  decide

theorem factorBlock0046 :
    factorDataChunk0046.Valid Erdos848.GeneratedFiveMillionPrattCoverage.table :=
  factorValidOfParts0046 factorRoot0046 factorLeft0046 factorRight0046

end Erdos848.GeneratedFiveMillionFactorCoverage
