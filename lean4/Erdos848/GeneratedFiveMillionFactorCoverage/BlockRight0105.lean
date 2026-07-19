import Erdos848.GeneratedFiveMillionFactorCoverage.BlockLeft0105

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem factorRight0105 :
    factorRightValid0105 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0105 := by
  unfold factorRightValid0105 factorDataChunk0105
  decide

theorem factorBlock0105 :
    factorDataChunk0105.Valid Erdos848.GeneratedFiveMillionPrattCoverage.table :=
  factorValidOfParts0105 factorRoot0105 factorLeft0105 factorRight0105

end Erdos848.GeneratedFiveMillionFactorCoverage
