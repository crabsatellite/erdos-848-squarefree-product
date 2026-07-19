import Erdos848.TailSupportScanChecker

namespace Erdos848.GeneratedTailSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def maskGroupPrimes0035 : List ℕ :=
  [1847, 1861, 1867, 1871, 1873, 1877, 1879, 1889]

def qrMaskCertificate_1847 :
    Erdos848.SquareWordMaskCertificate 2401 1847 (qrMaskWords 1847) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_1861 :
    Erdos848.SquareWordMaskCertificate 2401 1861 (qrMaskWords 1861) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_1867 :
    Erdos848.SquareWordMaskCertificate 2401 1867 (qrMaskWords 1867) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_1871 :
    Erdos848.SquareWordMaskCertificate 2401 1871 (qrMaskWords 1871) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_1873 :
    Erdos848.SquareWordMaskCertificate 2401 1873 (qrMaskWords 1873) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_1877 :
    Erdos848.SquareWordMaskCertificate 2401 1877 (qrMaskWords 1877) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_1879 :
    Erdos848.SquareWordMaskCertificate 2401 1879 (qrMaskWords 1879) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_1889 :
    Erdos848.SquareWordMaskCertificate 2401 1889 (qrMaskWords 1889) :=
  ⟨by decide, by decide, by decide⟩

theorem qrMask_contains_square_group0035
    {p m root : ℕ}
    (hp : p ∈ maskGroupPrimes0035)
    (hm : 1 ≤ m) (hmM : m ≤ 2401) (
      hnotDvd : ¬ p ∣ m) (hsquare : root ^ 2 ≡ m [MOD p]) :
    Erdos848.wordMaskTestBit (qrMaskWords p) (m - 1) = true := by
  simp only [maskGroupPrimes0035, List.mem_cons,
    List.not_mem_nil, or_false] at hp
  rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact qrMaskCertificate_1847.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_1861.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_1867.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_1871.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_1873.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_1877.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_1879.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_1889.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare

end Erdos848.GeneratedTailSupportCoverage
