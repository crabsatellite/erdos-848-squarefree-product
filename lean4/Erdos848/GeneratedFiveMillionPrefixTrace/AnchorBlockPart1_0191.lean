import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0191

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid1_0191 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.IndexedValid squarefreeOracle 5000000 195712
  | _ => True

theorem anchorPart1_0191 : anchorPartValid1_0191 anchorHistoryChunk0191 := by
  unfold anchorPartValid1_0191 anchorHistoryChunk0191
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
