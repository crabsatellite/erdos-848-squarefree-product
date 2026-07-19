import Erdos848.TailSupportScanChecker

namespace Erdos848.GeneratedTailSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def maskGroupPrimes0009 : List ℕ :=
  [379, 383, 389, 397, 401, 409, 419, 421]

def qrMaskCertificate_379 :
    Erdos848.SquareWordMaskCertificate 2401 379 (qrMaskWords 379) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_383 :
    Erdos848.SquareWordMaskCertificate 2401 383 (qrMaskWords 383) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_389 :
    Erdos848.SquareWordMaskCertificate 2401 389 (qrMaskWords 389) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_397 :
    Erdos848.SquareWordMaskCertificate 2401 397 (qrMaskWords 397) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_401 :
    Erdos848.SquareWordMaskCertificate 2401 401 (qrMaskWords 401) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_409 :
    Erdos848.SquareWordMaskCertificate 2401 409 (qrMaskWords 409) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_419 :
    Erdos848.SquareWordMaskCertificate 2401 419 (qrMaskWords 419) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_421 :
    Erdos848.SquareWordMaskCertificate 2401 421 (qrMaskWords 421) :=
  ⟨by decide, by decide, by decide⟩

theorem qrMask_contains_square_group0009
    {p m root : ℕ}
    (hp : p ∈ maskGroupPrimes0009)
    (hm : 1 ≤ m) (hmM : m ≤ 2401) (
      hnotDvd : ¬ p ∣ m) (hsquare : root ^ 2 ≡ m [MOD p]) :
    Erdos848.wordMaskTestBit (qrMaskWords p) (m - 1) = true := by
  simp only [maskGroupPrimes0009, List.mem_cons,
    List.not_mem_nil, or_false] at hp
  rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact qrMaskCertificate_379.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_383.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_389.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_397.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_401.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_409.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_419.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_421.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare

end Erdos848.GeneratedTailSupportCoverage
