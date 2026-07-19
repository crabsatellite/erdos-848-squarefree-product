import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0077

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid5_0077 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.IndexedValid squarefreeOracle 5000000 79488
  | _ => True

theorem anchorPart5_0077 : anchorPartValid5_0077 anchorHistoryChunk0077 := by
  unfold anchorPartValid5_0077 anchorHistoryChunk0077
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
