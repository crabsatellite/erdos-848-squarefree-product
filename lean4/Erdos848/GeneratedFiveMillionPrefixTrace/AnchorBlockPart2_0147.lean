import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0147

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid2_0147 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.IndexedValid squarefreeOracle 5000000 150784
  | _ => True

theorem anchorPart2_0147 : anchorPartValid2_0147 anchorHistoryChunk0147 := by
  unfold anchorPartValid2_0147 anchorHistoryChunk0147
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
