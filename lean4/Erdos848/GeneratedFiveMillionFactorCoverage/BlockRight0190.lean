import Erdos848.GeneratedFiveMillionFactorCoverage.BlockLeft0190

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem factorRight0190 :
    factorRightValid0190 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0190 := by
  unfold factorRightValid0190 factorDataChunk0190
  decide

theorem factorBlock0190 :
    factorDataChunk0190.Valid Erdos848.GeneratedFiveMillionPrattCoverage.table :=
  factorValidOfParts0190 factorRoot0190 factorLeft0190 factorRight0190

end Erdos848.GeneratedFiveMillionFactorCoverage
