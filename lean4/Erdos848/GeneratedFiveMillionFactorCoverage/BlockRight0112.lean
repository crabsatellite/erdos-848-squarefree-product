import Erdos848.GeneratedFiveMillionFactorCoverage.BlockLeft0112

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem factorRight0112 :
    factorRightValid0112 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0112 := by
  unfold factorRightValid0112 factorDataChunk0112
  decide

theorem factorBlock0112 :
    factorDataChunk0112.Valid Erdos848.GeneratedFiveMillionPrattCoverage.table :=
  factorValidOfParts0112 factorRoot0112 factorLeft0112 factorRight0112

end Erdos848.GeneratedFiveMillionFactorCoverage
