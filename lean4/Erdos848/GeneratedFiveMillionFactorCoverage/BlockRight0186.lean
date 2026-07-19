import Erdos848.GeneratedFiveMillionFactorCoverage.BlockLeft0186

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem factorRight0186 :
    factorRightValid0186 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0186 := by
  unfold factorRightValid0186 factorDataChunk0186
  decide

theorem factorBlock0186 :
    factorDataChunk0186.Valid Erdos848.GeneratedFiveMillionPrattCoverage.table :=
  factorValidOfParts0186 factorRoot0186 factorLeft0186 factorRight0186

end Erdos848.GeneratedFiveMillionFactorCoverage
