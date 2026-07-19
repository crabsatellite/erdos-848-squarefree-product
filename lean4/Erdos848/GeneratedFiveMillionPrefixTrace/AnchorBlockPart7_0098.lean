import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0098

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid7_0098 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.IndexedValid squarefreeOracle 5000000 101248
  | _ => True

theorem anchorPart7_0098 : anchorPartValid7_0098 anchorHistoryChunk0098 := by
  unfold anchorPartValid7_0098 anchorHistoryChunk0098
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
