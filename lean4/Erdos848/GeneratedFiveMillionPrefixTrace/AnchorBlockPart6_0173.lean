import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0173

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid6_0173 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.IndexedValid squarefreeOracle 5000000 177920
  | _ => True

theorem anchorPart6_0173 : anchorPartValid6_0173 anchorHistoryChunk0173 := by
  unfold anchorPartValid6_0173 anchorHistoryChunk0173
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
