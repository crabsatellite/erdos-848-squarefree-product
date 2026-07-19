import Erdos848.GeneratedFiveMillionFactorCoverage.BlockLeft0118

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem factorRight0118 :
    factorRightValid0118 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0118 := by
  unfold factorRightValid0118 factorDataChunk0118
  decide

theorem factorBlock0118 :
    factorDataChunk0118.Valid Erdos848.GeneratedFiveMillionPrattCoverage.table :=
  factorValidOfParts0118 factorRoot0118 factorLeft0118 factorRight0118

end Erdos848.GeneratedFiveMillionFactorCoverage
