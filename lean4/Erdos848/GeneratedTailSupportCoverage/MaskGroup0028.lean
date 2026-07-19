import Erdos848.TailSupportScanChecker

namespace Erdos848.GeneratedTailSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def maskGroupPrimes0028 : List ℕ :=
  [1433, 1439, 1447, 1451, 1453, 1459, 1471, 1481]

def qrMaskCertificate_1433 :
    Erdos848.SquareWordMaskCertificate 2401 1433 (qrMaskWords 1433) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_1439 :
    Erdos848.SquareWordMaskCertificate 2401 1439 (qrMaskWords 1439) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_1447 :
    Erdos848.SquareWordMaskCertificate 2401 1447 (qrMaskWords 1447) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_1451 :
    Erdos848.SquareWordMaskCertificate 2401 1451 (qrMaskWords 1451) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_1453 :
    Erdos848.SquareWordMaskCertificate 2401 1453 (qrMaskWords 1453) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_1459 :
    Erdos848.SquareWordMaskCertificate 2401 1459 (qrMaskWords 1459) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_1471 :
    Erdos848.SquareWordMaskCertificate 2401 1471 (qrMaskWords 1471) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_1481 :
    Erdos848.SquareWordMaskCertificate 2401 1481 (qrMaskWords 1481) :=
  ⟨by decide, by decide, by decide⟩

theorem qrMask_contains_square_group0028
    {p m root : ℕ}
    (hp : p ∈ maskGroupPrimes0028)
    (hm : 1 ≤ m) (hmM : m ≤ 2401) (
      hnotDvd : ¬ p ∣ m) (hsquare : root ^ 2 ≡ m [MOD p]) :
    Erdos848.wordMaskTestBit (qrMaskWords p) (m - 1) = true := by
  simp only [maskGroupPrimes0028, List.mem_cons,
    List.not_mem_nil, or_false] at hp
  rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact qrMaskCertificate_1433.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_1439.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_1447.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_1451.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_1453.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_1459.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_1471.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_1481.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare

end Erdos848.GeneratedTailSupportCoverage
