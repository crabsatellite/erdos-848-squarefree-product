import Erdos848.TailSupportScanChecker

namespace Erdos848.GeneratedTailSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def maskGroupPrimes0016 : List ℕ :=
  [739, 743, 751, 757, 761, 769, 773, 787]

def qrMaskCertificate_739 :
    Erdos848.SquareWordMaskCertificate 2401 739 (qrMaskWords 739) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_743 :
    Erdos848.SquareWordMaskCertificate 2401 743 (qrMaskWords 743) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_751 :
    Erdos848.SquareWordMaskCertificate 2401 751 (qrMaskWords 751) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_757 :
    Erdos848.SquareWordMaskCertificate 2401 757 (qrMaskWords 757) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_761 :
    Erdos848.SquareWordMaskCertificate 2401 761 (qrMaskWords 761) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_769 :
    Erdos848.SquareWordMaskCertificate 2401 769 (qrMaskWords 769) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_773 :
    Erdos848.SquareWordMaskCertificate 2401 773 (qrMaskWords 773) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_787 :
    Erdos848.SquareWordMaskCertificate 2401 787 (qrMaskWords 787) :=
  ⟨by decide, by decide, by decide⟩

theorem qrMask_contains_square_group0016
    {p m root : ℕ}
    (hp : p ∈ maskGroupPrimes0016)
    (hm : 1 ≤ m) (hmM : m ≤ 2401) (
      hnotDvd : ¬ p ∣ m) (hsquare : root ^ 2 ≡ m [MOD p]) :
    Erdos848.wordMaskTestBit (qrMaskWords p) (m - 1) = true := by
  simp only [maskGroupPrimes0016, List.mem_cons,
    List.not_mem_nil, or_false] at hp
  rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact qrMaskCertificate_739.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_743.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_751.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_757.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_761.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_769.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_773.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_787.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare

end Erdos848.GeneratedTailSupportCoverage
