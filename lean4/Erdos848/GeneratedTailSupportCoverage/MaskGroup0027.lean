import Erdos848.TailSupportScanChecker

namespace Erdos848.GeneratedTailSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def maskGroupPrimes0027 : List ℕ :=
  [1367, 1373, 1381, 1399, 1409, 1423, 1427, 1429]

def qrMaskCertificate_1367 :
    Erdos848.SquareWordMaskCertificate 2401 1367 (qrMaskWords 1367) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_1373 :
    Erdos848.SquareWordMaskCertificate 2401 1373 (qrMaskWords 1373) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_1381 :
    Erdos848.SquareWordMaskCertificate 2401 1381 (qrMaskWords 1381) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_1399 :
    Erdos848.SquareWordMaskCertificate 2401 1399 (qrMaskWords 1399) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_1409 :
    Erdos848.SquareWordMaskCertificate 2401 1409 (qrMaskWords 1409) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_1423 :
    Erdos848.SquareWordMaskCertificate 2401 1423 (qrMaskWords 1423) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_1427 :
    Erdos848.SquareWordMaskCertificate 2401 1427 (qrMaskWords 1427) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_1429 :
    Erdos848.SquareWordMaskCertificate 2401 1429 (qrMaskWords 1429) :=
  ⟨by decide, by decide, by decide⟩

theorem qrMask_contains_square_group0027
    {p m root : ℕ}
    (hp : p ∈ maskGroupPrimes0027)
    (hm : 1 ≤ m) (hmM : m ≤ 2401) (
      hnotDvd : ¬ p ∣ m) (hsquare : root ^ 2 ≡ m [MOD p]) :
    Erdos848.wordMaskTestBit (qrMaskWords p) (m - 1) = true := by
  simp only [maskGroupPrimes0027, List.mem_cons,
    List.not_mem_nil, or_false] at hp
  rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact qrMaskCertificate_1367.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_1373.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_1381.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_1399.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_1409.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_1423.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_1427.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_1429.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare

end Erdos848.GeneratedTailSupportCoverage
