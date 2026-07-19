import Erdos848.GeneratedFiveMillionFactorCoverage.BlockLeft0058

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem factorRight0058 :
    factorRightValid0058 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0058 := by
  unfold factorRightValid0058 factorDataChunk0058
  decide

theorem factorBlock0058 :
    factorDataChunk0058.Valid Erdos848.GeneratedFiveMillionPrattCoverage.table :=
  factorValidOfParts0058 factorRoot0058 factorLeft0058 factorRight0058

end Erdos848.GeneratedFiveMillionFactorCoverage
