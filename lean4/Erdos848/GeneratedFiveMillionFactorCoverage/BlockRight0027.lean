import Erdos848.GeneratedFiveMillionFactorCoverage.BlockLeft0027

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem factorRight0027 :
    factorRightValid0027 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0027 := by
  unfold factorRightValid0027 factorDataChunk0027
  decide

theorem factorBlock0027 :
    factorDataChunk0027.Valid Erdos848.GeneratedFiveMillionPrattCoverage.table :=
  factorValidOfParts0027 factorRoot0027 factorLeft0027 factorRight0027

end Erdos848.GeneratedFiveMillionFactorCoverage
