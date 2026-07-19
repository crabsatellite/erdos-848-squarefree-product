import Erdos848.TailSupportScanChecker

namespace Erdos848.GeneratedTailSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def maskGroupPrimes0034 : List ℕ :=
  [1777, 1783, 1787, 1789, 1801, 1811, 1823, 1831]

def qrMaskCertificate_1777 :
    Erdos848.SquareWordMaskCertificate 2401 1777 (qrMaskWords 1777) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_1783 :
    Erdos848.SquareWordMaskCertificate 2401 1783 (qrMaskWords 1783) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_1787 :
    Erdos848.SquareWordMaskCertificate 2401 1787 (qrMaskWords 1787) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_1789 :
    Erdos848.SquareWordMaskCertificate 2401 1789 (qrMaskWords 1789) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_1801 :
    Erdos848.SquareWordMaskCertificate 2401 1801 (qrMaskWords 1801) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_1811 :
    Erdos848.SquareWordMaskCertificate 2401 1811 (qrMaskWords 1811) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_1823 :
    Erdos848.SquareWordMaskCertificate 2401 1823 (qrMaskWords 1823) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_1831 :
    Erdos848.SquareWordMaskCertificate 2401 1831 (qrMaskWords 1831) :=
  ⟨by decide, by decide, by decide⟩

theorem qrMask_contains_square_group0034
    {p m root : ℕ}
    (hp : p ∈ maskGroupPrimes0034)
    (hm : 1 ≤ m) (hmM : m ≤ 2401) (
      hnotDvd : ¬ p ∣ m) (hsquare : root ^ 2 ≡ m [MOD p]) :
    Erdos848.wordMaskTestBit (qrMaskWords p) (m - 1) = true := by
  simp only [maskGroupPrimes0034, List.mem_cons,
    List.not_mem_nil, or_false] at hp
  rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact qrMaskCertificate_1777.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_1783.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_1787.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_1789.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_1801.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_1811.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_1823.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_1831.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare

end Erdos848.GeneratedTailSupportCoverage
