import Erdos848.GeneratedFiveMillionFactorCoverage.BlockLeft0135

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem factorRight0135 :
    factorRightValid0135 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0135 := by
  unfold factorRightValid0135 factorDataChunk0135
  decide

theorem factorBlock0135 :
    factorDataChunk0135.Valid Erdos848.GeneratedFiveMillionPrattCoverage.table :=
  factorValidOfParts0135 factorRoot0135 factorLeft0135 factorRight0135

end Erdos848.GeneratedFiveMillionFactorCoverage
