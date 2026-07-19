import Erdos848.GeneratedFiveMillionFactorCoverage.BlockLeft0107

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem factorRight0107 :
    factorRightValid0107 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0107 := by
  unfold factorRightValid0107 factorDataChunk0107
  decide

theorem factorBlock0107 :
    factorDataChunk0107.Valid Erdos848.GeneratedFiveMillionPrattCoverage.table :=
  factorValidOfParts0107 factorRoot0107 factorLeft0107 factorRight0107

end Erdos848.GeneratedFiveMillionFactorCoverage
