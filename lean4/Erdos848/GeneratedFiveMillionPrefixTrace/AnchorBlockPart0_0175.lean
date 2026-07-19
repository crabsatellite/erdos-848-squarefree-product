import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0175

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid0_0175 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.IndexedValid squarefreeOracle 5000000 179200
  | _ => True

theorem anchorPart0_0175 : anchorPartValid0_0175 anchorHistoryChunk0175 := by
  unfold anchorPartValid0_0175 anchorHistoryChunk0175
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
