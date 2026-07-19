import Erdos848.GeneratedFiveMillionFactorCoverage.BlockLeft0028

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem factorRight0028 :
    factorRightValid0028 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0028 := by
  unfold factorRightValid0028 factorDataChunk0028
  decide

theorem factorBlock0028 :
    factorDataChunk0028.Valid Erdos848.GeneratedFiveMillionPrattCoverage.table :=
  factorValidOfParts0028 factorRoot0028 factorLeft0028 factorRight0028

end Erdos848.GeneratedFiveMillionFactorCoverage
