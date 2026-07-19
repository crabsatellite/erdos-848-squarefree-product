import Erdos848.GeneratedFiveMillionFactorCoverage.BlockLeft0169

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem factorRight0169 :
    factorRightValid0169 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0169 := by
  unfold factorRightValid0169 factorDataChunk0169
  decide

theorem factorBlock0169 :
    factorDataChunk0169.Valid Erdos848.GeneratedFiveMillionPrattCoverage.table :=
  factorValidOfParts0169 factorRoot0169 factorLeft0169 factorRight0169

end Erdos848.GeneratedFiveMillionFactorCoverage
