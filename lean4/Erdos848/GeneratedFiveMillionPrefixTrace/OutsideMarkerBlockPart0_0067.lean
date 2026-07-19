import Erdos848.GeneratedLowDiagonalCoverage.CoreCertificate
import Erdos848.OutsideTraceChecker
import Erdos848.GeneratedFiveMillionPrefixTrace.OutsideDataChunk0067

namespace Erdos848.GeneratedFiveMillionPrefixTrace

set_option maxRecDepth 1000000
set_option maxHeartbeats 0

def outsideMarkerPartValid0_0067 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ part _) _) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 68608
  | _ => True

theorem outsideMarkerPart0_0067 : outsideMarkerPartValid0_0067 outsideHistoryChunk0067 := by
  unfold outsideMarkerPartValid0_0067 outsideHistoryChunk0067
  decide

def outsideMarkerPartValid1_0067 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ (.node _ _ part) _) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 68736
  | _ => True

theorem outsideMarkerPart1_0067 : outsideMarkerPartValid1_0067 outsideHistoryChunk0067 := by
  unfold outsideMarkerPartValid1_0067 outsideHistoryChunk0067
  decide

def outsideMarkerPartValid2_0067 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ part _)) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 68864
  | _ => True

theorem outsideMarkerPart2_0067 : outsideMarkerPartValid2_0067 outsideHistoryChunk0067 := by
  unfold outsideMarkerPartValid2_0067 outsideHistoryChunk0067
  decide

def outsideMarkerPartValid3_0067 : Erdos848.CandidateHistoryTree -> Prop
  | (.node _ (.node _ _ (.node _ _ part)) _) => part.MarkerIndexedValid Erdos848.GeneratedLowDiagonalCoverage.indexedMarker 68992
  | _ => True

theorem outsideMarkerPart3_0067 : outsideMarkerPartValid3_0067 outsideHistoryChunk0067 := by
  unfold outsideMarkerPartValid3_0067 outsideHistoryChunk0067
  decide

end Erdos848.GeneratedFiveMillionPrefixTrace
