import Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.EvenK3TerminalGroup0000
import Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.EvenK3TerminalGroup0001
import Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.EvenK3TerminalGroup0002
import Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.EvenK3TerminalGroup0003
import Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.EvenK3TerminalGroup0004
import Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.EvenK3TerminalGroup0005
import Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage.EvenK3TerminalGroup0006

namespace Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def evenK3Terminals : List Erdos848.GlobalMixedEvenTerminal :=
  evenK3TerminalGroup0000 ++
  evenK3TerminalGroup0001 ++
  evenK3TerminalGroup0002 ++
  evenK3TerminalGroup0003 ++
  evenK3TerminalGroup0004 ++
  evenK3TerminalGroup0005 ++
  evenK3TerminalGroup0006

theorem evenK3Terminals_count : evenK3Terminals.length = 98 := by
  rfl

#print axioms evenK3Terminals_count

end Erdos848.GeneratedTailGlobalMixedEvenSupportCoverage
