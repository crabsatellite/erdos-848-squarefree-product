import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0172

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid2_0172 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.IndexedValid squarefreeOracle 5000000 176384
  | _ => True

theorem anchorPart2_0172 : anchorPartValid2_0172 anchorHistoryChunk0172 := by
  unfold anchorPartValid2_0172 anchorHistoryChunk0172
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
