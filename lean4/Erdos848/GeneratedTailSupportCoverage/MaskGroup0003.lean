import Erdos848.TailSupportScanChecker

namespace Erdos848.GeneratedTailSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def maskGroupPrimes0003 : List ℕ :=
  [103, 107, 109, 113, 127, 131, 137, 139]

def qrMaskCertificate_103 :
    Erdos848.SquareWordMaskCertificate 2401 103 (qrMaskWords 103) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_107 :
    Erdos848.SquareWordMaskCertificate 2401 107 (qrMaskWords 107) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_109 :
    Erdos848.SquareWordMaskCertificate 2401 109 (qrMaskWords 109) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_113 :
    Erdos848.SquareWordMaskCertificate 2401 113 (qrMaskWords 113) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_127 :
    Erdos848.SquareWordMaskCertificate 2401 127 (qrMaskWords 127) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_131 :
    Erdos848.SquareWordMaskCertificate 2401 131 (qrMaskWords 131) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_137 :
    Erdos848.SquareWordMaskCertificate 2401 137 (qrMaskWords 137) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_139 :
    Erdos848.SquareWordMaskCertificate 2401 139 (qrMaskWords 139) :=
  ⟨by decide, by decide, by decide⟩

theorem qrMask_contains_square_group0003
    {p m root : ℕ}
    (hp : p ∈ maskGroupPrimes0003)
    (hm : 1 ≤ m) (hmM : m ≤ 2401) (
      hnotDvd : ¬ p ∣ m) (hsquare : root ^ 2 ≡ m [MOD p]) :
    Erdos848.wordMaskTestBit (qrMaskWords p) (m - 1) = true := by
  simp only [maskGroupPrimes0003, List.mem_cons,
    List.not_mem_nil, or_false] at hp
  rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact qrMaskCertificate_103.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_107.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_109.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_113.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_127.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_131.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_137.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_139.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare

end Erdos848.GeneratedTailSupportCoverage
