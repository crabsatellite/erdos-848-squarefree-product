import Erdos848.TailSupportScanChecker

namespace Erdos848.GeneratedTailSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def maskGroupPrimes0012 : List ℕ :=
  [523, 541, 547, 557, 563, 569, 571, 577]

def qrMaskCertificate_523 :
    Erdos848.SquareWordMaskCertificate 2401 523 (qrMaskWords 523) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_541 :
    Erdos848.SquareWordMaskCertificate 2401 541 (qrMaskWords 541) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_547 :
    Erdos848.SquareWordMaskCertificate 2401 547 (qrMaskWords 547) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_557 :
    Erdos848.SquareWordMaskCertificate 2401 557 (qrMaskWords 557) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_563 :
    Erdos848.SquareWordMaskCertificate 2401 563 (qrMaskWords 563) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_569 :
    Erdos848.SquareWordMaskCertificate 2401 569 (qrMaskWords 569) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_571 :
    Erdos848.SquareWordMaskCertificate 2401 571 (qrMaskWords 571) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_577 :
    Erdos848.SquareWordMaskCertificate 2401 577 (qrMaskWords 577) :=
  ⟨by decide, by decide, by decide⟩

theorem qrMask_contains_square_group0012
    {p m root : ℕ}
    (hp : p ∈ maskGroupPrimes0012)
    (hm : 1 ≤ m) (hmM : m ≤ 2401) (
      hnotDvd : ¬ p ∣ m) (hsquare : root ^ 2 ≡ m [MOD p]) :
    Erdos848.wordMaskTestBit (qrMaskWords p) (m - 1) = true := by
  simp only [maskGroupPrimes0012, List.mem_cons,
    List.not_mem_nil, or_false] at hp
  rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact qrMaskCertificate_523.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_541.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_547.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_557.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_563.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_569.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_571.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_577.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare

end Erdos848.GeneratedTailSupportCoverage
