import Erdos848.GeneratedFiveMillionFactorCoverage.BlockLeft0014

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem factorRight0014 :
    factorRightValid0014 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0014 := by
  unfold factorRightValid0014 factorDataChunk0014
  decide

theorem factorBlock0014 :
    factorDataChunk0014.Valid Erdos848.GeneratedFiveMillionPrattCoverage.table :=
  factorValidOfParts0014 factorRoot0014 factorLeft0014 factorRight0014

end Erdos848.GeneratedFiveMillionFactorCoverage
