import Erdos848.GeneratedFiveMillionFactorCoverage.BlockLeft0034

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem factorRight0034 :
    factorRightValid0034 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0034 := by
  unfold factorRightValid0034 factorDataChunk0034
  decide

theorem factorBlock0034 :
    factorDataChunk0034.Valid Erdos848.GeneratedFiveMillionPrattCoverage.table :=
  factorValidOfParts0034 factorRoot0034 factorLeft0034 factorRight0034

end Erdos848.GeneratedFiveMillionFactorCoverage
