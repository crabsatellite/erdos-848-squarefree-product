import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0141

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid2_0141 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.IndexedValid squarefreeOracle 5000000 144640
  | _ => True

theorem anchorPart2_0141 : anchorPartValid2_0141 anchorHistoryChunk0141 := by
  unfold anchorPartValid2_0141 anchorHistoryChunk0141
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
