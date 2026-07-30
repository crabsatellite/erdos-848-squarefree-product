import Erdos848.TailFortyMillionRootCoefficientDefs

namespace Erdos848.GeneratedFortyMillionRootCoefficientCoverage

/-- Upward coefficient ceilings emitted by the untrusted profiler and
rechecked over every public feasible-prefix leaf. -/
def coefficientCeiling : Nat -> FortyMillionRootClass -> Nat
  | _, .odd => 971528
  | _, .evenOne => 487528
  | endpoint, .evenTwo => if endpoint < 50_000_000 then 686592 else 737792
  | endpoint, .evenThree => if endpoint < 80_000_000 then 1373184 else 1475584

end Erdos848.GeneratedFortyMillionRootCoefficientCoverage
