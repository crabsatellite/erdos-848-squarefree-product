import Erdos848.GeneratedFiveMillionFactorCoverage.BlockLeft0015

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem factorRight0015 :
    factorRightValid0015 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0015 := by
  unfold factorRightValid0015 factorDataChunk0015
  decide

theorem factorBlock0015 :
    factorDataChunk0015.Valid Erdos848.GeneratedFiveMillionPrattCoverage.table :=
  factorValidOfParts0015 factorRoot0015 factorLeft0015 factorRight0015

end Erdos848.GeneratedFiveMillionFactorCoverage
