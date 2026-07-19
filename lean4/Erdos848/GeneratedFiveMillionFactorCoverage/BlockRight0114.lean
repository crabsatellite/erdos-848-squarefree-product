import Erdos848.GeneratedFiveMillionFactorCoverage.BlockLeft0114

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem factorRight0114 :
    factorRightValid0114 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0114 := by
  unfold factorRightValid0114 factorDataChunk0114
  decide

theorem factorBlock0114 :
    factorDataChunk0114.Valid Erdos848.GeneratedFiveMillionPrattCoverage.table :=
  factorValidOfParts0114 factorRoot0114 factorLeft0114 factorRight0114

end Erdos848.GeneratedFiveMillionFactorCoverage
