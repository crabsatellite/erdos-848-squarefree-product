import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0093

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid5_0093 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.IndexedValid squarefreeOracle 5000000 95872
  | _ => True

theorem anchorPart5_0093 : anchorPartValid5_0093 anchorHistoryChunk0093 := by
  unfold anchorPartValid5_0093 anchorHistoryChunk0093
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
