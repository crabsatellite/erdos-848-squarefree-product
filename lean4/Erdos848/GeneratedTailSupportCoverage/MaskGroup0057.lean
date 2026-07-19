import Erdos848.TailSupportScanChecker

namespace Erdos848.GeneratedTailSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def maskGroupPrimes0057 : List ℕ :=
  [3253, 3257, 3259, 3271, 3299, 3301, 3307, 3313]

def qrMaskCertificate_3253 :
    Erdos848.SquareWordMaskCertificate 2401 3253 (qrMaskWords 3253) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_3257 :
    Erdos848.SquareWordMaskCertificate 2401 3257 (qrMaskWords 3257) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_3259 :
    Erdos848.SquareWordMaskCertificate 2401 3259 (qrMaskWords 3259) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_3271 :
    Erdos848.SquareWordMaskCertificate 2401 3271 (qrMaskWords 3271) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_3299 :
    Erdos848.SquareWordMaskCertificate 2401 3299 (qrMaskWords 3299) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_3301 :
    Erdos848.SquareWordMaskCertificate 2401 3301 (qrMaskWords 3301) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_3307 :
    Erdos848.SquareWordMaskCertificate 2401 3307 (qrMaskWords 3307) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_3313 :
    Erdos848.SquareWordMaskCertificate 2401 3313 (qrMaskWords 3313) :=
  ⟨by decide, by decide, by decide⟩

theorem qrMask_contains_square_group0057
    {p m root : ℕ}
    (hp : p ∈ maskGroupPrimes0057)
    (hm : 1 ≤ m) (hmM : m ≤ 2401) (
      hnotDvd : ¬ p ∣ m) (hsquare : root ^ 2 ≡ m [MOD p]) :
    Erdos848.wordMaskTestBit (qrMaskWords p) (m - 1) = true := by
  simp only [maskGroupPrimes0057, List.mem_cons,
    List.not_mem_nil, or_false] at hp
  rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact qrMaskCertificate_3253.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_3257.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_3259.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_3271.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_3299.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_3301.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_3307.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_3313.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare

end Erdos848.GeneratedTailSupportCoverage
