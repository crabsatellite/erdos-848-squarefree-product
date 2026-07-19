import Erdos848.GeneratedFiveMillionFactorCoverage.BlockLeft0146

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem factorRight0146 :
    factorRightValid0146 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0146 := by
  unfold factorRightValid0146 factorDataChunk0146
  decide

theorem factorBlock0146 :
    factorDataChunk0146.Valid Erdos848.GeneratedFiveMillionPrattCoverage.table :=
  factorValidOfParts0146 factorRoot0146 factorLeft0146 factorRight0146

end Erdos848.GeneratedFiveMillionFactorCoverage
