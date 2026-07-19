import Erdos848.TailSupportScanChecker

namespace Erdos848.GeneratedTailSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def maskGroupPrimes0000 : List ℕ :=
  [3, 7, 11, 13, 17, 19, 23, 29]

def qrMaskCertificate_3 :
    Erdos848.SquareWordMaskCertificate 2401 3 (qrMaskWords 3) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_7 :
    Erdos848.SquareWordMaskCertificate 2401 7 (qrMaskWords 7) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_11 :
    Erdos848.SquareWordMaskCertificate 2401 11 (qrMaskWords 11) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_13 :
    Erdos848.SquareWordMaskCertificate 2401 13 (qrMaskWords 13) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_17 :
    Erdos848.SquareWordMaskCertificate 2401 17 (qrMaskWords 17) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_19 :
    Erdos848.SquareWordMaskCertificate 2401 19 (qrMaskWords 19) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_23 :
    Erdos848.SquareWordMaskCertificate 2401 23 (qrMaskWords 23) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_29 :
    Erdos848.SquareWordMaskCertificate 2401 29 (qrMaskWords 29) :=
  ⟨by decide, by decide, by decide⟩

theorem qrMask_contains_square_group0000
    {p m root : ℕ}
    (hp : p ∈ maskGroupPrimes0000)
    (hm : 1 ≤ m) (hmM : m ≤ 2401) (
      hnotDvd : ¬ p ∣ m) (hsquare : root ^ 2 ≡ m [MOD p]) :
    Erdos848.wordMaskTestBit (qrMaskWords p) (m - 1) = true := by
  simp only [maskGroupPrimes0000, List.mem_cons,
    List.not_mem_nil, or_false] at hp
  rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact qrMaskCertificate_3.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_7.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_11.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_13.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_17.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_19.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_23.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_29.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare

end Erdos848.GeneratedTailSupportCoverage
