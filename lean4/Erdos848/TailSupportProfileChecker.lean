import Erdos848.TailSupportScanChecker

namespace Erdos848

/-! ## Remaining support rows in the five-million odd root profile -/

def fiveMillionOddRootK2FeasiblePrefixes : List (List ℕ) :=
  feasibleSupportPrefixes 10_000_000 1 1
    GeneratedTailSupportCoverage.supportPrimes

def fiveMillionOddRootK3FeasiblePrefixes : List (List ℕ) :=
  feasibleSupportPrefixes 10_000_000 2 1
    GeneratedTailSupportCoverage.supportPrimes

def fiveMillionOddRootK4FeasiblePrefixes : List (List ℕ) :=
  feasibleSupportPrefixes 10_000_000 3 1
    GeneratedTailSupportCoverage.supportPrimes

def fiveMillionOddRootK6FeasiblePrefixes : List (List ℕ) :=
  feasibleSupportPrefixes 10_000_000 5 1
    GeneratedTailSupportCoverage.supportPrimes

def fiveMillionOddRootProfilePrefixPasses
    (bound : ℕ) (support : List ℕ) : Bool :=
  oddRootWordSurvivorCount support true ≤ bound &&
    oddRootWordSurvivorCount support false ≤ bound

set_option maxRecDepth 1000000 in
theorem fiveMillionOddRootK2_feasible_prefix_count :
    fiveMillionOddRootK2FeasiblePrefixes.length = 444 := by
  decide

set_option maxRecDepth 1000000 in
theorem fiveMillionOddRootK3_feasible_prefix_count :
    fiveMillionOddRootK3FeasiblePrefixes.length = 2553 := by
  decide

set_option maxRecDepth 1000000 in
theorem fiveMillionOddRootK4_feasible_prefix_count :
    fiveMillionOddRootK4FeasiblePrefixes.length = 3039 := by
  decide

set_option maxRecDepth 1000000 in
theorem fiveMillionOddRootK6_feasible_prefix_count :
    fiveMillionOddRootK6FeasiblePrefixes.length = 63 := by
  decide

end Erdos848
