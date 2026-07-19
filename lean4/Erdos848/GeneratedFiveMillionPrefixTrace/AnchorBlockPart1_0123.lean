import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0123

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid1_0123 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.IndexedValid squarefreeOracle 5000000 126080
  | _ => True

theorem anchorPart1_0123 : anchorPartValid1_0123 anchorHistoryChunk0123 := by
  unfold anchorPartValid1_0123 anchorHistoryChunk0123
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
