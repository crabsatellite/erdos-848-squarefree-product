import Erdos848.TailSupportScanChecker

namespace Erdos848.GeneratedTailSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def maskGroupPrimes0056 : List ℕ :=
  [3187, 3191, 3203, 3209, 3217, 3221, 3229, 3251]

def qrMaskCertificate_3187 :
    Erdos848.SquareWordMaskCertificate 2401 3187 (qrMaskWords 3187) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_3191 :
    Erdos848.SquareWordMaskCertificate 2401 3191 (qrMaskWords 3191) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_3203 :
    Erdos848.SquareWordMaskCertificate 2401 3203 (qrMaskWords 3203) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_3209 :
    Erdos848.SquareWordMaskCertificate 2401 3209 (qrMaskWords 3209) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_3217 :
    Erdos848.SquareWordMaskCertificate 2401 3217 (qrMaskWords 3217) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_3221 :
    Erdos848.SquareWordMaskCertificate 2401 3221 (qrMaskWords 3221) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_3229 :
    Erdos848.SquareWordMaskCertificate 2401 3229 (qrMaskWords 3229) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_3251 :
    Erdos848.SquareWordMaskCertificate 2401 3251 (qrMaskWords 3251) :=
  ⟨by decide, by decide, by decide⟩

theorem qrMask_contains_square_group0056
    {p m root : ℕ}
    (hp : p ∈ maskGroupPrimes0056)
    (hm : 1 ≤ m) (hmM : m ≤ 2401) (
      hnotDvd : ¬ p ∣ m) (hsquare : root ^ 2 ≡ m [MOD p]) :
    Erdos848.wordMaskTestBit (qrMaskWords p) (m - 1) = true := by
  simp only [maskGroupPrimes0056, List.mem_cons,
    List.not_mem_nil, or_false] at hp
  rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact qrMaskCertificate_3187.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_3191.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_3203.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_3209.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_3217.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_3221.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_3229.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_3251.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare

end Erdos848.GeneratedTailSupportCoverage
