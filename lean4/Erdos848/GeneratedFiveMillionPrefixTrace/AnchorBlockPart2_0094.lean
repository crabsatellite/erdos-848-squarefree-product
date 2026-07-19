import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0094

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid2_0094 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.IndexedValid squarefreeOracle 5000000 96512
  | _ => True

theorem anchorPart2_0094 : anchorPartValid2_0094 anchorHistoryChunk0094 := by
  unfold anchorPartValid2_0094 anchorHistoryChunk0094
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
