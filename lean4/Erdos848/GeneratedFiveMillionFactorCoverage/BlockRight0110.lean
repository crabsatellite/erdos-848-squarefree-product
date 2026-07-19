import Erdos848.GeneratedFiveMillionFactorCoverage.BlockLeft0110

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem factorRight0110 :
    factorRightValid0110 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0110 := by
  unfold factorRightValid0110 factorDataChunk0110
  decide

theorem factorBlock0110 :
    factorDataChunk0110.Valid Erdos848.GeneratedFiveMillionPrattCoverage.table :=
  factorValidOfParts0110 factorRoot0110 factorLeft0110 factorRight0110

end Erdos848.GeneratedFiveMillionFactorCoverage
