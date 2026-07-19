import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0037

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid6_0037 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.IndexedValid squarefreeOracle 5000000 38656
  | _ => True

theorem anchorPart6_0037 : anchorPartValid6_0037 anchorHistoryChunk0037 := by
  unfold anchorPartValid6_0037 anchorHistoryChunk0037
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
