import Erdos848.TailSupportScanChecker

namespace Erdos848.GeneratedTailSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def maskGroupPrimes0048 : List ℕ :=
  [2671, 2677, 2683, 2687, 2689, 2693, 2699, 2707]

def qrMaskCertificate_2671 :
    Erdos848.SquareWordMaskCertificate 2401 2671 (qrMaskWords 2671) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_2677 :
    Erdos848.SquareWordMaskCertificate 2401 2677 (qrMaskWords 2677) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_2683 :
    Erdos848.SquareWordMaskCertificate 2401 2683 (qrMaskWords 2683) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_2687 :
    Erdos848.SquareWordMaskCertificate 2401 2687 (qrMaskWords 2687) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_2689 :
    Erdos848.SquareWordMaskCertificate 2401 2689 (qrMaskWords 2689) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_2693 :
    Erdos848.SquareWordMaskCertificate 2401 2693 (qrMaskWords 2693) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_2699 :
    Erdos848.SquareWordMaskCertificate 2401 2699 (qrMaskWords 2699) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_2707 :
    Erdos848.SquareWordMaskCertificate 2401 2707 (qrMaskWords 2707) :=
  ⟨by decide, by decide, by decide⟩

theorem qrMask_contains_square_group0048
    {p m root : ℕ}
    (hp : p ∈ maskGroupPrimes0048)
    (hm : 1 ≤ m) (hmM : m ≤ 2401) (
      hnotDvd : ¬ p ∣ m) (hsquare : root ^ 2 ≡ m [MOD p]) :
    Erdos848.wordMaskTestBit (qrMaskWords p) (m - 1) = true := by
  simp only [maskGroupPrimes0048, List.mem_cons,
    List.not_mem_nil, or_false] at hp
  rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact qrMaskCertificate_2671.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_2677.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_2683.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_2687.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_2689.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_2693.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_2699.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_2707.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare

end Erdos848.GeneratedTailSupportCoverage
