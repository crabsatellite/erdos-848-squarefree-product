import Erdos848.GeneratedFiveMillionFactorCoverage.BlockLeft0081

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem factorRight0081 :
    factorRightValid0081 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0081 := by
  unfold factorRightValid0081 factorDataChunk0081
  decide

theorem factorBlock0081 :
    factorDataChunk0081.Valid Erdos848.GeneratedFiveMillionPrattCoverage.table :=
  factorValidOfParts0081 factorRoot0081 factorLeft0081 factorRight0081

end Erdos848.GeneratedFiveMillionFactorCoverage
