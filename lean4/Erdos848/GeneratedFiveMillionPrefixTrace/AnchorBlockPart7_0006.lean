import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0006

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid7_0006 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.IndexedValid squarefreeOracle 5000000 7040
  | _ => True

theorem anchorPart7_0006 : anchorPartValid7_0006 anchorHistoryChunk0006 := by
  unfold anchorPartValid7_0006 anchorHistoryChunk0006
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
