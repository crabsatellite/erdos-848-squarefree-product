import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0061

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid2_0061 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.IndexedValid squarefreeOracle 5000000 62720
  | _ => True

theorem anchorPart2_0061 : anchorPartValid2_0061 anchorHistoryChunk0061 := by
  unfold anchorPartValid2_0061 anchorHistoryChunk0061
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
