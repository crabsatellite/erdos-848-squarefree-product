import Erdos848.TailSupportScanChecker

namespace Erdos848.GeneratedTailSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def maskGroupPrimes0036 : List ℕ :=
  [1901, 1907, 1913, 1931, 1933, 1949, 1951, 1973]

def qrMaskCertificate_1901 :
    Erdos848.SquareWordMaskCertificate 2401 1901 (qrMaskWords 1901) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_1907 :
    Erdos848.SquareWordMaskCertificate 2401 1907 (qrMaskWords 1907) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_1913 :
    Erdos848.SquareWordMaskCertificate 2401 1913 (qrMaskWords 1913) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_1931 :
    Erdos848.SquareWordMaskCertificate 2401 1931 (qrMaskWords 1931) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_1933 :
    Erdos848.SquareWordMaskCertificate 2401 1933 (qrMaskWords 1933) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_1949 :
    Erdos848.SquareWordMaskCertificate 2401 1949 (qrMaskWords 1949) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_1951 :
    Erdos848.SquareWordMaskCertificate 2401 1951 (qrMaskWords 1951) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_1973 :
    Erdos848.SquareWordMaskCertificate 2401 1973 (qrMaskWords 1973) :=
  ⟨by decide, by decide, by decide⟩

theorem qrMask_contains_square_group0036
    {p m root : ℕ}
    (hp : p ∈ maskGroupPrimes0036)
    (hm : 1 ≤ m) (hmM : m ≤ 2401) (
      hnotDvd : ¬ p ∣ m) (hsquare : root ^ 2 ≡ m [MOD p]) :
    Erdos848.wordMaskTestBit (qrMaskWords p) (m - 1) = true := by
  simp only [maskGroupPrimes0036, List.mem_cons,
    List.not_mem_nil, or_false] at hp
  rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact qrMaskCertificate_1901.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_1907.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_1913.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_1931.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_1933.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_1949.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_1951.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_1973.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare

end Erdos848.GeneratedTailSupportCoverage
