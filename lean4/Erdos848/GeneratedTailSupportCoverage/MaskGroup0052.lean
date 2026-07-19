import Erdos848.TailSupportScanChecker

namespace Erdos848.GeneratedTailSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def maskGroupPrimes0052 : List ℕ :=
  [2897, 2903, 2909, 2917, 2927, 2939, 2953, 2957]

def qrMaskCertificate_2897 :
    Erdos848.SquareWordMaskCertificate 2401 2897 (qrMaskWords 2897) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_2903 :
    Erdos848.SquareWordMaskCertificate 2401 2903 (qrMaskWords 2903) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_2909 :
    Erdos848.SquareWordMaskCertificate 2401 2909 (qrMaskWords 2909) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_2917 :
    Erdos848.SquareWordMaskCertificate 2401 2917 (qrMaskWords 2917) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_2927 :
    Erdos848.SquareWordMaskCertificate 2401 2927 (qrMaskWords 2927) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_2939 :
    Erdos848.SquareWordMaskCertificate 2401 2939 (qrMaskWords 2939) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_2953 :
    Erdos848.SquareWordMaskCertificate 2401 2953 (qrMaskWords 2953) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_2957 :
    Erdos848.SquareWordMaskCertificate 2401 2957 (qrMaskWords 2957) :=
  ⟨by decide, by decide, by decide⟩

theorem qrMask_contains_square_group0052
    {p m root : ℕ}
    (hp : p ∈ maskGroupPrimes0052)
    (hm : 1 ≤ m) (hmM : m ≤ 2401) (
      hnotDvd : ¬ p ∣ m) (hsquare : root ^ 2 ≡ m [MOD p]) :
    Erdos848.wordMaskTestBit (qrMaskWords p) (m - 1) = true := by
  simp only [maskGroupPrimes0052, List.mem_cons,
    List.not_mem_nil, or_false] at hp
  rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact qrMaskCertificate_2897.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_2903.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_2909.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_2917.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_2927.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_2939.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_2953.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_2957.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare

end Erdos848.GeneratedTailSupportCoverage
