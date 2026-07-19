import Erdos848.GeneratedFiveMillionFactorCoverage.BlockLeft0121

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem factorRight0121 :
    factorRightValid0121 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0121 := by
  unfold factorRightValid0121 factorDataChunk0121
  decide

theorem factorBlock0121 :
    factorDataChunk0121.Valid Erdos848.GeneratedFiveMillionPrattCoverage.table :=
  factorValidOfParts0121 factorRoot0121 factorLeft0121 factorRight0121

end Erdos848.GeneratedFiveMillionFactorCoverage
