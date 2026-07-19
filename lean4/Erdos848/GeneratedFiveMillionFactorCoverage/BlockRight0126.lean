import Erdos848.GeneratedFiveMillionFactorCoverage.BlockLeft0126

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem factorRight0126 :
    factorRightValid0126 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0126 := by
  unfold factorRightValid0126 factorDataChunk0126
  decide

theorem factorBlock0126 :
    factorDataChunk0126.Valid Erdos848.GeneratedFiveMillionPrattCoverage.table :=
  factorValidOfParts0126 factorRoot0126 factorLeft0126 factorRight0126

end Erdos848.GeneratedFiveMillionFactorCoverage
