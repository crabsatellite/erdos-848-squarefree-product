import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0002

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid2_0002 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.IndexedValid squarefreeOracle 5000000 2304
  | _ => True

theorem anchorPart2_0002 : anchorPartValid2_0002 anchorHistoryChunk0002 := by
  unfold anchorPartValid2_0002 anchorHistoryChunk0002
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
