import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorDataChunk0074

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def anchorPartValid0_0074 : Erdos848.AnchorHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.IndexedValid squarefreeOracle 5000000 75776
  | _ => True

theorem anchorPart0_0074 : anchorPartValid0_0074 anchorHistoryChunk0074 := by
  unfold anchorPartValid0_0074 anchorHistoryChunk0074
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
