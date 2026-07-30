import Erdos848.MainTheoremCore

namespace Erdos848

/-!
# Exact high-range splice for the audited paper

The kernel theorem closes `40M <= N < 200M`.  The two definitions below are
the exact types produced by the middle numerical providers and the high-tail
row certificate; neither is stored as a theorem field.
-/

/-- Lightweight interface for the finite forty-to-two-hundred-million
kernel theorem.  Its definition is intentionally identical to
`Erdos848FortyMillionClose`, without importing that large implementation. -/
def Erdos848PaperFortyToTwoHundredMillionClose : Prop :=
  forall N, 40_000_000 <= N -> N < 200_000_000 ->
    OriginalProblem848Statement N

def Erdos848PaperTwoHundredMillionToTwoBillionClose : Prop :=
  forall N, 200_000_000 <= N -> N < 2_000_000_000 ->
    OriginalProblem848Statement N

def Erdos848PaperTwoBillionTailClose : Prop :=
  forall N, 2_000_000_000 <= N -> OriginalProblem848Statement N

theorem erdos848PaperFortyMillionTail_of_high_range_close
    (hforty : Erdos848PaperFortyToTwoHundredMillionClose)
    (hmiddle : Erdos848PaperTwoHundredMillionToTwoBillionClose)
    (hhigh : Erdos848PaperTwoBillionTailClose) :
    Erdos848PaperFortyMillionTailClose := by
  intro N hN
  by_cases htwoHundred : N < 200_000_000
  · exact hforty N hN htwoHundred
  by_cases htwoBillion : N < 2_000_000_000
  · exact hmiddle N (Nat.le_of_not_gt htwoHundred) htwoBillion
  · exact hhigh N (Nat.le_of_not_gt htwoBillion)

end Erdos848
