import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0068

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid2_0068 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.IndexedValid squarefreeOracle 5000000 69888
  | _ => True

theorem anchorPart2_0068 : anchorPartValid2_0068 anchorHistoryChunk0068 := by
  unfold anchorPartValid2_0068 anchorHistoryChunk0068
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
