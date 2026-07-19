import Erdos848.TailSupportScanChecker

namespace Erdos848.GeneratedTailSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def maskGroupPrimes0049 : List ℕ :=
  [2711, 2713, 2719, 2729, 2731, 2741, 2749, 2753]

def qrMaskCertificate_2711 :
    Erdos848.SquareWordMaskCertificate 2401 2711 (qrMaskWords 2711) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_2713 :
    Erdos848.SquareWordMaskCertificate 2401 2713 (qrMaskWords 2713) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_2719 :
    Erdos848.SquareWordMaskCertificate 2401 2719 (qrMaskWords 2719) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_2729 :
    Erdos848.SquareWordMaskCertificate 2401 2729 (qrMaskWords 2729) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_2731 :
    Erdos848.SquareWordMaskCertificate 2401 2731 (qrMaskWords 2731) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_2741 :
    Erdos848.SquareWordMaskCertificate 2401 2741 (qrMaskWords 2741) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_2749 :
    Erdos848.SquareWordMaskCertificate 2401 2749 (qrMaskWords 2749) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_2753 :
    Erdos848.SquareWordMaskCertificate 2401 2753 (qrMaskWords 2753) :=
  ⟨by decide, by decide, by decide⟩

theorem qrMask_contains_square_group0049
    {p m root : ℕ}
    (hp : p ∈ maskGroupPrimes0049)
    (hm : 1 ≤ m) (hmM : m ≤ 2401) (
      hnotDvd : ¬ p ∣ m) (hsquare : root ^ 2 ≡ m [MOD p]) :
    Erdos848.wordMaskTestBit (qrMaskWords p) (m - 1) = true := by
  simp only [maskGroupPrimes0049, List.mem_cons,
    List.not_mem_nil, or_false] at hp
  rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact qrMaskCertificate_2711.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_2713.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_2719.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_2729.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_2731.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_2741.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_2749.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_2753.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare

end Erdos848.GeneratedTailSupportCoverage
