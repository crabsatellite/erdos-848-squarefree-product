import Erdos848.TailFortyMillionRootPrimeChecker
import Erdos848.GeneratedFortyMillionPrimeUpperCoverage.Semantics

namespace Erdos848.GeneratedFortyMillionPrimeUpperCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

theorem finiteRootPrimeArithmetic_passes :
    Erdos848.fortyMillionRootBlocks.all (fun block =>
      Erdos848.fortyMillionRootClasses.all (fun rootClass =>
        fortyMillionPrimeUpperBlocks.all
          (Erdos848.fortyMillionFiniteRootPrimeBlockPasses
            block rootClass))) = true := by
  rfl

#print axioms finiteRootPrimeArithmetic_passes

end Erdos848.GeneratedFortyMillionPrimeUpperCoverage
