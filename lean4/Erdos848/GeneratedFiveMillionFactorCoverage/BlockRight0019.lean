import Erdos848.GeneratedFiveMillionFactorCoverage.BlockLeft0019

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem factorRight0019 :
    factorRightValid0019 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0019 := by
  unfold factorRightValid0019 factorDataChunk0019
  decide

theorem factorBlock0019 :
    factorDataChunk0019.Valid Erdos848.GeneratedFiveMillionPrattCoverage.table :=
  factorValidOfParts0019 factorRoot0019 factorLeft0019 factorRight0019

end Erdos848.GeneratedFiveMillionFactorCoverage
