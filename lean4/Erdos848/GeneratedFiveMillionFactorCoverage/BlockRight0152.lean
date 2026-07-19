import Erdos848.GeneratedFiveMillionFactorCoverage.BlockLeft0152

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem factorRight0152 :
    factorRightValid0152 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0152 := by
  unfold factorRightValid0152 factorDataChunk0152
  decide

theorem factorBlock0152 :
    factorDataChunk0152.Valid Erdos848.GeneratedFiveMillionPrattCoverage.table :=
  factorValidOfParts0152 factorRoot0152 factorLeft0152 factorRight0152

end Erdos848.GeneratedFiveMillionFactorCoverage
