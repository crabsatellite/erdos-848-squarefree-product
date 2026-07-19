import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0081

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid6_0081 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.IndexedValid squarefreeOracle 5000000 83712
  | _ => True

theorem anchorPart6_0081 : anchorPartValid6_0081 anchorHistoryChunk0081 := by
  unfold anchorPartValid6_0081 anchorHistoryChunk0081
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
