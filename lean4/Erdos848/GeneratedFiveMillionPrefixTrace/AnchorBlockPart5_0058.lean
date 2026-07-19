import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0058

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid5_0058 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.IndexedValid squarefreeOracle 5000000 60032
  | _ => True

theorem anchorPart5_0058 : anchorPartValid5_0058 anchorHistoryChunk0058 := by
  unfold anchorPartValid5_0058 anchorHistoryChunk0058
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
