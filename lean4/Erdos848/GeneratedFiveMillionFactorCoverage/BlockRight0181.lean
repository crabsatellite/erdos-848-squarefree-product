import Erdos848.GeneratedFiveMillionFactorCoverage.BlockLeft0181

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem factorRight0181 :
    factorRightValid0181 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0181 := by
  unfold factorRightValid0181 factorDataChunk0181
  decide

theorem factorBlock0181 :
    factorDataChunk0181.Valid Erdos848.GeneratedFiveMillionPrattCoverage.table :=
  factorValidOfParts0181 factorRoot0181 factorLeft0181 factorRight0181

end Erdos848.GeneratedFiveMillionFactorCoverage
