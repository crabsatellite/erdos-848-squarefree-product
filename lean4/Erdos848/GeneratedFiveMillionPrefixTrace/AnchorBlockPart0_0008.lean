import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0008

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid0_0008 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.IndexedValid squarefreeOracle 5000000 8192
  | _ => True

theorem anchorPart0_0008 : anchorPartValid0_0008 anchorHistoryChunk0008 := by
  unfold anchorPartValid0_0008 anchorHistoryChunk0008
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
