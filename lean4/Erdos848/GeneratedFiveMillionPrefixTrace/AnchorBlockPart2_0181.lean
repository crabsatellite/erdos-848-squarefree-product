import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0181

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid2_0181 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.IndexedValid squarefreeOracle 5000000 185600
  | _ => True

theorem anchorPart2_0181 : anchorPartValid2_0181 anchorHistoryChunk0181 := by
  unfold anchorPartValid2_0181 anchorHistoryChunk0181
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
