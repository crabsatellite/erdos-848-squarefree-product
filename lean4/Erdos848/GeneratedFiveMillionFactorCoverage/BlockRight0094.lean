import Erdos848.GeneratedFiveMillionFactorCoverage.BlockLeft0094

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem factorRight0094 :
    factorRightValid0094 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0094 := by
  unfold factorRightValid0094 factorDataChunk0094
  decide

theorem factorBlock0094 :
    factorDataChunk0094.Valid Erdos848.GeneratedFiveMillionPrattCoverage.table :=
  factorValidOfParts0094 factorRoot0094 factorLeft0094 factorRight0094

end Erdos848.GeneratedFiveMillionFactorCoverage
