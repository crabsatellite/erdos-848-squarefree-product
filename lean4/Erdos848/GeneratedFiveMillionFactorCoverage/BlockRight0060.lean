import Erdos848.GeneratedFiveMillionFactorCoverage.BlockLeft0060

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem factorRight0060 :
    factorRightValid0060 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0060 := by
  unfold factorRightValid0060 factorDataChunk0060
  decide

theorem factorBlock0060 :
    factorDataChunk0060.Valid Erdos848.GeneratedFiveMillionPrattCoverage.table :=
  factorValidOfParts0060 factorRoot0060 factorLeft0060 factorRight0060

end Erdos848.GeneratedFiveMillionFactorCoverage
