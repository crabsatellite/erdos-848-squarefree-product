import Erdos848.GeneratedFiveMillionFactorCoverage.BlockLeft0134

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem factorRight0134 :
    factorRightValid0134 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0134 := by
  unfold factorRightValid0134 factorDataChunk0134
  decide

theorem factorBlock0134 :
    factorDataChunk0134.Valid Erdos848.GeneratedFiveMillionPrattCoverage.table :=
  factorValidOfParts0134 factorRoot0134 factorLeft0134 factorRight0134

end Erdos848.GeneratedFiveMillionFactorCoverage
