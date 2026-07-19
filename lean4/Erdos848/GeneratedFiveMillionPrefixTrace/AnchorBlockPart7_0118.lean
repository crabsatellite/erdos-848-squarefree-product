import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0118

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid7_0118 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.IndexedValid squarefreeOracle 5000000 121728
  | _ => True

theorem anchorPart7_0118 : anchorPartValid7_0118 anchorHistoryChunk0118 := by
  unfold anchorPartValid7_0118 anchorHistoryChunk0118
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
