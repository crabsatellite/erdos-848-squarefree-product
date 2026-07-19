import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0054

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid0_0054 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.IndexedValid squarefreeOracle 5000000 55296
  | _ => True

theorem anchorPart0_0054 : anchorPartValid0_0054 anchorHistoryChunk0054 := by
  unfold anchorPartValid0_0054 anchorHistoryChunk0054
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
