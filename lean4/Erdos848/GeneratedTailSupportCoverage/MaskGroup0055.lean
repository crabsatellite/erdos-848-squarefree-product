import Erdos848.TailSupportScanChecker

namespace Erdos848.GeneratedTailSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def maskGroupPrimes0055 : List ℕ :=
  [3109, 3119, 3121, 3137, 3163, 3167, 3169, 3181]

def qrMaskCertificate_3109 :
    Erdos848.SquareWordMaskCertificate 2401 3109 (qrMaskWords 3109) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_3119 :
    Erdos848.SquareWordMaskCertificate 2401 3119 (qrMaskWords 3119) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_3121 :
    Erdos848.SquareWordMaskCertificate 2401 3121 (qrMaskWords 3121) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_3137 :
    Erdos848.SquareWordMaskCertificate 2401 3137 (qrMaskWords 3137) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_3163 :
    Erdos848.SquareWordMaskCertificate 2401 3163 (qrMaskWords 3163) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_3167 :
    Erdos848.SquareWordMaskCertificate 2401 3167 (qrMaskWords 3167) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_3169 :
    Erdos848.SquareWordMaskCertificate 2401 3169 (qrMaskWords 3169) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_3181 :
    Erdos848.SquareWordMaskCertificate 2401 3181 (qrMaskWords 3181) :=
  ⟨by decide, by decide, by decide⟩

theorem qrMask_contains_square_group0055
    {p m root : ℕ}
    (hp : p ∈ maskGroupPrimes0055)
    (hm : 1 ≤ m) (hmM : m ≤ 2401) (
      hnotDvd : ¬ p ∣ m) (hsquare : root ^ 2 ≡ m [MOD p]) :
    Erdos848.wordMaskTestBit (qrMaskWords p) (m - 1) = true := by
  simp only [maskGroupPrimes0055, List.mem_cons,
    List.not_mem_nil, or_false] at hp
  rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact qrMaskCertificate_3109.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_3119.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_3121.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_3137.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_3163.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_3167.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_3169.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_3181.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare

end Erdos848.GeneratedTailSupportCoverage
