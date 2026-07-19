import Erdos848.TailSupportScanChecker

namespace Erdos848.GeneratedTailSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def maskGroupPrimes0045 : List ℕ :=
  [2447, 2459, 2467, 2473, 2477, 2503, 2521, 2531]

def qrMaskCertificate_2447 :
    Erdos848.SquareWordMaskCertificate 2401 2447 (qrMaskWords 2447) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_2459 :
    Erdos848.SquareWordMaskCertificate 2401 2459 (qrMaskWords 2459) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_2467 :
    Erdos848.SquareWordMaskCertificate 2401 2467 (qrMaskWords 2467) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_2473 :
    Erdos848.SquareWordMaskCertificate 2401 2473 (qrMaskWords 2473) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_2477 :
    Erdos848.SquareWordMaskCertificate 2401 2477 (qrMaskWords 2477) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_2503 :
    Erdos848.SquareWordMaskCertificate 2401 2503 (qrMaskWords 2503) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_2521 :
    Erdos848.SquareWordMaskCertificate 2401 2521 (qrMaskWords 2521) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_2531 :
    Erdos848.SquareWordMaskCertificate 2401 2531 (qrMaskWords 2531) :=
  ⟨by decide, by decide, by decide⟩

theorem qrMask_contains_square_group0045
    {p m root : ℕ}
    (hp : p ∈ maskGroupPrimes0045)
    (hm : 1 ≤ m) (hmM : m ≤ 2401) (
      hnotDvd : ¬ p ∣ m) (hsquare : root ^ 2 ≡ m [MOD p]) :
    Erdos848.wordMaskTestBit (qrMaskWords p) (m - 1) = true := by
  simp only [maskGroupPrimes0045, List.mem_cons,
    List.not_mem_nil, or_false] at hp
  rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact qrMaskCertificate_2447.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_2459.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_2467.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_2473.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_2477.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_2503.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_2521.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_2531.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare

end Erdos848.GeneratedTailSupportCoverage
