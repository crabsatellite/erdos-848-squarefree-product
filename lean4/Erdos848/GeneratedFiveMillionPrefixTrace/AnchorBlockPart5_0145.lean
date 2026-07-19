import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0145

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid5_0145 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.IndexedValid squarefreeOracle 5000000 149120
  | _ => True

theorem anchorPart5_0145 : anchorPartValid5_0145 anchorHistoryChunk0145 := by
  unfold anchorPartValid5_0145 anchorHistoryChunk0145
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
