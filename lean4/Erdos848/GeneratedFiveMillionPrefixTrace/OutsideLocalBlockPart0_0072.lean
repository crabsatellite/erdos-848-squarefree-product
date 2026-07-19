import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.OutsideTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0072

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def outsideLocalPartValid0_0072 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideLocalPart0_0072 : outsideLocalPartValid0_0072 outsideHistoryChunk0072 := by
  unfold outsideLocalPartValid0_0072 outsideHistoryChunk0072
  decide

def outsideLocalPartValid1_0072 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideLocalPart1_0072 : outsideLocalPartValid1_0072 outsideHistoryChunk0072 := by
  unfold outsideLocalPartValid1_0072 outsideHistoryChunk0072
  decide

def outsideLocalPartValid2_0072 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideLocalPart2_0072 : outsideLocalPartValid2_0072 outsideHistoryChunk0072 := by
  unfold outsideLocalPartValid2_0072 outsideHistoryChunk0072
  decide

def outsideLocalPartValid3_0072 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideLocalPart3_0072 : outsideLocalPartValid3_0072 outsideHistoryChunk0072 := by
  unfold outsideLocalPartValid3_0072 outsideHistoryChunk0072
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
