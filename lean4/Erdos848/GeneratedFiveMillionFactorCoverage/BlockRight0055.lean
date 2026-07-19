import Erdos848.GeneratedFiveMillionFactorCoverage.BlockLeft0055

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem factorRight0055 :
    factorRightValid0055 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0055 := by
  unfold factorRightValid0055 factorDataChunk0055
  decide

theorem factorBlock0055 :
    factorDataChunk0055.Valid Erdos848.GeneratedFiveMillionPrattCoverage.table :=
  factorValidOfParts0055 factorRoot0055 factorLeft0055 factorRight0055

end Erdos848.GeneratedFiveMillionFactorCoverage
