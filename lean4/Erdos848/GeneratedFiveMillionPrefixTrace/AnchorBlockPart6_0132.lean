import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0132

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid6_0132 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.IndexedValid squarefreeOracle 5000000 135936
  | _ => True

theorem anchorPart6_0132 : anchorPartValid6_0132 anchorHistoryChunk0132 := by
  unfold anchorPartValid6_0132 anchorHistoryChunk0132
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
