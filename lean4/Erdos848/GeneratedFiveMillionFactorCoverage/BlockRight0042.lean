import Erdos848.GeneratedFiveMillionFactorCoverage.BlockLeft0042

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem factorRight0042 :
    factorRightValid0042 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0042 := by
  unfold factorRightValid0042 factorDataChunk0042
  decide

theorem factorBlock0042 :
    factorDataChunk0042.Valid Erdos848.GeneratedFiveMillionPrattCoverage.table :=
  factorValidOfParts0042 factorRoot0042 factorLeft0042 factorRight0042

end Erdos848.GeneratedFiveMillionFactorCoverage
