import Erdos848.GeneratedFiveMillionFactorCoverage.BlockLeft0045

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem factorRight0045 :
    factorRightValid0045 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0045 := by
  unfold factorRightValid0045 factorDataChunk0045
  decide

theorem factorBlock0045 :
    factorDataChunk0045.Valid Erdos848.GeneratedFiveMillionPrattCoverage.table :=
  factorValidOfParts0045 factorRoot0045 factorLeft0045 factorRight0045

end Erdos848.GeneratedFiveMillionFactorCoverage
