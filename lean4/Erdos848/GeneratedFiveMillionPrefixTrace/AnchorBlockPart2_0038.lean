import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0038

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid2_0038 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.IndexedValid squarefreeOracle 5000000 39168
  | _ => True

theorem anchorPart2_0038 : anchorPartValid2_0038 anchorHistoryChunk0038 := by
  unfold anchorPartValid2_0038 anchorHistoryChunk0038
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
