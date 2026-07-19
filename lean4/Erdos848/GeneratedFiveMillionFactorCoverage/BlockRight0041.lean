import Erdos848.GeneratedFiveMillionFactorCoverage.BlockLeft0041

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem factorRight0041 :
    factorRightValid0041 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0041 := by
  unfold factorRightValid0041 factorDataChunk0041
  decide

theorem factorBlock0041 :
    factorDataChunk0041.Valid Erdos848.GeneratedFiveMillionPrattCoverage.table :=
  factorValidOfParts0041 factorRoot0041 factorLeft0041 factorRight0041

end Erdos848.GeneratedFiveMillionFactorCoverage
