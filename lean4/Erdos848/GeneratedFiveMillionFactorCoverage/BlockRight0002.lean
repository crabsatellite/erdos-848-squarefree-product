import Erdos848.GeneratedFiveMillionFactorCoverage.BlockLeft0002

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem factorRight0002 :
    factorRightValid0002 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0002 := by
  unfold factorRightValid0002 factorDataChunk0002
  decide

theorem factorBlock0002 :
    factorDataChunk0002.Valid Erdos848.GeneratedFiveMillionPrattCoverage.table :=
  factorValidOfParts0002 factorRoot0002 factorLeft0002 factorRight0002

end Erdos848.GeneratedFiveMillionFactorCoverage
