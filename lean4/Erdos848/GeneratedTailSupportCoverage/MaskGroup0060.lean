import Erdos848.TailSupportScanChecker

namespace Erdos848.GeneratedTailSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def maskGroupPrimes0060 : List ℕ :=
  [3457, 3461, 3463, 3467, 3469]

def qrMaskCertificate_3457 :
    Erdos848.SquareWordMaskCertificate 2401 3457 (qrMaskWords 3457) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_3461 :
    Erdos848.SquareWordMaskCertificate 2401 3461 (qrMaskWords 3461) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_3463 :
    Erdos848.SquareWordMaskCertificate 2401 3463 (qrMaskWords 3463) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_3467 :
    Erdos848.SquareWordMaskCertificate 2401 3467 (qrMaskWords 3467) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_3469 :
    Erdos848.SquareWordMaskCertificate 2401 3469 (qrMaskWords 3469) :=
  ⟨by decide, by decide, by decide⟩

theorem qrMask_contains_square_group0060
    {p m root : ℕ}
    (hp : p ∈ maskGroupPrimes0060)
    (hm : 1 ≤ m) (hmM : m ≤ 2401) (
      hnotDvd : ¬ p ∣ m) (hsquare : root ^ 2 ≡ m [MOD p]) :
    Erdos848.wordMaskTestBit (qrMaskWords p) (m - 1) = true := by
  simp only [maskGroupPrimes0060, List.mem_cons,
    List.not_mem_nil, or_false] at hp
  rcases hp with rfl | rfl | rfl | rfl | rfl
  · exact qrMaskCertificate_3457.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_3461.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_3463.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_3467.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_3469.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare

end Erdos848.GeneratedTailSupportCoverage
