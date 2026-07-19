import Erdos848.GeneratedFiveMillionFactorCoverage.BlockLeft0177

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem factorRight0177 :
    factorRightValid0177 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0177 := by
  unfold factorRightValid0177 factorDataChunk0177
  decide

theorem factorBlock0177 :
    factorDataChunk0177.Valid Erdos848.GeneratedFiveMillionPrattCoverage.table :=
  factorValidOfParts0177 factorRoot0177 factorLeft0177 factorRight0177

end Erdos848.GeneratedFiveMillionFactorCoverage
