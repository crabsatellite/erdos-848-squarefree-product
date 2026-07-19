import Erdos848.GeneratedFiveMillionFactorCoverage.BlockLeft0137

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem factorRight0137 :
    factorRightValid0137 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0137 := by
  unfold factorRightValid0137 factorDataChunk0137
  decide

theorem factorBlock0137 :
    factorDataChunk0137.Valid Erdos848.GeneratedFiveMillionPrattCoverage.table :=
  factorValidOfParts0137 factorRoot0137 factorLeft0137 factorRight0137

end Erdos848.GeneratedFiveMillionFactorCoverage
