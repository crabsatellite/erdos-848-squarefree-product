import Erdos848.TailSupportScanChecker

namespace Erdos848.GeneratedTailSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def maskGroupPrimes0038 : List ℕ :=
  [2027, 2029, 2039, 2053, 2063, 2069, 2081, 2083]

def qrMaskCertificate_2027 :
    Erdos848.SquareWordMaskCertificate 2401 2027 (qrMaskWords 2027) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_2029 :
    Erdos848.SquareWordMaskCertificate 2401 2029 (qrMaskWords 2029) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_2039 :
    Erdos848.SquareWordMaskCertificate 2401 2039 (qrMaskWords 2039) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_2053 :
    Erdos848.SquareWordMaskCertificate 2401 2053 (qrMaskWords 2053) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_2063 :
    Erdos848.SquareWordMaskCertificate 2401 2063 (qrMaskWords 2063) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_2069 :
    Erdos848.SquareWordMaskCertificate 2401 2069 (qrMaskWords 2069) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_2081 :
    Erdos848.SquareWordMaskCertificate 2401 2081 (qrMaskWords 2081) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_2083 :
    Erdos848.SquareWordMaskCertificate 2401 2083 (qrMaskWords 2083) :=
  ⟨by decide, by decide, by decide⟩

theorem qrMask_contains_square_group0038
    {p m root : ℕ}
    (hp : p ∈ maskGroupPrimes0038)
    (hm : 1 ≤ m) (hmM : m ≤ 2401) (
      hnotDvd : ¬ p ∣ m) (hsquare : root ^ 2 ≡ m [MOD p]) :
    Erdos848.wordMaskTestBit (qrMaskWords p) (m - 1) = true := by
  simp only [maskGroupPrimes0038, List.mem_cons,
    List.not_mem_nil, or_false] at hp
  rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact qrMaskCertificate_2027.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_2029.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_2039.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_2053.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_2063.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_2069.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_2081.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_2083.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare

end Erdos848.GeneratedTailSupportCoverage
