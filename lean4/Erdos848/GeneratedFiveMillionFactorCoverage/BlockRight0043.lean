import Erdos848.GeneratedFiveMillionFactorCoverage.BlockLeft0043

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem factorRight0043 :
    factorRightValid0043 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0043 := by
  unfold factorRightValid0043 factorDataChunk0043
  decide

theorem factorBlock0043 :
    factorDataChunk0043.Valid Erdos848.GeneratedFiveMillionPrattCoverage.table :=
  factorValidOfParts0043 factorRoot0043 factorLeft0043 factorRight0043

end Erdos848.GeneratedFiveMillionFactorCoverage
