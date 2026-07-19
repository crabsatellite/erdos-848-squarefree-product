import Erdos848.TailSupportScanChecker

namespace Erdos848.GeneratedTailSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def maskGroupPrimes0026 : List ℕ :=
  [1297, 1301, 1303, 1307, 1319, 1321, 1327, 1361]

def qrMaskCertificate_1297 :
    Erdos848.SquareWordMaskCertificate 2401 1297 (qrMaskWords 1297) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_1301 :
    Erdos848.SquareWordMaskCertificate 2401 1301 (qrMaskWords 1301) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_1303 :
    Erdos848.SquareWordMaskCertificate 2401 1303 (qrMaskWords 1303) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_1307 :
    Erdos848.SquareWordMaskCertificate 2401 1307 (qrMaskWords 1307) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_1319 :
    Erdos848.SquareWordMaskCertificate 2401 1319 (qrMaskWords 1319) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_1321 :
    Erdos848.SquareWordMaskCertificate 2401 1321 (qrMaskWords 1321) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_1327 :
    Erdos848.SquareWordMaskCertificate 2401 1327 (qrMaskWords 1327) :=
  ⟨by decide, by decide, by decide⟩

def qrMaskCertificate_1361 :
    Erdos848.SquareWordMaskCertificate 2401 1361 (qrMaskWords 1361) :=
  ⟨by decide, by decide, by decide⟩

theorem qrMask_contains_square_group0026
    {p m root : ℕ}
    (hp : p ∈ maskGroupPrimes0026)
    (hm : 1 ≤ m) (hmM : m ≤ 2401) (
      hnotDvd : ¬ p ∣ m) (hsquare : root ^ 2 ≡ m [MOD p]) :
    Erdos848.wordMaskTestBit (qrMaskWords p) (m - 1) = true := by
  simp only [maskGroupPrimes0026, List.mem_cons,
    List.not_mem_nil, or_false] at hp
  rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact qrMaskCertificate_1297.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_1301.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_1303.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_1307.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_1319.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_1321.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_1327.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare
  · exact qrMaskCertificate_1361.testBit_eq_true_of_modEq_square hm hmM hnotDvd hsquare

end Erdos848.GeneratedTailSupportCoverage
