import Erdos848.GeneratedFiveMillionFactorCoverage.BlockLeft0117

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem factorRight0117 :
    factorRightValid0117 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0117 := by
  unfold factorRightValid0117 factorDataChunk0117
  decide

theorem factorBlock0117 :
    factorDataChunk0117.Valid Erdos848.GeneratedFiveMillionPrattCoverage.table :=
  factorValidOfParts0117 factorRoot0117 factorLeft0117 factorRight0117

end Erdos848.GeneratedFiveMillionFactorCoverage
