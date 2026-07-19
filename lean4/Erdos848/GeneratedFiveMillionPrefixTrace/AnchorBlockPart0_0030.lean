import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0030

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid0_0030 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.IndexedValid squarefreeOracle 5000000 30720
  | _ => True

theorem anchorPart0_0030 : anchorPartValid0_0030 anchorHistoryChunk0030 := by
  unfold anchorPartValid0_0030 anchorHistoryChunk0030
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
