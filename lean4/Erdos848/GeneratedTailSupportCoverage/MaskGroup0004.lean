import Erdos848.TailSupportScanChecker

namespace Erdos848.GeneratedTailSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def maskGroupPrimes0004 : List ℕ :=
  [149, 151, 157, 163, 167, 173, 179, 181]

def qrMaskCertificate_149 :
    Erdos848.SquareWordMaskCertificate 2401 149 (qrMaskWords 149) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_151 :
    Erdos848.SquareWordMaskCertificate 2401 151 (qrMaskWords 151) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_157 :
    Erdos848.SquareWordMaskCertificate 2401 157 (qrMaskWords 157) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_163 :
    Erdos848.SquareWordMaskCertificate 2401 163 (qrMaskWords 163) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_167 :
    Erdos848.SquareWordMaskCertificate 2401 167 (qrMaskWords 167) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_173 :
    Erdos848.SquareWordMaskCertificate 2401 173 (qrMaskWords 173) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_179 :
    Erdos848.SquareWordMaskCertificate 2401 179 (qrMaskWords 179) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_181 :
    Erdos848.SquareWordMaskCertificate 2401 181 (qrMaskWords 181) :=
  ⟨by decide, by decide, by decide⟩

theorem qrMask_contains_square_group0004
    {p m root : ℕ}
    (hp : p ∈ maskGroupPrimes0004)
    (hm : 1 ≤ m) (hmM : m ≤ 2401) (
      hnotDvd : ¬ p ∣ m) (hsquare : root ^ 2 ≡ m [MOD p]) :
    Erdos848.wordMaskTestBit (qrMaskWords p) (m - 1) = true := by
  simp only [maskGroupPrimes0004, List.mem_cons,
    List.not_mem_nil, or_false] at hp
  rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact qrMaskCertificate_149.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_151.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_157.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_163.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_167.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_173.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_179.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_181.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare

end Erdos848.GeneratedTailSupportCoverage
