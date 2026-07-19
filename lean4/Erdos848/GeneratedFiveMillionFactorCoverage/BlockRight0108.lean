import Erdos848.GeneratedFiveMillionFactorCoverage.BlockLeft0108

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem factorRight0108 :
    factorRightValid0108 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0108 := by
  unfold factorRightValid0108 factorDataChunk0108
  decide

theorem factorBlock0108 :
    factorDataChunk0108.Valid Erdos848.GeneratedFiveMillionPrattCoverage.table :=
  factorValidOfParts0108 factorRoot0108 factorLeft0108 factorRight0108

end Erdos848.GeneratedFiveMillionFactorCoverage
