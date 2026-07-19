import Erdos848.TailTwentyMillionArithmetic
import Erdos848.TailCombinatorics
import Erdos848.TailFiniteSieve
import Erdos848.TailRootEnvelope
import Erdos848.TailPrimeSquareBound
import Erdos848.TailTwentyMillionSquare
import Erdos848.TailDiagonalFiniteChecker

/-!
# Kernel theorem map for `20_000_000 ≤ N < 40_000_000`

The first four groups below are reusable unconditional kernel lemmas.  The
producer-specific range bounds and the final semantic exhaustion are only
types at present; they are listed separately so the exact interval close
cannot be confused with the completed arithmetic table.
-/

-- Quotient masks and the four-pivot finite/tail inequality: proved.
#check Erdos848.valuation_one_quotient_mod_two
#check Erdos848.valuation_two_quotient_mod_four
#check Erdos848.valuation_three_quotient_mod_eight
#check Erdos848.four_pivot_finite_tail
#check Erdos848.n_pivot_finite_tail

-- Exact finite Bonferroni/tail assembly: proved generically.
#check Erdos848.bonferroni_three_le_noEvent_card
#check Erdos848.noEvent_card_le_bonferroni_four
#check Erdos848.card_le_intersectionSum_add_tail_sum

-- Root monotonicity/jump closure: proved generically.
#check Erdos848.transformedRootRow_eq_producerFormula
#check Erdos848.transformedRootRow_antitone
#check Erdos848.interval_bound_of_predecessor_descent

-- Prime-square tails and finite diagonal block checker: proved generically.
#check Erdos848.finitePrimeSquareTail47_lt
#check Erdos848.finitePrimeSquareTail7_lt
#check Erdos848.finitePrimeSquareTail19_lt
#check Erdos848.twentyMillionSquareOdd_bound
#check Erdos848.twentyMillionSquareEven_bound
#check Erdos848.tailDiagonalSevenCells_ratio_le
#check Erdos848.TailDiagonalSevenCellRatioRange

-- Corrected producer targets over the full `[20M,40M)` support endpoint.
#check Erdos848.TwentyMillionRootRangeBound
#check Erdos848.TwentyMillionDiagonalRangeBound

-- Exact ten-row arithmetic and lower-endpoint monotonicity: proved.
#check Erdos848.twentyMillionBranch_total_lt_target
#check Erdos848.twentyMillionBranchTotal_le_oddTwoGeneric
#check Erdos848.twentyMillionTarget_le_normalizedTarget

-- Still unproved: actual Hall-completion branch maximality/exhaustion.
#check Erdos848.Erdos848TwentyMillionBranchExhaustion

-- Assembly is proved, but requires the preceding unproved exhaustion value.
#check Erdos848.erdos848TwentyMillionClose_of_branchExhaustion
