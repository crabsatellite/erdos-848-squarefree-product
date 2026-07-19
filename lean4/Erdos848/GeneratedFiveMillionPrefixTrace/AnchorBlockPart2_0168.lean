import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0168

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid2_0168 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.IndexedValid squarefreeOracle 5000000 172288
  | _ => True

theorem anchorPart2_0168 : anchorPartValid2_0168 anchorHistoryChunk0168 := by
  unfold anchorPartValid2_0168 anchorHistoryChunk0168
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
