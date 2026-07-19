import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0075

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid5_0075 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.IndexedValid squarefreeOracle 5000000 77440
  | _ => True

theorem anchorPart5_0075 : anchorPartValid5_0075 anchorHistoryChunk0075 := by
  unfold anchorPartValid5_0075 anchorHistoryChunk0075
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
