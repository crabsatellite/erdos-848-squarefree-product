import Erdos848.GeneratedFiveMillionFactorCoverage.BlockLeft0109

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem factorRight0109 :
    factorRightValid0109 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0109 := by
  unfold factorRightValid0109 factorDataChunk0109
  decide

theorem factorBlock0109 :
    factorDataChunk0109.Valid Erdos848.GeneratedFiveMillionPrattCoverage.table :=
  factorValidOfParts0109 factorRoot0109 factorLeft0109 factorRight0109

end Erdos848.GeneratedFiveMillionFactorCoverage
