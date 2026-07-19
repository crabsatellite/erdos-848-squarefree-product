import Erdos848.GeneratedFiveMillionFactorCoverage.BlockLeft0171

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem factorRight0171 :
    factorRightValid0171 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0171 := by
  unfold factorRightValid0171 factorDataChunk0171
  decide

theorem factorBlock0171 :
    factorDataChunk0171.Valid Erdos848.GeneratedFiveMillionPrattCoverage.table :=
  factorValidOfParts0171 factorRoot0171 factorLeft0171 factorRight0171

end Erdos848.GeneratedFiveMillionFactorCoverage
