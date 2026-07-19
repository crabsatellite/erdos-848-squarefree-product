import Erdos848.GeneratedTailGlobalMixedSupportCoverage.MaskGlobalBridgeGroup0000
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.MaskGlobalBridgeGroup0001
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.MaskGlobalBridgeGroup0002
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.MaskGlobalBridgeGroup0003
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.MaskGlobalBridgeGroup0004
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.MaskGlobalBridgeGroup0005
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.MaskGlobalBridgeGroup0006
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.MaskGlobalBridgeGroup0007
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.MaskGlobalBridgeGroup0008
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.MaskGlobalBridgeGroup0009
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.MaskGlobalBridgeGroup0010
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.MaskGlobalBridgeGroup0011
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.MaskGlobalBridgeGroup0012
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.MaskGlobalBridgeGroup0013
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.MaskGlobalBridgeGroup0014
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.MaskGlobalBridgeGroup0015
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.MaskGlobalBridgeGroup0016
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.MaskGlobalBridgeGroup0017
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.MaskGlobalBridgeGroup0018
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.MaskGlobalBridgeGroup0019
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.MaskGlobalBridgeGroup0020
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.MaskGlobalBridgeGroup0021
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.MaskGlobalBridgeGroup0022
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.MaskGlobalBridgeGroup0023
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.MaskGlobalBridgeGroup0024
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.MaskGlobalBridgeGroup0025

namespace Erdos848.GeneratedTailGlobalMixedSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def certifiedMaskPrimes : List ℕ :=
  maskSemanticGroup0000 ++
  maskSemanticGroup0001 ++
  maskSemanticGroup0002 ++
  maskSemanticGroup0003 ++
  maskSemanticGroup0004 ++
  maskSemanticGroup0005 ++
  maskSemanticGroup0006 ++
  maskSemanticGroup0007 ++
  maskSemanticGroup0008 ++
  maskSemanticGroup0009 ++
  maskSemanticGroup0010 ++
  maskSemanticGroup0011 ++
  maskSemanticGroup0012 ++
  maskSemanticGroup0013 ++
  maskSemanticGroup0014 ++
  maskSemanticGroup0015 ++
  maskSemanticGroup0016 ++
  maskSemanticGroup0017 ++
  maskSemanticGroup0018 ++
  maskSemanticGroup0019 ++
  maskSemanticGroup0020 ++
  maskSemanticGroup0021 ++
  maskSemanticGroup0022 ++
  maskSemanticGroup0023 ++
  maskSemanticGroup0024 ++
  maskSemanticGroup0025

theorem certifiedMaskPrimes_eq : certifiedMaskPrimes = mixedMaskPrimes := by
  rfl

theorem certifiedMaskPrimes_global_passes :
    certifiedMaskPrimes.all
      (Erdos848.globalMixedMaskPassesWith
        normalQrMaskWords twistQrMaskWords) = true := by
  simp only [certifiedMaskPrimes, List.all_append]
  rw [maskSemanticGroup0000_global_passes]
  rw [maskSemanticGroup0001_global_passes]
  rw [maskSemanticGroup0002_global_passes]
  rw [maskSemanticGroup0003_global_passes]
  rw [maskSemanticGroup0004_global_passes]
  rw [maskSemanticGroup0005_global_passes]
  rw [maskSemanticGroup0006_global_passes]
  rw [maskSemanticGroup0007_global_passes]
  rw [maskSemanticGroup0008_global_passes]
  rw [maskSemanticGroup0009_global_passes]
  rw [maskSemanticGroup0010_global_passes]
  rw [maskSemanticGroup0011_global_passes]
  rw [maskSemanticGroup0012_global_passes]
  rw [maskSemanticGroup0013_global_passes]
  rw [maskSemanticGroup0014_global_passes]
  rw [maskSemanticGroup0015_global_passes]
  rw [maskSemanticGroup0016_global_passes]
  rw [maskSemanticGroup0017_global_passes]
  rw [maskSemanticGroup0018_global_passes]
  rw [maskSemanticGroup0019_global_passes]
  rw [maskSemanticGroup0020_global_passes]
  rw [maskSemanticGroup0021_global_passes]
  rw [maskSemanticGroup0022_global_passes]
  rw [maskSemanticGroup0023_global_passes]
  rw [maskSemanticGroup0024_global_passes]
  rw [maskSemanticGroup0025_global_passes]
  rfl

#print axioms certifiedMaskPrimes_global_passes

end Erdos848.GeneratedTailGlobalMixedSupportCoverage
