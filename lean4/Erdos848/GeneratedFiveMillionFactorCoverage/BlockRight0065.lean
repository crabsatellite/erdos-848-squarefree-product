import Erdos848.GeneratedFiveMillionFactorCoverage.BlockLeft0065

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem factorRight0065 :
    factorRightValid0065 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0065 := by
  unfold factorRightValid0065 factorDataChunk0065
  decide

theorem factorBlock0065 :
    factorDataChunk0065.Valid Erdos848.GeneratedFiveMillionPrattCoverage.table :=
  factorValidOfParts0065 factorRoot0065 factorLeft0065 factorRight0065

end Erdos848.GeneratedFiveMillionFactorCoverage
