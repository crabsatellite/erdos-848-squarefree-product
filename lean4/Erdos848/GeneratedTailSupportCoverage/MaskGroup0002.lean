import Erdos848.TailSupportScanChecker

namespace Erdos848.GeneratedTailSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def maskGroupPrimes0002 : List ℕ :=
  [67, 71, 73, 79, 83, 89, 97, 101]

def qrMaskCertificate_67 :
    Erdos848.SquareWordMaskCertificate 2401 67 (qrMaskWords 67) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_71 :
    Erdos848.SquareWordMaskCertificate 2401 71 (qrMaskWords 71) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_73 :
    Erdos848.SquareWordMaskCertificate 2401 73 (qrMaskWords 73) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_79 :
    Erdos848.SquareWordMaskCertificate 2401 79 (qrMaskWords 79) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_83 :
    Erdos848.SquareWordMaskCertificate 2401 83 (qrMaskWords 83) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_89 :
    Erdos848.SquareWordMaskCertificate 2401 89 (qrMaskWords 89) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_97 :
    Erdos848.SquareWordMaskCertificate 2401 97 (qrMaskWords 97) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_101 :
    Erdos848.SquareWordMaskCertificate 2401 101 (qrMaskWords 101) :=
  ⟨by decide, by decide, by decide⟩

theorem qrMask_contains_square_group0002
    {p m root : ℕ}
    (hp : p ∈ maskGroupPrimes0002)
    (hm : 1 ≤ m) (hmM : m ≤ 2401) (
      hnotDvd : ¬ p ∣ m) (hsquare : root ^ 2 ≡ m [MOD p]) :
    Erdos848.wordMaskTestBit (qrMaskWords p) (m - 1) = true := by
  simp only [maskGroupPrimes0002, List.mem_cons,
    List.not_mem_nil, or_false] at hp
  rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact qrMaskCertificate_67.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_71.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_73.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_79.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_83.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_89.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_97.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_101.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare

end Erdos848.GeneratedTailSupportCoverage
