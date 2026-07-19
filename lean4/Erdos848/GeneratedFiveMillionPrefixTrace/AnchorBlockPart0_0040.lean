import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0040

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid0_0040 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.IndexedValid squarefreeOracle 5000000 40960
  | _ => True

theorem anchorPart0_0040 : anchorPartValid0_0040 anchorHistoryChunk0040 := by
  unfold anchorPartValid0_0040 anchorHistoryChunk0040
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
