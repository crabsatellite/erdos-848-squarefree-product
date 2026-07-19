import Erdos848.TailSupportScanChecker

namespace Erdos848.GeneratedTailSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def maskGroupPrimes0008 : List ℕ :=
  [331, 337, 347, 349, 353, 359, 367, 373]

def qrMaskCertificate_331 :
    Erdos848.SquareWordMaskCertificate 2401 331 (qrMaskWords 331) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_337 :
    Erdos848.SquareWordMaskCertificate 2401 337 (qrMaskWords 337) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_347 :
    Erdos848.SquareWordMaskCertificate 2401 347 (qrMaskWords 347) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_349 :
    Erdos848.SquareWordMaskCertificate 2401 349 (qrMaskWords 349) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_353 :
    Erdos848.SquareWordMaskCertificate 2401 353 (qrMaskWords 353) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_359 :
    Erdos848.SquareWordMaskCertificate 2401 359 (qrMaskWords 359) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_367 :
    Erdos848.SquareWordMaskCertificate 2401 367 (qrMaskWords 367) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_373 :
    Erdos848.SquareWordMaskCertificate 2401 373 (qrMaskWords 373) :=
  ⟨by decide, by decide, by decide⟩

theorem qrMask_contains_square_group0008
    {p m root : ℕ}
    (hp : p ∈ maskGroupPrimes0008)
    (hm : 1 ≤ m) (hmM : m ≤ 2401) (
      hnotDvd : ¬ p ∣ m) (hsquare : root ^ 2 ≡ m [MOD p]) :
    Erdos848.wordMaskTestBit (qrMaskWords p) (m - 1) = true := by
  simp only [maskGroupPrimes0008, List.mem_cons,
    List.not_mem_nil, or_false] at hp
  rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact qrMaskCertificate_331.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_337.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_347.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_349.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_353.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_359.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_367.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_373.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare

end Erdos848.GeneratedTailSupportCoverage
