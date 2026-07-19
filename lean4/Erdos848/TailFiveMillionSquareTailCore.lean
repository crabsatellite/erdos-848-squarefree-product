import Erdos848.TailPrimeSquareBound

namespace Erdos848

/-! Lightweight square-tail constant used by every five-million Hall tail. -/

def fiveMillionSquareTail7Envelope : Rat :=
  263529083909042886517376461184337967 /
    8573456796637692379906289787841000000

theorem fiveMillionSquareTail7_kernel_close
    (s : Finset Nat)
    (hprime : ∀ p ∈ s, Nat.Prime p)
    (hcut : ∀ p ∈ s, 7 < p) :
    (∑ p ∈ s, reciprocalSquareQ p) <=
      fiveMillionSquareTail7Envelope := by
  simpa [fiveMillionSquareTail7Envelope, primeSquareTail7Envelope] using
    finitePrimeSquareTail7_le s hprime hcut

#print axioms fiveMillionSquareTail7_kernel_close

end Erdos848
