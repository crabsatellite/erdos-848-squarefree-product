import Erdos848.TailSupportScanChecker

namespace Erdos848.GeneratedTailSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def maskGroupPrimes0021 : List ℕ :=
  [1019, 1021, 1031, 1033, 1039, 1049, 1051, 1061]

def qrMaskCertificate_1019 :
    Erdos848.SquareWordMaskCertificate 2401 1019 (qrMaskWords 1019) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_1021 :
    Erdos848.SquareWordMaskCertificate 2401 1021 (qrMaskWords 1021) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_1031 :
    Erdos848.SquareWordMaskCertificate 2401 1031 (qrMaskWords 1031) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_1033 :
    Erdos848.SquareWordMaskCertificate 2401 1033 (qrMaskWords 1033) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_1039 :
    Erdos848.SquareWordMaskCertificate 2401 1039 (qrMaskWords 1039) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_1049 :
    Erdos848.SquareWordMaskCertificate 2401 1049 (qrMaskWords 1049) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_1051 :
    Erdos848.SquareWordMaskCertificate 2401 1051 (qrMaskWords 1051) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_1061 :
    Erdos848.SquareWordMaskCertificate 2401 1061 (qrMaskWords 1061) :=
  ⟨by decide, by decide, by decide⟩

theorem qrMask_contains_square_group0021
    {p m root : ℕ}
    (hp : p ∈ maskGroupPrimes0021)
    (hm : 1 ≤ m) (hmM : m ≤ 2401) (
      hnotDvd : ¬ p ∣ m) (hsquare : root ^ 2 ≡ m [MOD p]) :
    Erdos848.wordMaskTestBit (qrMaskWords p) (m - 1) = true := by
  simp only [maskGroupPrimes0021, List.mem_cons,
    List.not_mem_nil, or_false] at hp
  rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact qrMaskCertificate_1019.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_1021.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_1031.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_1033.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_1039.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_1049.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_1051.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_1061.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare

end Erdos848.GeneratedTailSupportCoverage
