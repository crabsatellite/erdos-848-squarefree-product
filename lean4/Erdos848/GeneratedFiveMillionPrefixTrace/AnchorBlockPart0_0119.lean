import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0119

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid0_0119 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.IndexedValid squarefreeOracle 5000000 121856
  | _ => True

theorem anchorPart0_0119 : anchorPartValid0_0119 anchorHistoryChunk0119 := by
  unfold anchorPartValid0_0119 anchorHistoryChunk0119
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
