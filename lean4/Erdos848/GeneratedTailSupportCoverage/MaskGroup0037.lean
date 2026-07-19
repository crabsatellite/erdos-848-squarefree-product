import Erdos848.TailSupportScanChecker

namespace Erdos848.GeneratedTailSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def maskGroupPrimes0037 : List ℕ :=
  [1979, 1987, 1993, 1997, 1999, 2003, 2011, 2017]

def qrMaskCertificate_1979 :
    Erdos848.SquareWordMaskCertificate 2401 1979 (qrMaskWords 1979) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_1987 :
    Erdos848.SquareWordMaskCertificate 2401 1987 (qrMaskWords 1987) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_1993 :
    Erdos848.SquareWordMaskCertificate 2401 1993 (qrMaskWords 1993) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_1997 :
    Erdos848.SquareWordMaskCertificate 2401 1997 (qrMaskWords 1997) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_1999 :
    Erdos848.SquareWordMaskCertificate 2401 1999 (qrMaskWords 1999) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_2003 :
    Erdos848.SquareWordMaskCertificate 2401 2003 (qrMaskWords 2003) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_2011 :
    Erdos848.SquareWordMaskCertificate 2401 2011 (qrMaskWords 2011) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_2017 :
    Erdos848.SquareWordMaskCertificate 2401 2017 (qrMaskWords 2017) :=
  ⟨by decide, by decide, by decide⟩

theorem qrMask_contains_square_group0037
    {p m root : ℕ}
    (hp : p ∈ maskGroupPrimes0037)
    (hm : 1 ≤ m) (hmM : m ≤ 2401) (
      hnotDvd : ¬ p ∣ m) (hsquare : root ^ 2 ≡ m [MOD p]) :
    Erdos848.wordMaskTestBit (qrMaskWords p) (m - 1) = true := by
  simp only [maskGroupPrimes0037, List.mem_cons,
    List.not_mem_nil, or_false] at hp
  rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact qrMaskCertificate_1979.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_1987.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_1993.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_1997.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_1999.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_2003.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_2011.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_2017.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare

end Erdos848.GeneratedTailSupportCoverage
