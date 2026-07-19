import Erdos848.GeneratedFiveMillionFactorCoverage.BlockLeft0018

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem factorRight0018 :
    factorRightValid0018 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0018 := by
  unfold factorRightValid0018 factorDataChunk0018
  decide

theorem factorBlock0018 :
    factorDataChunk0018.Valid Erdos848.GeneratedFiveMillionPrattCoverage.table :=
  factorValidOfParts0018 factorRoot0018 factorLeft0018 factorRight0018

end Erdos848.GeneratedFiveMillionFactorCoverage
