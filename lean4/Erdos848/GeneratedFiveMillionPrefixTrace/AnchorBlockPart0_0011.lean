import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0011

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid0_0011 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.IndexedValid squarefreeOracle 5000000 11264
  | _ => True

theorem anchorPart0_0011 : anchorPartValid0_0011 anchorHistoryChunk0011 := by
  unfold anchorPartValid0_0011 anchorHistoryChunk0011
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
