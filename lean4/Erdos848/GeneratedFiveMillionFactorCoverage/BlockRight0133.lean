import Erdos848.GeneratedFiveMillionFactorCoverage.BlockLeft0133

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem factorRight0133 :
    factorRightValid0133 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0133 := by
  unfold factorRightValid0133 factorDataChunk0133
  decide

theorem factorBlock0133 :
    factorDataChunk0133.Valid Erdos848.GeneratedFiveMillionPrattCoverage.table :=
  factorValidOfParts0133 factorRoot0133 factorLeft0133 factorRight0133

end Erdos848.GeneratedFiveMillionFactorCoverage
