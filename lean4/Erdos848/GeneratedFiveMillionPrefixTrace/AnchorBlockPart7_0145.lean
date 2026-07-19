import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0145

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid7_0145 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ _ part))) => part.IndexedValid squarefreeOracle 5000000 149376
  | _ => True

theorem anchorPart7_0145 : anchorPartValid7_0145 anchorHistoryChunk0145 := by
  unfold anchorPartValid7_0145 anchorHistoryChunk0145
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
