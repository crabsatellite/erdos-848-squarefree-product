import Erdos848.GeneratedFiveMillionFactorCoverage.BlockLeft0077

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem factorRight0077 :
    factorRightValid0077 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0077 := by
  unfold factorRightValid0077 factorDataChunk0077
  decide

theorem factorBlock0077 :
    factorDataChunk0077.Valid Erdos848.GeneratedFiveMillionPrattCoverage.table :=
  factorValidOfParts0077 factorRoot0077 factorLeft0077 factorRight0077

end Erdos848.GeneratedFiveMillionFactorCoverage
