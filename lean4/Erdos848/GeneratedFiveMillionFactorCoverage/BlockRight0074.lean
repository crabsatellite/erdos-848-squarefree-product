import Erdos848.GeneratedFiveMillionFactorCoverage.BlockLeft0074

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem factorRight0074 :
    factorRightValid0074 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0074 := by
  unfold factorRightValid0074 factorDataChunk0074
  decide

theorem factorBlock0074 :
    factorDataChunk0074.Valid Erdos848.GeneratedFiveMillionPrattCoverage.table :=
  factorValidOfParts0074 factorRoot0074 factorLeft0074 factorRight0074

end Erdos848.GeneratedFiveMillionFactorCoverage
