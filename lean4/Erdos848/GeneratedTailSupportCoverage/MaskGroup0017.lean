import Erdos848.TailSupportScanChecker

namespace Erdos848.GeneratedTailSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def maskGroupPrimes0017 : List ℕ :=
  [797, 809, 811, 821, 823, 827, 829, 839]

def qrMaskCertificate_797 :
    Erdos848.SquareWordMaskCertificate 2401 797 (qrMaskWords 797) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_809 :
    Erdos848.SquareWordMaskCertificate 2401 809 (qrMaskWords 809) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_811 :
    Erdos848.SquareWordMaskCertificate 2401 811 (qrMaskWords 811) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_821 :
    Erdos848.SquareWordMaskCertificate 2401 821 (qrMaskWords 821) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_823 :
    Erdos848.SquareWordMaskCertificate 2401 823 (qrMaskWords 823) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_827 :
    Erdos848.SquareWordMaskCertificate 2401 827 (qrMaskWords 827) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_829 :
    Erdos848.SquareWordMaskCertificate 2401 829 (qrMaskWords 829) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_839 :
    Erdos848.SquareWordMaskCertificate 2401 839 (qrMaskWords 839) :=
  ⟨by decide, by decide, by decide⟩

theorem qrMask_contains_square_group0017
    {p m root : ℕ}
    (hp : p ∈ maskGroupPrimes0017)
    (hm : 1 ≤ m) (hmM : m ≤ 2401) (
      hnotDvd : ¬ p ∣ m) (hsquare : root ^ 2 ≡ m [MOD p]) :
    Erdos848.wordMaskTestBit (qrMaskWords p) (m - 1) = true := by
  simp only [maskGroupPrimes0017, List.mem_cons,
    List.not_mem_nil, or_false] at hp
  rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact qrMaskCertificate_797.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_809.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_811.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_821.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_823.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_827.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_829.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_839.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare

end Erdos848.GeneratedTailSupportCoverage
