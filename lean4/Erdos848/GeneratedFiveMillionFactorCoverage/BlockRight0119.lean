import Erdos848.GeneratedFiveMillionFactorCoverage.BlockLeft0119

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem factorRight0119 :
    factorRightValid0119 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0119 := by
  unfold factorRightValid0119 factorDataChunk0119
  decide

theorem factorBlock0119 :
    factorDataChunk0119.Valid Erdos848.GeneratedFiveMillionPrattCoverage.table :=
  factorValidOfParts0119 factorRoot0119 factorLeft0119 factorRight0119

end Erdos848.GeneratedFiveMillionFactorCoverage
