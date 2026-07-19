import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0167

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid1_0167 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.IndexedValid squarefreeOracle 5000000 171136
  | _ => True

theorem anchorPart1_0167 : anchorPartValid1_0167 anchorHistoryChunk0167 := by
  unfold anchorPartValid1_0167 anchorHistoryChunk0167
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
