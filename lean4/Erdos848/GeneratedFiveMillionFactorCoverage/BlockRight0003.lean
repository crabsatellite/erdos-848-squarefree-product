import Erdos848.GeneratedFiveMillionFactorCoverage.BlockLeft0003

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem factorRight0003 :
    factorRightValid0003 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0003 := by
  unfold factorRightValid0003 factorDataChunk0003
  decide

theorem factorBlock0003 :
    factorDataChunk0003.Valid Erdos848.GeneratedFiveMillionPrattCoverage.table :=
  factorValidOfParts0003 factorRoot0003 factorLeft0003 factorRight0003

end Erdos848.GeneratedFiveMillionFactorCoverage
