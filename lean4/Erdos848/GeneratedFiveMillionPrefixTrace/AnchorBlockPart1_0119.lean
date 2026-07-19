import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0119

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid1_0119 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.IndexedValid squarefreeOracle 5000000 121984
  | _ => True

theorem anchorPart1_0119 : anchorPartValid1_0119 anchorHistoryChunk0119 := by
  unfold anchorPartValid1_0119 anchorHistoryChunk0119
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
