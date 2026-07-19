import Erdos848.TailSupportScanChecker

namespace Erdos848.GeneratedTailSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def maskGroupPrimes0029 : List ℕ :=
  [1483, 1487, 1489, 1493, 1499, 1511, 1523, 1531]

def qrMaskCertificate_1483 :
    Erdos848.SquareWordMaskCertificate 2401 1483 (qrMaskWords 1483) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_1487 :
    Erdos848.SquareWordMaskCertificate 2401 1487 (qrMaskWords 1487) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_1489 :
    Erdos848.SquareWordMaskCertificate 2401 1489 (qrMaskWords 1489) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_1493 :
    Erdos848.SquareWordMaskCertificate 2401 1493 (qrMaskWords 1493) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_1499 :
    Erdos848.SquareWordMaskCertificate 2401 1499 (qrMaskWords 1499) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_1511 :
    Erdos848.SquareWordMaskCertificate 2401 1511 (qrMaskWords 1511) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_1523 :
    Erdos848.SquareWordMaskCertificate 2401 1523 (qrMaskWords 1523) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_1531 :
    Erdos848.SquareWordMaskCertificate 2401 1531 (qrMaskWords 1531) :=
  ⟨by decide, by decide, by decide⟩

theorem qrMask_contains_square_group0029
    {p m root : ℕ}
    (hp : p ∈ maskGroupPrimes0029)
    (hm : 1 ≤ m) (hmM : m ≤ 2401) (
      hnotDvd : ¬ p ∣ m) (hsquare : root ^ 2 ≡ m [MOD p]) :
    Erdos848.wordMaskTestBit (qrMaskWords p) (m - 1) = true := by
  simp only [maskGroupPrimes0029, List.mem_cons,
    List.not_mem_nil, or_false] at hp
  rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact qrMaskCertificate_1483.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_1487.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_1489.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_1493.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_1499.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_1511.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_1523.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_1531.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare

end Erdos848.GeneratedTailSupportCoverage
