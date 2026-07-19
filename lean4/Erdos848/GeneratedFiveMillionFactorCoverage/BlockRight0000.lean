import Erdos848.GeneratedFiveMillionFactorCoverage.BlockLeft0000

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem factorRight0000 :
    factorRightValid0000 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0000 := by
  unfold factorRightValid0000 factorDataChunk0000
  decide

theorem factorBlock0000 :
    factorDataChunk0000.Valid Erdos848.GeneratedFiveMillionPrattCoverage.table :=
  factorValidOfParts0000 factorRoot0000 factorLeft0000 factorRight0000

end Erdos848.GeneratedFiveMillionFactorCoverage
