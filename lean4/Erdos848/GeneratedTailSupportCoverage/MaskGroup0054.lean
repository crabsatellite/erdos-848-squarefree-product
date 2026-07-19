import Erdos848.TailSupportScanChecker

namespace Erdos848.GeneratedTailSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def maskGroupPrimes0054 : List ℕ :=
  [3037, 3041, 3049, 3061, 3067, 3079, 3083, 3089]

def qrMaskCertificate_3037 :
    Erdos848.SquareWordMaskCertificate 2401 3037 (qrMaskWords 3037) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_3041 :
    Erdos848.SquareWordMaskCertificate 2401 3041 (qrMaskWords 3041) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_3049 :
    Erdos848.SquareWordMaskCertificate 2401 3049 (qrMaskWords 3049) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_3061 :
    Erdos848.SquareWordMaskCertificate 2401 3061 (qrMaskWords 3061) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_3067 :
    Erdos848.SquareWordMaskCertificate 2401 3067 (qrMaskWords 3067) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_3079 :
    Erdos848.SquareWordMaskCertificate 2401 3079 (qrMaskWords 3079) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_3083 :
    Erdos848.SquareWordMaskCertificate 2401 3083 (qrMaskWords 3083) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_3089 :
    Erdos848.SquareWordMaskCertificate 2401 3089 (qrMaskWords 3089) :=
  ⟨by decide, by decide, by decide⟩

theorem qrMask_contains_square_group0054
    {p m root : ℕ}
    (hp : p ∈ maskGroupPrimes0054)
    (hm : 1 ≤ m) (hmM : m ≤ 2401) (
      hnotDvd : ¬ p ∣ m) (hsquare : root ^ 2 ≡ m [MOD p]) :
    Erdos848.wordMaskTestBit (qrMaskWords p) (m - 1) = true := by
  simp only [maskGroupPrimes0054, List.mem_cons,
    List.not_mem_nil, or_false] at hp
  rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact qrMaskCertificate_3037.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_3041.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_3049.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_3061.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_3067.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_3079.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_3083.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_3089.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare

end Erdos848.GeneratedTailSupportCoverage
