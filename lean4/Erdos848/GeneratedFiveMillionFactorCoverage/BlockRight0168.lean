import Erdos848.GeneratedFiveMillionFactorCoverage.BlockLeft0168

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem factorRight0168 :
    factorRightValid0168 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0168 := by
  unfold factorRightValid0168 factorDataChunk0168
  decide

theorem factorBlock0168 :
    factorDataChunk0168.Valid Erdos848.GeneratedFiveMillionPrattCoverage.table :=
  factorValidOfParts0168 factorRoot0168 factorLeft0168 factorRight0168

end Erdos848.GeneratedFiveMillionFactorCoverage
