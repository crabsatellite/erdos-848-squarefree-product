import Erdos848.GeneratedFiveMillionFactorCoverage.BlockLeft0050

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem factorRight0050 :
    factorRightValid0050 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0050 := by
  unfold factorRightValid0050 factorDataChunk0050
  decide

theorem factorBlock0050 :
    factorDataChunk0050.Valid Erdos848.GeneratedFiveMillionPrattCoverage.table :=
  factorValidOfParts0050 factorRoot0050 factorLeft0050 factorRight0050

end Erdos848.GeneratedFiveMillionFactorCoverage
