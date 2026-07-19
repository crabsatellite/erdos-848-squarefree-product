import Erdos848.GeneratedFiveMillionFactorCoverage.BlockLeft0056

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem factorRight0056 :
    factorRightValid0056 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0056 := by
  unfold factorRightValid0056 factorDataChunk0056
  decide

theorem factorBlock0056 :
    factorDataChunk0056.Valid Erdos848.GeneratedFiveMillionPrattCoverage.table :=
  factorValidOfParts0056 factorRoot0056 factorLeft0056 factorRight0056

end Erdos848.GeneratedFiveMillionFactorCoverage
