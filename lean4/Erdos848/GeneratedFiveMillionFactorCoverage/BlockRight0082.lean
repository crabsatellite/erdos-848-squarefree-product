import Erdos848.GeneratedFiveMillionFactorCoverage.BlockLeft0082

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem factorRight0082 :
    factorRightValid0082 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0082 := by
  unfold factorRightValid0082 factorDataChunk0082
  decide

theorem factorBlock0082 :
    factorDataChunk0082.Valid Erdos848.GeneratedFiveMillionPrattCoverage.table :=
  factorValidOfParts0082 factorRoot0082 factorLeft0082 factorRight0082

end Erdos848.GeneratedFiveMillionFactorCoverage
