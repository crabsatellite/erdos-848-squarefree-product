import Erdos848.TailSupportScanChecker

namespace Erdos848.GeneratedTailSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def maskGroupPrimes0015 : List ℕ :=
  [677, 683, 691, 701, 709, 719, 727, 733]

def qrMaskCertificate_677 :
    Erdos848.SquareWordMaskCertificate 2401 677 (qrMaskWords 677) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_683 :
    Erdos848.SquareWordMaskCertificate 2401 683 (qrMaskWords 683) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_691 :
    Erdos848.SquareWordMaskCertificate 2401 691 (qrMaskWords 691) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_701 :
    Erdos848.SquareWordMaskCertificate 2401 701 (qrMaskWords 701) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_709 :
    Erdos848.SquareWordMaskCertificate 2401 709 (qrMaskWords 709) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_719 :
    Erdos848.SquareWordMaskCertificate 2401 719 (qrMaskWords 719) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_727 :
    Erdos848.SquareWordMaskCertificate 2401 727 (qrMaskWords 727) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_733 :
    Erdos848.SquareWordMaskCertificate 2401 733 (qrMaskWords 733) :=
  ⟨by decide, by decide, by decide⟩

theorem qrMask_contains_square_group0015
    {p m root : ℕ}
    (hp : p ∈ maskGroupPrimes0015)
    (hm : 1 ≤ m) (hmM : m ≤ 2401) (
      hnotDvd : ¬ p ∣ m) (hsquare : root ^ 2 ≡ m [MOD p]) :
    Erdos848.wordMaskTestBit (qrMaskWords p) (m - 1) = true := by
  simp only [maskGroupPrimes0015, List.mem_cons,
    List.not_mem_nil, or_false] at hp
  rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact qrMaskCertificate_677.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_683.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_691.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_701.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_709.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_719.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_727.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_733.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare

end Erdos848.GeneratedTailSupportCoverage
