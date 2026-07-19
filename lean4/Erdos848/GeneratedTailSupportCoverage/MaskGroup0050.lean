import Erdos848.TailSupportScanChecker

namespace Erdos848.GeneratedTailSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def maskGroupPrimes0050 : List ℕ :=
  [2767, 2777, 2789, 2791, 2797, 2801, 2803, 2819]

def qrMaskCertificate_2767 :
    Erdos848.SquareWordMaskCertificate 2401 2767 (qrMaskWords 2767) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_2777 :
    Erdos848.SquareWordMaskCertificate 2401 2777 (qrMaskWords 2777) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_2789 :
    Erdos848.SquareWordMaskCertificate 2401 2789 (qrMaskWords 2789) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_2791 :
    Erdos848.SquareWordMaskCertificate 2401 2791 (qrMaskWords 2791) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_2797 :
    Erdos848.SquareWordMaskCertificate 2401 2797 (qrMaskWords 2797) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_2801 :
    Erdos848.SquareWordMaskCertificate 2401 2801 (qrMaskWords 2801) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_2803 :
    Erdos848.SquareWordMaskCertificate 2401 2803 (qrMaskWords 2803) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_2819 :
    Erdos848.SquareWordMaskCertificate 2401 2819 (qrMaskWords 2819) :=
  ⟨by decide, by decide, by decide⟩

theorem qrMask_contains_square_group0050
    {p m root : ℕ}
    (hp : p ∈ maskGroupPrimes0050)
    (hm : 1 ≤ m) (hmM : m ≤ 2401) (
      hnotDvd : ¬ p ∣ m) (hsquare : root ^ 2 ≡ m [MOD p]) :
    Erdos848.wordMaskTestBit (qrMaskWords p) (m - 1) = true := by
  simp only [maskGroupPrimes0050, List.mem_cons,
    List.not_mem_nil, or_false] at hp
  rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact qrMaskCertificate_2767.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_2777.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_2789.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_2791.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_2797.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_2801.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_2803.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_2819.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare

end Erdos848.GeneratedTailSupportCoverage
