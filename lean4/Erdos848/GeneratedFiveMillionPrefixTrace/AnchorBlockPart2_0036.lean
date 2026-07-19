import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0036

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid2_0036 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.IndexedValid squarefreeOracle 5000000 37120
  | _ => True

theorem anchorPart2_0036 : anchorPartValid2_0036 anchorHistoryChunk0036 := by
  unfold anchorPartValid2_0036 anchorHistoryChunk0036
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
