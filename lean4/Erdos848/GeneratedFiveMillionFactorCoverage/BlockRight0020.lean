import Erdos848.GeneratedFiveMillionFactorCoverage.BlockLeft0020

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem factorRight0020 :
    factorRightValid0020 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0020 := by
  unfold factorRightValid0020 factorDataChunk0020
  decide

theorem factorBlock0020 :
    factorDataChunk0020.Valid Erdos848.GeneratedFiveMillionPrattCoverage.table :=
  factorValidOfParts0020 factorRoot0020 factorLeft0020 factorRight0020

end Erdos848.GeneratedFiveMillionFactorCoverage
