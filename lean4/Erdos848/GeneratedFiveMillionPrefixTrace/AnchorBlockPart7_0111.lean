import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0111

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid7_0111 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.IndexedValid squarefreeOracle 5000000 114560
  | _ => True

theorem anchorPart7_0111 : anchorPartValid7_0111 anchorHistoryChunk0111 := by
  unfold anchorPartValid7_0111 anchorHistoryChunk0111
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
