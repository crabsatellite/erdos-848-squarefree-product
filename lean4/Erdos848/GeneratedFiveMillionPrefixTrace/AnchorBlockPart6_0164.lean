import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0164

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid6_0164 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.IndexedValid squarefreeOracle 5000000 168704
  | _ => True

theorem anchorPart6_0164 : anchorPartValid6_0164 anchorHistoryChunk0164 := by
  unfold anchorPartValid6_0164 anchorHistoryChunk0164
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
