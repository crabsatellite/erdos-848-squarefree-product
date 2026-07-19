import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0095

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid1_0095 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.IndexedValid squarefreeOracle 5000000 97408
  | _ => True

theorem anchorPart1_0095 : anchorPartValid1_0095 anchorHistoryChunk0095 := by
  unfold anchorPartValid1_0095 anchorHistoryChunk0095
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
