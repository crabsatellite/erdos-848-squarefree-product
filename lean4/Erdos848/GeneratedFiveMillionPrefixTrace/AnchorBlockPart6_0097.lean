import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0097

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid6_0097 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.IndexedValid squarefreeOracle 5000000 100096
  | _ => True

theorem anchorPart6_0097 : anchorPartValid6_0097 anchorHistoryChunk0097 := by
  unfold anchorPartValid6_0097 anchorHistoryChunk0097
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
