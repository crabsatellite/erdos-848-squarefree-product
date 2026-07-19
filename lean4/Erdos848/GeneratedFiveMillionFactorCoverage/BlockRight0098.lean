import Erdos848.GeneratedFiveMillionFactorCoverage.BlockLeft0098

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem factorRight0098 :
    factorRightValid0098 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0098 := by
  unfold factorRightValid0098 factorDataChunk0098
  decide

theorem factorBlock0098 :
    factorDataChunk0098.Valid Erdos848.GeneratedFiveMillionPrattCoverage.table :=
  factorValidOfParts0098 factorRoot0098 factorLeft0098 factorRight0098

end Erdos848.GeneratedFiveMillionFactorCoverage
