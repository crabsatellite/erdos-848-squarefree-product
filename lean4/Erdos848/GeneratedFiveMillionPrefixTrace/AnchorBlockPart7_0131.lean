import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0131

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid7_0131 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.IndexedValid squarefreeOracle 5000000 135040
  | _ => True

theorem anchorPart7_0131 : anchorPartValid7_0131 anchorHistoryChunk0131 := by
  unfold anchorPartValid7_0131 anchorHistoryChunk0131
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
