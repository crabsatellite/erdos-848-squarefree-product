import Erdos848.TailSupportScanChecker

namespace Erdos848.GeneratedTailSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def maskGroupPrimes0058 : List ℕ :=
  [3319, 3323, 3329, 3331, 3343, 3347, 3359, 3361]

def qrMaskCertificate_3319 :
    Erdos848.SquareWordMaskCertificate 2401 3319 (qrMaskWords 3319) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_3323 :
    Erdos848.SquareWordMaskCertificate 2401 3323 (qrMaskWords 3323) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_3329 :
    Erdos848.SquareWordMaskCertificate 2401 3329 (qrMaskWords 3329) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_3331 :
    Erdos848.SquareWordMaskCertificate 2401 3331 (qrMaskWords 3331) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_3343 :
    Erdos848.SquareWordMaskCertificate 2401 3343 (qrMaskWords 3343) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_3347 :
    Erdos848.SquareWordMaskCertificate 2401 3347 (qrMaskWords 3347) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_3359 :
    Erdos848.SquareWordMaskCertificate 2401 3359 (qrMaskWords 3359) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_3361 :
    Erdos848.SquareWordMaskCertificate 2401 3361 (qrMaskWords 3361) :=
  ⟨by decide, by decide, by decide⟩

theorem qrMask_contains_square_group0058
    {p m root : ℕ}
    (hp : p ∈ maskGroupPrimes0058)
    (hm : 1 ≤ m) (hmM : m ≤ 2401) (
      hnotDvd : ¬ p ∣ m) (hsquare : root ^ 2 ≡ m [MOD p]) :
    Erdos848.wordMaskTestBit (qrMaskWords p) (m - 1) = true := by
  simp only [maskGroupPrimes0058, List.mem_cons,
    List.not_mem_nil, or_false] at hp
  rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact qrMaskCertificate_3319.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_3323.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_3329.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_3331.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_3343.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_3347.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_3359.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_3361.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare

end Erdos848.GeneratedTailSupportCoverage
