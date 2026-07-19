import Erdos848.GeneratedFiveMillionFactorCoverage.BlockLeft0123

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem factorRight0123 :
    factorRightValid0123 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0123 := by
  unfold factorRightValid0123 factorDataChunk0123
  decide

theorem factorBlock0123 :
    factorDataChunk0123.Valid Erdos848.GeneratedFiveMillionPrattCoverage.table :=
  factorValidOfParts0123 factorRoot0123 factorLeft0123 factorRight0123

end Erdos848.GeneratedFiveMillionFactorCoverage
