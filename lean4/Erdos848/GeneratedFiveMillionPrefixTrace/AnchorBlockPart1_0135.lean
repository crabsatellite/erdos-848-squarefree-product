import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0135

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid1_0135 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.IndexedValid squarefreeOracle 5000000 138368
  | _ => True

theorem anchorPart1_0135 : anchorPartValid1_0135 anchorHistoryChunk0135 := by
  unfold anchorPartValid1_0135 anchorHistoryChunk0135
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
