import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0137

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid6_0137 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.IndexedValid squarefreeOracle 5000000 141056
  | _ => True

theorem anchorPart6_0137 : anchorPartValid6_0137 anchorHistoryChunk0137 := by
  unfold anchorPartValid6_0137 anchorHistoryChunk0137
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
