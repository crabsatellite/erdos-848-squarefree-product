import Erdos848.GeneratedTailTwentyMillionRootLowerCoverage.RowEvenOne
import Erdos848.GeneratedTailTwentyMillionRootLowerCoverage.RowEvenTwo
import Erdos848.GeneratedTailTwentyMillionRootLowerCoverage.RowEvenThree
import Erdos848.GeneratedTailTwentyMillionRootLowerCoverage.RowOdd

namespace Erdos848.GeneratedTailTwentyMillionRootLowerCoverage

theorem lower_profile_le
    (row : Erdos848.TwentyMillionRootRow) (supportLength : Nat)
    (hrow : row ∈ Erdos848.twentyMillionRootProfileRows)
    (hLength : supportLength < 8) :
    Erdos848.twentyMillionRootSmoothProfile row supportLength
        Erdos848.twentyMillionLower ≤ row.envelope := by
  simp only [Erdos848.twentyMillionRootProfileRows, List.mem_cons,
    List.not_mem_nil, or_false] at hrow
  rcases hrow with rfl | rfl | rfl | rfl
  · exact lower_evenOne_le supportLength hLength
  · exact lower_evenTwo_le supportLength hLength
  · exact lower_evenThree_le supportLength hLength
  · exact lower_odd_le supportLength hLength

#print axioms lower_profile_le

end Erdos848.GeneratedTailTwentyMillionRootLowerCoverage
