import Erdos848.GeneratedTailGlobalMixedSupportCoverage.ExtensionSemanticGroup0000
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.ExtensionSemanticGroup0001
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.ExtensionSemanticGroup0002
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.ExtensionSemanticGroup0003
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.ExtensionSemanticGroup0004
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.ExtensionSemanticGroup0005
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.ExtensionSemanticGroup0006
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.ExtensionSemanticGroup0007
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.ExtensionSemanticGroup0008
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.ExtensionSemanticGroup0009
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.ExtensionSemanticGroup0010
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.ExtensionSemanticGroup0011
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.ExtensionSemanticGroup0012
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.ExtensionSemanticGroup0013
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.ExtensionSemanticGroup0014
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.ExtensionSemanticGroup0015
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.ExtensionSemanticGroup0016
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.ExtensionSemanticGroup0017
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.ExtensionSemanticGroup0018
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.ExtensionSemanticGroup0019
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.ExtensionSemanticGroup0020
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.ExtensionSemanticGroup0021
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.ExtensionSemanticGroup0022
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.ExtensionSemanticGroup0023
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.ExtensionSemanticGroup0024
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.ExtensionSemanticGroup0025
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.ExtensionSemanticGroup0026
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.ExtensionSemanticGroup0027
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.ExtensionSemanticGroup0028
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.ExtensionSemanticGroup0029
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.ExtensionSemanticGroup0030
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.ExtensionSemanticGroup0031
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.ExtensionSemanticGroup0032
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.ExtensionSemanticGroup0033
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.ExtensionSemanticGroup0034
import Erdos848.GeneratedTailGlobalMixedSupportCoverage.ExtensionSemanticGroup0035

namespace Erdos848.GeneratedTailGlobalMixedSupportCoverage

set_option maxHeartbeats 0
set_option maxRecDepth 1000000

def certifiedMixedExtensionInputs : List ℕ :=
  mixedExtensionSemanticInputs0000 ++ (mixedExtensionSemanticInputs0001 ++ (mixedExtensionSemanticInputs0002 ++ (mixedExtensionSemanticInputs0003 ++ (mixedExtensionSemanticInputs0004 ++ (mixedExtensionSemanticInputs0005 ++ (mixedExtensionSemanticInputs0006 ++ (mixedExtensionSemanticInputs0007 ++ (mixedExtensionSemanticInputs0008 ++ (mixedExtensionSemanticInputs0009 ++ (mixedExtensionSemanticInputs0010 ++ (mixedExtensionSemanticInputs0011 ++ (mixedExtensionSemanticInputs0012 ++ (mixedExtensionSemanticInputs0013 ++ (mixedExtensionSemanticInputs0014 ++ (mixedExtensionSemanticInputs0015 ++ (mixedExtensionSemanticInputs0016 ++ (mixedExtensionSemanticInputs0017 ++ (mixedExtensionSemanticInputs0018 ++ (mixedExtensionSemanticInputs0019 ++ (mixedExtensionSemanticInputs0020 ++ (mixedExtensionSemanticInputs0021 ++ (mixedExtensionSemanticInputs0022 ++ (mixedExtensionSemanticInputs0023 ++ (mixedExtensionSemanticInputs0024 ++ (mixedExtensionSemanticInputs0025 ++ (mixedExtensionSemanticInputs0026 ++ (mixedExtensionSemanticInputs0027 ++ (mixedExtensionSemanticInputs0028 ++ (mixedExtensionSemanticInputs0029 ++ (mixedExtensionSemanticInputs0030 ++ (mixedExtensionSemanticInputs0031 ++ (mixedExtensionSemanticInputs0032 ++ (mixedExtensionSemanticInputs0033 ++ (mixedExtensionSemanticInputs0034 ++ (mixedExtensionSemanticInputs0035)))))))))))))))))))))))))))))))))))

theorem certifiedMixedExtensionInputs_eq :
    certifiedMixedExtensionInputs = 0 :: mixedSupportPrimes := by
  rfl

theorem certifiedMixedExtensionInputs_semantic
    {p : ℕ} (hp : p ∈ certifiedMixedExtensionInputs) :
    Nat.Prime (mixedSupportExtensionPrime p) ∧
      p < mixedSupportExtensionPrime p ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        p < candidate → mixedSupportExtensionPrime p ≤ candidate := by
  unfold certifiedMixedExtensionInputs at hp
  rcases List.mem_append.mp hp with hp | hp
  · exact mixedExtensionSemanticInputs0000_semantic hp
  rcases List.mem_append.mp hp with hp | hp
  · exact mixedExtensionSemanticInputs0001_semantic hp
  rcases List.mem_append.mp hp with hp | hp
  · exact mixedExtensionSemanticInputs0002_semantic hp
  rcases List.mem_append.mp hp with hp | hp
  · exact mixedExtensionSemanticInputs0003_semantic hp
  rcases List.mem_append.mp hp with hp | hp
  · exact mixedExtensionSemanticInputs0004_semantic hp
  rcases List.mem_append.mp hp with hp | hp
  · exact mixedExtensionSemanticInputs0005_semantic hp
  rcases List.mem_append.mp hp with hp | hp
  · exact mixedExtensionSemanticInputs0006_semantic hp
  rcases List.mem_append.mp hp with hp | hp
  · exact mixedExtensionSemanticInputs0007_semantic hp
  rcases List.mem_append.mp hp with hp | hp
  · exact mixedExtensionSemanticInputs0008_semantic hp
  rcases List.mem_append.mp hp with hp | hp
  · exact mixedExtensionSemanticInputs0009_semantic hp
  rcases List.mem_append.mp hp with hp | hp
  · exact mixedExtensionSemanticInputs0010_semantic hp
  rcases List.mem_append.mp hp with hp | hp
  · exact mixedExtensionSemanticInputs0011_semantic hp
  rcases List.mem_append.mp hp with hp | hp
  · exact mixedExtensionSemanticInputs0012_semantic hp
  rcases List.mem_append.mp hp with hp | hp
  · exact mixedExtensionSemanticInputs0013_semantic hp
  rcases List.mem_append.mp hp with hp | hp
  · exact mixedExtensionSemanticInputs0014_semantic hp
  rcases List.mem_append.mp hp with hp | hp
  · exact mixedExtensionSemanticInputs0015_semantic hp
  rcases List.mem_append.mp hp with hp | hp
  · exact mixedExtensionSemanticInputs0016_semantic hp
  rcases List.mem_append.mp hp with hp | hp
  · exact mixedExtensionSemanticInputs0017_semantic hp
  rcases List.mem_append.mp hp with hp | hp
  · exact mixedExtensionSemanticInputs0018_semantic hp
  rcases List.mem_append.mp hp with hp | hp
  · exact mixedExtensionSemanticInputs0019_semantic hp
  rcases List.mem_append.mp hp with hp | hp
  · exact mixedExtensionSemanticInputs0020_semantic hp
  rcases List.mem_append.mp hp with hp | hp
  · exact mixedExtensionSemanticInputs0021_semantic hp
  rcases List.mem_append.mp hp with hp | hp
  · exact mixedExtensionSemanticInputs0022_semantic hp
  rcases List.mem_append.mp hp with hp | hp
  · exact mixedExtensionSemanticInputs0023_semantic hp
  rcases List.mem_append.mp hp with hp | hp
  · exact mixedExtensionSemanticInputs0024_semantic hp
  rcases List.mem_append.mp hp with hp | hp
  · exact mixedExtensionSemanticInputs0025_semantic hp
  rcases List.mem_append.mp hp with hp | hp
  · exact mixedExtensionSemanticInputs0026_semantic hp
  rcases List.mem_append.mp hp with hp | hp
  · exact mixedExtensionSemanticInputs0027_semantic hp
  rcases List.mem_append.mp hp with hp | hp
  · exact mixedExtensionSemanticInputs0028_semantic hp
  rcases List.mem_append.mp hp with hp | hp
  · exact mixedExtensionSemanticInputs0029_semantic hp
  rcases List.mem_append.mp hp with hp | hp
  · exact mixedExtensionSemanticInputs0030_semantic hp
  rcases List.mem_append.mp hp with hp | hp
  · exact mixedExtensionSemanticInputs0031_semantic hp
  rcases List.mem_append.mp hp with hp | hp
  · exact mixedExtensionSemanticInputs0032_semantic hp
  rcases List.mem_append.mp hp with hp | hp
  · exact mixedExtensionSemanticInputs0033_semantic hp
  rcases List.mem_append.mp hp with hp | hp
  · exact mixedExtensionSemanticInputs0034_semantic hp
  exact mixedExtensionSemanticInputs0035_semantic hp

theorem mixedSupportExtensionPrime_semantic
    {p : ℕ} (hp : p = 0 ∨ p ∈ mixedSupportPrimes) :
    Nat.Prime (mixedSupportExtensionPrime p) ∧
      p < mixedSupportExtensionPrime p ∧
      ∀ candidate, Erdos848.FiveMillionSupportPrime candidate →
        p < candidate → mixedSupportExtensionPrime p ≤ candidate := by
  apply certifiedMixedExtensionInputs_semantic
  rw [certifiedMixedExtensionInputs_eq]
  simpa only [List.mem_cons] using hp

#print axioms mixedSupportExtensionPrime_semantic

end Erdos848.GeneratedTailGlobalMixedSupportCoverage
