import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0180

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid4_0180 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ part _) _)) => part.IndexedValid squarefreeOracle 5000000 184832
  | _ => True

theorem anchorPart4_0180 : anchorPartValid4_0180 anchorHistoryChunk0180 := by
  unfold anchorPartValid4_0180 anchorHistoryChunk0180
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
