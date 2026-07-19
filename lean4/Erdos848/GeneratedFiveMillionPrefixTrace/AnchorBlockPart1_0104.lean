import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0104

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid1_0104 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.IndexedValid squarefreeOracle 5000000 106624
  | _ => True

theorem anchorPart1_0104 : anchorPartValid1_0104 anchorHistoryChunk0104 := by
  unfold anchorPartValid1_0104 anchorHistoryChunk0104
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
