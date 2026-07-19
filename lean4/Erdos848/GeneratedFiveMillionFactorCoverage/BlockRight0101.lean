import Erdos848.GeneratedFiveMillionFactorCoverage.BlockLeft0101

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem factorRight0101 :
    factorRightValid0101 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0101 := by
  unfold factorRightValid0101 factorDataChunk0101
  decide

theorem factorBlock0101 :
    factorDataChunk0101.Valid Erdos848.GeneratedFiveMillionPrattCoverage.table :=
  factorValidOfParts0101 factorRoot0101 factorLeft0101 factorRight0101

end Erdos848.GeneratedFiveMillionFactorCoverage
