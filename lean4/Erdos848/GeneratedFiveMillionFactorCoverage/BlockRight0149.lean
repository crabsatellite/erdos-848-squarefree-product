import Erdos848.GeneratedFiveMillionFactorCoverage.BlockLeft0149

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem factorRight0149 :
    factorRightValid0149 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0149 := by
  unfold factorRightValid0149 factorDataChunk0149
  decide

theorem factorBlock0149 :
    factorDataChunk0149.Valid Erdos848.GeneratedFiveMillionPrattCoverage.table :=
  factorValidOfParts0149 factorRoot0149 factorLeft0149 factorRight0149

end Erdos848.GeneratedFiveMillionFactorCoverage
