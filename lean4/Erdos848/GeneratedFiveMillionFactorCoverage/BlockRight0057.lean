import Erdos848.GeneratedFiveMillionFactorCoverage.BlockLeft0057

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem factorRight0057 :
    factorRightValid0057 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0057 := by
  unfold factorRightValid0057 factorDataChunk0057
  decide

theorem factorBlock0057 :
    factorDataChunk0057.Valid Erdos848.GeneratedFiveMillionPrattCoverage.table :=
  factorValidOfParts0057 factorRoot0057 factorLeft0057 factorRight0057

end Erdos848.GeneratedFiveMillionFactorCoverage
