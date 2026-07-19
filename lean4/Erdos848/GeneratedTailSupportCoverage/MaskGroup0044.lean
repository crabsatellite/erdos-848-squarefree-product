import Erdos848.TailSupportScanChecker

namespace Erdos848.GeneratedTailSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def maskGroupPrimes0044 : List ℕ :=
  [2389, 2393, 2399, 2411, 2417, 2423, 2437, 2441]

def qrMaskCertificate_2389 :
    Erdos848.SquareWordMaskCertificate 2401 2389 (qrMaskWords 2389) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_2393 :
    Erdos848.SquareWordMaskCertificate 2401 2393 (qrMaskWords 2393) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_2399 :
    Erdos848.SquareWordMaskCertificate 2401 2399 (qrMaskWords 2399) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_2411 :
    Erdos848.SquareWordMaskCertificate 2401 2411 (qrMaskWords 2411) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_2417 :
    Erdos848.SquareWordMaskCertificate 2401 2417 (qrMaskWords 2417) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_2423 :
    Erdos848.SquareWordMaskCertificate 2401 2423 (qrMaskWords 2423) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_2437 :
    Erdos848.SquareWordMaskCertificate 2401 2437 (qrMaskWords 2437) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_2441 :
    Erdos848.SquareWordMaskCertificate 2401 2441 (qrMaskWords 2441) :=
  ⟨by decide, by decide, by decide⟩

theorem qrMask_contains_square_group0044
    {p m root : ℕ}
    (hp : p ∈ maskGroupPrimes0044)
    (hm : 1 ≤ m) (hmM : m ≤ 2401) (
      hnotDvd : ¬ p ∣ m) (hsquare : root ^ 2 ≡ m [MOD p]) :
    Erdos848.wordMaskTestBit (qrMaskWords p) (m - 1) = true := by
  simp only [maskGroupPrimes0044, List.mem_cons,
    List.not_mem_nil, or_false] at hp
  rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact qrMaskCertificate_2389.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_2393.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_2399.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_2411.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_2417.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_2423.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_2437.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_2441.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare

end Erdos848.GeneratedTailSupportCoverage
