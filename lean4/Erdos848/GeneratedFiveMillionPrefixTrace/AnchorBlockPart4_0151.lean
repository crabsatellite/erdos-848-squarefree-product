import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0151

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid4_0151 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ part _) _)) => part.IndexedValid squarefreeOracle 5000000 155136
  | _ => True

theorem anchorPart4_0151 : anchorPartValid4_0151 anchorHistoryChunk0151 := by
  unfold anchorPartValid4_0151 anchorHistoryChunk0151
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
