import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0139

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid2_0139 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.IndexedValid squarefreeOracle 5000000 142592
  | _ => True

theorem anchorPart2_0139 : anchorPartValid2_0139 anchorHistoryChunk0139 := by
  unfold anchorPartValid2_0139 anchorHistoryChunk0139
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
