import Erdos848.GeneratedFiveMillionFactorCoverage.BlockLeft0147

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem factorRight0147 :
    factorRightValid0147 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0147 := by
  unfold factorRightValid0147 factorDataChunk0147
  decide

theorem factorBlock0147 :
    factorDataChunk0147.Valid Erdos848.GeneratedFiveMillionPrattCoverage.table :=
  factorValidOfParts0147 factorRoot0147 factorLeft0147 factorRight0147

end Erdos848.GeneratedFiveMillionFactorCoverage
