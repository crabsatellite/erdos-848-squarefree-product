import Erdos848.GeneratedFiveMillionFactorCoverage.BlockLeft0036

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem factorRight0036 :
    factorRightValid0036 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0036 := by
  unfold factorRightValid0036 factorDataChunk0036
  decide

theorem factorBlock0036 :
    factorDataChunk0036.Valid Erdos848.GeneratedFiveMillionPrattCoverage.table :=
  factorValidOfParts0036 factorRoot0036 factorLeft0036 factorRight0036

end Erdos848.GeneratedFiveMillionFactorCoverage
