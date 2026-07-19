import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0163

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid0_0163 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.IndexedValid squarefreeOracle 5000000 166912
  | _ => True

theorem anchorPart0_0163 : anchorPartValid0_0163 anchorHistoryChunk0163 := by
  unfold anchorPartValid0_0163 anchorHistoryChunk0163
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
