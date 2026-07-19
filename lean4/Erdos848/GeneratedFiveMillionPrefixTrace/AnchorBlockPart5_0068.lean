import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0068

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid5_0068 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.IndexedValid squarefreeOracle 5000000 70272
  | _ => True

theorem anchorPart5_0068 : anchorPartValid5_0068 anchorHistoryChunk0068 := by
  unfold anchorPartValid5_0068 anchorHistoryChunk0068
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
