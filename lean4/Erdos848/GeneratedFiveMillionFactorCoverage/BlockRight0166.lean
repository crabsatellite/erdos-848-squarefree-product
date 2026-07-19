import Erdos848.GeneratedFiveMillionFactorCoverage.BlockLeft0166

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem factorRight0166 :
    factorRightValid0166 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0166 := by
  unfold factorRightValid0166 factorDataChunk0166
  decide

theorem factorBlock0166 :
    factorDataChunk0166.Valid Erdos848.GeneratedFiveMillionPrattCoverage.table :=
  factorValidOfParts0166 factorRoot0166 factorLeft0166 factorRight0166

end Erdos848.GeneratedFiveMillionFactorCoverage
