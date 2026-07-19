import Erdos848.TailSupportScanChecker

namespace Erdos848.GeneratedTailSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def maskGroupPrimes0033 : List ℕ :=
  [1709, 1721, 1723, 1733, 1741, 1747, 1753, 1759]

def qrMaskCertificate_1709 :
    Erdos848.SquareWordMaskCertificate 2401 1709 (qrMaskWords 1709) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_1721 :
    Erdos848.SquareWordMaskCertificate 2401 1721 (qrMaskWords 1721) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_1723 :
    Erdos848.SquareWordMaskCertificate 2401 1723 (qrMaskWords 1723) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_1733 :
    Erdos848.SquareWordMaskCertificate 2401 1733 (qrMaskWords 1733) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_1741 :
    Erdos848.SquareWordMaskCertificate 2401 1741 (qrMaskWords 1741) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_1747 :
    Erdos848.SquareWordMaskCertificate 2401 1747 (qrMaskWords 1747) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_1753 :
    Erdos848.SquareWordMaskCertificate 2401 1753 (qrMaskWords 1753) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_1759 :
    Erdos848.SquareWordMaskCertificate 2401 1759 (qrMaskWords 1759) :=
  ⟨by decide, by decide, by decide⟩

theorem qrMask_contains_square_group0033
    {p m root : ℕ}
    (hp : p ∈ maskGroupPrimes0033)
    (hm : 1 ≤ m) (hmM : m ≤ 2401) (
      hnotDvd : ¬ p ∣ m) (hsquare : root ^ 2 ≡ m [MOD p]) :
    Erdos848.wordMaskTestBit (qrMaskWords p) (m - 1) = true := by
  simp only [maskGroupPrimes0033, List.mem_cons,
    List.not_mem_nil, or_false] at hp
  rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact qrMaskCertificate_1709.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_1721.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_1723.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_1733.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_1741.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_1747.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_1753.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_1759.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare

end Erdos848.GeneratedTailSupportCoverage
