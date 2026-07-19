import Erdos848.GeneratedFiveMillionFactorCoverage.BlockLeft0071

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem factorRight0071 :
    factorRightValid0071 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0071 := by
  unfold factorRightValid0071 factorDataChunk0071
  decide

theorem factorBlock0071 :
    factorDataChunk0071.Valid Erdos848.GeneratedFiveMillionPrattCoverage.table :=
  factorValidOfParts0071 factorRoot0071 factorLeft0071 factorRight0071

end Erdos848.GeneratedFiveMillionFactorCoverage
