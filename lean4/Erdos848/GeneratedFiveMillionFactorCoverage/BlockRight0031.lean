import Erdos848.GeneratedFiveMillionFactorCoverage.BlockLeft0031

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem factorRight0031 :
    factorRightValid0031 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0031 := by
  unfold factorRightValid0031 factorDataChunk0031
  decide

theorem factorBlock0031 :
    factorDataChunk0031.Valid Erdos848.GeneratedFiveMillionPrattCoverage.table :=
  factorValidOfParts0031 factorRoot0031 factorLeft0031 factorRight0031

end Erdos848.GeneratedFiveMillionFactorCoverage
