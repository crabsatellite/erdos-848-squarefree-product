import Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.EvenK2TerminalGroup0000

namespace Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def evenK2Terminals : List Erdos848.GlobalMixedEvenTerminal :=
  evenK2TerminalGroup0000

theorem evenK2Terminals_count : evenK2Terminals.length = 1 := by
  rfl

#print axioms evenK2Terminals_count

end Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage
