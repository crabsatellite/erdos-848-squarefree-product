import Erdos848.GeneratedFiveMillionFactorCoverage.BlockLeft0162

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem factorRight0162 :
    factorRightValid0162 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0162 := by
  unfold factorRightValid0162 factorDataChunk0162
  decide

theorem factorBlock0162 :
    factorDataChunk0162.Valid Erdos848.GeneratedFiveMillionPrattCoverage.table :=
  factorValidOfParts0162 factorRoot0162 factorLeft0162 factorRight0162

end Erdos848.GeneratedFiveMillionFactorCoverage
