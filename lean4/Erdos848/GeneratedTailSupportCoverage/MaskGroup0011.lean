import Erdos848.TailSupportScanChecker

namespace Erdos848.GeneratedTailSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def maskGroupPrimes0011 : List ℕ :=
  [467, 479, 487, 491, 499, 503, 509, 521]

def qrMaskCertificate_467 :
    Erdos848.SquareWordMaskCertificate 2401 467 (qrMaskWords 467) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_479 :
    Erdos848.SquareWordMaskCertificate 2401 479 (qrMaskWords 479) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_487 :
    Erdos848.SquareWordMaskCertificate 2401 487 (qrMaskWords 487) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_491 :
    Erdos848.SquareWordMaskCertificate 2401 491 (qrMaskWords 491) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_499 :
    Erdos848.SquareWordMaskCertificate 2401 499 (qrMaskWords 499) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_503 :
    Erdos848.SquareWordMaskCertificate 2401 503 (qrMaskWords 503) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_509 :
    Erdos848.SquareWordMaskCertificate 2401 509 (qrMaskWords 509) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_521 :
    Erdos848.SquareWordMaskCertificate 2401 521 (qrMaskWords 521) :=
  ⟨by decide, by decide, by decide⟩

theorem qrMask_contains_square_group0011
    {p m root : ℕ}
    (hp : p ∈ maskGroupPrimes0011)
    (hm : 1 ≤ m) (hmM : m ≤ 2401) (
      hnotDvd : ¬ p ∣ m) (hsquare : root ^ 2 ≡ m [MOD p]) :
    Erdos848.wordMaskTestBit (qrMaskWords p) (m - 1) = true := by
  simp only [maskGroupPrimes0011, List.mem_cons,
    List.not_mem_nil, or_false] at hp
  rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact qrMaskCertificate_467.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_479.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_487.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_491.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_499.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_503.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_509.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_521.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare

end Erdos848.GeneratedTailSupportCoverage
