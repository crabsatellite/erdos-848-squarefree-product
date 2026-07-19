import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0129

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid2_0129 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.IndexedValid squarefreeOracle 5000000 132352
  | _ => True

theorem anchorPart2_0129 : anchorPartValid2_0129 anchorHistoryChunk0129 := by
  unfold anchorPartValid2_0129 anchorHistoryChunk0129
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
