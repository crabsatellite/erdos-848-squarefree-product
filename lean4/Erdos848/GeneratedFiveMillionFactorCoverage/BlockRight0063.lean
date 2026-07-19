import Erdos848.GeneratedFiveMillionFactorCoverage.BlockLeft0063

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem factorRight0063 :
    factorRightValid0063 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0063 := by
  unfold factorRightValid0063 factorDataChunk0063
  decide

theorem factorBlock0063 :
    factorDataChunk0063.Valid Erdos848.GeneratedFiveMillionPrattCoverage.table :=
  factorValidOfParts0063 factorRoot0063 factorLeft0063 factorRight0063

end Erdos848.GeneratedFiveMillionFactorCoverage
