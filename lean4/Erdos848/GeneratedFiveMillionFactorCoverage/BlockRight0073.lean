import Erdos848.GeneratedFiveMillionFactorCoverage.BlockLeft0073

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem factorRight0073 :
    factorRightValid0073 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0073 := by
  unfold factorRightValid0073 factorDataChunk0073
  decide

theorem factorBlock0073 :
    factorDataChunk0073.Valid Erdos848.GeneratedFiveMillionPrattCoverage.table :=
  factorValidOfParts0073 factorRoot0073 factorLeft0073 factorRight0073

end Erdos848.GeneratedFiveMillionFactorCoverage
