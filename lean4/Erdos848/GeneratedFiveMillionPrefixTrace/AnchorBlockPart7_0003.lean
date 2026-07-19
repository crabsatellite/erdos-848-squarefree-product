import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0003

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid7_0003 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.IndexedValid squarefreeOracle 5000000 3968
  | _ => True

theorem anchorPart7_0003 : anchorPartValid7_0003 anchorHistoryChunk0003 := by
  unfold anchorPartValid7_0003 anchorHistoryChunk0003
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
