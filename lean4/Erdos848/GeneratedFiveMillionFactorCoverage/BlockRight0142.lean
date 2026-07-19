import Erdos848.GeneratedFiveMillionFactorCoverage.BlockLeft0142

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem factorRight0142 :
    factorRightValid0142 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0142 := by
  unfold factorRightValid0142 factorDataChunk0142
  decide

theorem factorBlock0142 :
    factorDataChunk0142.Valid Erdos848.GeneratedFiveMillionPrattCoverage.table :=
  factorValidOfParts0142 factorRoot0142 factorLeft0142 factorRight0142

end Erdos848.GeneratedFiveMillionFactorCoverage
