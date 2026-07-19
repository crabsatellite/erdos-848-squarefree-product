import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0135

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid6_0135 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.IndexedValid squarefreeOracle 5000000 139008
  | _ => True

theorem anchorPart6_0135 : anchorPartValid6_0135 anchorHistoryChunk0135 := by
  unfold anchorPartValid6_0135 anchorHistoryChunk0135
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
