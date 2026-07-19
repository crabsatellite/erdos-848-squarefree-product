import Erdos848.TailSupportScanChecker

namespace Erdos848.GeneratedTailSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def maskGroupPrimes0059 : List ℕ :=
  [3371, 3373, 3389, 3391, 3407, 3413, 3433, 3449]

def qrMaskCertificate_3371 :
    Erdos848.SquareWordMaskCertificate 2401 3371 (qrMaskWords 3371) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_3373 :
    Erdos848.SquareWordMaskCertificate 2401 3373 (qrMaskWords 3373) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_3389 :
    Erdos848.SquareWordMaskCertificate 2401 3389 (qrMaskWords 3389) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_3391 :
    Erdos848.SquareWordMaskCertificate 2401 3391 (qrMaskWords 3391) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_3407 :
    Erdos848.SquareWordMaskCertificate 2401 3407 (qrMaskWords 3407) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_3413 :
    Erdos848.SquareWordMaskCertificate 2401 3413 (qrMaskWords 3413) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_3433 :
    Erdos848.SquareWordMaskCertificate 2401 3433 (qrMaskWords 3433) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_3449 :
    Erdos848.SquareWordMaskCertificate 2401 3449 (qrMaskWords 3449) :=
  ⟨by decide, by decide, by decide⟩

theorem qrMask_contains_square_group0059
    {p m root : ℕ}
    (hp : p ∈ maskGroupPrimes0059)
    (hm : 1 ≤ m) (hmM : m ≤ 2401) (
      hnotDvd : ¬ p ∣ m) (hsquare : root ^ 2 ≡ m [MOD p]) :
    Erdos848.wordMaskTestBit (qrMaskWords p) (m - 1) = true := by
  simp only [maskGroupPrimes0059, List.mem_cons,
    List.not_mem_nil, or_false] at hp
  rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact qrMaskCertificate_3371.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_3373.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_3389.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_3391.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_3407.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_3413.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_3433.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_3449.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare

end Erdos848.GeneratedTailSupportCoverage
