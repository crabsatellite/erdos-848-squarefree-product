import Erdos848.GeneratedFiveMillionFactorCoverage.BlockLeft0148

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem factorRight0148 :
    factorRightValid0148 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0148 := by
  unfold factorRightValid0148 factorDataChunk0148
  decide

theorem factorBlock0148 :
    factorDataChunk0148.Valid Erdos848.GeneratedFiveMillionPrattCoverage.table :=
  factorValidOfParts0148 factorRoot0148 factorLeft0148 factorRight0148

end Erdos848.GeneratedFiveMillionFactorCoverage
