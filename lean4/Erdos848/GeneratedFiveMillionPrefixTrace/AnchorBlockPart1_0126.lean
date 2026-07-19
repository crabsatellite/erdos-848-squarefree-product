import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0126

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid1_0126 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.IndexedValid squarefreeOracle 5000000 129152
  | _ => True

theorem anchorPart1_0126 : anchorPartValid1_0126 anchorHistoryChunk0126 := by
  unfold anchorPartValid1_0126 anchorHistoryChunk0126
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
