import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0010

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid7_0010 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.IndexedValid squarefreeOracle 5000000 11136
  | _ => True

theorem anchorPart7_0010 : anchorPartValid7_0010 anchorHistoryChunk0010 := by
  unfold anchorPartValid7_0010 anchorHistoryChunk0010
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
