import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0090

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid1_0090 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.IndexedValid squarefreeOracle 5000000 92288
  | _ => True

theorem anchorPart1_0090 : anchorPartValid1_0090 anchorHistoryChunk0090 := by
  unfold anchorPartValid1_0090 anchorHistoryChunk0090
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
