import Erdos848.GeneratedHybridPaperRootCoverage.HighQrFinalData
import Erdos848.GeneratedHybridPaperRootCoverage.HighQrFinalNormalMaskData
import Erdos848.GeneratedHybridPaperRootCoverage.HighQrFinalTwistMaskData
import Erdos848.GeneratedHybridPaperRootCoverage.Block3CosetBaseCertificate
import Erdos848.GeneratedHybridPaperRootCoverage.Block3MaskSemanticCertificate
import Erdos848.GeneratedHybridPaperRootTwistCoverage.Block3MaskSemanticCertificate

namespace Erdos848.GeneratedHybridPaperRootCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def highQrFinalCompletionCertificate :
    Erdos848.CertifiedHighQrSupportPrimeInterval where
  data := highQrFinalCompletionData
  checked := by decide

theorem highQrFinalMaskPrimes_sublist :
    List.Sublist highQrFinalMaskPrimes maskPrimes := by
  decide

theorem highQrFinalNormalMaskWords_eq_global
    {p : Nat} (hp : p ∈ highQrFinalMaskPrimes) :
    highQrFinalNormalMaskWords p = block3QrMaskWords p := by
  have hp199 : p ≤ 199 := by
    simp only [highQrFinalMaskPrimes, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    omega
  simp [highQrFinalNormalMaskWords, block3QrMaskWords,
    show p ≤ 229 by omega]

theorem highQrFinalTwistMaskWords_eq_global
    {p : Nat} (hp : p ∈ highQrFinalMaskPrimes) :
    highQrFinalTwistMaskWords p =
      Erdos848.GeneratedHybridPaperRootTwistCoverage.block3TwistQrMaskWords p := by
  have hp199 : p ≤ 199 := by
    simp only [highQrFinalMaskPrimes, List.mem_cons,
      List.not_mem_nil, or_false] at hp
    omega
  have hpGlobal : p ∈ maskPrimes :=
    highQrFinalMaskPrimes_sublist.subset hp
  simp [highQrFinalTwistMaskWords,
    Erdos848.GeneratedHybridPaperRootTwistCoverage.block3TwistQrMaskWords,
    hpGlobal,
    show p ≤ 229 by omega]

theorem highQrFinalNormalCertificate
    {p : Nat} (hp : p ∈ highQrFinalMaskPrimes) :
    Erdos848.SquareWordMaskCertificate 15625 p
      (highQrFinalNormalMaskWords p) := by
  rw [highQrFinalNormalMaskWords_eq_global hp]
  exact block3QrMaskWords_certificate
    (highQrFinalMaskPrimes_sublist.subset hp)

theorem highQrFinalTwistCertificate
    {p : Nat} (hp : p ∈ highQrFinalMaskPrimes) :
    Erdos848.HybridPaperTwistWordMaskCertificate
      15625 p (highQrFinalNormalMaskWords p)
      (highQrFinalTwistMaskWords p) := by
  rw [highQrFinalNormalMaskWords_eq_global hp,
    highQrFinalTwistMaskWords_eq_global hp]
  exact
    Erdos848.GeneratedHybridPaperRootTwistCoverage.block3TwistQrMaskWords_certificate
        (highQrFinalMaskPrimes_sublist.subset hp)

theorem highQrFinalSquareBaseCount :
    Erdos848.globalMixedCoreCountWords block3SquareBaseWords = 6250 := by
  decide

theorem highQrFinalNonsquareBaseCount :
    Erdos848.globalMixedCoreCountWords block3NonsquareBaseWords = 6250 := by
  decide

theorem highQrFinalSmallK00_sublist :
    List.Sublist highQrFinalSmallK00.primes highQrFinalMaskPrimes := by
  decide

theorem highQrFinalSmallK00_checked :
    highQrFinalSmallK00.check = true := by
  decide
theorem highQrFinalLargeK00_checked :
    highQrFinalLargeK00.check = true := by
  decide
theorem highQrFinalForcingK00_checked :
    highQrFinalForcingK00.check = true := by
  decide

theorem highQrFinalSmallK01_sublist :
    List.Sublist highQrFinalSmallK01.primes highQrFinalMaskPrimes := by
  decide

theorem highQrFinalSmallK01_checked :
    highQrFinalSmallK01.check = true := by
  decide
theorem highQrFinalLargeK01_checked :
    highQrFinalLargeK01.check = true := by
  decide
theorem highQrFinalForcingK01_checked :
    highQrFinalForcingK01.check = true := by
  decide

theorem highQrFinalSmallK02_sublist :
    List.Sublist highQrFinalSmallK02.primes highQrFinalMaskPrimes := by
  decide

theorem highQrFinalSmallK02_checked :
    highQrFinalSmallK02.check = true := by
  decide
theorem highQrFinalLargeK02_checked :
    highQrFinalLargeK02.check = true := by
  decide
theorem highQrFinalForcingK02_checked :
    highQrFinalForcingK02.check = true := by
  decide

theorem highQrFinalSmallK03_sublist :
    List.Sublist highQrFinalSmallK03.primes highQrFinalMaskPrimes := by
  decide

theorem highQrFinalSmallK03_checked :
    highQrFinalSmallK03.check = true := by
  decide
theorem highQrFinalLargeK03_checked :
    highQrFinalLargeK03.check = true := by
  decide
theorem highQrFinalForcingK03_checked :
    highQrFinalForcingK03.check = true := by
  decide

theorem highQrFinalSmallK04_sublist :
    List.Sublist highQrFinalSmallK04.primes highQrFinalMaskPrimes := by
  decide

theorem highQrFinalSmallK04_checked :
    highQrFinalSmallK04.check = true := by
  decide
theorem highQrFinalLargeK04_checked :
    highQrFinalLargeK04.check = true := by
  decide
theorem highQrFinalForcingK04_checked :
    highQrFinalForcingK04.check = true := by
  decide

theorem highQrFinalSmallK05_sublist :
    List.Sublist highQrFinalSmallK05.primes highQrFinalMaskPrimes := by
  decide

theorem highQrFinalSmallK05_checked :
    highQrFinalSmallK05.check = true := by
  decide
theorem highQrFinalLargeK05_checked :
    highQrFinalLargeK05.check = true := by
  decide
theorem highQrFinalForcingK05_checked :
    highQrFinalForcingK05.check = true := by
  decide

theorem highQrFinalSmallK06_sublist :
    List.Sublist highQrFinalSmallK06.primes highQrFinalMaskPrimes := by
  decide

theorem highQrFinalSmallK06_checked :
    highQrFinalSmallK06.check = true := by
  decide
theorem highQrFinalLargeK06_checked :
    highQrFinalLargeK06.check = true := by
  decide
theorem highQrFinalForcingK06_checked :
    highQrFinalForcingK06.check = true := by
  decide

theorem highQrFinalSmallK07_sublist :
    List.Sublist highQrFinalSmallK07.primes highQrFinalMaskPrimes := by
  decide

theorem highQrFinalSmallK07_checked :
    highQrFinalSmallK07.check = true := by
  decide
theorem highQrFinalLargeK07_checked :
    highQrFinalLargeK07.check = true := by
  decide
theorem highQrFinalForcingK07_checked :
    highQrFinalForcingK07.check = true := by
  decide

theorem highQrFinalSmallK08_sublist :
    List.Sublist highQrFinalSmallK08.primes highQrFinalMaskPrimes := by
  decide

theorem highQrFinalSmallK08_checked :
    highQrFinalSmallK08.check = true := by
  decide
theorem highQrFinalLargeK08_checked :
    highQrFinalLargeK08.check = true := by
  decide
theorem highQrFinalForcingK08_checked :
    highQrFinalForcingK08.check = true := by
  decide

theorem highQrFinalSmallK09_sublist :
    List.Sublist highQrFinalSmallK09.primes highQrFinalMaskPrimes := by
  decide

theorem highQrFinalSmallK09_checked :
    highQrFinalSmallK09.check = true := by
  decide
theorem highQrFinalLargeK09_checked :
    highQrFinalLargeK09.check = true := by
  decide
theorem highQrFinalForcingK09_checked :
    highQrFinalForcingK09.check = true := by
  decide

#print axioms highQrFinalNormalCertificate
#print axioms highQrFinalTwistCertificate

end Erdos848.GeneratedHybridPaperRootCoverage
