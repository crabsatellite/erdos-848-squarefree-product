import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0191

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid7_0191 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.IndexedValid squarefreeOracle 5000000 196480
  | _ => True

theorem anchorPart7_0191 : anchorPartValid7_0191 anchorHistoryChunk0191 := by
  unfold anchorPartValid7_0191 anchorHistoryChunk0191
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
