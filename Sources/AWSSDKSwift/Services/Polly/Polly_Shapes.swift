// THIS FILE IS AUTOMATICALLY GENERATED by https://github.com/noppoMan/aws-sdk-swift/blob/master/Sources/CodeGenerator/main.swift. DO NOT EDIT.

import Foundation
import AWSSDKSwiftCore

extension Polly {

    public enum TextType: String, CustomStringConvertible, Codable {
        case ssml = "ssml"
        case text = "text"
        public var description: String { return self.rawValue }
    }

    public struct ListSpeechSynthesisTasksOutput: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "NextToken", required: false, type: .string), 
            AWSShapeMember(label: "SynthesisTasks", required: false, type: .list)
        ]
        /// An opaque pagination token returned from the previous List operation in this request. If present, this indicates where to continue the listing.
        public let nextToken: String?
        /// List of SynthesisTask objects that provides information from the specified task in the list request, including output format, creation time, task status, and so on.
        public let synthesisTasks: [SynthesisTask]?

        public init(nextToken: String? = nil, synthesisTasks: [SynthesisTask]? = nil) {
            self.nextToken = nextToken
            self.synthesisTasks = synthesisTasks
        }

        private enum CodingKeys: String, CodingKey {
            case nextToken = "NextToken"
            case synthesisTasks = "SynthesisTasks"
        }
    }

    public enum Gender: String, CustomStringConvertible, Codable {
        case female = "Female"
        case male = "Male"
        public var description: String { return self.rawValue }
    }

    public struct StartSpeechSynthesisTaskOutput: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "SynthesisTask", required: false, type: .structure)
        ]
        /// SynthesisTask object that provides information and attributes about a newly submitted speech synthesis task.
        public let synthesisTask: SynthesisTask?

        public init(synthesisTask: SynthesisTask? = nil) {
            self.synthesisTask = synthesisTask
        }

        private enum CodingKeys: String, CodingKey {
            case synthesisTask = "SynthesisTask"
        }
    }

    public enum LanguageCode: String, CustomStringConvertible, Codable {
        case cmnCn = "cmn-CN"
        case cyGb = "cy-GB"
        case daDk = "da-DK"
        case deDe = "de-DE"
        case enAu = "en-AU"
        case enGb = "en-GB"
        case enGbWls = "en-GB-WLS"
        case enIn = "en-IN"
        case enUs = "en-US"
        case esEs = "es-ES"
        case esMx = "es-MX"
        case esUs = "es-US"
        case frCa = "fr-CA"
        case frFr = "fr-FR"
        case isIs = "is-IS"
        case itIt = "it-IT"
        case jaJp = "ja-JP"
        case hiIn = "hi-IN"
        case koKr = "ko-KR"
        case nbNo = "nb-NO"
        case nlNl = "nl-NL"
        case plPl = "pl-PL"
        case ptBr = "pt-BR"
        case ptPt = "pt-PT"
        case roRo = "ro-RO"
        case ruRu = "ru-RU"
        case svSe = "sv-SE"
        case trTr = "tr-TR"
        public var description: String { return self.rawValue }
    }

    public enum OutputFormat: String, CustomStringConvertible, Codable {
        case json = "json"
        case mp3 = "mp3"
        case oggVorbis = "ogg_vorbis"
        case pcm = "pcm"
        public var description: String { return self.rawValue }
    }

    public struct PutLexiconOutput: AWSShape {

    }

    public struct Lexicon: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "Name", required: false, type: .string), 
            AWSShapeMember(label: "Content", required: false, type: .string)
        ]
        /// Name of the lexicon.
        public let name: String?
        /// Lexicon content in string format. The content of a lexicon must be in PLS format.
        public let content: String?

        public init(name: String? = nil, content: String? = nil) {
            self.name = name
            self.content = content
        }

        private enum CodingKeys: String, CodingKey {
            case name = "Name"
            case content = "Content"
        }
    }

    public struct GetSpeechSynthesisTaskOutput: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "SynthesisTask", required: false, type: .structure)
        ]
        /// SynthesisTask object that provides information from the requested task, including output format, creation time, task status, and so on.
        public let synthesisTask: SynthesisTask?

        public init(synthesisTask: SynthesisTask? = nil) {
            self.synthesisTask = synthesisTask
        }

        private enum CodingKeys: String, CodingKey {
            case synthesisTask = "SynthesisTask"
        }
    }

    public struct GetSpeechSynthesisTaskInput: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "TaskId", location: .uri(locationName: "TaskId"), required: true, type: .string)
        ]
        /// The Amazon Polly generated identifier for a speech synthesis task.
        public let taskId: String

        public init(taskId: String) {
            self.taskId = taskId
        }

        private enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
        }
    }

    public struct SynthesisTask: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "LexiconNames", required: false, type: .list), 
            AWSShapeMember(label: "TaskStatus", required: false, type: .enum), 
            AWSShapeMember(label: "CreationTime", required: false, type: .timestamp), 
            AWSShapeMember(label: "TaskId", required: false, type: .string), 
            AWSShapeMember(label: "SnsTopicArn", required: false, type: .string), 
            AWSShapeMember(label: "RequestCharacters", required: false, type: .integer), 
            AWSShapeMember(label: "TextType", required: false, type: .enum), 
            AWSShapeMember(label: "SampleRate", required: false, type: .string), 
            AWSShapeMember(label: "OutputUri", required: false, type: .string), 
            AWSShapeMember(label: "OutputFormat", required: false, type: .enum), 
            AWSShapeMember(label: "TaskStatusReason", required: false, type: .string), 
            AWSShapeMember(label: "LanguageCode", required: false, type: .enum), 
            AWSShapeMember(label: "SpeechMarkTypes", required: false, type: .list), 
            AWSShapeMember(label: "VoiceId", required: false, type: .enum)
        ]
        /// List of one or more pronunciation lexicon names you want the service to apply during synthesis. Lexicons are applied only if the language of the lexicon is the same as the language of the voice. 
        public let lexiconNames: [String]?
        /// Current status of the individual speech synthesis task.
        public let taskStatus: TaskStatus?
        /// Timestamp for the time the synthesis task was started.
        public let creationTime: TimeStamp?
        /// The Amazon Polly generated identifier for a speech synthesis task.
        public let taskId: String?
        /// ARN for the SNS topic optionally used for providing status notification for a speech synthesis task.
        public let snsTopicArn: String?
        /// Number of billable characters synthesized.
        public let requestCharacters: Int32?
        /// Specifies whether the input text is plain text or SSML. The default value is plain text. 
        public let textType: TextType?
        /// The audio frequency specified in Hz. The valid values for mp3 and ogg_vorbis are "8000", "16000", and "22050". The default value is "22050". Valid values for pcm are "8000" and "16000" The default value is "16000". 
        public let sampleRate: String?
        /// Pathway for the output speech file.
        public let outputUri: String?
        /// The format in which the returned output will be encoded. For audio stream, this will be mp3, ogg_vorbis, or pcm. For speech marks, this will be json. 
        public let outputFormat: OutputFormat?
        /// Reason for the current status of a specific speech synthesis task, including errors if the task has failed.
        public let taskStatusReason: String?
        /// Optional language code for a synthesis task. This is only necessary if using a bilingual voice, such as Aditi, which can be used for either Indian English (en-IN) or Hindi (hi-IN).  If a bilingual voice is used and no language code is specified, Amazon Polly will use the default language of the bilingual voice. The default language for any voice is the one returned by the DescribeVoices operation for the LanguageCode parameter. For example, if no language code is specified, Aditi will use Indian English rather than Hindi.
        public let languageCode: LanguageCode?
        /// The type of speech marks returned for the input text.
        public let speechMarkTypes: [SpeechMarkType]?
        /// Voice ID to use for the synthesis. 
        public let voiceId: VoiceId?

        public init(lexiconNames: [String]? = nil, taskStatus: TaskStatus? = nil, creationTime: TimeStamp? = nil, taskId: String? = nil, snsTopicArn: String? = nil, requestCharacters: Int32? = nil, textType: TextType? = nil, sampleRate: String? = nil, outputUri: String? = nil, outputFormat: OutputFormat? = nil, taskStatusReason: String? = nil, languageCode: LanguageCode? = nil, speechMarkTypes: [SpeechMarkType]? = nil, voiceId: VoiceId? = nil) {
            self.lexiconNames = lexiconNames
            self.taskStatus = taskStatus
            self.creationTime = creationTime
            self.taskId = taskId
            self.snsTopicArn = snsTopicArn
            self.requestCharacters = requestCharacters
            self.textType = textType
            self.sampleRate = sampleRate
            self.outputUri = outputUri
            self.outputFormat = outputFormat
            self.taskStatusReason = taskStatusReason
            self.languageCode = languageCode
            self.speechMarkTypes = speechMarkTypes
            self.voiceId = voiceId
        }

        private enum CodingKeys: String, CodingKey {
            case lexiconNames = "LexiconNames"
            case taskStatus = "TaskStatus"
            case creationTime = "CreationTime"
            case taskId = "TaskId"
            case snsTopicArn = "SnsTopicArn"
            case requestCharacters = "RequestCharacters"
            case textType = "TextType"
            case sampleRate = "SampleRate"
            case outputUri = "OutputUri"
            case outputFormat = "OutputFormat"
            case taskStatusReason = "TaskStatusReason"
            case languageCode = "LanguageCode"
            case speechMarkTypes = "SpeechMarkTypes"
            case voiceId = "VoiceId"
        }
    }

    public struct ListSpeechSynthesisTasksInput: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "MaxResults", location: .querystring(locationName: "MaxResults"), required: false, type: .integer), 
            AWSShapeMember(label: "NextToken", location: .querystring(locationName: "NextToken"), required: false, type: .string), 
            AWSShapeMember(label: "Status", location: .querystring(locationName: "Status"), required: false, type: .enum)
        ]
        /// Maximum number of speech synthesis tasks returned in a List operation.
        public let maxResults: Int32?
        /// The pagination token to use in the next request to continue the listing of speech synthesis tasks. 
        public let nextToken: String?
        /// Status of the speech synthesis tasks returned in a List operation
        public let status: TaskStatus?

        public init(maxResults: Int32? = nil, nextToken: String? = nil, status: TaskStatus? = nil) {
            self.maxResults = maxResults
            self.nextToken = nextToken
            self.status = status
        }

        private enum CodingKeys: String, CodingKey {
            case maxResults = "MaxResults"
            case nextToken = "NextToken"
            case status = "Status"
        }
    }

    public enum SpeechMarkType: String, CustomStringConvertible, Codable {
        case sentence = "sentence"
        case ssml = "ssml"
        case viseme = "viseme"
        case word = "word"
        public var description: String { return self.rawValue }
    }

    public enum VoiceId: String, CustomStringConvertible, Codable {
        case geraint = "Geraint"
        case gwyneth = "Gwyneth"
        case mads = "Mads"
        case naja = "Naja"
        case hans = "Hans"
        case marlene = "Marlene"
        case nicole = "Nicole"
        case russell = "Russell"
        case amy = "Amy"
        case brian = "Brian"
        case emma = "Emma"
        case raveena = "Raveena"
        case ivy = "Ivy"
        case joanna = "Joanna"
        case joey = "Joey"
        case justin = "Justin"
        case kendra = "Kendra"
        case kimberly = "Kimberly"
        case matthew = "Matthew"
        case salli = "Salli"
        case conchita = "Conchita"
        case enrique = "Enrique"
        case miguel = "Miguel"
        case penelope = "Penelope"
        case chantal = "Chantal"
        case celine = "Celine"
        case lea = "Lea"
        case mathieu = "Mathieu"
        case dora = "Dora"
        case karl = "Karl"
        case carla = "Carla"
        case giorgio = "Giorgio"
        case mizuki = "Mizuki"
        case liv = "Liv"
        case lotte = "Lotte"
        case ruben = "Ruben"
        case ewa = "Ewa"
        case jacek = "Jacek"
        case jan = "Jan"
        case maja = "Maja"
        case ricardo = "Ricardo"
        case vitoria = "Vitoria"
        case cristiano = "Cristiano"
        case ines = "Ines"
        case carmen = "Carmen"
        case maxim = "Maxim"
        case tatyana = "Tatyana"
        case astrid = "Astrid"
        case filiz = "Filiz"
        case vicki = "Vicki"
        case takumi = "Takumi"
        case seoyeon = "Seoyeon"
        case aditi = "Aditi"
        case zhiyu = "Zhiyu"
        case bianca = "Bianca"
        case lucia = "Lucia"
        case mia = "Mia"
        public var description: String { return self.rawValue }
    }

    public enum TaskStatus: String, CustomStringConvertible, Codable {
        case scheduled = "scheduled"
        case inprogress = "inProgress"
        case completed = "completed"
        case failed = "failed"
        public var description: String { return self.rawValue }
    }

    public struct DescribeVoicesInput: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "IncludeAdditionalLanguageCodes", location: .querystring(locationName: "IncludeAdditionalLanguageCodes"), required: false, type: .boolean), 
            AWSShapeMember(label: "NextToken", location: .querystring(locationName: "NextToken"), required: false, type: .string), 
            AWSShapeMember(label: "LanguageCode", location: .querystring(locationName: "LanguageCode"), required: false, type: .enum)
        ]
        /// Boolean value indicating whether to return any bilingual voices that use the specified language as an additional language. For instance, if you request all languages that use US English (es-US), and there is an Italian voice that speaks both Italian (it-IT) and US English, that voice will be included if you specify yes but not if you specify no.
        public let includeAdditionalLanguageCodes: Bool?
        /// An opaque pagination token returned from the previous DescribeVoices operation. If present, this indicates where to continue the listing.
        public let nextToken: String?
        ///  The language identification tag (ISO 639 code for the language name-ISO 3166 country code) for filtering the list of voices returned. If you don't specify this optional parameter, all available voices are returned. 
        public let languageCode: LanguageCode?

        public init(includeAdditionalLanguageCodes: Bool? = nil, nextToken: String? = nil, languageCode: LanguageCode? = nil) {
            self.includeAdditionalLanguageCodes = includeAdditionalLanguageCodes
            self.nextToken = nextToken
            self.languageCode = languageCode
        }

        private enum CodingKeys: String, CodingKey {
            case includeAdditionalLanguageCodes = "IncludeAdditionalLanguageCodes"
            case nextToken = "NextToken"
            case languageCode = "LanguageCode"
        }
    }

    public struct DeleteLexiconInput: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "Name", location: .uri(locationName: "LexiconName"), required: true, type: .string)
        ]
        /// The name of the lexicon to delete. Must be an existing lexicon in the region.
        public let name: String

        public init(name: String) {
            self.name = name
        }

        private enum CodingKeys: String, CodingKey {
            case name = "LexiconName"
        }
    }

    public struct LexiconAttributes: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "Alphabet", required: false, type: .string), 
            AWSShapeMember(label: "LexemesCount", required: false, type: .integer), 
            AWSShapeMember(label: "LanguageCode", required: false, type: .enum), 
            AWSShapeMember(label: "LastModified", required: false, type: .timestamp), 
            AWSShapeMember(label: "Size", required: false, type: .integer), 
            AWSShapeMember(label: "LexiconArn", required: false, type: .string)
        ]
        /// Phonetic alphabet used in the lexicon. Valid values are ipa and x-sampa.
        public let alphabet: String?
        /// Number of lexemes in the lexicon.
        public let lexemesCount: Int32?
        /// Language code that the lexicon applies to. A lexicon with a language code such as "en" would be applied to all English languages (en-GB, en-US, en-AUS, en-WLS, and so on.
        public let languageCode: LanguageCode?
        /// Date lexicon was last modified (a timestamp value).
        public let lastModified: TimeStamp?
        /// Total size of the lexicon, in characters.
        public let size: Int32?
        /// Amazon Resource Name (ARN) of the lexicon.
        public let lexiconArn: String?

        public init(alphabet: String? = nil, lexemesCount: Int32? = nil, languageCode: LanguageCode? = nil, lastModified: TimeStamp? = nil, size: Int32? = nil, lexiconArn: String? = nil) {
            self.alphabet = alphabet
            self.lexemesCount = lexemesCount
            self.languageCode = languageCode
            self.lastModified = lastModified
            self.size = size
            self.lexiconArn = lexiconArn
        }

        private enum CodingKeys: String, CodingKey {
            case alphabet = "Alphabet"
            case lexemesCount = "LexemesCount"
            case languageCode = "LanguageCode"
            case lastModified = "LastModified"
            case size = "Size"
            case lexiconArn = "LexiconArn"
        }
    }

    public struct PutLexiconInput: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "Name", location: .uri(locationName: "LexiconName"), required: true, type: .string), 
            AWSShapeMember(label: "Content", required: true, type: .string)
        ]
        /// Name of the lexicon. The name must follow the regular express format [0-9A-Za-z]{1,20}. That is, the name is a case-sensitive alphanumeric string up to 20 characters long. 
        public let name: String
        /// Content of the PLS lexicon as string data.
        public let content: String

        public init(name: String, content: String) {
            self.name = name
            self.content = content
        }

        private enum CodingKeys: String, CodingKey {
            case name = "LexiconName"
            case content = "Content"
        }
    }

    public struct GetLexiconOutput: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "Lexicon", required: false, type: .structure), 
            AWSShapeMember(label: "LexiconAttributes", required: false, type: .structure)
        ]
        /// Lexicon object that provides name and the string content of the lexicon. 
        public let lexicon: Lexicon?
        /// Metadata of the lexicon, including phonetic alphabetic used, language code, lexicon ARN, number of lexemes defined in the lexicon, and size of lexicon in bytes.
        public let lexiconAttributes: LexiconAttributes?

        public init(lexicon: Lexicon? = nil, lexiconAttributes: LexiconAttributes? = nil) {
            self.lexicon = lexicon
            self.lexiconAttributes = lexiconAttributes
        }

        private enum CodingKeys: String, CodingKey {
            case lexicon = "Lexicon"
            case lexiconAttributes = "LexiconAttributes"
        }
    }

    public struct SynthesizeSpeechInput: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "VoiceId", required: true, type: .enum), 
            AWSShapeMember(label: "LanguageCode", required: false, type: .enum), 
            AWSShapeMember(label: "LexiconNames", required: false, type: .list), 
            AWSShapeMember(label: "SpeechMarkTypes", required: false, type: .list), 
            AWSShapeMember(label: "Text", required: true, type: .string), 
            AWSShapeMember(label: "OutputFormat", required: true, type: .enum), 
            AWSShapeMember(label: "TextType", required: false, type: .enum), 
            AWSShapeMember(label: "SampleRate", required: false, type: .string)
        ]
        ///  Voice ID to use for the synthesis. You can get a list of available voice IDs by calling the DescribeVoices operation. 
        public let voiceId: VoiceId
        /// Optional language code for the Synthesize Speech request. This is only necessary if using a bilingual voice, such as Aditi, which can be used for either Indian English (en-IN) or Hindi (hi-IN).  If a bilingual voice is used and no language code is specified, Amazon Polly will use the default language of the bilingual voice. The default language for any voice is the one returned by the DescribeVoices operation for the LanguageCode parameter. For example, if no language code is specified, Aditi will use Indian English rather than Hindi.
        public let languageCode: LanguageCode?
        /// List of one or more pronunciation lexicon names you want the service to apply during synthesis. Lexicons are applied only if the language of the lexicon is the same as the language of the voice. For information about storing lexicons, see PutLexicon.
        public let lexiconNames: [String]?
        /// The type of speech marks returned for the input text.
        public let speechMarkTypes: [SpeechMarkType]?
        ///  Input text to synthesize. If you specify ssml as the TextType, follow the SSML format for the input text. 
        public let text: String
        ///  The format in which the returned output will be encoded. For audio stream, this will be mp3, ogg_vorbis, or pcm. For speech marks, this will be json.  When pcm is used, the content returned is audio/pcm in a signed 16-bit, 1 channel (mono), little-endian format. 
        public let outputFormat: OutputFormat
        ///  Specifies whether the input text is plain text or SSML. The default value is plain text. For more information, see Using SSML.
        public let textType: TextType?
        ///  The audio frequency specified in Hz.  The valid values for mp3 and ogg_vorbis are "8000", "16000", and "22050". The default value is "22050".   Valid values for pcm are "8000" and "16000" The default value is "16000". 
        public let sampleRate: String?

        public init(voiceId: VoiceId, languageCode: LanguageCode? = nil, lexiconNames: [String]? = nil, speechMarkTypes: [SpeechMarkType]? = nil, text: String, outputFormat: OutputFormat, textType: TextType? = nil, sampleRate: String? = nil) {
            self.voiceId = voiceId
            self.languageCode = languageCode
            self.lexiconNames = lexiconNames
            self.speechMarkTypes = speechMarkTypes
            self.text = text
            self.outputFormat = outputFormat
            self.textType = textType
            self.sampleRate = sampleRate
        }

        private enum CodingKeys: String, CodingKey {
            case voiceId = "VoiceId"
            case languageCode = "LanguageCode"
            case lexiconNames = "LexiconNames"
            case speechMarkTypes = "SpeechMarkTypes"
            case text = "Text"
            case outputFormat = "OutputFormat"
            case textType = "TextType"
            case sampleRate = "SampleRate"
        }
    }

    public struct StartSpeechSynthesisTaskInput: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "VoiceId", required: true, type: .enum), 
            AWSShapeMember(label: "OutputS3KeyPrefix", required: false, type: .string), 
            AWSShapeMember(label: "SnsTopicArn", required: false, type: .string), 
            AWSShapeMember(label: "LexiconNames", required: false, type: .list), 
            AWSShapeMember(label: "SpeechMarkTypes", required: false, type: .list), 
            AWSShapeMember(label: "Text", required: true, type: .string), 
            AWSShapeMember(label: "OutputFormat", required: true, type: .enum), 
            AWSShapeMember(label: "LanguageCode", required: false, type: .enum), 
            AWSShapeMember(label: "TextType", required: false, type: .enum), 
            AWSShapeMember(label: "SampleRate", required: false, type: .string), 
            AWSShapeMember(label: "OutputS3BucketName", required: true, type: .string)
        ]
        /// Voice ID to use for the synthesis. 
        public let voiceId: VoiceId
        /// The Amazon S3 key prefix for the output speech file.
        public let outputS3KeyPrefix: String?
        /// ARN for the SNS topic optionally used for providing status notification for a speech synthesis task.
        public let snsTopicArn: String?
        /// List of one or more pronunciation lexicon names you want the service to apply during synthesis. Lexicons are applied only if the language of the lexicon is the same as the language of the voice. 
        public let lexiconNames: [String]?
        /// The type of speech marks returned for the input text.
        public let speechMarkTypes: [SpeechMarkType]?
        /// The input text to synthesize. If you specify ssml as the TextType, follow the SSML format for the input text. 
        public let text: String
        /// The format in which the returned output will be encoded. For audio stream, this will be mp3, ogg_vorbis, or pcm. For speech marks, this will be json. 
        public let outputFormat: OutputFormat
        /// Optional language code for the Speech Synthesis request. This is only necessary if using a bilingual voice, such as Aditi, which can be used for either Indian English (en-IN) or Hindi (hi-IN).  If a bilingual voice is used and no language code is specified, Amazon Polly will use the default language of the bilingual voice. The default language for any voice is the one returned by the DescribeVoices operation for the LanguageCode parameter. For example, if no language code is specified, Aditi will use Indian English rather than Hindi.
        public let languageCode: LanguageCode?
        /// Specifies whether the input text is plain text or SSML. The default value is plain text. 
        public let textType: TextType?
        /// The audio frequency specified in Hz. The valid values for mp3 and ogg_vorbis are "8000", "16000", and "22050". The default value is "22050". Valid values for pcm are "8000" and "16000" The default value is "16000". 
        public let sampleRate: String?
        /// Amazon S3 bucket name to which the output file will be saved.
        public let outputS3BucketName: String

        public init(voiceId: VoiceId, outputS3KeyPrefix: String? = nil, snsTopicArn: String? = nil, lexiconNames: [String]? = nil, speechMarkTypes: [SpeechMarkType]? = nil, text: String, outputFormat: OutputFormat, languageCode: LanguageCode? = nil, textType: TextType? = nil, sampleRate: String? = nil, outputS3BucketName: String) {
            self.voiceId = voiceId
            self.outputS3KeyPrefix = outputS3KeyPrefix
            self.snsTopicArn = snsTopicArn
            self.lexiconNames = lexiconNames
            self.speechMarkTypes = speechMarkTypes
            self.text = text
            self.outputFormat = outputFormat
            self.languageCode = languageCode
            self.textType = textType
            self.sampleRate = sampleRate
            self.outputS3BucketName = outputS3BucketName
        }

        private enum CodingKeys: String, CodingKey {
            case voiceId = "VoiceId"
            case outputS3KeyPrefix = "OutputS3KeyPrefix"
            case snsTopicArn = "SnsTopicArn"
            case lexiconNames = "LexiconNames"
            case speechMarkTypes = "SpeechMarkTypes"
            case text = "Text"
            case outputFormat = "OutputFormat"
            case languageCode = "LanguageCode"
            case textType = "TextType"
            case sampleRate = "SampleRate"
            case outputS3BucketName = "OutputS3BucketName"
        }
    }

    public struct ListLexiconsInput: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "NextToken", location: .querystring(locationName: "NextToken"), required: false, type: .string)
        ]
        /// An opaque pagination token returned from previous ListLexicons operation. If present, indicates where to continue the list of lexicons.
        public let nextToken: String?

        public init(nextToken: String? = nil) {
            self.nextToken = nextToken
        }

        private enum CodingKeys: String, CodingKey {
            case nextToken = "NextToken"
        }
    }

    public struct Voice: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "AdditionalLanguageCodes", required: false, type: .list), 
            AWSShapeMember(label: "LanguageCode", required: false, type: .enum), 
            AWSShapeMember(label: "Name", required: false, type: .string), 
            AWSShapeMember(label: "LanguageName", required: false, type: .string), 
            AWSShapeMember(label: "Gender", required: false, type: .enum), 
            AWSShapeMember(label: "Id", required: false, type: .enum)
        ]
        /// Additional codes for languages available for the specified voice in addition to its default language.  For example, the default language for Aditi is Indian English (en-IN) because it was first used for that language. Since Aditi is bilingual and fluent in both Indian English and Hindi, this parameter would show the code hi-IN.
        public let additionalLanguageCodes: [LanguageCode]?
        /// Language code of the voice.
        public let languageCode: LanguageCode?
        /// Name of the voice (for example, Salli, Kendra, etc.). This provides a human readable voice name that you might display in your application.
        public let name: String?
        /// Human readable name of the language in English.
        public let languageName: String?
        /// Gender of the voice.
        public let gender: Gender?
        /// Amazon Polly assigned voice ID. This is the ID that you specify when calling the SynthesizeSpeech operation.
        public let id: VoiceId?

        public init(additionalLanguageCodes: [LanguageCode]? = nil, languageCode: LanguageCode? = nil, name: String? = nil, languageName: String? = nil, gender: Gender? = nil, id: VoiceId? = nil) {
            self.additionalLanguageCodes = additionalLanguageCodes
            self.languageCode = languageCode
            self.name = name
            self.languageName = languageName
            self.gender = gender
            self.id = id
        }

        private enum CodingKeys: String, CodingKey {
            case additionalLanguageCodes = "AdditionalLanguageCodes"
            case languageCode = "LanguageCode"
            case name = "Name"
            case languageName = "LanguageName"
            case gender = "Gender"
            case id = "Id"
        }
    }

    public struct LexiconDescription: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "Name", required: false, type: .string), 
            AWSShapeMember(label: "Attributes", required: false, type: .structure)
        ]
        /// Name of the lexicon.
        public let name: String?
        /// Provides lexicon metadata.
        public let attributes: LexiconAttributes?

        public init(name: String? = nil, attributes: LexiconAttributes? = nil) {
            self.name = name
            self.attributes = attributes
        }

        private enum CodingKeys: String, CodingKey {
            case name = "Name"
            case attributes = "Attributes"
        }
    }

    public struct ListLexiconsOutput: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "Lexicons", required: false, type: .list), 
            AWSShapeMember(label: "NextToken", required: false, type: .string)
        ]
        /// A list of lexicon names and attributes.
        public let lexicons: [LexiconDescription]?
        /// The pagination token to use in the next request to continue the listing of lexicons. NextToken is returned only if the response is truncated.
        public let nextToken: String?

        public init(lexicons: [LexiconDescription]? = nil, nextToken: String? = nil) {
            self.lexicons = lexicons
            self.nextToken = nextToken
        }

        private enum CodingKeys: String, CodingKey {
            case lexicons = "Lexicons"
            case nextToken = "NextToken"
        }
    }

    public struct SynthesizeSpeechOutput: AWSShape {
        /// The key for the payload
        public static let payloadPath: String? = "AudioStream"
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "AudioStream", required: false, type: .blob), 
            AWSShapeMember(label: "RequestCharacters", location: .header(locationName: "x-amzn-RequestCharacters"), required: false, type: .integer), 
            AWSShapeMember(label: "ContentType", location: .header(locationName: "Content-Type"), required: false, type: .string)
        ]
        ///  Stream containing the synthesized speech. 
        public let audioStream: Data?
        /// Number of characters synthesized.
        public let requestCharacters: Int32?
        ///  Specifies the type audio stream. This should reflect the OutputFormat parameter in your request.     If you request mp3 as the OutputFormat, the ContentType returned is audio/mpeg.     If you request ogg_vorbis as the OutputFormat, the ContentType returned is audio/ogg.     If you request pcm as the OutputFormat, the ContentType returned is audio/pcm in a signed 16-bit, 1 channel (mono), little-endian format.    If you request json as the OutputFormat, the ContentType returned is audio/json.    
        public let contentType: String?

        public init(audioStream: Data? = nil, requestCharacters: Int32? = nil, contentType: String? = nil) {
            self.audioStream = audioStream
            self.requestCharacters = requestCharacters
            self.contentType = contentType
        }

        private enum CodingKeys: String, CodingKey {
            case audioStream = "AudioStream"
            case requestCharacters = "x-amzn-RequestCharacters"
            case contentType = "Content-Type"
        }
    }

    public struct GetLexiconInput: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "Name", location: .uri(locationName: "LexiconName"), required: true, type: .string)
        ]
        /// Name of the lexicon.
        public let name: String

        public init(name: String) {
            self.name = name
        }

        private enum CodingKeys: String, CodingKey {
            case name = "LexiconName"
        }
    }

    public struct DeleteLexiconOutput: AWSShape {

    }

    public struct DescribeVoicesOutput: AWSShape {
        public static var _members: [AWSShapeMember] = [
            AWSShapeMember(label: "NextToken", required: false, type: .string), 
            AWSShapeMember(label: "Voices", required: false, type: .list)
        ]
        /// The pagination token to use in the next request to continue the listing of voices. NextToken is returned only if the response is truncated.
        public let nextToken: String?
        /// A list of voices with their properties.
        public let voices: [Voice]?

        public init(nextToken: String? = nil, voices: [Voice]? = nil) {
            self.nextToken = nextToken
            self.voices = voices
        }

        private enum CodingKeys: String, CodingKey {
            case nextToken = "NextToken"
            case voices = "Voices"
        }
    }

}