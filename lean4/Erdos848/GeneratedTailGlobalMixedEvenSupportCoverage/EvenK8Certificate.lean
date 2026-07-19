import Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.EvenK8Leaf0000Data
import Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.EvenK8Leaf0001Data

namespace Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def evenK8Terminals : List Erdos848.GlobalMixedEvenTerminal :=
  evenK8TerminalGroup0000 ++
  evenK8TerminalGroup0001

theorem evenK8Terminals_count : evenK8Terminals.length = 2 := by
  rfl

#print axioms evenK8Terminals_count

end Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage
