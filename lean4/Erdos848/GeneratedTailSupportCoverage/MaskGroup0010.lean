import Erdos848.TailSupportScanChecker

namespace Erdos848.GeneratedTailSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def maskGroupPrimes0010 : List ℕ :=
  [431, 433, 439, 443, 449, 457, 461, 463]

def qrMaskCertificate_431 :
    Erdos848.SquareWordMaskCertificate 2401 431 (qrMaskWords 431) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_433 :
    Erdos848.SquareWordMaskCertificate 2401 433 (qrMaskWords 433) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_439 :
    Erdos848.SquareWordMaskCertificate 2401 439 (qrMaskWords 439) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_443 :
    Erdos848.SquareWordMaskCertificate 2401 443 (qrMaskWords 443) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_449 :
    Erdos848.SquareWordMaskCertificate 2401 449 (qrMaskWords 449) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_457 :
    Erdos848.SquareWordMaskCertificate 2401 457 (qrMaskWords 457) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_461 :
    Erdos848.SquareWordMaskCertificate 2401 461 (qrMaskWords 461) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_463 :
    Erdos848.SquareWordMaskCertificate 2401 463 (qrMaskWords 463) :=
  ⟨by decide, by decide, by decide⟩

theorem qrMask_contains_square_group0010
    {p m root : ℕ}
    (hp : p ∈ maskGroupPrimes0010)
    (hm : 1 ≤ m) (hmM : m ≤ 2401) (
      hnotDvd : ¬ p ∣ m) (hsquare : root ^ 2 ≡ m [MOD p]) :
    Erdos848.wordMaskTestBit (qrMaskWords p) (m - 1) = true := by
  simp only [maskGroupPrimes0010, List.mem_cons,
    List.not_mem_nil, or_false] at hp
  rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact qrMaskCertificate_431.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_433.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_439.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_443.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_449.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_457.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_461.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_463.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare

end Erdos848.GeneratedTailSupportCoverage
