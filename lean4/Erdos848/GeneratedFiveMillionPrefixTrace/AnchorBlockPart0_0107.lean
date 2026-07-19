import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0107

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid0_0107 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.IndexedValid squarefreeOracle 5000000 109568
  | _ => True

theorem anchorPart0_0107 : anchorPartValid0_0107 anchorHistoryChunk0107 := by
  unfold anchorPartValid0_0107 anchorHistoryChunk0107
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
