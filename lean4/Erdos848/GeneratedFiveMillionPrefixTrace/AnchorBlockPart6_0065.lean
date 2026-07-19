import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0065

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid6_0065 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.IndexedValid squarefreeOracle 5000000 67328
  | _ => True

theorem anchorPart6_0065 : anchorPartValid6_0065 anchorHistoryChunk0065 := by
  unfold anchorPartValid6_0065 anchorHistoryChunk0065
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
