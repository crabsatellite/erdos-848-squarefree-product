import Erdos848.TailSupportScanChecker

namespace Erdos848.GeneratedTailSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def maskGroupPrimes0018 : List ℕ :=
  [853, 857, 859, 863, 877, 881, 883, 887]

def qrMaskCertificate_853 :
    Erdos848.SquareWordMaskCertificate 2401 853 (qrMaskWords 853) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_857 :
    Erdos848.SquareWordMaskCertificate 2401 857 (qrMaskWords 857) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_859 :
    Erdos848.SquareWordMaskCertificate 2401 859 (qrMaskWords 859) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_863 :
    Erdos848.SquareWordMaskCertificate 2401 863 (qrMaskWords 863) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_877 :
    Erdos848.SquareWordMaskCertificate 2401 877 (qrMaskWords 877) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_881 :
    Erdos848.SquareWordMaskCertificate 2401 881 (qrMaskWords 881) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_883 :
    Erdos848.SquareWordMaskCertificate 2401 883 (qrMaskWords 883) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_887 :
    Erdos848.SquareWordMaskCertificate 2401 887 (qrMaskWords 887) :=
  ⟨by decide, by decide, by decide⟩

theorem qrMask_contains_square_group0018
    {p m root : ℕ}
    (hp : p ∈ maskGroupPrimes0018)
    (hm : 1 ≤ m) (hmM : m ≤ 2401) (
      hnotDvd : ¬ p ∣ m) (hsquare : root ^ 2 ≡ m [MOD p]) :
    Erdos848.wordMaskTestBit (qrMaskWords p) (m - 1) = true := by
  simp only [maskGroupPrimes0018, List.mem_cons,
    List.not_mem_nil, or_false] at hp
  rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact qrMaskCertificate_853.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_857.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_859.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_863.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_877.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_881.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_883.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_887.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare

end Erdos848.GeneratedTailSupportCoverage
