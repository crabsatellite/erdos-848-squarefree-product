import Erdos848.TailSupportScanChecker

namespace Erdos848.GeneratedTailSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def maskGroupPrimes0051 : List ℕ :=
  [2833, 2837, 2843, 2851, 2857, 2861, 2879, 2887]

def qrMaskCertificate_2833 :
    Erdos848.SquareWordMaskCertificate 2401 2833 (qrMaskWords 2833) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_2837 :
    Erdos848.SquareWordMaskCertificate 2401 2837 (qrMaskWords 2837) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_2843 :
    Erdos848.SquareWordMaskCertificate 2401 2843 (qrMaskWords 2843) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_2851 :
    Erdos848.SquareWordMaskCertificate 2401 2851 (qrMaskWords 2851) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_2857 :
    Erdos848.SquareWordMaskCertificate 2401 2857 (qrMaskWords 2857) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_2861 :
    Erdos848.SquareWordMaskCertificate 2401 2861 (qrMaskWords 2861) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_2879 :
    Erdos848.SquareWordMaskCertificate 2401 2879 (qrMaskWords 2879) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_2887 :
    Erdos848.SquareWordMaskCertificate 2401 2887 (qrMaskWords 2887) :=
  ⟨by decide, by decide, by decide⟩

theorem qrMask_contains_square_group0051
    {p m root : ℕ}
    (hp : p ∈ maskGroupPrimes0051)
    (hm : 1 ≤ m) (hmM : m ≤ 2401) (
      hnotDvd : ¬ p ∣ m) (hsquare : root ^ 2 ≡ m [MOD p]) :
    Erdos848.wordMaskTestBit (qrMaskWords p) (m - 1) = true := by
  simp only [maskGroupPrimes0051, List.mem_cons,
    List.not_mem_nil, or_false] at hp
  rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact qrMaskCertificate_2833.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_2837.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_2843.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_2851.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_2857.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_2861.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_2879.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_2887.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare

end Erdos848.GeneratedTailSupportCoverage
