import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0129

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid6_0129 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.IndexedValid squarefreeOracle 5000000 132864
  | _ => True

theorem anchorPart6_0129 : anchorPartValid6_0129 anchorHistoryChunk0129 := by
  unfold anchorPartValid6_0129 anchorHistoryChunk0129
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
