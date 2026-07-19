import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0027

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid6_0027 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.IndexedValid squarefreeOracle 5000000 28416
  | _ => True

theorem anchorPart6_0027 : anchorPartValid6_0027 anchorHistoryChunk0027 := by
  unfold anchorPartValid6_0027 anchorHistoryChunk0027
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
