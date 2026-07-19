import Erdos848.GeneratedFiveMillionFactorCoverage.BlockLeft0033

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem factorRight0033 :
    factorRightValid0033 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0033 := by
  unfold factorRightValid0033 factorDataChunk0033
  decide

theorem factorBlock0033 :
    factorDataChunk0033.Valid Erdos848.GeneratedFiveMillionPrattCoverage.table :=
  factorValidOfParts0033 factorRoot0033 factorLeft0033 factorRight0033

end Erdos848.GeneratedFiveMillionFactorCoverage
