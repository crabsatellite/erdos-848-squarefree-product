import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0088

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid1_0088 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.IndexedValid squarefreeOracle 5000000 90240
  | _ => True

theorem anchorPart1_0088 : anchorPartValid1_0088 anchorHistoryChunk0088 := by
  unfold anchorPartValid1_0088 anchorHistoryChunk0088
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
