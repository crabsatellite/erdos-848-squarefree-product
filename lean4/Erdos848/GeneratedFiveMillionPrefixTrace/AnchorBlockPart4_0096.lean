import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0096

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid4_0096 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ _ (.node _ (.node _ part _) _)) => part.IndexedValid squarefreeOracle 5000000 98816
  | _ => True

theorem anchorPart4_0096 : anchorPartValid4_0096 anchorHistoryChunk0096 := by
  unfold anchorPartValid4_0096 anchorHistoryChunk0096
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
