import Erdos848.TailHybridSmallPrimeList

namespace Erdos848

/-!
# Compact computation cache for the hybrid small-prime payment

The semantic definition discovers the relevant primes by filtering
`Finset.range 1001`.  Repeating the associated quotient sum inside every
selection of every grid-row budget makes the kernel replay it many thousands
of times.  This file lets each row compute and certify the five
period-dependent quotient sums once.
-/

def paperSmallPrimeQuotientSumFast (upper period : Nat) : Nat :=
  ∑ p ∈ paperSmallDiagonalPrimesFast,
    ((upper + 1) / (p ^ 2 * period) + 1)

structure HybridSmallPrimePaymentCache where
  period25 : Nat
  period100 : Nat
  period200 : Nat
  period900 : Nat
  period1800 : Nat

def HybridSmallPrimePaymentCache.get
    (cache : HybridSmallPrimePaymentCache) :
    PaperDiagonalSelection → Nat
  | .unrestricted => cache.period25
  | .concentrated _ _ => cache.period900
  | .lowTwoAdic => cache.period200
  | .evenTwoCell _ => cache.period1800
  | .oddUnion => cache.period100
  | .oddPlusCell _ _ => cache.period900
  | .oneOdd _ => cache.period100
  | .oneOddCell _ _ => cache.period900

def HybridSmallPrimePaymentCache.Valid
    (cache : HybridSmallPrimePaymentCache) (upper : Nat) : Prop :=
  cache.period25 = paperSmallPrimeQuotientSumFast upper 25 ∧
  cache.period100 = paperSmallPrimeQuotientSumFast upper 100 ∧
  cache.period200 = paperSmallPrimeQuotientSumFast upper 200 ∧
  cache.period900 = paperSmallPrimeQuotientSumFast upper 900 ∧
  cache.period1800 = paperSmallPrimeQuotientSumFast upper 1800

def HybridSmallPrimePaymentCache.payment
    (cache : HybridSmallPrimePaymentCache)
    (selection : PaperDiagonalSelection) : Nat :=
  2 * selection.smallResidueCount * cache.get selection

instance (cache : HybridSmallPrimePaymentCache) (upper : Nat) :
    Decidable (cache.Valid upper) := by
  unfold HybridSmallPrimePaymentCache.Valid
  infer_instance

end Erdos848
