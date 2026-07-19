import Erdos848.TailSupportScanChecker

namespace Erdos848.GeneratedTailSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def maskGroupPrimes0030 : List ℕ :=
  [1543, 1549, 1553, 1559, 1567, 1571, 1579, 1583]

def qrMaskCertificate_1543 :
    Erdos848.SquareWordMaskCertificate 2401 1543 (qrMaskWords 1543) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_1549 :
    Erdos848.SquareWordMaskCertificate 2401 1549 (qrMaskWords 1549) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_1553 :
    Erdos848.SquareWordMaskCertificate 2401 1553 (qrMaskWords 1553) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_1559 :
    Erdos848.SquareWordMaskCertificate 2401 1559 (qrMaskWords 1559) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_1567 :
    Erdos848.SquareWordMaskCertificate 2401 1567 (qrMaskWords 1567) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_1571 :
    Erdos848.SquareWordMaskCertificate 2401 1571 (qrMaskWords 1571) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_1579 :
    Erdos848.SquareWordMaskCertificate 2401 1579 (qrMaskWords 1579) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_1583 :
    Erdos848.SquareWordMaskCertificate 2401 1583 (qrMaskWords 1583) :=
  ⟨by decide, by decide, by decide⟩

theorem qrMask_contains_square_group0030
    {p m root : ℕ}
    (hp : p ∈ maskGroupPrimes0030)
    (hm : 1 ≤ m) (hmM : m ≤ 2401) (
      hnotDvd : ¬ p ∣ m) (hsquare : root ^ 2 ≡ m [MOD p]) :
    Erdos848.wordMaskTestBit (qrMaskWords p) (m - 1) = true := by
  simp only [maskGroupPrimes0030, List.mem_cons,
    List.not_mem_nil, or_false] at hp
  rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact qrMaskCertificate_1543.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_1549.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_1553.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_1559.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_1567.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_1571.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_1579.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_1583.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare

end Erdos848.GeneratedTailSupportCoverage
