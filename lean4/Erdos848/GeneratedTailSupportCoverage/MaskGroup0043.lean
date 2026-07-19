import Erdos848.TailSupportScanChecker

namespace Erdos848.GeneratedTailSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def maskGroupPrimes0043 : List ℕ :=
  [2341, 2347, 2351, 2357, 2371, 2377, 2381, 2383]

def qrMaskCertificate_2341 :
    Erdos848.SquareWordMaskCertificate 2401 2341 (qrMaskWords 2341) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_2347 :
    Erdos848.SquareWordMaskCertificate 2401 2347 (qrMaskWords 2347) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_2351 :
    Erdos848.SquareWordMaskCertificate 2401 2351 (qrMaskWords 2351) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_2357 :
    Erdos848.SquareWordMaskCertificate 2401 2357 (qrMaskWords 2357) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_2371 :
    Erdos848.SquareWordMaskCertificate 2401 2371 (qrMaskWords 2371) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_2377 :
    Erdos848.SquareWordMaskCertificate 2401 2377 (qrMaskWords 2377) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_2381 :
    Erdos848.SquareWordMaskCertificate 2401 2381 (qrMaskWords 2381) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_2383 :
    Erdos848.SquareWordMaskCertificate 2401 2383 (qrMaskWords 2383) :=
  ⟨by decide, by decide, by decide⟩

theorem qrMask_contains_square_group0043
    {p m root : ℕ}
    (hp : p ∈ maskGroupPrimes0043)
    (hm : 1 ≤ m) (hmM : m ≤ 2401) (
      hnotDvd : ¬ p ∣ m) (hsquare : root ^ 2 ≡ m [MOD p]) :
    Erdos848.wordMaskTestBit (qrMaskWords p) (m - 1) = true := by
  simp only [maskGroupPrimes0043, List.mem_cons,
    List.not_mem_nil, or_false] at hp
  rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact qrMaskCertificate_2341.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_2347.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_2351.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_2357.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_2371.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_2377.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_2381.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_2383.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare

end Erdos848.GeneratedTailSupportCoverage
