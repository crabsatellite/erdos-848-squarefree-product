import Erdos848.TailSupportScanChecker

namespace Erdos848.GeneratedTailSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def maskGroupPrimes0022 : List ℕ :=
  [1063, 1069, 1087, 1091, 1093, 1097, 1103, 1109]

def qrMaskCertificate_1063 :
    Erdos848.SquareWordMaskCertificate 2401 1063 (qrMaskWords 1063) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_1069 :
    Erdos848.SquareWordMaskCertificate 2401 1069 (qrMaskWords 1069) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_1087 :
    Erdos848.SquareWordMaskCertificate 2401 1087 (qrMaskWords 1087) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_1091 :
    Erdos848.SquareWordMaskCertificate 2401 1091 (qrMaskWords 1091) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_1093 :
    Erdos848.SquareWordMaskCertificate 2401 1093 (qrMaskWords 1093) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_1097 :
    Erdos848.SquareWordMaskCertificate 2401 1097 (qrMaskWords 1097) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_1103 :
    Erdos848.SquareWordMaskCertificate 2401 1103 (qrMaskWords 1103) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_1109 :
    Erdos848.SquareWordMaskCertificate 2401 1109 (qrMaskWords 1109) :=
  ⟨by decide, by decide, by decide⟩

theorem qrMask_contains_square_group0022
    {p m root : ℕ}
    (hp : p ∈ maskGroupPrimes0022)
    (hm : 1 ≤ m) (hmM : m ≤ 2401) (
      hnotDvd : ¬ p ∣ m) (hsquare : root ^ 2 ≡ m [MOD p]) :
    Erdos848.wordMaskTestBit (qrMaskWords p) (m - 1) = true := by
  simp only [maskGroupPrimes0022, List.mem_cons,
    List.not_mem_nil, or_false] at hp
  rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact qrMaskCertificate_1063.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_1069.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_1087.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_1091.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_1093.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_1097.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_1103.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_1109.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare

end Erdos848.GeneratedTailSupportCoverage
