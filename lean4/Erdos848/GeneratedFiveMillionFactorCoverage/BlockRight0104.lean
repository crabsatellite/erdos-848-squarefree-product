import Erdos848.GeneratedFiveMillionFactorCoverage.BlockLeft0104

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem factorRight0104 :
    factorRightValid0104 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0104 := by
  unfold factorRightValid0104 factorDataChunk0104
  decide

theorem factorBlock0104 :
    factorDataChunk0104.Valid Erdos848.GeneratedFiveMillionPrattCoverage.table :=
  factorValidOfParts0104 factorRoot0104 factorLeft0104 factorRight0104

end Erdos848.GeneratedFiveMillionFactorCoverage
