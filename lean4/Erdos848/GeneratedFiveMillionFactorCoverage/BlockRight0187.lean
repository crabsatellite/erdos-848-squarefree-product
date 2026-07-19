import Erdos848.GeneratedFiveMillionFactorCoverage.BlockLeft0187

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem factorRight0187 :
    factorRightValid0187 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0187 := by
  unfold factorRightValid0187 factorDataChunk0187
  decide

theorem factorBlock0187 :
    factorDataChunk0187.Valid Erdos848.GeneratedFiveMillionPrattCoverage.table :=
  factorValidOfParts0187 factorRoot0187 factorLeft0187 factorRight0187

end Erdos848.GeneratedFiveMillionFactorCoverage
