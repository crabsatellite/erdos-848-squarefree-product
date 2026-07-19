import Erdos848.GeneratedFiveMillionFactorCoverage.BlockLeft0165

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem factorRight0165 :
    factorRightValid0165 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0165 := by
  unfold factorRightValid0165 factorDataChunk0165
  decide

theorem factorBlock0165 :
    factorDataChunk0165.Valid Erdos848.GeneratedFiveMillionPrattCoverage.table :=
  factorValidOfParts0165 factorRoot0165 factorLeft0165 factorRight0165

end Erdos848.GeneratedFiveMillionFactorCoverage
