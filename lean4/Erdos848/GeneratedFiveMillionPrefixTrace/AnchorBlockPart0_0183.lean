import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0183

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid0_0183 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.IndexedValid squarefreeOracle 5000000 187392
  | _ => True

theorem anchorPart0_0183 : anchorPartValid0_0183 anchorHistoryChunk0183 := by
  unfold anchorPartValid0_0183 anchorHistoryChunk0183
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
