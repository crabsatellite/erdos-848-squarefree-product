import Erdos848.TailSupportScanChecker

namespace Erdos848.GeneratedTailSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def maskGroupPrimes0032 : List ℕ :=
  [1637, 1657, 1663, 1667, 1669, 1693, 1697, 1699]

def qrMaskCertificate_1637 :
    Erdos848.SquareWordMaskCertificate 2401 1637 (qrMaskWords 1637) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_1657 :
    Erdos848.SquareWordMaskCertificate 2401 1657 (qrMaskWords 1657) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_1663 :
    Erdos848.SquareWordMaskCertificate 2401 1663 (qrMaskWords 1663) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_1667 :
    Erdos848.SquareWordMaskCertificate 2401 1667 (qrMaskWords 1667) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_1669 :
    Erdos848.SquareWordMaskCertificate 2401 1669 (qrMaskWords 1669) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_1693 :
    Erdos848.SquareWordMaskCertificate 2401 1693 (qrMaskWords 1693) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_1697 :
    Erdos848.SquareWordMaskCertificate 2401 1697 (qrMaskWords 1697) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_1699 :
    Erdos848.SquareWordMaskCertificate 2401 1699 (qrMaskWords 1699) :=
  ⟨by decide, by decide, by decide⟩

theorem qrMask_contains_square_group0032
    {p m root : ℕ}
    (hp : p ∈ maskGroupPrimes0032)
    (hm : 1 ≤ m) (hmM : m ≤ 2401) (
      hnotDvd : ¬ p ∣ m) (hsquare : root ^ 2 ≡ m [MOD p]) :
    Erdos848.wordMaskTestBit (qrMaskWords p) (m - 1) = true := by
  simp only [maskGroupPrimes0032, List.mem_cons,
    List.not_mem_nil, or_false] at hp
  rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact qrMaskCertificate_1637.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_1657.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_1663.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_1667.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_1669.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_1693.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_1697.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_1699.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare

end Erdos848.GeneratedTailSupportCoverage
