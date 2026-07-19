import Erdos848.GeneratedFiveMillionFactorCoverage.BlockLeft0182

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem factorRight0182 :
    factorRightValid0182 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0182 := by
  unfold factorRightValid0182 factorDataChunk0182
  decide

theorem factorBlock0182 :
    factorDataChunk0182.Valid Erdos848.GeneratedFiveMillionPrattCoverage.table :=
  factorValidOfParts0182 factorRoot0182 factorLeft0182 factorRight0182

end Erdos848.GeneratedFiveMillionFactorCoverage
