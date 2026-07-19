import Erdos848.TailSupportScanChecker

namespace Erdos848.GeneratedTailSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def maskGroupPrimes0046 : List ℕ :=
  [2539, 2543, 2549, 2551, 2557, 2579, 2591, 2593]

def qrMaskCertificate_2539 :
    Erdos848.SquareWordMaskCertificate 2401 2539 (qrMaskWords 2539) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_2543 :
    Erdos848.SquareWordMaskCertificate 2401 2543 (qrMaskWords 2543) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_2549 :
    Erdos848.SquareWordMaskCertificate 2401 2549 (qrMaskWords 2549) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_2551 :
    Erdos848.SquareWordMaskCertificate 2401 2551 (qrMaskWords 2551) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_2557 :
    Erdos848.SquareWordMaskCertificate 2401 2557 (qrMaskWords 2557) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_2579 :
    Erdos848.SquareWordMaskCertificate 2401 2579 (qrMaskWords 2579) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_2591 :
    Erdos848.SquareWordMaskCertificate 2401 2591 (qrMaskWords 2591) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_2593 :
    Erdos848.SquareWordMaskCertificate 2401 2593 (qrMaskWords 2593) :=
  ⟨by decide, by decide, by decide⟩

theorem qrMask_contains_square_group0046
    {p m root : ℕ}
    (hp : p ∈ maskGroupPrimes0046)
    (hm : 1 ≤ m) (hmM : m ≤ 2401) (
      hnotDvd : ¬ p ∣ m) (hsquare : root ^ 2 ≡ m [MOD p]) :
    Erdos848.wordMaskTestBit (qrMaskWords p) (m - 1) = true := by
  simp only [maskGroupPrimes0046, List.mem_cons,
    List.not_mem_nil, or_false] at hp
  rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact qrMaskCertificate_2539.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_2543.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_2549.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_2551.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_2557.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_2579.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_2591.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_2593.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare

end Erdos848.GeneratedTailSupportCoverage
