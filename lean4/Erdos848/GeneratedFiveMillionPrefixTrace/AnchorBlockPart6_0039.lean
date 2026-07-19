import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0039

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid6_0039 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ _ (.node _ _ (.node _ part _))) => part.IndexedValid squarefreeOracle 5000000 40704
  | _ => True

theorem anchorPart6_0039 : anchorPartValid6_0039 anchorHistoryChunk0039 := by
  unfold anchorPartValid6_0039 anchorHistoryChunk0039
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
