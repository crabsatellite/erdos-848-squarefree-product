import Erdos848.GeneratedFiveMillionFactorCoverage.BlockLeft0030

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem factorRight0030 :
    factorRightValid0030 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0030 := by
  unfold factorRightValid0030 factorDataChunk0030
  decide

theorem factorBlock0030 :
    factorDataChunk0030.Valid Erdos848.GeneratedFiveMillionPrattCoverage.table :=
  factorValidOfParts0030 factorRoot0030 factorLeft0030 factorRight0030

end Erdos848.GeneratedFiveMillionFactorCoverage
