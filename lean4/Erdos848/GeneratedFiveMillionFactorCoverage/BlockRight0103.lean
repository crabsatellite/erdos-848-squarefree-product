import Erdos848.GeneratedFiveMillionFactorCoverage.BlockLeft0103

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem factorRight0103 :
    factorRightValid0103 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0103 := by
  unfold factorRightValid0103 factorDataChunk0103
  decide

theorem factorBlock0103 :
    factorDataChunk0103.Valid Erdos848.GeneratedFiveMillionPrattCoverage.table :=
  factorValidOfParts0103 factorRoot0103 factorLeft0103 factorRight0103

end Erdos848.GeneratedFiveMillionFactorCoverage
