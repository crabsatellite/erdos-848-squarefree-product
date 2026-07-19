import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0149

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid1_0149 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.IndexedValid squarefreeOracle 5000000 152704
  | _ => True

theorem anchorPart1_0149 : anchorPartValid1_0149 anchorHistoryChunk0149 := by
  unfold anchorPartValid1_0149 anchorHistoryChunk0149
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
