import Erdos848.GeneratedFiveMillionFactorCoverage.BlockLeft0163

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem factorRight0163 :
    factorRightValid0163 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0163 := by
  unfold factorRightValid0163 factorDataChunk0163
  decide

theorem factorBlock0163 :
    factorDataChunk0163.Valid Erdos848.GeneratedFiveMillionPrattCoverage.table :=
  factorValidOfParts0163 factorRoot0163 factorLeft0163 factorRight0163

end Erdos848.GeneratedFiveMillionFactorCoverage
