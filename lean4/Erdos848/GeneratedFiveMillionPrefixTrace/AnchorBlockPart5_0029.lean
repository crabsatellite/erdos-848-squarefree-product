import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0029

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid5_0029 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.IndexedValid squarefreeOracle 5000000 30336
  | _ => True

theorem anchorPart5_0029 : anchorPartValid5_0029 anchorHistoryChunk0029 := by
  unfold anchorPartValid5_0029 anchorHistoryChunk0029
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
