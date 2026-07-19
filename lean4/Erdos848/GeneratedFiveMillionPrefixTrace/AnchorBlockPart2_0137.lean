import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0137

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid2_0137 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.IndexedValid squarefreeOracle 5000000 140544
  | _ => True

theorem anchorPart2_0137 : anchorPartValid2_0137 anchorHistoryChunk0137 := by
  unfold anchorPartValid2_0137 anchorHistoryChunk0137
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
