import Erdos848.TailSupportScanChecker

namespace Erdos848.GeneratedTailSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def maskGroupPrimes0001 : List ℕ :=
  [31, 37, 41, 43, 47, 53, 59, 61]

def qrMaskCertificate_31 :
    Erdos848.SquareWordMaskCertificate 2401 31 (qrMaskWords 31) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_37 :
    Erdos848.SquareWordMaskCertificate 2401 37 (qrMaskWords 37) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_41 :
    Erdos848.SquareWordMaskCertificate 2401 41 (qrMaskWords 41) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_43 :
    Erdos848.SquareWordMaskCertificate 2401 43 (qrMaskWords 43) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_47 :
    Erdos848.SquareWordMaskCertificate 2401 47 (qrMaskWords 47) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_53 :
    Erdos848.SquareWordMaskCertificate 2401 53 (qrMaskWords 53) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_59 :
    Erdos848.SquareWordMaskCertificate 2401 59 (qrMaskWords 59) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_61 :
    Erdos848.SquareWordMaskCertificate 2401 61 (qrMaskWords 61) :=
  ⟨by decide, by decide, by decide⟩

theorem qrMask_contains_square_group0001
    {p m root : ℕ}
    (hp : p ∈ maskGroupPrimes0001)
    (hm : 1 ≤ m) (hmM : m ≤ 2401) (
      hnotDvd : ¬ p ∣ m) (hsquare : root ^ 2 ≡ m [MOD p]) :
    Erdos848.wordMaskTestBit (qrMaskWords p) (m - 1) = true := by
  simp only [maskGroupPrimes0001, List.mem_cons,
    List.not_mem_nil, or_false] at hp
  rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact qrMaskCertificate_31.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_37.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_41.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_43.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_47.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_53.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_59.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_61.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare

end Erdos848.GeneratedTailSupportCoverage
