import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0155

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid2_0155 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.IndexedValid squarefreeOracle 5000000 158976
  | _ => True

theorem anchorPart2_0155 : anchorPartValid2_0155 anchorHistoryChunk0155 := by
  unfold anchorPartValid2_0155 anchorHistoryChunk0155
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
