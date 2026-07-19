import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0144

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid6_0144 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.IndexedValid squarefreeOracle 5000000 148224
  | _ => True

theorem anchorPart6_0144 : anchorPartValid6_0144 anchorHistoryChunk0144 := by
  unfold anchorPartValid6_0144 anchorHistoryChunk0144
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
