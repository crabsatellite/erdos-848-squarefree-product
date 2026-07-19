import Erdos848.GeneratedFiveMillionFactorCoverage.BlockLeft0145

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem factorRight0145 :
    factorRightValid0145 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0145 := by
  unfold factorRightValid0145 factorDataChunk0145
  decide

theorem factorBlock0145 :
    factorDataChunk0145.Valid Erdos848.GeneratedFiveMillionPrattCoverage.table :=
  factorValidOfParts0145 factorRoot0145 factorLeft0145 factorRight0145

end Erdos848.GeneratedFiveMillionFactorCoverage
