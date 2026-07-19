import Erdos848.GeneratedFiveMillionFactorCoverage.BlockLeft0091

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem factorRight0091 :
    factorRightValid0091 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0091 := by
  unfold factorRightValid0091 factorDataChunk0091
  decide

theorem factorBlock0091 :
    factorDataChunk0091.Valid Erdos848.GeneratedFiveMillionPrattCoverage.table :=
  factorValidOfParts0091 factorRoot0091 factorLeft0091 factorRight0091

end Erdos848.GeneratedFiveMillionFactorCoverage
