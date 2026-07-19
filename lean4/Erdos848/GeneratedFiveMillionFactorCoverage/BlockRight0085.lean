import Erdos848.GeneratedFiveMillionFactorCoverage.BlockLeft0085

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem factorRight0085 :
    factorRightValid0085 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0085 := by
  unfold factorRightValid0085 factorDataChunk0085
  decide

theorem factorBlock0085 :
    factorDataChunk0085.Valid Erdos848.GeneratedFiveMillionPrattCoverage.table :=
  factorValidOfParts0085 factorRoot0085 factorLeft0085 factorRight0085

end Erdos848.GeneratedFiveMillionFactorCoverage
