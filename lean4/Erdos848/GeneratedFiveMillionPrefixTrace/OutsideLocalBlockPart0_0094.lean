import Erdos848.GeneratedFiveMillionPrefixTrace.AnchorData
import Erdos848.OutsideTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0094

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def outsideLocalPartValid0_0094 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideLocalPart0_0094 : outsideLocalPartValid0_0094 outsideHistoryChunk0094 := by
  unfold outsideLocalPartValid0_0094 outsideHistoryChunk0094
  decide

def outsideLocalPartValid1_0094 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideLocalPart1_0094 : outsideLocalPartValid1_0094 outsideHistoryChunk0094 := by
  unfold outsideLocalPartValid1_0094 outsideHistoryChunk0094
  decide

def outsideLocalPartValid2_0094 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideLocalPart2_0094 : outsideLocalPartValid2_0094 outsideHistoryChunk0094 := by
  unfold outsideLocalPartValid2_0094 outsideHistoryChunk0094
  decide

def outsideLocalPartValid3_0094 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.LocallyIndexedValid anchorHistories 5000000
  | _ => True

theorem outsideLocalPart3_0094 : outsideLocalPartValid3_0094 outsideHistoryChunk0094 := by
  unfold outsideLocalPartValid3_0094 outsideHistoryChunk0094
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
