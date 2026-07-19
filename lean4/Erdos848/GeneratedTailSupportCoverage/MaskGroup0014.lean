import Erdos848.TailSupportScanChecker

namespace Erdos848.GeneratedTailSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def maskGroupPrimes0014 : List ℕ :=
  [631, 641, 643, 647, 653, 659, 661, 673]

def qrMaskCertificate_631 :
    Erdos848.SquareWordMaskCertificate 2401 631 (qrMaskWords 631) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_641 :
    Erdos848.SquareWordMaskCertificate 2401 641 (qrMaskWords 641) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_643 :
    Erdos848.SquareWordMaskCertificate 2401 643 (qrMaskWords 643) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_647 :
    Erdos848.SquareWordMaskCertificate 2401 647 (qrMaskWords 647) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_653 :
    Erdos848.SquareWordMaskCertificate 2401 653 (qrMaskWords 653) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_659 :
    Erdos848.SquareWordMaskCertificate 2401 659 (qrMaskWords 659) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_661 :
    Erdos848.SquareWordMaskCertificate 2401 661 (qrMaskWords 661) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_673 :
    Erdos848.SquareWordMaskCertificate 2401 673 (qrMaskWords 673) :=
  ⟨by decide, by decide, by decide⟩

theorem qrMask_contains_square_group0014
    {p m root : ℕ}
    (hp : p ∈ maskGroupPrimes0014)
    (hm : 1 ≤ m) (hmM : m ≤ 2401) (
      hnotDvd : ¬ p ∣ m) (hsquare : root ^ 2 ≡ m [MOD p]) :
    Erdos848.wordMaskTestBit (qrMaskWords p) (m - 1) = true := by
  simp only [maskGroupPrimes0014, List.mem_cons,
    List.not_mem_nil, or_false] at hp
  rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact qrMaskCertificate_631.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_641.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_643.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_647.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_653.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_659.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_661.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_673.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare

end Erdos848.GeneratedTailSupportCoverage
