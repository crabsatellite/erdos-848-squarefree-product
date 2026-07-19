import Erdos848.GeneratedFiveMillionFactorCoverage.BlockLeft0092

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem factorRight0092 :
    factorRightValid0092 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0092 := by
  unfold factorRightValid0092 factorDataChunk0092
  decide

theorem factorBlock0092 :
    factorDataChunk0092.Valid Erdos848.GeneratedFiveMillionPrattCoverage.table :=
  factorValidOfParts0092 factorRoot0092 factorLeft0092 factorRight0092

end Erdos848.GeneratedFiveMillionFactorCoverage
