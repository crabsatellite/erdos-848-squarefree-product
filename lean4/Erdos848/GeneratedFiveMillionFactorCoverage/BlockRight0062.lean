import Erdos848.GeneratedFiveMillionFactorCoverage.BlockLeft0062

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem factorRight0062 :
    factorRightValid0062 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0062 := by
  unfold factorRightValid0062 factorDataChunk0062
  decide

theorem factorBlock0062 :
    factorDataChunk0062.Valid Erdos848.GeneratedFiveMillionPrattCoverage.table :=
  factorValidOfParts0062 factorRoot0062 factorLeft0062 factorRight0062

end Erdos848.GeneratedFiveMillionFactorCoverage
