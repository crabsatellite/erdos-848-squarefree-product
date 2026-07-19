import Erdos848.GeneratedLowDiagonalCoverage.CoreCertificate
import Erdos848.OutsideTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0084

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def outsideMarkerPartValid0_0084 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 86016
  | _ => True

theorem outsideMarkerPart0_0084 : outsideMarkerPartValid0_0084 outsideHistoryChunk0084 := by
  unfold outsideMarkerPartValid0_0084 outsideHistoryChunk0084
  decide

def outsideMarkerPartValid1_0084 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 86144
  | _ => True

theorem outsideMarkerPart1_0084 : outsideMarkerPartValid1_0084 outsideHistoryChunk0084 := by
  unfold outsideMarkerPartValid1_0084 outsideHistoryChunk0084
  decide

def outsideMarkerPartValid2_0084 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 86272
  | _ => True

theorem outsideMarkerPart2_0084 : outsideMarkerPartValid2_0084 outsideHistoryChunk0084 := by
  unfold outsideMarkerPartValid2_0084 outsideHistoryChunk0084
  decide

def outsideMarkerPartValid3_0084 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 86400
  | _ => True

theorem outsideMarkerPart3_0084 : outsideMarkerPartValid3_0084 outsideHistoryChunk0084 := by
  unfold outsideMarkerPartValid3_0084 outsideHistoryChunk0084
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
