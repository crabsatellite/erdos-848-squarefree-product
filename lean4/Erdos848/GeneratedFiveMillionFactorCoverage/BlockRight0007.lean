import Erdos848.GeneratedFiveMillionFactorCoverage.BlockLeft0007

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem factorRight0007 :
    factorRightValid0007 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0007 := by
  unfold factorRightValid0007 factorDataChunk0007
  decide

theorem factorBlock0007 :
    factorDataChunk0007.Valid Erdos848.GeneratedFiveMillionPrattCoverage.table :=
  factorValidOfParts0007 factorRoot0007 factorLeft0007 factorRight0007

end Erdos848.GeneratedFiveMillionFactorCoverage
