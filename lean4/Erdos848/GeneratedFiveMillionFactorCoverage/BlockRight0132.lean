import Erdos848.GeneratedFiveMillionFactorCoverage.BlockLeft0132

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem factorRight0132 :
    factorRightValid0132 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0132 := by
  unfold factorRightValid0132 factorDataChunk0132
  decide

theorem factorBlock0132 :
    factorDataChunk0132.Valid Erdos848.GeneratedFiveMillionPrattCoverage.table :=
  factorValidOfParts0132 factorRoot0132 factorLeft0132 factorRight0132

end Erdos848.GeneratedFiveMillionFactorCoverage
