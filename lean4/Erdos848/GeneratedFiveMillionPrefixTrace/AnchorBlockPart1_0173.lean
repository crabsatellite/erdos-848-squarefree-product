import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0173

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid1_0173 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.IndexedValid squarefreeOracle 5000000 177280
  | _ => True

theorem anchorPart1_0173 : anchorPartValid1_0173 anchorHistoryChunk0173 := by
  unfold anchorPartValid1_0173 anchorHistoryChunk0173
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
