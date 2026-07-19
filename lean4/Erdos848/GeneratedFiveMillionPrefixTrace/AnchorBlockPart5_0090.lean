import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0090

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid5_0090 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ _ part) _)) => part.IndexedValid squarefreeOracle 5000000 92800
  | _ => True

theorem anchorPart5_0090 : anchorPartValid5_0090 anchorHistoryChunk0090 := by
  unfold anchorPartValid5_0090 anchorHistoryChunk0090
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
