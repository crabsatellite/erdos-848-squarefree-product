import Erdos848.GeneratedFiveMillionFactorCoverage.BlockLeft0140

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem factorRight0140 :
    factorRightValid0140 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0140 := by
  unfold factorRightValid0140 factorDataChunk0140
  decide

theorem factorBlock0140 :
    factorDataChunk0140.Valid Erdos848.GeneratedFiveMillionPrattCoverage.table :=
  factorValidOfParts0140 factorRoot0140 factorLeft0140 factorRight0140

end Erdos848.GeneratedFiveMillionFactorCoverage
