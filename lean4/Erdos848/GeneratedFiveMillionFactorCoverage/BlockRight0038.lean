import Erdos848.GeneratedFiveMillionFactorCoverage.BlockLeft0038

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem factorRight0038 :
    factorRightValid0038 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0038 := by
  unfold factorRightValid0038 factorDataChunk0038
  decide

theorem factorBlock0038 :
    factorDataChunk0038.Valid Erdos848.GeneratedFiveMillionPrattCoverage.table :=
  factorValidOfParts0038 factorRoot0038 factorLeft0038 factorRight0038

end Erdos848.GeneratedFiveMillionFactorCoverage
