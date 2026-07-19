import Erdos848.GeneratedFiveMillionFactorCoverage.BlockLeft0017

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem factorRight0017 :
    factorRightValid0017 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0017 := by
  unfold factorRightValid0017 factorDataChunk0017
  decide

theorem factorBlock0017 :
    factorDataChunk0017.Valid Erdos848.GeneratedFiveMillionPrattCoverage.table :=
  factorValidOfParts0017 factorRoot0017 factorLeft0017 factorRight0017

end Erdos848.GeneratedFiveMillionFactorCoverage
