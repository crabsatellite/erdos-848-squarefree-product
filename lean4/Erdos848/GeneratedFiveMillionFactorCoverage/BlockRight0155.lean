import Erdos848.GeneratedFiveMillionFactorCoverage.BlockLeft0155

namespace Erdos848.GeneratedFiveMillionFactorCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem factorRight0155 :
    factorRightValid0155 Erdos848.GeneratedFiveMillionPrattCoverage.table factorDataChunk0155 := by
  unfold factorRightValid0155 factorDataChunk0155
  decide

theorem factorBlock0155 :
    factorDataChunk0155.Valid Erdos848.GeneratedFiveMillionPrattCoverage.table :=
  factorValidOfParts0155 factorRoot0155 factorLeft0155 factorRight0155

end Erdos848.GeneratedFiveMillionFactorCoverage
