.class public Lorg/telegram/messenger/MediaController;
.super Ljava/lang/Object;
.source "MediaController.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/MediaController$VideoConvertRunnable;,
        Lorg/telegram/messenger/MediaController$StopMediaObserverRunnable;,
        Lorg/telegram/messenger/MediaController$GalleryObserverExternal;,
        Lorg/telegram/messenger/MediaController$GalleryObserverInternal;,
        Lorg/telegram/messenger/MediaController$ExternalObserver;,
        Lorg/telegram/messenger/MediaController$InternalObserver;,
        Lorg/telegram/messenger/MediaController$SearchImage;,
        Lorg/telegram/messenger/MediaController$PhotoEntry;,
        Lorg/telegram/messenger/MediaController$AlbumEntry;,
        Lorg/telegram/messenger/MediaController$AudioEntry;,
        Lorg/telegram/messenger/MediaController$AudioBuffer;,
        Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;
    }
.end annotation


# static fields
.field private static final AUDIO_FOCUSED:I = 0x2

.field private static final AUDIO_NO_FOCUS_CAN_DUCK:I = 0x1

.field private static final AUDIO_NO_FOCUS_NO_DUCK:I = 0x0

.field public static final AUTODOWNLOAD_MASK_AUDIO:I = 0x2

.field public static final AUTODOWNLOAD_MASK_DOCUMENT:I = 0x8

.field public static final AUTODOWNLOAD_MASK_GIF:I = 0x20

.field public static final AUTODOWNLOAD_MASK_MUSIC:I = 0x10

.field public static final AUTODOWNLOAD_MASK_PHOTO:I = 0x1

.field public static final AUTODOWNLOAD_MASK_VIDEO:I = 0x4

.field public static final AUTODOWNLOAD_MASK_VIDEOMESSAGE:I = 0x40

.field private static volatile Instance:Lorg/telegram/messenger/MediaController; = null

.field public static final MIME_TYPE:Ljava/lang/String; = "video/avc"

.field private static final PROCESSOR_TYPE_INTEL:I = 0x2

.field private static final PROCESSOR_TYPE_MTK:I = 0x3

.field private static final PROCESSOR_TYPE_OTHER:I = 0x0

.field private static final PROCESSOR_TYPE_QCOM:I = 0x1

.field private static final PROCESSOR_TYPE_SEC:I = 0x4

.field private static final PROCESSOR_TYPE_TI:I = 0x5

.field private static final VOLUME_DUCK:F = 0.2f

.field private static final VOLUME_NORMAL:F = 1.0f

.field public static allMediaAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

.field public static allPhotosAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

.field private static broadcastPhotosRunnable:Ljava/lang/Runnable;

.field public static iFilter:Ljava/lang/String;

.field private static final projectionPhotos:[Ljava/lang/String;

.field private static final projectionVideo:[Ljava/lang/String;

.field public static readArgs:[I


# instance fields
.field private accelerometerSensor:Landroid/hardware/Sensor;

.field private accelerometerVertical:Z

.field private addLaterArray:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;",
            ">;"
        }
    .end annotation
.end field

.field private allowStartRecord:Z

.field private audioDownloadQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/DownloadObject;",
            ">;"
        }
    .end annotation
.end field

.field private audioFocus:I

.field private audioInfo:Lorg/telegram/messenger/audioinfo/AudioInfo;

.field private audioPlayer:Landroid/media/MediaPlayer;

.field private audioRecorder:Landroid/media/AudioRecord;

.field private audioTrackPlayer:Landroid/media/AudioTrack;

.field private autoplayGifs:Z

.field private baseActivity:Landroid/app/Activity;

.field private buffersWrited:I

.field private callInProgress:Z

.field private cancelCurrentVideoConversion:Z

.field private countLess:I

.field private currentAspectRatioFrameLayout:Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

.field private currentAspectRatioFrameLayoutRatio:F

.field private currentAspectRatioFrameLayoutReady:Z

.field private currentAspectRatioFrameLayoutRotation:I

.field private currentPlaylistNum:I

.field private currentTextureView:Landroid/view/TextureView;

.field private currentTextureViewContainer:Landroid/widget/FrameLayout;

.field private currentTotalPcmDuration:J

.field private customTabs:Z

.field private decodingFinished:Z

.field private deleteLaterArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;",
            ">;"
        }
    .end annotation
.end field

.field private directShare:Z

.field private documentDownloadQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/DownloadObject;",
            ">;"
        }
    .end annotation
.end field

.field private downloadQueueKeys:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/telegram/messenger/DownloadObject;",
            ">;"
        }
    .end annotation
.end field

.field private downloadingCurrentMessage:Z

.field private externalObserver:Lorg/telegram/messenger/MediaController$ExternalObserver;

.field private fileBuffer:Ljava/nio/ByteBuffer;

.field private fileDecodingQueue:Lorg/telegram/messenger/DispatchQueue;

.field private fileEncodingQueue:Lorg/telegram/messenger/DispatchQueue;

.field private forceLoopCurrentPlaylist:Z

.field private freePlayerBuffers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/MediaController$AudioBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private generatingWaveform:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/telegram/messenger/MessageObject;",
            ">;"
        }
    .end annotation
.end field

.field private gifDownloadQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/DownloadObject;",
            ">;"
        }
    .end annotation
.end field

.field private gravity:[F

.field private gravityFast:[F

.field private gravitySensor:Landroid/hardware/Sensor;

.field private hasAudioFocus:I

.field private ignoreFirstProgress:I

.field private ignoreOnPause:Z

.field private ignoreProximity:Z

.field private inputFieldHasText:Z

.field private internalObserver:Lorg/telegram/messenger/MediaController$InternalObserver;

.field private isDrawingWasReady:Z

.field private isPaused:Z

.field private lastChatEnterTime:J

.field private lastChatLeaveTime:J

.field private lastChatVisibleMessages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private lastCheckMask:I

.field private lastMediaCheckTime:J

.field private lastMessageId:I

.field private lastPlayPcm:J

.field private lastProgress:J

.field private lastProximityValue:F

.field private lastSecretChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

.field private lastTag:I

.field private lastTimestamp:J

.field private lastUser:Lorg/telegram/tgnet/TLRPC$User;

.field private linearAcceleration:[F

.field private linearSensor:Landroid/hardware/Sensor;

.field private listenerInProgress:Z

.field private loadingFileMessagesObservers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;>;"
        }
    .end annotation
.end field

.field private loadingFileObservers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private mediaProjections:[Ljava/lang/String;

.field public mobileDataDownloadMask:I

.field private musicDownloadQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/DownloadObject;",
            ">;"
        }
    .end annotation
.end field

.field private observersByTag:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private photoDownloadQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/DownloadObject;",
            ">;"
        }
    .end annotation
.end field

.field private pipRoundVideoView:Lorg/telegram/ui/Components/PipRoundVideoView;

.field private pipSwitchingState:I

.field private playMusicAgain:Z

.field private playerBufferSize:I

.field private final playerObjectSync:Ljava/lang/Object;

.field private playerQueue:Lorg/telegram/messenger/DispatchQueue;

.field private final playerSync:Ljava/lang/Object;

.field private playingMessageObject:Lorg/telegram/messenger/MessageObject;

.field private playlist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;"
        }
    .end annotation
.end field

.field private previousAccValue:F

.field private progressTimer:Ljava/util/Timer;

.field private final progressTimerSync:Ljava/lang/Object;

.field private proximityHasDifferentValues:Z

.field private proximitySensor:Landroid/hardware/Sensor;

.field private proximityTouched:Z

.field private proximityWakeLock:Landroid/os/PowerManager$WakeLock;

.field private raiseChat:Lorg/telegram/ui/ChatActivity;

.field private raiseToEarRecord:Z

.field private raiseToSpeak:Z

.field private raisedToBack:I

.field private raisedToTop:I

.field private recordBufferSize:I

.field private recordBuffers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private recordDialogId:J

.field private recordQueue:Lorg/telegram/messenger/DispatchQueue;

.field private recordReplyingMessageObject:Lorg/telegram/messenger/MessageObject;

.field private recordRunnable:Ljava/lang/Runnable;

.field private recordSamples:[S

.field private recordStartRunnable:Ljava/lang/Runnable;

.field private recordStartTime:J

.field private recordTimeCount:J

.field private recordingAudio:Lorg/telegram/tgnet/TLRPC$TL_document;

.field private recordingAudioFile:Ljava/io/File;

.field private refreshGalleryRunnable:Ljava/lang/Runnable;

.field private repeatMode:I

.field private resumeAudioOnFocusGain:Z

.field public roamingDownloadMask:I

.field private samplesCount:J

.field private saveToGallery:Z

.field private sendAfterDone:I

.field private sensorManager:Landroid/hardware/SensorManager;

.field private sensorsStarted:Z

.field private shuffleMusic:Z

.field private shuffledPlaylist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;"
        }
    .end annotation
.end field

.field private startObserverToken:I

.field private stopMediaObserverRunnable:Lorg/telegram/messenger/MediaController$StopMediaObserverRunnable;

.field private final sync:Ljava/lang/Object;

.field private timeSinceRaise:J

.field private typingTimes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private useFrontSpeaker:Z

.field private usedPlayerBuffers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/MediaController$AudioBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private videoConvertFirstWrite:Z

.field private videoConvertQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;"
        }
    .end annotation
.end field

.field private final videoConvertSync:Ljava/lang/Object;

.field private videoDownloadQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/DownloadObject;",
            ">;"
        }
    .end annotation
.end field

.field private videoMessageDownloadQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/DownloadObject;",
            ">;"
        }
    .end annotation
.end field

.field private videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

.field private final videoQueueSync:Ljava/lang/Object;

.field private voiceMessagesPlaylist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;"
        }
    .end annotation
.end field

.field private voiceMessagesPlaylistMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/telegram/messenger/MessageObject;",
            ">;"
        }
    .end annotation
.end field

.field private voiceMessagesPlaylistUnread:Z

.field public wifiDownloadMask:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x3

    .line 95
    const-string/jumbo v0, "*"

    sput-object v0, Lorg/telegram/messenger/MediaController;->iFilter:Ljava/lang/String;

    .line 108
    new-array v0, v3, [I

    sput-object v0, Lorg/telegram/messenger/MediaController;->readArgs:[I

    .line 131
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "_id"

    aput-object v1, v0, v4

    const-string/jumbo v1, "bucket_id"

    aput-object v1, v0, v5

    const-string/jumbo v1, "bucket_display_name"

    aput-object v1, v0, v6

    const-string/jumbo v1, "_data"

    aput-object v1, v0, v3

    const-string/jumbo v1, "datetaken"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string/jumbo v2, "orientation"

    aput-object v2, v0, v1

    sput-object v0, Lorg/telegram/messenger/MediaController;->projectionPhotos:[Ljava/lang/String;

    .line 140
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "_id"

    aput-object v1, v0, v4

    const-string/jumbo v1, "bucket_id"

    aput-object v1, v0, v5

    const-string/jumbo v1, "bucket_display_name"

    aput-object v1, v0, v6

    const-string/jumbo v1, "_data"

    aput-object v1, v0, v3

    const-string/jumbo v1, "datetaken"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string/jumbo v2, "duration"

    aput-object v2, v0, v1

    sput-object v0, Lorg/telegram/messenger/MediaController;->projectionVideo:[Ljava/lang/String;

    .line 612
    const/4 v0, 0x0

    sput-object v0, Lorg/telegram/messenger/MediaController;->Instance:Lorg/telegram/messenger/MediaController;

    return-void
.end method

.method public constructor <init>()V
    .locals 13

    .prologue
    .line 627
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 249
    new-instance v9, Ljava/lang/Object;

    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->videoConvertSync:Ljava/lang/Object;

    .line 251
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->typingTimes:Ljava/util/HashMap;

    .line 267
    const-wide/16 v10, 0x0

    iput-wide v10, p0, Lorg/telegram/messenger/MediaController;->lastTimestamp:J

    .line 270
    const/high16 v9, -0x3d380000    # -100.0f

    iput v9, p0, Lorg/telegram/messenger/MediaController;->lastProximityValue:F

    .line 277
    const/4 v9, 0x3

    new-array v9, v9, [F

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->gravity:[F

    .line 278
    const/4 v9, 0x3

    new-array v9, v9, [F

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->gravityFast:[F

    .line 279
    const/4 v9, 0x3

    new-array v9, v9, [F

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->linearAcceleration:[F

    .line 283
    const/4 v9, 0x0

    iput v9, p0, Lorg/telegram/messenger/MediaController;->audioFocus:I

    .line 292
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->videoConvertQueue:Ljava/util/ArrayList;

    .line 293
    new-instance v9, Ljava/lang/Object;

    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->videoQueueSync:Ljava/lang/Object;

    .line 294
    const/4 v9, 0x0

    iput-boolean v9, p0, Lorg/telegram/messenger/MediaController;->cancelCurrentVideoConversion:Z

    .line 295
    const/4 v9, 0x1

    iput-boolean v9, p0, Lorg/telegram/messenger/MediaController;->videoConvertFirstWrite:Z

    .line 296
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->generatingWaveform:Ljava/util/HashMap;

    .line 309
    const/4 v9, 0x0

    iput v9, p0, Lorg/telegram/messenger/MediaController;->mobileDataDownloadMask:I

    .line 310
    const/4 v9, 0x0

    iput v9, p0, Lorg/telegram/messenger/MediaController;->wifiDownloadMask:I

    .line 311
    const/4 v9, 0x0

    iput v9, p0, Lorg/telegram/messenger/MediaController;->roamingDownloadMask:I

    .line 312
    const/4 v9, 0x0

    iput v9, p0, Lorg/telegram/messenger/MediaController;->lastCheckMask:I

    .line 313
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->photoDownloadQueue:Ljava/util/ArrayList;

    .line 314
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->audioDownloadQueue:Ljava/util/ArrayList;

    .line 315
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->videoMessageDownloadQueue:Ljava/util/ArrayList;

    .line 316
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->documentDownloadQueue:Ljava/util/ArrayList;

    .line 317
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->musicDownloadQueue:Ljava/util/ArrayList;

    .line 318
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->gifDownloadQueue:Ljava/util/ArrayList;

    .line 319
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->videoDownloadQueue:Ljava/util/ArrayList;

    .line 320
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->downloadQueueKeys:Ljava/util/HashMap;

    .line 322
    const/4 v9, 0x1

    iput-boolean v9, p0, Lorg/telegram/messenger/MediaController;->saveToGallery:Z

    .line 323
    const/4 v9, 0x1

    iput-boolean v9, p0, Lorg/telegram/messenger/MediaController;->autoplayGifs:Z

    .line 324
    const/4 v9, 0x1

    iput-boolean v9, p0, Lorg/telegram/messenger/MediaController;->raiseToSpeak:Z

    .line 325
    const/4 v9, 0x1

    iput-boolean v9, p0, Lorg/telegram/messenger/MediaController;->customTabs:Z

    .line 326
    const/4 v9, 0x1

    iput-boolean v9, p0, Lorg/telegram/messenger/MediaController;->directShare:Z

    .line 335
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->loadingFileObservers:Ljava/util/HashMap;

    .line 336
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->loadingFileMessagesObservers:Ljava/util/HashMap;

    .line 337
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->observersByTag:Ljava/util/HashMap;

    .line 338
    const/4 v9, 0x0

    iput-boolean v9, p0, Lorg/telegram/messenger/MediaController;->listenerInProgress:Z

    .line 339
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->addLaterArray:Ljava/util/HashMap;

    .line 340
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->deleteLaterArray:Ljava/util/ArrayList;

    .line 341
    const/4 v9, 0x0

    iput v9, p0, Lorg/telegram/messenger/MediaController;->lastTag:I

    .line 343
    const/4 v9, 0x0

    iput-boolean v9, p0, Lorg/telegram/messenger/MediaController;->isPaused:Z

    .line 344
    const/4 v9, 0x0

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    .line 345
    const/4 v9, 0x0

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;

    .line 346
    const-wide/16 v10, 0x0

    iput-wide v10, p0, Lorg/telegram/messenger/MediaController;->lastProgress:J

    .line 348
    const/4 v9, 0x0

    iput v9, p0, Lorg/telegram/messenger/MediaController;->playerBufferSize:I

    .line 349
    const/4 v9, 0x0

    iput-boolean v9, p0, Lorg/telegram/messenger/MediaController;->decodingFinished:Z

    .line 352
    const/4 v9, 0x0

    iput v9, p0, Lorg/telegram/messenger/MediaController;->ignoreFirstProgress:I

    .line 353
    const/4 v9, 0x0

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->progressTimer:Ljava/util/Timer;

    .line 354
    new-instance v9, Ljava/lang/Object;

    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->progressTimerSync:Ljava/lang/Object;

    .line 356
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->playlist:Ljava/util/ArrayList;

    .line 357
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->shuffledPlaylist:Ljava/util/ArrayList;

    .line 384
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->usedPlayerBuffers:Ljava/util/ArrayList;

    .line 385
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->freePlayerBuffers:Ljava/util/ArrayList;

    .line 386
    new-instance v9, Ljava/lang/Object;

    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->playerSync:Ljava/lang/Object;

    .line 387
    new-instance v9, Ljava/lang/Object;

    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->playerObjectSync:Ljava/lang/Object;

    .line 388
    const/16 v9, 0x400

    new-array v9, v9, [S

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->recordSamples:[S

    .line 391
    new-instance v9, Ljava/lang/Object;

    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->sync:Ljava/lang/Object;

    .line 393
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->recordBuffers:Ljava/util/ArrayList;

    .line 401
    new-instance v9, Lorg/telegram/messenger/MediaController$1;

    invoke-direct {v9, p0}, Lorg/telegram/messenger/MediaController$1;-><init>(Lorg/telegram/messenger/MediaController;)V

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->recordRunnable:Ljava/lang/Runnable;

    .line 610
    const/4 v9, 0x0

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->mediaProjections:[Ljava/lang/String;

    .line 629
    const/16 v9, 0x3e80

    const/16 v10, 0x10

    const/4 v11, 0x2

    :try_start_0
    invoke-static {v9, v10, v11}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v9

    iput v9, p0, Lorg/telegram/messenger/MediaController;->recordBufferSize:I

    .line 630
    iget v9, p0, Lorg/telegram/messenger/MediaController;->recordBufferSize:I

    if-gtz v9, :cond_0

    .line 631
    const/16 v9, 0x500

    iput v9, p0, Lorg/telegram/messenger/MediaController;->recordBufferSize:I

    .line 633
    :cond_0
    const v9, 0xbb80

    const/4 v10, 0x4

    const/4 v11, 0x2

    invoke-static {v9, v10, v11}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v9

    iput v9, p0, Lorg/telegram/messenger/MediaController;->playerBufferSize:I

    .line 634
    iget v9, p0, Lorg/telegram/messenger/MediaController;->playerBufferSize:I

    if-gtz v9, :cond_1

    .line 635
    const/16 v9, 0xf00

    iput v9, p0, Lorg/telegram/messenger/MediaController;->playerBufferSize:I

    .line 637
    :cond_1
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    const/4 v9, 0x5

    if-ge v0, v9, :cond_2

    .line 638
    const/16 v9, 0x1000

    invoke-static {v9}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 639
    .local v1, "buffer":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 640
    iget-object v9, p0, Lorg/telegram/messenger/MediaController;->recordBuffers:Ljava/util/ArrayList;

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 637
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 642
    .end local v1    # "buffer":Ljava/nio/ByteBuffer;
    :cond_2
    const/4 v0, 0x0

    :goto_1
    const/4 v9, 0x3

    if-ge v0, v9, :cond_3

    .line 643
    iget-object v9, p0, Lorg/telegram/messenger/MediaController;->freePlayerBuffers:Ljava/util/ArrayList;

    new-instance v10, Lorg/telegram/messenger/MediaController$AudioBuffer;

    iget v11, p0, Lorg/telegram/messenger/MediaController;->playerBufferSize:I

    invoke-direct {v10, p0, v11}, Lorg/telegram/messenger/MediaController$AudioBuffer;-><init>(Lorg/telegram/messenger/MediaController;I)V

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 642
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 645
    .end local v0    # "a":I
    :catch_0
    move-exception v2

    .line 646
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 649
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_3
    :try_start_1
    sget-object v9, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v10, "sensor"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/hardware/SensorManager;

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->sensorManager:Landroid/hardware/SensorManager;

    .line 650
    iget-object v9, p0, Lorg/telegram/messenger/MediaController;->sensorManager:Landroid/hardware/SensorManager;

    const/16 v10, 0xa

    invoke-virtual {v9, v10}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v9

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->linearSensor:Landroid/hardware/Sensor;

    .line 651
    iget-object v9, p0, Lorg/telegram/messenger/MediaController;->sensorManager:Landroid/hardware/SensorManager;

    const/16 v10, 0x9

    invoke-virtual {v9, v10}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v9

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->gravitySensor:Landroid/hardware/Sensor;

    .line 652
    iget-object v9, p0, Lorg/telegram/messenger/MediaController;->linearSensor:Landroid/hardware/Sensor;

    if-eqz v9, :cond_4

    iget-object v9, p0, Lorg/telegram/messenger/MediaController;->gravitySensor:Landroid/hardware/Sensor;

    if-nez v9, :cond_5

    .line 653
    :cond_4
    const-string/jumbo v9, "gravity or linear sensor not found"

    invoke-static {v9}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 654
    iget-object v9, p0, Lorg/telegram/messenger/MediaController;->sensorManager:Landroid/hardware/SensorManager;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v9

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->accelerometerSensor:Landroid/hardware/Sensor;

    .line 655
    const/4 v9, 0x0

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->linearSensor:Landroid/hardware/Sensor;

    .line 656
    const/4 v9, 0x0

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->gravitySensor:Landroid/hardware/Sensor;

    .line 658
    :cond_5
    iget-object v9, p0, Lorg/telegram/messenger/MediaController;->sensorManager:Landroid/hardware/SensorManager;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v9

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->proximitySensor:Landroid/hardware/Sensor;

    .line 659
    sget-object v9, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v10, "power"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/PowerManager;

    .line 660
    .local v7, "powerManager":Landroid/os/PowerManager;
    const/16 v9, 0x20

    const-string/jumbo v10, "proximity"

    invoke-virtual {v7, v9, v10}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v9

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->proximityWakeLock:Landroid/os/PowerManager$WakeLock;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 664
    .end local v7    # "powerManager":Landroid/os/PowerManager;
    :goto_2
    const/16 v9, 0x780

    invoke-static {v9}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v9

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->fileBuffer:Ljava/nio/ByteBuffer;

    .line 665
    new-instance v9, Lorg/telegram/messenger/DispatchQueue;

    const-string/jumbo v10, "recordQueue"

    invoke-direct {v9, v10}, Lorg/telegram/messenger/DispatchQueue;-><init>(Ljava/lang/String;)V

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->recordQueue:Lorg/telegram/messenger/DispatchQueue;

    .line 666
    iget-object v9, p0, Lorg/telegram/messenger/MediaController;->recordQueue:Lorg/telegram/messenger/DispatchQueue;

    const/16 v10, 0xa

    invoke-virtual {v9, v10}, Lorg/telegram/messenger/DispatchQueue;->setPriority(I)V

    .line 667
    new-instance v9, Lorg/telegram/messenger/DispatchQueue;

    const-string/jumbo v10, "fileEncodingQueue"

    invoke-direct {v9, v10}, Lorg/telegram/messenger/DispatchQueue;-><init>(Ljava/lang/String;)V

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->fileEncodingQueue:Lorg/telegram/messenger/DispatchQueue;

    .line 668
    iget-object v9, p0, Lorg/telegram/messenger/MediaController;->fileEncodingQueue:Lorg/telegram/messenger/DispatchQueue;

    const/16 v10, 0xa

    invoke-virtual {v9, v10}, Lorg/telegram/messenger/DispatchQueue;->setPriority(I)V

    .line 669
    new-instance v9, Lorg/telegram/messenger/DispatchQueue;

    const-string/jumbo v10, "playerQueue"

    invoke-direct {v9, v10}, Lorg/telegram/messenger/DispatchQueue;-><init>(Ljava/lang/String;)V

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->playerQueue:Lorg/telegram/messenger/DispatchQueue;

    .line 670
    new-instance v9, Lorg/telegram/messenger/DispatchQueue;

    const-string/jumbo v10, "fileDecodingQueue"

    invoke-direct {v9, v10}, Lorg/telegram/messenger/DispatchQueue;-><init>(Ljava/lang/String;)V

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->fileDecodingQueue:Lorg/telegram/messenger/DispatchQueue;

    .line 672
    sget-object v9, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    sget-object v10, Lorg/telegram/messenger/AndroidUtilities;->mainconfig:Ljava/lang/String;

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 673
    .local v8, "preferences":Landroid/content/SharedPreferences;
    const-string/jumbo v9, "mobileDataDownloadMask"

    const/16 v10, 0x73

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v9

    iput v9, p0, Lorg/telegram/messenger/MediaController;->mobileDataDownloadMask:I

    .line 674
    const-string/jumbo v9, "wifiDownloadMask"

    const/16 v10, 0x73

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v9

    iput v9, p0, Lorg/telegram/messenger/MediaController;->wifiDownloadMask:I

    .line 675
    const-string/jumbo v9, "roamingDownloadMask"

    const/4 v10, 0x0

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v9

    iput v9, p0, Lorg/telegram/messenger/MediaController;->roamingDownloadMask:I

    .line 676
    const-string/jumbo v9, "save_gallery"

    const/4 v10, 0x0

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    iput-boolean v9, p0, Lorg/telegram/messenger/MediaController;->saveToGallery:Z

    .line 677
    const-string/jumbo v9, "autoplay_gif"

    const/4 v10, 0x1

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    iput-boolean v9, p0, Lorg/telegram/messenger/MediaController;->autoplayGifs:Z

    .line 678
    const-string/jumbo v9, "raise_to_speak"

    const/4 v10, 0x1

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    iput-boolean v9, p0, Lorg/telegram/messenger/MediaController;->raiseToSpeak:Z

    .line 679
    const-string/jumbo v9, "custom_tabs"

    const/4 v10, 0x1

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    iput-boolean v9, p0, Lorg/telegram/messenger/MediaController;->customTabs:Z

    .line 680
    const-string/jumbo v9, "direct_share"

    const/4 v10, 0x1

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    iput-boolean v9, p0, Lorg/telegram/messenger/MediaController;->directShare:Z

    .line 681
    const-string/jumbo v9, "shuffleMusic"

    const/4 v10, 0x0

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    iput-boolean v9, p0, Lorg/telegram/messenger/MediaController;->shuffleMusic:Z

    .line 682
    const-string/jumbo v9, "repeatMode"

    const/4 v10, 0x0

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v9

    iput v9, p0, Lorg/telegram/messenger/MediaController;->repeatMode:I

    .line 684
    new-instance v9, Lorg/telegram/messenger/MediaController$2;

    invoke-direct {v9, p0}, Lorg/telegram/messenger/MediaController$2;-><init>(Lorg/telegram/messenger/MediaController;)V

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 700
    new-instance v5, Lorg/telegram/messenger/MediaController$3;

    invoke-direct {v5, p0}, Lorg/telegram/messenger/MediaController$3;-><init>(Lorg/telegram/messenger/MediaController;)V

    .line 706
    .local v5, "networkStateReceiver":Landroid/content/BroadcastReceiver;
    new-instance v3, Landroid/content/IntentFilter;

    const-string/jumbo v9, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v3, v9}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 707
    .local v3, "filter":Landroid/content/IntentFilter;
    sget-object v9, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v9, v5, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 709
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->isClientActivated()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 710
    invoke-virtual {p0}, Lorg/telegram/messenger/MediaController;->checkAutodownloadSettings()V

    .line 713
    :cond_6
    const/4 v9, 0x7

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string/jumbo v11, "_data"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string/jumbo v11, "_display_name"

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const-string/jumbo v11, "bucket_display_name"

    aput-object v11, v9, v10

    const/4 v10, 0x3

    const-string/jumbo v11, "datetaken"

    aput-object v11, v9, v10

    const/4 v10, 0x4

    const-string/jumbo v11, "title"

    aput-object v11, v9, v10

    const/4 v10, 0x5

    const-string/jumbo v11, "width"

    aput-object v11, v9, v10

    const/4 v10, 0x6

    const-string/jumbo v11, "height"

    aput-object v11, v9, v10

    iput-object v9, p0, Lorg/telegram/messenger/MediaController;->mediaProjections:[Ljava/lang/String;

    .line 724
    :try_start_2
    sget-object v9, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    sget-object v10, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v11, 0x0

    new-instance v12, Lorg/telegram/messenger/MediaController$GalleryObserverExternal;

    invoke-direct {v12, p0}, Lorg/telegram/messenger/MediaController$GalleryObserverExternal;-><init>(Lorg/telegram/messenger/MediaController;)V

    invoke-virtual {v9, v10, v11, v12}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 729
    :goto_3
    :try_start_3
    sget-object v9, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    sget-object v10, Landroid/provider/MediaStore$Images$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v11, 0x0

    new-instance v12, Lorg/telegram/messenger/MediaController$GalleryObserverInternal;

    invoke-direct {v12, p0}, Lorg/telegram/messenger/MediaController$GalleryObserverInternal;-><init>(Lorg/telegram/messenger/MediaController;)V

    invoke-virtual {v9, v10, v11, v12}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 735
    :goto_4
    :try_start_4
    new-instance v6, Lorg/telegram/messenger/MediaController$4;

    invoke-direct {v6, p0}, Lorg/telegram/messenger/MediaController$4;-><init>(Lorg/telegram/messenger/MediaController;)V

    .line 765
    .local v6, "phoneStateListener":Landroid/telephony/PhoneStateListener;
    sget-object v9, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v10, "phone"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 766
    .local v4, "mgr":Landroid/telephony/TelephonyManager;
    if-eqz v4, :cond_7

    .line 767
    const/16 v9, 0x20

    invoke-virtual {v4, v6, v9}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 772
    .end local v4    # "mgr":Landroid/telephony/TelephonyManager;
    .end local v6    # "phoneStateListener":Landroid/telephony/PhoneStateListener;
    :cond_7
    :goto_5
    return-void

    .line 661
    .end local v3    # "filter":Landroid/content/IntentFilter;
    .end local v5    # "networkStateReceiver":Landroid/content/BroadcastReceiver;
    .end local v8    # "preferences":Landroid/content/SharedPreferences;
    :catch_1
    move-exception v2

    .line 662
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .line 725
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v3    # "filter":Landroid/content/IntentFilter;
    .restart local v5    # "networkStateReceiver":Landroid/content/BroadcastReceiver;
    .restart local v8    # "preferences":Landroid/content/SharedPreferences;
    :catch_2
    move-exception v2

    .line 726
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_3

    .line 730
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v2

    .line 731
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_4

    .line 769
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v2

    .line 770
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_5
.end method

.method static synthetic access$000(Lorg/telegram/messenger/MediaController;)Landroid/media/AudioRecord;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;

    .prologue
    .line 94
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->audioRecorder:Landroid/media/AudioRecord;

    return-object v0
.end method

.method static synthetic access$002(Lorg/telegram/messenger/MediaController;Landroid/media/AudioRecord;)Landroid/media/AudioRecord;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;
    .param p1, "x1"    # Landroid/media/AudioRecord;

    .prologue
    .line 94
    iput-object p1, p0, Lorg/telegram/messenger/MediaController;->audioRecorder:Landroid/media/AudioRecord;

    return-object p1
.end method

.method static synthetic access$100(Lorg/telegram/messenger/MediaController;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;

    .prologue
    .line 94
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->recordBuffers:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1000(Lorg/telegram/messenger/MediaController;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;

    .prologue
    .line 94
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->recordRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1100(Lorg/telegram/messenger/MediaController;)J
    .locals 2
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;

    .prologue
    .line 94
    iget-wide v0, p0, Lorg/telegram/messenger/MediaController;->recordStartTime:J

    return-wide v0
.end method

.method static synthetic access$1102(Lorg/telegram/messenger/MediaController;J)J
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;
    .param p1, "x1"    # J

    .prologue
    .line 94
    iput-wide p1, p0, Lorg/telegram/messenger/MediaController;->recordStartTime:J

    return-wide p1
.end method

.method static synthetic access$1200(Lorg/telegram/messenger/MediaController;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;

    .prologue
    .line 94
    iget v0, p0, Lorg/telegram/messenger/MediaController;->sendAfterDone:I

    return v0
.end method

.method static synthetic access$1202(Lorg/telegram/messenger/MediaController;I)I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;
    .param p1, "x1"    # I

    .prologue
    .line 94
    iput p1, p0, Lorg/telegram/messenger/MediaController;->sendAfterDone:I

    return p1
.end method

.method static synthetic access$1300(Lorg/telegram/messenger/MediaController;I)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;
    .param p1, "x1"    # I

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lorg/telegram/messenger/MediaController;->stopRecordingInternal(I)V

    return-void
.end method

.method static synthetic access$1400(Lorg/telegram/messenger/MediaController;Landroid/net/Uri;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;
    .param p1, "x1"    # Landroid/net/Uri;

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lorg/telegram/messenger/MediaController;->processMediaObserver(Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$1500(Lorg/telegram/messenger/MediaController;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;

    .prologue
    .line 94
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->refreshGalleryRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1502(Lorg/telegram/messenger/MediaController;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 94
    iput-object p1, p0, Lorg/telegram/messenger/MediaController;->refreshGalleryRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$1700(Lorg/telegram/messenger/MediaController;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;

    .prologue
    .line 94
    iget v0, p0, Lorg/telegram/messenger/MediaController;->startObserverToken:I

    return v0
.end method

.method static synthetic access$1800(Lorg/telegram/messenger/MediaController;)Lorg/telegram/messenger/MediaController$InternalObserver;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;

    .prologue
    .line 94
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->internalObserver:Lorg/telegram/messenger/MediaController$InternalObserver;

    return-object v0
.end method

.method static synthetic access$1802(Lorg/telegram/messenger/MediaController;Lorg/telegram/messenger/MediaController$InternalObserver;)Lorg/telegram/messenger/MediaController$InternalObserver;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;
    .param p1, "x1"    # Lorg/telegram/messenger/MediaController$InternalObserver;

    .prologue
    .line 94
    iput-object p1, p0, Lorg/telegram/messenger/MediaController;->internalObserver:Lorg/telegram/messenger/MediaController$InternalObserver;

    return-object p1
.end method

.method static synthetic access$1900(Lorg/telegram/messenger/MediaController;)Lorg/telegram/messenger/MediaController$ExternalObserver;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;

    .prologue
    .line 94
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->externalObserver:Lorg/telegram/messenger/MediaController$ExternalObserver;

    return-object v0
.end method

.method static synthetic access$1902(Lorg/telegram/messenger/MediaController;Lorg/telegram/messenger/MediaController$ExternalObserver;)Lorg/telegram/messenger/MediaController$ExternalObserver;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;
    .param p1, "x1"    # Lorg/telegram/messenger/MediaController$ExternalObserver;

    .prologue
    .line 94
    iput-object p1, p0, Lorg/telegram/messenger/MediaController;->externalObserver:Lorg/telegram/messenger/MediaController$ExternalObserver;

    return-object p1
.end method

.method static synthetic access$200(Lorg/telegram/messenger/MediaController;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;

    .prologue
    .line 94
    iget v0, p0, Lorg/telegram/messenger/MediaController;->recordBufferSize:I

    return v0
.end method

.method static synthetic access$2000(Lorg/telegram/messenger/MediaController;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;

    .prologue
    .line 94
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->recordStartRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$2002(Lorg/telegram/messenger/MediaController;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 94
    iput-object p1, p0, Lorg/telegram/messenger/MediaController;->recordStartRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$2100(Lorg/telegram/messenger/MediaController;)Lorg/telegram/tgnet/TLRPC$TL_document;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;

    .prologue
    .line 94
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->recordingAudio:Lorg/telegram/tgnet/TLRPC$TL_document;

    return-object v0
.end method

.method static synthetic access$2102(Lorg/telegram/messenger/MediaController;Lorg/telegram/tgnet/TLRPC$TL_document;)Lorg/telegram/tgnet/TLRPC$TL_document;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;
    .param p1, "x1"    # Lorg/telegram/tgnet/TLRPC$TL_document;

    .prologue
    .line 94
    iput-object p1, p0, Lorg/telegram/messenger/MediaController;->recordingAudio:Lorg/telegram/tgnet/TLRPC$TL_document;

    return-object p1
.end method

.method static synthetic access$2202(Lorg/telegram/messenger/MediaController;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;
    .param p1, "x1"    # Z

    .prologue
    .line 94
    iput-boolean p1, p0, Lorg/telegram/messenger/MediaController;->callInProgress:Z

    return p1
.end method

.method static synthetic access$2300(Lorg/telegram/messenger/MediaController;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;

    .prologue
    .line 94
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->sync:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2400(Lorg/telegram/messenger/MediaController;)Landroid/media/MediaPlayer;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;

    .prologue
    .line 94
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$2500(Lorg/telegram/messenger/MediaController;)Landroid/media/AudioTrack;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;

    .prologue
    .line 94
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;

    return-object v0
.end method

.method static synthetic access$2600(Lorg/telegram/messenger/MediaController;)Lorg/telegram/ui/Components/VideoPlayer;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;

    .prologue
    .line 94
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    return-object v0
.end method

.method static synthetic access$2700(Lorg/telegram/messenger/MediaController;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;

    .prologue
    .line 94
    iget-boolean v0, p0, Lorg/telegram/messenger/MediaController;->isPaused:Z

    return v0
.end method

.method static synthetic access$2800(Lorg/telegram/messenger/MediaController;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;

    .prologue
    .line 94
    iget v0, p0, Lorg/telegram/messenger/MediaController;->ignoreFirstProgress:I

    return v0
.end method

.method static synthetic access$2802(Lorg/telegram/messenger/MediaController;I)I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;
    .param p1, "x1"    # I

    .prologue
    .line 94
    iput p1, p0, Lorg/telegram/messenger/MediaController;->ignoreFirstProgress:I

    return p1
.end method

.method static synthetic access$2810(Lorg/telegram/messenger/MediaController;)I
    .locals 2
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;

    .prologue
    .line 94
    iget v0, p0, Lorg/telegram/messenger/MediaController;->ignoreFirstProgress:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lorg/telegram/messenger/MediaController;->ignoreFirstProgress:I

    return v0
.end method

.method static synthetic access$2900(Lorg/telegram/messenger/MediaController;)J
    .locals 2
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;

    .prologue
    .line 94
    iget-wide v0, p0, Lorg/telegram/messenger/MediaController;->lastProgress:J

    return-wide v0
.end method

.method static synthetic access$2902(Lorg/telegram/messenger/MediaController;J)J
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;
    .param p1, "x1"    # J

    .prologue
    .line 94
    iput-wide p1, p0, Lorg/telegram/messenger/MediaController;->lastProgress:J

    return-wide p1
.end method

.method static synthetic access$300(Lorg/telegram/messenger/MediaController;)J
    .locals 2
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;

    .prologue
    .line 94
    iget-wide v0, p0, Lorg/telegram/messenger/MediaController;->samplesCount:J

    return-wide v0
.end method

.method static synthetic access$3000(Lorg/telegram/messenger/MediaController;)J
    .locals 2
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;

    .prologue
    .line 94
    iget-wide v0, p0, Lorg/telegram/messenger/MediaController;->lastPlayPcm:J

    return-wide v0
.end method

.method static synthetic access$3002(Lorg/telegram/messenger/MediaController;J)J
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;
    .param p1, "x1"    # J

    .prologue
    .line 94
    iput-wide p1, p0, Lorg/telegram/messenger/MediaController;->lastPlayPcm:J

    return-wide p1
.end method

.method static synthetic access$302(Lorg/telegram/messenger/MediaController;J)J
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;
    .param p1, "x1"    # J

    .prologue
    .line 94
    iput-wide p1, p0, Lorg/telegram/messenger/MediaController;->samplesCount:J

    return-wide p1
.end method

.method static synthetic access$3100(Lorg/telegram/messenger/MediaController;)J
    .locals 2
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;

    .prologue
    .line 94
    iget-wide v0, p0, Lorg/telegram/messenger/MediaController;->currentTotalPcmDuration:J

    return-wide v0
.end method

.method static synthetic access$3300(Lorg/telegram/messenger/MediaController;Ljava/util/ArrayList;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lorg/telegram/messenger/MediaController;->checkScreenshots(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$3400(Lorg/telegram/messenger/MediaController;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;

    .prologue
    .line 94
    iget-boolean v0, p0, Lorg/telegram/messenger/MediaController;->decodingFinished:Z

    return v0
.end method

.method static synthetic access$3402(Lorg/telegram/messenger/MediaController;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;
    .param p1, "x1"    # Z

    .prologue
    .line 94
    iput-boolean p1, p0, Lorg/telegram/messenger/MediaController;->decodingFinished:Z

    return p1
.end method

.method static synthetic access$3500(Lorg/telegram/messenger/MediaController;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;

    .prologue
    .line 94
    invoke-direct {p0}, Lorg/telegram/messenger/MediaController;->checkPlayerQueue()V

    return-void
.end method

.method static synthetic access$3600(Lorg/telegram/messenger/MediaController;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;

    .prologue
    .line 94
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->playerSync:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$3700(Lorg/telegram/messenger/MediaController;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;

    .prologue
    .line 94
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->freePlayerBuffers:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3800(Lorg/telegram/messenger/MediaController;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;

    .prologue
    .line 94
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->usedPlayerBuffers:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3900(Lorg/telegram/messenger/MediaController;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;

    .prologue
    .line 94
    iget v0, p0, Lorg/telegram/messenger/MediaController;->playerBufferSize:I

    return v0
.end method

.method static synthetic access$400(Lorg/telegram/messenger/MediaController;)[S
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;

    .prologue
    .line 94
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->recordSamples:[S

    return-object v0
.end method

.method static synthetic access$4000(Lorg/telegram/messenger/MediaController;Ljava/nio/ByteBuffer;I[I)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;
    .param p1, "x1"    # Ljava/nio/ByteBuffer;
    .param p2, "x2"    # I
    .param p3, "x3"    # [I

    .prologue
    .line 94
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/MediaController;->readOpusFile(Ljava/nio/ByteBuffer;I[I)V

    return-void
.end method

.method static synthetic access$4100(Lorg/telegram/messenger/MediaController;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;

    .prologue
    .line 94
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->playerObjectSync:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$4200(Lorg/telegram/messenger/MediaController;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;

    .prologue
    .line 94
    iget v0, p0, Lorg/telegram/messenger/MediaController;->buffersWrited:I

    return v0
.end method

.method static synthetic access$4208(Lorg/telegram/messenger/MediaController;)I
    .locals 2
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;

    .prologue
    .line 94
    iget v0, p0, Lorg/telegram/messenger/MediaController;->buffersWrited:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/messenger/MediaController;->buffersWrited:I

    return v0
.end method

.method static synthetic access$4300(Lorg/telegram/messenger/MediaController;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;

    .prologue
    .line 94
    invoke-direct {p0}, Lorg/telegram/messenger/MediaController;->checkDecoderQueue()V

    return-void
.end method

.method static synthetic access$4400(Lorg/telegram/messenger/MediaController;)Landroid/hardware/Sensor;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;

    .prologue
    .line 94
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->gravitySensor:Landroid/hardware/Sensor;

    return-object v0
.end method

.method static synthetic access$4500(Lorg/telegram/messenger/MediaController;)Landroid/hardware/SensorManager;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;

    .prologue
    .line 94
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->sensorManager:Landroid/hardware/SensorManager;

    return-object v0
.end method

.method static synthetic access$4600(Lorg/telegram/messenger/MediaController;)Landroid/hardware/Sensor;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;

    .prologue
    .line 94
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->linearSensor:Landroid/hardware/Sensor;

    return-object v0
.end method

.method static synthetic access$4700(Lorg/telegram/messenger/MediaController;)Landroid/hardware/Sensor;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;

    .prologue
    .line 94
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->accelerometerSensor:Landroid/hardware/Sensor;

    return-object v0
.end method

.method static synthetic access$4800(Lorg/telegram/messenger/MediaController;)Landroid/hardware/Sensor;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;

    .prologue
    .line 94
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->proximitySensor:Landroid/hardware/Sensor;

    return-object v0
.end method

.method static synthetic access$4900(Lorg/telegram/messenger/MediaController;F)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;
    .param p1, "x1"    # F

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lorg/telegram/messenger/MediaController;->seekOpusFile(F)I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lorg/telegram/messenger/MediaController;)Ljava/nio/ByteBuffer;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;

    .prologue
    .line 94
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->fileBuffer:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method static synthetic access$5000(Lorg/telegram/messenger/MediaController;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;

    .prologue
    .line 94
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->baseActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$5102(Lorg/telegram/messenger/MediaController;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;
    .param p1, "x1"    # Z

    .prologue
    .line 94
    iput-boolean p1, p0, Lorg/telegram/messenger/MediaController;->currentAspectRatioFrameLayoutReady:Z

    return p1
.end method

.method static synthetic access$5200(Lorg/telegram/messenger/MediaController;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;

    .prologue
    .line 94
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->currentTextureViewContainer:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$5300(Lorg/telegram/messenger/MediaController;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;

    .prologue
    .line 94
    iget v0, p0, Lorg/telegram/messenger/MediaController;->currentAspectRatioFrameLayoutRotation:I

    return v0
.end method

.method static synthetic access$5302(Lorg/telegram/messenger/MediaController;I)I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;
    .param p1, "x1"    # I

    .prologue
    .line 94
    iput p1, p0, Lorg/telegram/messenger/MediaController;->currentAspectRatioFrameLayoutRotation:I

    return p1
.end method

.method static synthetic access$5400(Lorg/telegram/messenger/MediaController;)F
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;

    .prologue
    .line 94
    iget v0, p0, Lorg/telegram/messenger/MediaController;->currentAspectRatioFrameLayoutRatio:F

    return v0
.end method

.method static synthetic access$5402(Lorg/telegram/messenger/MediaController;F)F
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;
    .param p1, "x1"    # F

    .prologue
    .line 94
    iput p1, p0, Lorg/telegram/messenger/MediaController;->currentAspectRatioFrameLayoutRatio:F

    return p1
.end method

.method static synthetic access$5500(Lorg/telegram/messenger/MediaController;)Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;

    .prologue
    .line 94
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->currentAspectRatioFrameLayout:Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    return-object v0
.end method

.method static synthetic access$5600(Lorg/telegram/messenger/MediaController;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;

    .prologue
    .line 94
    iget-boolean v0, p0, Lorg/telegram/messenger/MediaController;->isDrawingWasReady:Z

    return v0
.end method

.method static synthetic access$5602(Lorg/telegram/messenger/MediaController;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;
    .param p1, "x1"    # Z

    .prologue
    .line 94
    iput-boolean p1, p0, Lorg/telegram/messenger/MediaController;->isDrawingWasReady:Z

    return p1
.end method

.method static synthetic access$5700(Lorg/telegram/messenger/MediaController;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;

    .prologue
    .line 94
    iget v0, p0, Lorg/telegram/messenger/MediaController;->pipSwitchingState:I

    return v0
.end method

.method static synthetic access$5702(Lorg/telegram/messenger/MediaController;I)I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;
    .param p1, "x1"    # I

    .prologue
    .line 94
    iput p1, p0, Lorg/telegram/messenger/MediaController;->pipSwitchingState:I

    return p1
.end method

.method static synthetic access$5800(Lorg/telegram/messenger/MediaController;)Landroid/view/TextureView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;

    .prologue
    .line 94
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->currentTextureView:Landroid/view/TextureView;

    return-object v0
.end method

.method static synthetic access$5900(Lorg/telegram/messenger/MediaController;)Lorg/telegram/ui/Components/PipRoundVideoView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;

    .prologue
    .line 94
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->pipRoundVideoView:Lorg/telegram/ui/Components/PipRoundVideoView;

    return-object v0
.end method

.method static synthetic access$5902(Lorg/telegram/messenger/MediaController;Lorg/telegram/ui/Components/PipRoundVideoView;)Lorg/telegram/ui/Components/PipRoundVideoView;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;
    .param p1, "x1"    # Lorg/telegram/ui/Components/PipRoundVideoView;

    .prologue
    .line 94
    iput-object p1, p0, Lorg/telegram/messenger/MediaController;->pipRoundVideoView:Lorg/telegram/ui/Components/PipRoundVideoView;

    return-object p1
.end method

.method static synthetic access$600(Lorg/telegram/messenger/MediaController;Ljava/nio/ByteBuffer;I)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;
    .param p1, "x1"    # Ljava/nio/ByteBuffer;
    .param p2, "x2"    # I

    .prologue
    .line 94
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/MediaController;->writeFrame(Ljava/nio/ByteBuffer;I)I

    move-result v0

    return v0
.end method

.method static synthetic access$6000(Lorg/telegram/messenger/MediaController;Ljava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lorg/telegram/messenger/MediaController;->openOpusFile(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$6100(Lorg/telegram/messenger/MediaController;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;

    .prologue
    .line 94
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->playlist:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$6200(Lorg/telegram/messenger/MediaController;Z)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;
    .param p1, "x1"    # Z

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lorg/telegram/messenger/MediaController;->playNextMessage(Z)V

    return-void
.end method

.method static synthetic access$6300(Lorg/telegram/messenger/MediaController;)Lorg/telegram/messenger/MessageObject;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;

    .prologue
    .line 94
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    return-object v0
.end method

.method static synthetic access$6400(Lorg/telegram/messenger/MediaController;)Ljava/io/File;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;

    .prologue
    .line 94
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->recordingAudioFile:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$6402(Lorg/telegram/messenger/MediaController;Ljava/io/File;)Ljava/io/File;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;
    .param p1, "x1"    # Ljava/io/File;

    .prologue
    .line 94
    iput-object p1, p0, Lorg/telegram/messenger/MediaController;->recordingAudioFile:Ljava/io/File;

    return-object p1
.end method

.method static synthetic access$6500(Lorg/telegram/messenger/MediaController;Ljava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lorg/telegram/messenger/MediaController;->startRecord(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$6600(Lorg/telegram/messenger/MediaController;)J
    .locals 2
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;

    .prologue
    .line 94
    iget-wide v0, p0, Lorg/telegram/messenger/MediaController;->recordDialogId:J

    return-wide v0
.end method

.method static synthetic access$6602(Lorg/telegram/messenger/MediaController;J)J
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;
    .param p1, "x1"    # J

    .prologue
    .line 94
    iput-wide p1, p0, Lorg/telegram/messenger/MediaController;->recordDialogId:J

    return-wide p1
.end method

.method static synthetic access$6700(Lorg/telegram/messenger/MediaController;)Lorg/telegram/messenger/MessageObject;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;

    .prologue
    .line 94
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->recordReplyingMessageObject:Lorg/telegram/messenger/MessageObject;

    return-object v0
.end method

.method static synthetic access$6702(Lorg/telegram/messenger/MediaController;Lorg/telegram/messenger/MessageObject;)Lorg/telegram/messenger/MessageObject;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;
    .param p1, "x1"    # Lorg/telegram/messenger/MessageObject;

    .prologue
    .line 94
    iput-object p1, p0, Lorg/telegram/messenger/MediaController;->recordReplyingMessageObject:Lorg/telegram/messenger/MessageObject;

    return-object p1
.end method

.method static synthetic access$6800(Lorg/telegram/messenger/MediaController;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;

    .prologue
    .line 94
    invoke-direct {p0}, Lorg/telegram/messenger/MediaController;->stopRecord()V

    return-void
.end method

.method static synthetic access$6900(Lorg/telegram/messenger/MediaController;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;

    .prologue
    .line 94
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->generatingWaveform:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$700(Lorg/telegram/messenger/MediaController;)J
    .locals 2
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;

    .prologue
    .line 94
    iget-wide v0, p0, Lorg/telegram/messenger/MediaController;->recordTimeCount:J

    return-wide v0
.end method

.method static synthetic access$7000()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    sget-object v0, Lorg/telegram/messenger/MediaController;->projectionPhotos:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$702(Lorg/telegram/messenger/MediaController;J)J
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;
    .param p1, "x1"    # J

    .prologue
    .line 94
    iput-wide p1, p0, Lorg/telegram/messenger/MediaController;->recordTimeCount:J

    return-wide p1
.end method

.method static synthetic access$7100()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    sget-object v0, Lorg/telegram/messenger/MediaController;->projectionVideo:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$7200(ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Integer;Lorg/telegram/messenger/MediaController$AlbumEntry;Lorg/telegram/messenger/MediaController$AlbumEntry;I)V
    .locals 0
    .param p0, "x0"    # I
    .param p1, "x1"    # Ljava/util/ArrayList;
    .param p2, "x2"    # Ljava/util/ArrayList;
    .param p3, "x3"    # Ljava/lang/Integer;
    .param p4, "x4"    # Lorg/telegram/messenger/MediaController$AlbumEntry;
    .param p5, "x5"    # Lorg/telegram/messenger/MediaController$AlbumEntry;
    .param p6, "x6"    # I

    .prologue
    .line 94
    invoke-static/range {p0 .. p6}, Lorg/telegram/messenger/MediaController;->broadcastNewPhotos(ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Integer;Lorg/telegram/messenger/MediaController$AlbumEntry;Lorg/telegram/messenger/MediaController$AlbumEntry;I)V

    return-void
.end method

.method static synthetic access$7302(Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .param p0, "x0"    # Ljava/lang/Runnable;

    .prologue
    .line 94
    sput-object p0, Lorg/telegram/messenger/MediaController;->broadcastPhotosRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$7400(Lorg/telegram/messenger/MediaController;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;

    .prologue
    .line 94
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->videoConvertSync:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$7502(Lorg/telegram/messenger/MediaController;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;
    .param p1, "x1"    # Z

    .prologue
    .line 94
    iput-boolean p1, p0, Lorg/telegram/messenger/MediaController;->cancelCurrentVideoConversion:Z

    return p1
.end method

.method static synthetic access$7600(Lorg/telegram/messenger/MediaController;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;

    .prologue
    .line 94
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->videoConvertQueue:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$7700(Lorg/telegram/messenger/MediaController;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;

    .prologue
    .line 94
    invoke-direct {p0}, Lorg/telegram/messenger/MediaController;->startVideoConvertFromQueue()Z

    move-result v0

    return v0
.end method

.method static synthetic access$7800(Lorg/telegram/messenger/MediaController;Lorg/telegram/messenger/MessageObject;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;
    .param p1, "x1"    # Lorg/telegram/messenger/MessageObject;

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lorg/telegram/messenger/MediaController;->convertVideo(Lorg/telegram/messenger/MessageObject;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lorg/telegram/messenger/MediaController;)Lorg/telegram/messenger/DispatchQueue;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;

    .prologue
    .line 94
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->recordQueue:Lorg/telegram/messenger/DispatchQueue;

    return-object v0
.end method

.method static synthetic access$900(Lorg/telegram/messenger/MediaController;)Lorg/telegram/messenger/DispatchQueue;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/MediaController;

    .prologue
    .line 94
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->fileEncodingQueue:Lorg/telegram/messenger/DispatchQueue;

    return-object v0
.end method

.method private static broadcastNewPhotos(ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Integer;Lorg/telegram/messenger/MediaController$AlbumEntry;Lorg/telegram/messenger/MediaController$AlbumEntry;I)V
    .locals 7
    .param p0, "guid"    # I
    .param p3, "cameraAlbumIdFinal"    # Ljava/lang/Integer;
    .param p4, "allMediaAlbumFinal"    # Lorg/telegram/messenger/MediaController$AlbumEntry;
    .param p5, "allPhotosAlbumFinal"    # Lorg/telegram/messenger/MediaController$AlbumEntry;
    .param p6, "delay"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/MediaController$AlbumEntry;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/MediaController$AlbumEntry;",
            ">;",
            "Ljava/lang/Integer;",
            "Lorg/telegram/messenger/MediaController$AlbumEntry;",
            "Lorg/telegram/messenger/MediaController$AlbumEntry;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 3770
    .local p1, "mediaAlbumsSorted":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MediaController$AlbumEntry;>;"
    .local p2, "photoAlbumsSorted":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MediaController$AlbumEntry;>;"
    sget-object v0, Lorg/telegram/messenger/MediaController;->broadcastPhotosRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 3771
    sget-object v0, Lorg/telegram/messenger/MediaController;->broadcastPhotosRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 3773
    :cond_0
    new-instance v0, Lorg/telegram/messenger/MediaController$27;

    move v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/telegram/messenger/MediaController$27;-><init>(ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Integer;Lorg/telegram/messenger/MediaController$AlbumEntry;Lorg/telegram/messenger/MediaController$AlbumEntry;)V

    sput-object v0, Lorg/telegram/messenger/MediaController;->broadcastPhotosRunnable:Ljava/lang/Runnable;

    int-to-long v2, p6

    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 3786
    return-void
.end method

.method private buildShuffledPlayList()V
    .locals 7

    .prologue
    .line 2147
    iget-object v5, p0, Lorg/telegram/messenger/MediaController;->playlist:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2163
    :cond_0
    return-void

    .line 2150
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    iget-object v5, p0, Lorg/telegram/messenger/MediaController;->playlist:Ljava/util/ArrayList;

    invoke-direct {v1, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2151
    .local v1, "all":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    iget-object v5, p0, Lorg/telegram/messenger/MediaController;->shuffledPlaylist:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 2153
    iget-object v5, p0, Lorg/telegram/messenger/MediaController;->playlist:Ljava/util/ArrayList;

    iget v6, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/MessageObject;

    .line 2154
    .local v4, "messageObject":Lorg/telegram/messenger/MessageObject;
    iget v5, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2155
    iget-object v5, p0, Lorg/telegram/messenger/MediaController;->shuffledPlaylist:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2157
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2158
    .local v2, "count":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 2159
    sget-object v5, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v3

    .line 2160
    .local v3, "index":I
    iget-object v5, p0, Lorg/telegram/messenger/MediaController;->shuffledPlaylist:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2161
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2158
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private checkAudioFocus(Lorg/telegram/messenger/MessageObject;)V
    .locals 7
    .param p1, "messageObject"    # Lorg/telegram/messenger/MessageObject;

    .prologue
    const/4 v6, 0x2

    const/4 v3, 0x3

    const/4 v4, 0x1

    .line 2373
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->isVoice()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->isRoundVideo()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2374
    :cond_0
    iget-boolean v2, p0, Lorg/telegram/messenger/MediaController;->useFrontSpeaker:Z

    if-eqz v2, :cond_2

    .line 2375
    const/4 v0, 0x3

    .line 2382
    .local v0, "neededAudioFocus":I
    :goto_0
    iget v2, p0, Lorg/telegram/messenger/MediaController;->hasAudioFocus:I

    if-eq v2, v0, :cond_1

    .line 2383
    iput v0, p0, Lorg/telegram/messenger/MediaController;->hasAudioFocus:I

    .line 2385
    if-ne v0, v3, :cond_4

    .line 2386
    invoke-static {}, Lorg/telegram/messenger/NotificationsController;->getInstance()Lorg/telegram/messenger/NotificationsController;

    move-result-object v2

    iget-object v2, v2, Lorg/telegram/messenger/NotificationsController;->audioManager:Landroid/media/AudioManager;

    const/4 v3, 0x0

    invoke-virtual {v2, p0, v3, v4}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v1

    .line 2390
    .local v1, "result":I
    :goto_1
    if-ne v1, v4, :cond_1

    .line 2391
    iput v6, p0, Lorg/telegram/messenger/MediaController;->audioFocus:I

    .line 2394
    .end local v1    # "result":I
    :cond_1
    return-void

    .line 2377
    .end local v0    # "neededAudioFocus":I
    :cond_2
    const/4 v0, 0x2

    .restart local v0    # "neededAudioFocus":I
    goto :goto_0

    .line 2380
    .end local v0    # "neededAudioFocus":I
    :cond_3
    const/4 v0, 0x1

    .restart local v0    # "neededAudioFocus":I
    goto :goto_0

    .line 2388
    :cond_4
    invoke-static {}, Lorg/telegram/messenger/NotificationsController;->getInstance()Lorg/telegram/messenger/NotificationsController;

    move-result-object v2

    iget-object v5, v2, Lorg/telegram/messenger/NotificationsController;->audioManager:Landroid/media/AudioManager;

    if-ne v0, v6, :cond_5

    move v2, v3

    :goto_2
    invoke-virtual {v5, p0, v3, v2}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v1

    .restart local v1    # "result":I
    goto :goto_1

    .end local v1    # "result":I
    :cond_5
    move v2, v4

    goto :goto_2
.end method

.method private checkConversionCanceled()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 4072
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->videoConvertSync:Ljava/lang/Object;

    monitor-enter v2

    .line 4073
    :try_start_0
    iget-boolean v0, p0, Lorg/telegram/messenger/MediaController;->cancelCurrentVideoConversion:Z

    .line 4074
    .local v0, "cancelConversion":Z
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4075
    if-eqz v0, :cond_0

    .line 4076
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "canceled conversion"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4074
    .end local v0    # "cancelConversion":Z
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 4078
    .restart local v0    # "cancelConversion":Z
    :cond_0
    return-void
.end method

.method private checkDecoderQueue()V
    .locals 2

    .prologue
    .line 1544
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->fileDecodingQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MediaController$7;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/MediaController$7;-><init>(Lorg/telegram/messenger/MediaController;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 1593
    return-void
.end method

.method private checkDownloadFinished(Ljava/lang/String;I)V
    .locals 11
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "state"    # I

    .prologue
    const/16 v10, 0x10

    const/16 v9, 0x8

    const/4 v8, 0x4

    const/4 v7, 0x1

    const/4 v6, 0x2

    .line 1151
    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->downloadQueueKeys:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/DownloadObject;

    .line 1152
    .local v0, "downloadObject":Lorg/telegram/messenger/DownloadObject;
    if-eqz v0, :cond_2

    .line 1153
    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->downloadQueueKeys:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1154
    if-eqz p2, :cond_0

    if-ne p2, v6, :cond_1

    .line 1155
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v1

    iget-wide v2, v0, Lorg/telegram/messenger/DownloadObject;->id:J

    iget v4, v0, Lorg/telegram/messenger/DownloadObject;->type:I

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Lorg/telegram/messenger/MessagesStorage;->removeFromDownloadQueue(JIZ)V

    .line 1157
    :cond_1
    iget v1, v0, Lorg/telegram/messenger/DownloadObject;->type:I

    if-ne v1, v7, :cond_3

    .line 1158
    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->photoDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1159
    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->photoDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1160
    invoke-virtual {p0, v7}, Lorg/telegram/messenger/MediaController;->newDownloadObjectsAvailable(I)V

    .line 1194
    :cond_2
    :goto_0
    return-void

    .line 1162
    :cond_3
    iget v1, v0, Lorg/telegram/messenger/DownloadObject;->type:I

    if-ne v1, v6, :cond_4

    .line 1163
    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->audioDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1164
    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->audioDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1165
    invoke-virtual {p0, v6}, Lorg/telegram/messenger/MediaController;->newDownloadObjectsAvailable(I)V

    goto :goto_0

    .line 1167
    :cond_4
    iget v1, v0, Lorg/telegram/messenger/DownloadObject;->type:I

    const/16 v2, 0x40

    if-ne v1, v2, :cond_5

    .line 1168
    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->videoMessageDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1169
    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->videoMessageDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1170
    const/16 v1, 0x40

    invoke-virtual {p0, v1}, Lorg/telegram/messenger/MediaController;->newDownloadObjectsAvailable(I)V

    goto :goto_0

    .line 1172
    :cond_5
    iget v1, v0, Lorg/telegram/messenger/DownloadObject;->type:I

    if-ne v1, v8, :cond_6

    .line 1173
    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->videoDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1174
    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->videoDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1175
    invoke-virtual {p0, v8}, Lorg/telegram/messenger/MediaController;->newDownloadObjectsAvailable(I)V

    goto :goto_0

    .line 1177
    :cond_6
    iget v1, v0, Lorg/telegram/messenger/DownloadObject;->type:I

    if-ne v1, v9, :cond_7

    .line 1178
    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->documentDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1179
    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->documentDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1180
    invoke-virtual {p0, v9}, Lorg/telegram/messenger/MediaController;->newDownloadObjectsAvailable(I)V

    goto :goto_0

    .line 1182
    :cond_7
    iget v1, v0, Lorg/telegram/messenger/DownloadObject;->type:I

    if-ne v1, v10, :cond_8

    .line 1183
    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->musicDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1184
    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->musicDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1185
    invoke-virtual {p0, v10}, Lorg/telegram/messenger/MediaController;->newDownloadObjectsAvailable(I)V

    goto :goto_0

    .line 1187
    :cond_8
    iget v1, v0, Lorg/telegram/messenger/DownloadObject;->type:I

    const/16 v2, 0x20

    if-ne v1, v2, :cond_2

    .line 1188
    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->gifDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1189
    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->gifDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1190
    const/16 v1, 0x20

    invoke-virtual {p0, v1}, Lorg/telegram/messenger/MediaController;->newDownloadObjectsAvailable(I)V

    goto/16 :goto_0
.end method

.method private checkIsNextMusicFileDownloaded()V
    .locals 9

    .prologue
    const/4 v6, 0x0

    .line 2333
    invoke-direct {p0}, Lorg/telegram/messenger/MediaController;->getCurrentDownloadMask()I

    move-result v7

    and-int/lit8 v7, v7, 0x10

    if-nez v7, :cond_1

    .line 2357
    :cond_0
    :goto_0
    return-void

    .line 2336
    :cond_1
    iget-boolean v7, p0, Lorg/telegram/messenger/MediaController;->shuffleMusic:Z

    if-eqz v7, :cond_4

    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->shuffledPlaylist:Ljava/util/ArrayList;

    .line 2337
    .local v1, "currentPlayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    :goto_1
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v8, 0x2

    if-lt v7, v8, :cond_0

    .line 2340
    iget v7, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    add-int/lit8 v5, v7, 0x1

    .line 2341
    .local v5, "nextIndex":I
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lt v5, v7, :cond_2

    .line 2342
    const/4 v5, 0x0

    .line 2344
    :cond_2
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/MessageObject;

    .line 2345
    .local v4, "nextAudio":Lorg/telegram/messenger/MessageObject;
    const/4 v3, 0x0

    .line 2346
    .local v3, "file":Ljava/io/File;
    iget-object v7, v4, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    if-eqz v7, :cond_3

    iget-object v7, v4, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_3

    .line 2347
    new-instance v3, Ljava/io/File;

    .end local v3    # "file":Ljava/io/File;
    iget-object v7, v4, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v7, v7, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    invoke-direct {v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2348
    .restart local v3    # "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_3

    .line 2349
    const/4 v3, 0x0

    .line 2352
    :cond_3
    if-eqz v3, :cond_5

    move-object v0, v3

    .line 2353
    .local v0, "cacheFile":Ljava/io/File;
    :goto_2
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_6

    const/4 v2, 0x1

    .line 2354
    .local v2, "exist":Z
    :goto_3
    if-eqz v0, :cond_0

    if-eq v0, v3, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->isMusic()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 2355
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v7

    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v8

    invoke-virtual {v7, v8, v6, v6}, Lorg/telegram/messenger/FileLoader;->loadFile(Lorg/telegram/tgnet/TLRPC$Document;ZI)V

    goto :goto_0

    .line 2336
    .end local v0    # "cacheFile":Ljava/io/File;
    .end local v1    # "currentPlayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    .end local v2    # "exist":Z
    .end local v3    # "file":Ljava/io/File;
    .end local v4    # "nextAudio":Lorg/telegram/messenger/MessageObject;
    .end local v5    # "nextIndex":I
    :cond_4
    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->playlist:Ljava/util/ArrayList;

    goto :goto_1

    .line 2352
    .restart local v1    # "currentPlayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    .restart local v3    # "file":Ljava/io/File;
    .restart local v4    # "nextAudio":Lorg/telegram/messenger/MessageObject;
    .restart local v5    # "nextIndex":I
    :cond_5
    iget-object v7, v4, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v7}, Lorg/telegram/messenger/FileLoader;->getPathToMessage(Lorg/telegram/tgnet/TLRPC$Message;)Ljava/io/File;

    move-result-object v0

    goto :goto_2

    .restart local v0    # "cacheFile":Ljava/io/File;
    :cond_6
    move v2, v6

    .line 2353
    goto :goto_3
.end method

.method private checkIsNextVoiceFileDownloaded()V
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 2314
    iget-object v5, p0, Lorg/telegram/messenger/MediaController;->voiceMessagesPlaylist:Ljava/util/ArrayList;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lorg/telegram/messenger/MediaController;->voiceMessagesPlaylist:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x2

    if-ge v5, v6, :cond_1

    .line 2330
    :cond_0
    :goto_0
    return-void

    .line 2317
    :cond_1
    iget-object v5, p0, Lorg/telegram/messenger/MediaController;->voiceMessagesPlaylist:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/MessageObject;

    .line 2318
    .local v3, "nextAudio":Lorg/telegram/messenger/MessageObject;
    const/4 v2, 0x0

    .line 2319
    .local v2, "file":Ljava/io/File;
    iget-object v5, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    if-eqz v5, :cond_2

    iget-object v5, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_2

    .line 2320
    new-instance v2, Ljava/io/File;

    .end local v2    # "file":Ljava/io/File;
    iget-object v5, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2321
    .restart local v2    # "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_2

    .line 2322
    const/4 v2, 0x0

    .line 2325
    :cond_2
    if-eqz v2, :cond_3

    move-object v0, v2

    .line 2326
    .local v0, "cacheFile":Ljava/io/File;
    :goto_1
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2327
    .local v1, "exist":Z
    :goto_2
    if-eqz v0, :cond_0

    if-eq v0, v2, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 2328
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v5

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v6

    invoke-virtual {v5, v6, v4, v4}, Lorg/telegram/messenger/FileLoader;->loadFile(Lorg/telegram/tgnet/TLRPC$Document;ZI)V

    goto :goto_0

    .line 2325
    .end local v0    # "cacheFile":Ljava/io/File;
    .end local v1    # "exist":Z
    :cond_3
    iget-object v5, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v5}, Lorg/telegram/messenger/FileLoader;->getPathToMessage(Lorg/telegram/tgnet/TLRPC$Message;)Ljava/io/File;

    move-result-object v0

    goto :goto_1

    .restart local v0    # "cacheFile":Ljava/io/File;
    :cond_4
    move v1, v4

    .line 2326
    goto :goto_2
.end method

.method private checkPlayerQueue()V
    .locals 2

    .prologue
    .line 1596
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->playerQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MediaController$8;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/MediaController$8;-><init>(Lorg/telegram/messenger/MediaController;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 1656
    return-void
.end method

.method private checkScreenshots(Ljava/util/ArrayList;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "dates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/4 v12, 0x0

    const-wide/16 v10, 0x0

    .line 1276
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    iget-wide v6, p0, Lorg/telegram/messenger/MediaController;->lastChatEnterTime:J

    cmp-long v5, v6, v10

    if-eqz v5, :cond_0

    iget-object v5, p0, Lorg/telegram/messenger/MediaController;->lastUser:Lorg/telegram/tgnet/TLRPC$User;

    if-nez v5, :cond_1

    iget-object v5, p0, Lorg/telegram/messenger/MediaController;->lastSecretChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    instance-of v5, v5, Lorg/telegram/tgnet/TLRPC$TL_encryptedChat;

    if-nez v5, :cond_1

    .line 1301
    :cond_0
    :goto_0
    return-void

    .line 1279
    :cond_1
    const-wide/16 v2, 0x7d0

    .line 1280
    .local v2, "dt":J
    const/4 v4, 0x0

    .line 1281
    .local v4, "send":Z
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_5

    .line 1282
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 1283
    .local v1, "date":Ljava/lang/Long;
    iget-wide v6, p0, Lorg/telegram/messenger/MediaController;->lastMediaCheckTime:J

    cmp-long v5, v6, v10

    if-eqz v5, :cond_3

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iget-wide v8, p0, Lorg/telegram/messenger/MediaController;->lastMediaCheckTime:J

    cmp-long v5, v6, v8

    if-gtz v5, :cond_3

    .line 1281
    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1287
    :cond_3
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iget-wide v8, p0, Lorg/telegram/messenger/MediaController;->lastChatEnterTime:J

    cmp-long v5, v6, v8

    if-ltz v5, :cond_2

    .line 1288
    iget-wide v6, p0, Lorg/telegram/messenger/MediaController;->lastChatLeaveTime:J

    cmp-long v5, v6, v10

    if-eqz v5, :cond_4

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iget-wide v8, p0, Lorg/telegram/messenger/MediaController;->lastChatLeaveTime:J

    add-long/2addr v8, v2

    cmp-long v5, v6, v8

    if-gtz v5, :cond_2

    .line 1289
    :cond_4
    iget-wide v6, p0, Lorg/telegram/messenger/MediaController;->lastMediaCheckTime:J

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    iput-wide v6, p0, Lorg/telegram/messenger/MediaController;->lastMediaCheckTime:J

    .line 1290
    const/4 v4, 0x1

    goto :goto_2

    .line 1294
    .end local v1    # "date":Ljava/lang/Long;
    :cond_5
    if-eqz v4, :cond_0

    .line 1295
    iget-object v5, p0, Lorg/telegram/messenger/MediaController;->lastSecretChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    if-eqz v5, :cond_6

    .line 1296
    invoke-static {}, Lorg/telegram/messenger/SecretChatHelper;->getInstance()Lorg/telegram/messenger/SecretChatHelper;

    move-result-object v5

    iget-object v6, p0, Lorg/telegram/messenger/MediaController;->lastSecretChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget-object v7, p0, Lorg/telegram/messenger/MediaController;->lastChatVisibleMessages:Ljava/util/ArrayList;

    invoke-virtual {v5, v6, v7, v12}, Lorg/telegram/messenger/SecretChatHelper;->sendScreenshotMessage(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$Message;)V

    goto :goto_0

    .line 1298
    :cond_6
    invoke-static {}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance()Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v5

    iget-object v6, p0, Lorg/telegram/messenger/MediaController;->lastUser:Lorg/telegram/tgnet/TLRPC$User;

    iget v7, p0, Lorg/telegram/messenger/MediaController;->lastMessageId:I

    invoke-virtual {v5, v6, v7, v12}, Lorg/telegram/messenger/SendMessagesHelper;->sendScreenshotMessage(Lorg/telegram/tgnet/TLRPC$User;ILorg/telegram/tgnet/TLRPC$Message;)V

    goto :goto_0
.end method

.method private native closeOpusFile()V
.end method

.method private convertVideo(Lorg/telegram/messenger/MessageObject;)Z
    .locals 90
    .param p1, "messageObject"    # Lorg/telegram/messenger/MessageObject;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 4082
    move-object/from16 v0, p1

    iget-object v6, v0, Lorg/telegram/messenger/MessageObject;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iget-object v0, v6, Lorg/telegram/messenger/VideoEditedInfo;->originalPath:Ljava/lang/String;

    move-object/from16 v84, v0

    .line 4083
    .local v84, "videoPath":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v6, v0, Lorg/telegram/messenger/MessageObject;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iget-wide v0, v6, Lorg/telegram/messenger/VideoEditedInfo;->startTime:J

    move-wide/from16 v76, v0

    .line 4084
    .local v76, "startTime":J
    move-object/from16 v0, p1

    iget-object v6, v0, Lorg/telegram/messenger/MessageObject;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iget-wide v0, v6, Lorg/telegram/messenger/VideoEditedInfo;->endTime:J

    move-wide/from16 v18, v0

    .line 4085
    .local v18, "endTime":J
    move-object/from16 v0, p1

    iget-object v6, v0, Lorg/telegram/messenger/MessageObject;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iget v0, v6, Lorg/telegram/messenger/VideoEditedInfo;->resultWidth:I

    move/from16 v72, v0

    .line 4086
    .local v72, "resultWidth":I
    move-object/from16 v0, p1

    iget-object v6, v0, Lorg/telegram/messenger/MessageObject;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iget v0, v6, Lorg/telegram/messenger/VideoEditedInfo;->resultHeight:I

    move/from16 v70, v0

    .line 4087
    .local v70, "resultHeight":I
    move-object/from16 v0, p1

    iget-object v6, v0, Lorg/telegram/messenger/MessageObject;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iget v0, v6, Lorg/telegram/messenger/VideoEditedInfo;->rotationValue:I

    move/from16 v74, v0

    .line 4088
    .local v74, "rotationValue":I
    move-object/from16 v0, p1

    iget-object v6, v0, Lorg/telegram/messenger/MessageObject;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iget v0, v6, Lorg/telegram/messenger/VideoEditedInfo;->originalWidth:I

    move/from16 v61, v0

    .line 4089
    .local v61, "originalWidth":I
    move-object/from16 v0, p1

    iget-object v6, v0, Lorg/telegram/messenger/MessageObject;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iget v0, v6, Lorg/telegram/messenger/VideoEditedInfo;->originalHeight:I

    move/from16 v60, v0

    .line 4090
    .local v60, "originalHeight":I
    move-object/from16 v0, p1

    iget-object v6, v0, Lorg/telegram/messenger/MessageObject;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iget v0, v6, Lorg/telegram/messenger/VideoEditedInfo;->bitrate:I

    move/from16 v24, v0

    .line 4091
    .local v24, "bitrate":I
    const/16 v73, 0x0

    .line 4092
    .local v73, "rotateRender":I
    new-instance v20, Ljava/io/File;

    move-object/from16 v0, p1

    iget-object v6, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4094
    .local v20, "cacheFile":Ljava/io/File;
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x12

    if-ge v6, v10, :cond_2

    move/from16 v0, v70

    move/from16 v1, v72

    if-le v0, v1, :cond_2

    move/from16 v0, v72

    move/from16 v1, v61

    if-eq v0, v1, :cond_2

    move/from16 v0, v70

    move/from16 v1, v60

    if-eq v0, v1, :cond_2

    .line 4095
    move/from16 v79, v70

    .line 4096
    .local v79, "temp":I
    move/from16 v70, v72

    .line 4097
    move/from16 v72, v79

    .line 4098
    const/16 v74, 0x5a

    .line 4099
    const/16 v73, 0x10e

    .line 4119
    .end local v79    # "temp":I
    :cond_0
    :goto_0
    sget-object v6, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v10, "videoconvert"

    const/4 v11, 0x0

    invoke-virtual {v6, v10, v11}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v68

    .line 4120
    .local v68, "preferences":Landroid/content/SharedPreferences;
    new-instance v51, Ljava/io/File;

    move-object/from16 v0, v51

    move-object/from16 v1, v84

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4121
    .local v51, "inputFile":Ljava/io/File;
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v6

    if-eqz v6, :cond_5

    .line 4122
    const-string/jumbo v6, "isPreviousOk"

    const/4 v10, 0x1

    move-object/from16 v0, v68

    invoke-interface {v0, v6, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v55

    .line 4123
    .local v55, "isPreviousOk":Z
    invoke-interface/range {v68 .. v68}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string/jumbo v10, "isPreviousOk"

    const/4 v11, 0x0

    invoke-interface {v6, v10, v11}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 4124
    invoke-virtual/range {v51 .. v51}, Ljava/io/File;->canRead()Z

    move-result v6

    if-eqz v6, :cond_1

    if-nez v55, :cond_5

    .line 4125
    :cond_1
    const/4 v6, 0x1

    const/4 v10, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2, v6, v10}, Lorg/telegram/messenger/MediaController;->didWriteData(Lorg/telegram/messenger/MessageObject;Ljava/io/File;ZZ)V

    .line 4126
    invoke-interface/range {v68 .. v68}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string/jumbo v10, "isPreviousOk"

    const/4 v11, 0x1

    invoke-interface {v6, v10, v11}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 4127
    const/4 v6, 0x0

    .line 4521
    .end local v55    # "isPreviousOk":Z
    :goto_1
    return v6

    .line 4100
    .end local v51    # "inputFile":Ljava/io/File;
    .end local v68    # "preferences":Landroid/content/SharedPreferences;
    :cond_2
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x14

    if-le v6, v10, :cond_0

    .line 4101
    const/16 v6, 0x5a

    move/from16 v0, v74

    if-ne v0, v6, :cond_3

    .line 4102
    move/from16 v79, v70

    .line 4103
    .restart local v79    # "temp":I
    move/from16 v70, v72

    .line 4104
    move/from16 v72, v79

    .line 4105
    const/16 v74, 0x0

    .line 4106
    const/16 v73, 0x10e

    .line 4107
    goto :goto_0

    .end local v79    # "temp":I
    :cond_3
    const/16 v6, 0xb4

    move/from16 v0, v74

    if-ne v0, v6, :cond_4

    .line 4108
    const/16 v73, 0xb4

    .line 4109
    const/16 v74, 0x0

    goto :goto_0

    .line 4110
    :cond_4
    const/16 v6, 0x10e

    move/from16 v0, v74

    if-ne v0, v6, :cond_0

    .line 4111
    move/from16 v79, v70

    .line 4112
    .restart local v79    # "temp":I
    move/from16 v70, v72

    .line 4113
    move/from16 v72, v79

    .line 4114
    const/16 v74, 0x0

    .line 4115
    const/16 v73, 0x5a

    goto/16 :goto_0

    .line 4131
    .end local v79    # "temp":I
    .restart local v51    # "inputFile":Ljava/io/File;
    .restart local v68    # "preferences":Landroid/content/SharedPreferences;
    :cond_5
    const/4 v6, 0x1

    move-object/from16 v0, p0

    iput-boolean v6, v0, Lorg/telegram/messenger/MediaController;->videoConvertFirstWrite:Z

    .line 4132
    const/16 v43, 0x0

    .line 4133
    .local v43, "error":Z
    move-wide/from16 v86, v76

    .line 4135
    .local v86, "videoStartTime":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v80

    .line 4137
    .local v80, "time":J
    if-eqz v72, :cond_49

    if-eqz v70, :cond_49

    .line 4138
    const/16 v57, 0x0

    .line 4139
    .local v57, "mediaMuxer":Lorg/telegram/messenger/video/MP4Builder;
    const/16 v45, 0x0

    .line 4142
    .local v45, "extractor":Landroid/media/MediaExtractor;
    :try_start_0
    new-instance v48, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct/range {v48 .. v48}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 4143
    .local v48, "info":Landroid/media/MediaCodec$BufferInfo;
    new-instance v58, Lorg/telegram/messenger/video/Mp4Movie;

    invoke-direct/range {v58 .. v58}, Lorg/telegram/messenger/video/Mp4Movie;-><init>()V

    .line 4144
    .local v58, "movie":Lorg/telegram/messenger/video/Mp4Movie;
    move-object/from16 v0, v58

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/video/Mp4Movie;->setCacheFile(Ljava/io/File;)V

    .line 4145
    move-object/from16 v0, v58

    move/from16 v1, v74

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/video/Mp4Movie;->setRotation(I)V

    .line 4146
    move-object/from16 v0, v58

    move/from16 v1, v72

    move/from16 v2, v70

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/video/Mp4Movie;->setSize(II)V

    .line 4147
    new-instance v6, Lorg/telegram/messenger/video/MP4Builder;

    invoke-direct {v6}, Lorg/telegram/messenger/video/MP4Builder;-><init>()V

    move-object/from16 v0, v58

    invoke-virtual {v6, v0}, Lorg/telegram/messenger/video/MP4Builder;->createMovie(Lorg/telegram/messenger/video/Mp4Movie;)Lorg/telegram/messenger/video/MP4Builder;

    move-result-object v57

    .line 4148
    new-instance v46, Landroid/media/MediaExtractor;

    invoke-direct/range {v46 .. v46}, Landroid/media/MediaExtractor;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4149
    .end local v45    # "extractor":Landroid/media/MediaExtractor;
    .local v46, "extractor":Landroid/media/MediaExtractor;
    :try_start_1
    move-object/from16 v0, v46

    move-object/from16 v1, v84

    invoke-virtual {v0, v1}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;)V

    .line 4151
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/MediaController;->checkConversionCanceled()V

    .line 4153
    move/from16 v0, v72

    move/from16 v1, v61

    if-ne v0, v1, :cond_6

    move/from16 v0, v70

    move/from16 v1, v60

    if-ne v0, v1, :cond_6

    if-nez v73, :cond_6

    move-object/from16 v0, p1

    iget-object v6, v0, Lorg/telegram/messenger/MessageObject;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iget-boolean v6, v6, Lorg/telegram/messenger/VideoEditedInfo;->roundVideo:Z

    if-nez v6, :cond_6

    invoke-virtual/range {v51 .. v51}, Ljava/io/File;->length()J

    move-result-wide v10

    move-object/from16 v0, p1

    iget-object v6, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$Document;->size:I

    int-to-long v12, v6

    sub-long/2addr v10, v12

    const-wide/16 v12, 0x5

    cmp-long v6, v10, v12

    if-lez v6, :cond_46

    .line 4155
    :cond_6
    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-direct {v0, v1, v6}, Lorg/telegram/messenger/MediaController;->selectTrack(Landroid/media/MediaExtractor;Z)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v83

    .line 4156
    .local v83, "videoIndex":I
    if-ltz v83, :cond_4a

    .line 4157
    const/4 v4, 0x0

    .line 4158
    .local v4, "decoder":Landroid/media/MediaCodec;
    const/16 v37, 0x0

    .line 4159
    .local v37, "encoder":Landroid/media/MediaCodec;
    const/16 v53, 0x0

    .line 4160
    .local v53, "inputSurface":Lorg/telegram/messenger/video/InputSurface;
    const/16 v64, 0x0

    .line 4163
    .local v64, "outputSurface":Lorg/telegram/messenger/video/OutputSurface;
    const-wide/16 v88, -0x1

    .line 4164
    .local v88, "videoTime":J
    const/16 v62, 0x0

    .line 4165
    .local v62, "outputDone":Z
    const/16 v50, 0x0

    .line 4166
    .local v50, "inputDone":Z
    const/16 v30, 0x0

    .line 4167
    .local v30, "decoderDone":Z
    const/16 v78, 0x0

    .line 4168
    .local v78, "swapUV":I
    const/16 v85, -0x5

    .line 4171
    .local v85, "videoTrackIndex":I
    const/16 v69, 0x0

    .line 4172
    .local v69, "processorType":I
    :try_start_2
    sget-object v6, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v56

    .line 4173
    .local v56, "manufacturer":Ljava/lang/String;
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x12

    if-ge v6, v10, :cond_1f

    .line 4174
    const-string/jumbo v6, "video/avc"

    invoke-static {v6}, Lorg/telegram/messenger/MediaController;->selectCodec(Ljava/lang/String;)Landroid/media/MediaCodecInfo;

    move-result-object v26

    .line 4175
    .local v26, "codecInfo":Landroid/media/MediaCodecInfo;
    const-string/jumbo v6, "video/avc"

    move-object/from16 v0, v26

    invoke-static {v0, v6}, Lorg/telegram/messenger/MediaController;->selectColorFormat(Landroid/media/MediaCodecInfo;Ljava/lang/String;)I

    move-result v28

    .line 4176
    .local v28, "colorFormat":I
    if-nez v28, :cond_e

    .line 4177
    new-instance v6, Ljava/lang/RuntimeException;

    const-string/jumbo v10, "no supported color format"

    invoke-direct {v6, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4465
    .end local v26    # "codecInfo":Landroid/media/MediaCodecInfo;
    .end local v28    # "colorFormat":I
    .end local v56    # "manufacturer":Ljava/lang/String;
    :catch_0
    move-exception v35

    .line 4466
    .local v35, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_3
    invoke-static/range {v35 .. v35}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 4467
    const/16 v43, 0x1

    move-wide/from16 v16, v86

    .line 4470
    .end local v35    # "e":Ljava/lang/Exception;
    .end local v86    # "videoStartTime":J
    .local v16, "videoStartTime":J
    :goto_3
    :try_start_4
    move-object/from16 v0, v46

    move/from16 v1, v83

    invoke-virtual {v0, v1}, Landroid/media/MediaExtractor;->unselectTrack(I)V

    .line 4472
    if-eqz v64, :cond_7

    .line 4473
    invoke-virtual/range {v64 .. v64}, Lorg/telegram/messenger/video/OutputSurface;->release()V

    .line 4475
    :cond_7
    if-eqz v53, :cond_8

    .line 4476
    invoke-virtual/range {v53 .. v53}, Lorg/telegram/messenger/video/InputSurface;->release()V

    .line 4478
    :cond_8
    if-eqz v4, :cond_9

    .line 4479
    invoke-virtual {v4}, Landroid/media/MediaCodec;->stop()V

    .line 4480
    invoke-virtual {v4}, Landroid/media/MediaCodec;->release()V

    .line 4482
    :cond_9
    if-eqz v37, :cond_a

    .line 4483
    invoke-virtual/range {v37 .. v37}, Landroid/media/MediaCodec;->stop()V

    .line 4484
    invoke-virtual/range {v37 .. v37}, Landroid/media/MediaCodec;->release()V

    .line 4487
    :cond_a
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/MediaController;->checkConversionCanceled()V

    .line 4495
    .end local v4    # "decoder":Landroid/media/MediaCodec;
    .end local v30    # "decoderDone":Z
    .end local v37    # "encoder":Landroid/media/MediaCodec;
    .end local v50    # "inputDone":Z
    .end local v53    # "inputSurface":Lorg/telegram/messenger/video/InputSurface;
    .end local v62    # "outputDone":Z
    .end local v64    # "outputSurface":Lorg/telegram/messenger/video/OutputSurface;
    .end local v69    # "processorType":I
    .end local v78    # "swapUV":I
    .end local v83    # "videoIndex":I
    .end local v85    # "videoTrackIndex":I
    .end local v88    # "videoTime":J
    :goto_4
    if-nez v43, :cond_b

    const/4 v6, -0x1

    move/from16 v0, v24

    if-eq v0, v6, :cond_b

    .line 4496
    const/16 v21, 0x1

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-object/from16 v13, v46

    move-object/from16 v14, v57

    move-object/from16 v15, v48

    invoke-direct/range {v11 .. v21}, Lorg/telegram/messenger/MediaController;->readAndWriteTrack(Lorg/telegram/messenger/MessageObject;Landroid/media/MediaExtractor;Lorg/telegram/messenger/video/MP4Builder;Landroid/media/MediaCodec$BufferInfo;JJLjava/io/File;Z)J
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_7
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 4502
    :cond_b
    if-eqz v46, :cond_c

    .line 4503
    invoke-virtual/range {v46 .. v46}, Landroid/media/MediaExtractor;->release()V

    .line 4505
    :cond_c
    if-eqz v57, :cond_d

    .line 4507
    :try_start_5
    invoke-virtual/range {v57 .. v57}, Lorg/telegram/messenger/video/MP4Builder;->finishMovie()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 4512
    :cond_d
    :goto_5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "time = "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long v10, v10, v80

    invoke-virtual {v6, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    move-object/from16 v45, v46

    .line 4519
    .end local v46    # "extractor":Landroid/media/MediaExtractor;
    .end local v48    # "info":Landroid/media/MediaCodec$BufferInfo;
    .end local v58    # "movie":Lorg/telegram/messenger/video/Mp4Movie;
    .restart local v45    # "extractor":Landroid/media/MediaExtractor;
    :goto_6
    invoke-interface/range {v68 .. v68}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string/jumbo v10, "isPreviousOk"

    const/4 v11, 0x1

    invoke-interface {v6, v10, v11}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 4520
    const/4 v6, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    move/from16 v3, v43

    invoke-direct {v0, v1, v2, v6, v3}, Lorg/telegram/messenger/MediaController;->didWriteData(Lorg/telegram/messenger/MessageObject;Ljava/io/File;ZZ)V

    .line 4521
    const/4 v6, 0x1

    goto/16 :goto_1

    .line 4179
    .end local v16    # "videoStartTime":J
    .end local v45    # "extractor":Landroid/media/MediaExtractor;
    .restart local v4    # "decoder":Landroid/media/MediaCodec;
    .restart local v26    # "codecInfo":Landroid/media/MediaCodecInfo;
    .restart local v28    # "colorFormat":I
    .restart local v30    # "decoderDone":Z
    .restart local v37    # "encoder":Landroid/media/MediaCodec;
    .restart local v46    # "extractor":Landroid/media/MediaExtractor;
    .restart local v48    # "info":Landroid/media/MediaCodec$BufferInfo;
    .restart local v50    # "inputDone":Z
    .restart local v53    # "inputSurface":Lorg/telegram/messenger/video/InputSurface;
    .restart local v56    # "manufacturer":Ljava/lang/String;
    .restart local v58    # "movie":Lorg/telegram/messenger/video/Mp4Movie;
    .restart local v62    # "outputDone":Z
    .restart local v64    # "outputSurface":Lorg/telegram/messenger/video/OutputSurface;
    .restart local v69    # "processorType":I
    .restart local v78    # "swapUV":I
    .restart local v83    # "videoIndex":I
    .restart local v85    # "videoTrackIndex":I
    .restart local v86    # "videoStartTime":J
    .restart local v88    # "videoTime":J
    :cond_e
    :try_start_6
    invoke-virtual/range {v26 .. v26}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v27

    .line 4180
    .local v27, "codecName":Ljava/lang/String;
    const-string/jumbo v6, "OMX.qcom."

    move-object/from16 v0, v27

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1b

    .line 4181
    const/16 v69, 0x1

    .line 4182
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x10

    if-ne v6, v10, :cond_10

    .line 4183
    const-string/jumbo v6, "lge"

    move-object/from16 v0, v56

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_f

    const-string/jumbo v6, "nokia"

    move-object/from16 v0, v56

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 4184
    :cond_f
    const/16 v78, 0x1

    .line 4197
    :cond_10
    :goto_7
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "codec = "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v26 .. v26}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v10, " manufacturer = "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v56

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v10, "device = "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v10, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 4201
    .end local v26    # "codecInfo":Landroid/media/MediaCodecInfo;
    .end local v27    # "codecName":Ljava/lang/String;
    :goto_8
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "colorFormat = "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v28

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 4203
    move/from16 v71, v70

    .line 4204
    .local v71, "resultHeightAligned":I
    const/16 v66, 0x0

    .line 4205
    .local v66, "padding":I
    mul-int v6, v72, v70

    mul-int/lit8 v6, v6, 0x3

    div-int/lit8 v25, v6, 0x2

    .line 4206
    .local v25, "bufferSize":I
    if-nez v69, :cond_20

    .line 4207
    rem-int/lit8 v6, v70, 0x10

    if-eqz v6, :cond_11

    .line 4208
    rem-int/lit8 v6, v70, 0x10

    rsub-int/lit8 v6, v6, 0x10

    add-int v71, v71, v6

    .line 4209
    sub-int v6, v71, v70

    mul-int v66, v72, v6

    .line 4210
    mul-int/lit8 v6, v66, 0x5

    div-int/lit8 v6, v6, 0x4

    add-int v25, v25, v6

    .line 4232
    :cond_11
    :goto_9
    move-object/from16 v0, v46

    move/from16 v1, v83

    invoke-virtual {v0, v1}, Landroid/media/MediaExtractor;->selectTrack(I)V

    .line 4233
    const-wide/16 v10, 0x0

    cmp-long v6, v76, v10

    if-lez v6, :cond_22

    .line 4234
    const/4 v6, 0x0

    move-object/from16 v0, v46

    move-wide/from16 v1, v76

    invoke-virtual {v0, v1, v2, v6}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 4238
    :goto_a
    move-object/from16 v0, v46

    move/from16 v1, v83

    invoke-virtual {v0, v1}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v52

    .line 4240
    .local v52, "inputFormat":Landroid/media/MediaFormat;
    const-string/jumbo v6, "video/avc"

    move/from16 v0, v72

    move/from16 v1, v70

    invoke-static {v6, v0, v1}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v63

    .line 4241
    .local v63, "outputFormat":Landroid/media/MediaFormat;
    const-string/jumbo v6, "color-format"

    move-object/from16 v0, v63

    move/from16 v1, v28

    invoke-virtual {v0, v6, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 4242
    const-string/jumbo v10, "bitrate"

    if-lez v24, :cond_25

    move/from16 v6, v24

    :goto_b
    move-object/from16 v0, v63

    invoke-virtual {v0, v10, v6}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 4243
    const-string/jumbo v6, "frame-rate"

    const/16 v10, 0x19

    move-object/from16 v0, v63

    invoke-virtual {v0, v6, v10}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 4244
    const-string/jumbo v6, "i-frame-interval"

    const/16 v10, 0xa

    move-object/from16 v0, v63

    invoke-virtual {v0, v6, v10}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 4245
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x12

    if-ge v6, v10, :cond_12

    .line 4246
    const-string/jumbo v6, "stride"

    add-int/lit8 v10, v72, 0x20

    move-object/from16 v0, v63

    invoke-virtual {v0, v6, v10}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 4247
    const-string/jumbo v6, "slice-height"

    move-object/from16 v0, v63

    move/from16 v1, v70

    invoke-virtual {v0, v6, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 4250
    :cond_12
    const-string/jumbo v6, "video/avc"

    invoke-static {v6}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v37

    .line 4251
    const/4 v6, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    move-object/from16 v0, v37

    move-object/from16 v1, v63

    invoke-virtual {v0, v1, v6, v10, v11}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 4252
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x12

    if-lt v6, v10, :cond_13

    .line 4253
    new-instance v54, Lorg/telegram/messenger/video/InputSurface;

    invoke-virtual/range {v37 .. v37}, Landroid/media/MediaCodec;->createInputSurface()Landroid/view/Surface;

    move-result-object v6

    move-object/from16 v0, v54

    invoke-direct {v0, v6}, Lorg/telegram/messenger/video/InputSurface;-><init>(Landroid/view/Surface;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 4254
    .end local v53    # "inputSurface":Lorg/telegram/messenger/video/InputSurface;
    .local v54, "inputSurface":Lorg/telegram/messenger/video/InputSurface;
    :try_start_7
    invoke-virtual/range {v54 .. v54}, Lorg/telegram/messenger/video/InputSurface;->makeCurrent()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_8
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-object/from16 v53, v54

    .line 4256
    .end local v54    # "inputSurface":Lorg/telegram/messenger/video/InputSurface;
    .restart local v53    # "inputSurface":Lorg/telegram/messenger/video/InputSurface;
    :cond_13
    :try_start_8
    invoke-virtual/range {v37 .. v37}, Landroid/media/MediaCodec;->start()V

    .line 4258
    const-string/jumbo v6, "mime"

    move-object/from16 v0, v52

    invoke-virtual {v0, v6}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v4

    .line 4259
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x12

    if-lt v6, v10, :cond_26

    .line 4260
    new-instance v65, Lorg/telegram/messenger/video/OutputSurface;

    invoke-direct/range {v65 .. v65}, Lorg/telegram/messenger/video/OutputSurface;-><init>()V

    .end local v64    # "outputSurface":Lorg/telegram/messenger/video/OutputSurface;
    .local v65, "outputSurface":Lorg/telegram/messenger/video/OutputSurface;
    move-object/from16 v64, v65

    .line 4264
    .end local v65    # "outputSurface":Lorg/telegram/messenger/video/OutputSurface;
    .restart local v64    # "outputSurface":Lorg/telegram/messenger/video/OutputSurface;
    :goto_c
    invoke-virtual/range {v64 .. v64}, Lorg/telegram/messenger/video/OutputSurface;->getSurface()Landroid/view/Surface;

    move-result-object v6

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, v52

    invoke-virtual {v4, v0, v6, v10, v11}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 4265
    invoke-virtual {v4}, Landroid/media/MediaCodec;->start()V

    .line 4267
    const/16 v22, 0x9c4

    .line 4268
    .local v22, "TIMEOUT_USEC":I
    const/16 v31, 0x0

    .line 4269
    .local v31, "decoderInputBuffers":[Ljava/nio/ByteBuffer;
    const/16 v40, 0x0

    .line 4270
    .local v40, "encoderOutputBuffers":[Ljava/nio/ByteBuffer;
    const/16 v38, 0x0

    .line 4271
    .local v38, "encoderInputBuffers":[Ljava/nio/ByteBuffer;
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x15

    if-ge v6, v10, :cond_14

    .line 4272
    invoke-virtual {v4}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v31

    .line 4273
    invoke-virtual/range {v37 .. v37}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v40

    .line 4274
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x12

    if-ge v6, v10, :cond_14

    .line 4275
    invoke-virtual/range {v37 .. v37}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v38

    .line 4279
    :cond_14
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/MediaController;->checkConversionCanceled()V

    .line 4281
    :cond_15
    if-nez v62, :cond_45

    .line 4282
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/MediaController;->checkConversionCanceled()V

    .line 4283
    if-nez v50, :cond_17

    .line 4284
    const/16 v42, 0x0

    .line 4285
    .local v42, "eof":Z
    invoke-virtual/range {v46 .. v46}, Landroid/media/MediaExtractor;->getSampleTrackIndex()I

    move-result v47

    .line 4286
    .local v47, "index":I
    move/from16 v0, v47

    move/from16 v1, v83

    if-ne v0, v1, :cond_29

    .line 4287
    const-wide/16 v10, 0x9c4

    invoke-virtual {v4, v10, v11}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v5

    .line 4288
    .local v5, "inputBufIndex":I
    if-ltz v5, :cond_16

    .line 4290
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x15

    if-ge v6, v10, :cond_27

    .line 4291
    aget-object v49, v31, v5

    .line 4295
    .local v49, "inputBuf":Ljava/nio/ByteBuffer;
    :goto_d
    const/4 v6, 0x0

    move-object/from16 v0, v46

    move-object/from16 v1, v49

    invoke-virtual {v0, v1, v6}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v7

    .line 4296
    .local v7, "chunkSize":I
    if-gez v7, :cond_28

    .line 4297
    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x4

    invoke-virtual/range {v4 .. v10}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 4298
    .end local v7    # "chunkSize":I
    const/16 v50, 0x1

    .line 4307
    .end local v5    # "inputBufIndex":I
    .end local v49    # "inputBuf":Ljava/nio/ByteBuffer;
    :cond_16
    :goto_e
    if-eqz v42, :cond_17

    .line 4308
    const-wide/16 v10, 0x9c4

    invoke-virtual {v4, v10, v11}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v5

    .line 4309
    .restart local v5    # "inputBufIndex":I
    if-ltz v5, :cond_17

    .line 4310
    const/4 v10, 0x0

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    const/4 v14, 0x4

    move-object v8, v4

    move v9, v5

    invoke-virtual/range {v8 .. v14}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 4311
    const/16 v50, 0x1

    .line 4316
    .end local v5    # "inputBufIndex":I
    .end local v42    # "eof":Z
    .end local v47    # "index":I
    :cond_17
    if-nez v30, :cond_2a

    const/16 v32, 0x1

    .line 4317
    .local v32, "decoderOutputAvailable":Z
    :goto_f
    const/16 v39, 0x1

    .line 4318
    .local v39, "encoderOutputAvailable":Z
    :cond_18
    :goto_10
    if-nez v32, :cond_19

    if-eqz v39, :cond_15

    .line 4319
    :cond_19
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/MediaController;->checkConversionCanceled()V

    .line 4320
    const-wide/16 v10, 0x9c4

    move-object/from16 v0, v37

    move-object/from16 v1, v48

    invoke-virtual {v0, v1, v10, v11}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v41

    .line 4321
    .local v41, "encoderStatus":I
    const/4 v6, -0x1

    move/from16 v0, v41

    if-ne v0, v6, :cond_2b

    .line 4322
    const/16 v39, 0x0

    .line 4381
    :cond_1a
    :goto_11
    const/4 v6, -0x1

    move/from16 v0, v41

    if-ne v0, v6, :cond_18

    .line 4385
    if-nez v30, :cond_18

    .line 4386
    const-wide/16 v10, 0x9c4

    move-object/from16 v0, v48

    invoke-virtual {v4, v0, v10, v11}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v33

    .line 4387
    .local v33, "decoderStatus":I
    const/4 v6, -0x1

    move/from16 v0, v33

    if-ne v0, v6, :cond_37

    .line 4388
    const/16 v32, 0x0

    goto :goto_10

    .line 4187
    .end local v22    # "TIMEOUT_USEC":I
    .end local v25    # "bufferSize":I
    .end local v31    # "decoderInputBuffers":[Ljava/nio/ByteBuffer;
    .end local v32    # "decoderOutputAvailable":Z
    .end local v33    # "decoderStatus":I
    .end local v38    # "encoderInputBuffers":[Ljava/nio/ByteBuffer;
    .end local v39    # "encoderOutputAvailable":Z
    .end local v40    # "encoderOutputBuffers":[Ljava/nio/ByteBuffer;
    .end local v41    # "encoderStatus":I
    .end local v52    # "inputFormat":Landroid/media/MediaFormat;
    .end local v63    # "outputFormat":Landroid/media/MediaFormat;
    .end local v66    # "padding":I
    .end local v71    # "resultHeightAligned":I
    .restart local v26    # "codecInfo":Landroid/media/MediaCodecInfo;
    .restart local v27    # "codecName":Ljava/lang/String;
    :cond_1b
    const-string/jumbo v6, "OMX.Intel."

    move-object/from16 v0, v27

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1c

    .line 4188
    const/16 v69, 0x2

    goto/16 :goto_7

    .line 4189
    :cond_1c
    const-string/jumbo v6, "OMX.MTK.VIDEO.ENCODER.AVC"

    move-object/from16 v0, v27

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1d

    .line 4190
    const/16 v69, 0x3

    goto/16 :goto_7

    .line 4191
    :cond_1d
    const-string/jumbo v6, "OMX.SEC.AVC.Encoder"

    move-object/from16 v0, v27

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1e

    .line 4192
    const/16 v69, 0x4

    .line 4193
    const/16 v78, 0x1

    goto/16 :goto_7

    .line 4194
    :cond_1e
    const-string/jumbo v6, "OMX.TI.DUCATI1.VIDEO.H264E"

    move-object/from16 v0, v27

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 4195
    const/16 v69, 0x5

    goto/16 :goto_7

    .line 4199
    .end local v26    # "codecInfo":Landroid/media/MediaCodecInfo;
    .end local v27    # "codecName":Ljava/lang/String;
    .end local v28    # "colorFormat":I
    :cond_1f
    const v28, 0x7f000789

    .restart local v28    # "colorFormat":I
    goto/16 :goto_8

    .line 4212
    .restart local v25    # "bufferSize":I
    .restart local v66    # "padding":I
    .restart local v71    # "resultHeightAligned":I
    :cond_20
    const/4 v6, 0x1

    move/from16 v0, v69

    if-ne v0, v6, :cond_21

    .line 4213
    invoke-virtual/range {v56 .. v56}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v10, "lge"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_11

    .line 4214
    mul-int v6, v72, v70

    add-int/lit16 v6, v6, 0x7ff

    and-int/lit16 v0, v6, -0x800

    move/from16 v82, v0

    .line 4215
    .local v82, "uvoffset":I
    mul-int v6, v72, v70

    sub-int v66, v82, v6

    .line 4216
    add-int v25, v25, v66

    .line 4217
    goto/16 :goto_9

    .line 4218
    .end local v82    # "uvoffset":I
    :cond_21
    const/4 v6, 0x5

    move/from16 v0, v69

    if-eq v0, v6, :cond_11

    .line 4224
    const/4 v6, 0x3

    move/from16 v0, v69

    if-ne v0, v6, :cond_11

    .line 4225
    const-string/jumbo v6, "baidu"

    move-object/from16 v0, v56

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 4226
    rem-int/lit8 v6, v70, 0x10

    rsub-int/lit8 v6, v6, 0x10

    add-int v71, v71, v6

    .line 4227
    sub-int v6, v71, v70

    mul-int v66, v72, v6

    .line 4228
    mul-int/lit8 v6, v66, 0x5

    div-int/lit8 v6, v6, 0x4

    add-int v25, v25, v6

    goto/16 :goto_9

    .line 4236
    :cond_22
    const-wide/16 v10, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v46

    invoke-virtual {v0, v10, v11, v6}, Landroid/media/MediaExtractor;->seekTo(JI)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_a

    .line 4502
    .end local v4    # "decoder":Landroid/media/MediaCodec;
    .end local v25    # "bufferSize":I
    .end local v28    # "colorFormat":I
    .end local v30    # "decoderDone":Z
    .end local v37    # "encoder":Landroid/media/MediaCodec;
    .end local v50    # "inputDone":Z
    .end local v53    # "inputSurface":Lorg/telegram/messenger/video/InputSurface;
    .end local v56    # "manufacturer":Ljava/lang/String;
    .end local v62    # "outputDone":Z
    .end local v64    # "outputSurface":Lorg/telegram/messenger/video/OutputSurface;
    .end local v66    # "padding":I
    .end local v69    # "processorType":I
    .end local v71    # "resultHeightAligned":I
    .end local v78    # "swapUV":I
    .end local v83    # "videoIndex":I
    .end local v85    # "videoTrackIndex":I
    .end local v88    # "videoTime":J
    :catchall_0
    move-exception v6

    move-object/from16 v45, v46

    .end local v46    # "extractor":Landroid/media/MediaExtractor;
    .restart local v45    # "extractor":Landroid/media/MediaExtractor;
    move-wide/from16 v16, v86

    .end local v48    # "info":Landroid/media/MediaCodec$BufferInfo;
    .end local v58    # "movie":Lorg/telegram/messenger/video/Mp4Movie;
    .end local v86    # "videoStartTime":J
    .restart local v16    # "videoStartTime":J
    :goto_12
    if-eqz v45, :cond_23

    .line 4503
    invoke-virtual/range {v45 .. v45}, Landroid/media/MediaExtractor;->release()V

    .line 4505
    :cond_23
    if-eqz v57, :cond_24

    .line 4507
    :try_start_9
    invoke-virtual/range {v57 .. v57}, Lorg/telegram/messenger/video/MP4Builder;->finishMovie()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    .line 4512
    :cond_24
    :goto_13
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "time = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long v12, v12, v80

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    throw v6

    .line 4242
    .end local v16    # "videoStartTime":J
    .end local v45    # "extractor":Landroid/media/MediaExtractor;
    .restart local v4    # "decoder":Landroid/media/MediaCodec;
    .restart local v25    # "bufferSize":I
    .restart local v28    # "colorFormat":I
    .restart local v30    # "decoderDone":Z
    .restart local v37    # "encoder":Landroid/media/MediaCodec;
    .restart local v46    # "extractor":Landroid/media/MediaExtractor;
    .restart local v48    # "info":Landroid/media/MediaCodec$BufferInfo;
    .restart local v50    # "inputDone":Z
    .restart local v52    # "inputFormat":Landroid/media/MediaFormat;
    .restart local v53    # "inputSurface":Lorg/telegram/messenger/video/InputSurface;
    .restart local v56    # "manufacturer":Ljava/lang/String;
    .restart local v58    # "movie":Lorg/telegram/messenger/video/Mp4Movie;
    .restart local v62    # "outputDone":Z
    .restart local v63    # "outputFormat":Landroid/media/MediaFormat;
    .restart local v64    # "outputSurface":Lorg/telegram/messenger/video/OutputSurface;
    .restart local v66    # "padding":I
    .restart local v69    # "processorType":I
    .restart local v71    # "resultHeightAligned":I
    .restart local v78    # "swapUV":I
    .restart local v83    # "videoIndex":I
    .restart local v85    # "videoTrackIndex":I
    .restart local v86    # "videoStartTime":J
    .restart local v88    # "videoTime":J
    :cond_25
    const v6, 0xe1000

    goto/16 :goto_b

    .line 4262
    :cond_26
    :try_start_a
    new-instance v65, Lorg/telegram/messenger/video/OutputSurface;

    move-object/from16 v0, v65

    move/from16 v1, v72

    move/from16 v2, v70

    move/from16 v3, v73

    invoke-direct {v0, v1, v2, v3}, Lorg/telegram/messenger/video/OutputSurface;-><init>(III)V

    .end local v64    # "outputSurface":Lorg/telegram/messenger/video/OutputSurface;
    .restart local v65    # "outputSurface":Lorg/telegram/messenger/video/OutputSurface;
    move-object/from16 v64, v65

    .end local v65    # "outputSurface":Lorg/telegram/messenger/video/OutputSurface;
    .restart local v64    # "outputSurface":Lorg/telegram/messenger/video/OutputSurface;
    goto/16 :goto_c

    .line 4293
    .restart local v5    # "inputBufIndex":I
    .restart local v22    # "TIMEOUT_USEC":I
    .restart local v31    # "decoderInputBuffers":[Ljava/nio/ByteBuffer;
    .restart local v38    # "encoderInputBuffers":[Ljava/nio/ByteBuffer;
    .restart local v40    # "encoderOutputBuffers":[Ljava/nio/ByteBuffer;
    .restart local v42    # "eof":Z
    .restart local v47    # "index":I
    :cond_27
    invoke-virtual {v4, v5}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v49

    .restart local v49    # "inputBuf":Ljava/nio/ByteBuffer;
    goto/16 :goto_d

    .line 4300
    .restart local v7    # "chunkSize":I
    :cond_28
    const/4 v6, 0x0

    invoke-virtual/range {v46 .. v46}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v8

    const/4 v10, 0x0

    invoke-virtual/range {v4 .. v10}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 4301
    invoke-virtual/range {v46 .. v46}, Landroid/media/MediaExtractor;->advance()Z

    goto/16 :goto_e

    .line 4304
    .end local v5    # "inputBufIndex":I
    .end local v7    # "chunkSize":I
    .end local v49    # "inputBuf":Ljava/nio/ByteBuffer;
    :cond_29
    const/4 v6, -0x1

    move/from16 v0, v47

    if-ne v0, v6, :cond_16

    .line 4305
    const/16 v42, 0x1

    goto/16 :goto_e

    .line 4316
    .end local v42    # "eof":Z
    .end local v47    # "index":I
    :cond_2a
    const/16 v32, 0x0

    goto/16 :goto_f

    .line 4323
    .restart local v32    # "decoderOutputAvailable":Z
    .restart local v39    # "encoderOutputAvailable":Z
    .restart local v41    # "encoderStatus":I
    :cond_2b
    const/4 v6, -0x3

    move/from16 v0, v41

    if-ne v0, v6, :cond_2c

    .line 4324
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x15

    if-ge v6, v10, :cond_1a

    .line 4325
    invoke-virtual/range {v37 .. v37}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v40

    goto/16 :goto_11

    .line 4327
    :cond_2c
    const/4 v6, -0x2

    move/from16 v0, v41

    if-ne v0, v6, :cond_2d

    .line 4328
    invoke-virtual/range {v37 .. v37}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v59

    .line 4329
    .local v59, "newFormat":Landroid/media/MediaFormat;
    const/4 v6, -0x5

    move/from16 v0, v85

    if-ne v0, v6, :cond_1a

    .line 4330
    const/4 v6, 0x0

    move-object/from16 v0, v57

    move-object/from16 v1, v59

    invoke-virtual {v0, v1, v6}, Lorg/telegram/messenger/video/MP4Builder;->addTrack(Landroid/media/MediaFormat;Z)I

    move-result v85

    goto/16 :goto_11

    .line 4332
    .end local v59    # "newFormat":Landroid/media/MediaFormat;
    :cond_2d
    if-gez v41, :cond_2e

    .line 4333
    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "unexpected result from encoder.dequeueOutputBuffer: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, v41

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v6, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 4336
    :cond_2e
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x15

    if-ge v6, v10, :cond_2f

    .line 4337
    aget-object v36, v40, v41

    .line 4341
    .local v36, "encodedData":Ljava/nio/ByteBuffer;
    :goto_14
    if-nez v36, :cond_30

    .line 4342
    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "encoderOutputBuffer "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, v41

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " was null"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v6, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 4339
    .end local v36    # "encodedData":Ljava/nio/ByteBuffer;
    :cond_2f
    move-object/from16 v0, v37

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v36

    .restart local v36    # "encodedData":Ljava/nio/ByteBuffer;
    goto :goto_14

    .line 4344
    :cond_30
    move-object/from16 v0, v48

    iget v6, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    const/4 v10, 0x1

    if-le v6, v10, :cond_31

    .line 4345
    move-object/from16 v0, v48

    iget v6, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v6, v6, 0x2

    if-nez v6, :cond_32

    .line 4346
    const/4 v6, 0x1

    move-object/from16 v0, v57

    move/from16 v1, v85

    move-object/from16 v2, v36

    move-object/from16 v3, v48

    invoke-virtual {v0, v1, v2, v3, v6}, Lorg/telegram/messenger/video/MP4Builder;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;Z)Z

    move-result v6

    if-eqz v6, :cond_31

    .line 4347
    const/4 v6, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2, v6, v10}, Lorg/telegram/messenger/MediaController;->didWriteData(Lorg/telegram/messenger/MessageObject;Ljava/io/File;ZZ)V

    .line 4378
    :cond_31
    :goto_15
    move-object/from16 v0, v48

    iget v6, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v6, v6, 0x4

    if-eqz v6, :cond_36

    const/16 v62, 0x1

    .line 4379
    :goto_16
    const/4 v6, 0x0

    move-object/from16 v0, v37

    move/from16 v1, v41

    invoke-virtual {v0, v1, v6}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    goto/16 :goto_11

    .line 4349
    :cond_32
    const/4 v6, -0x5

    move/from16 v0, v85

    if-ne v0, v6, :cond_31

    .line 4350
    move-object/from16 v0, v48

    iget v6, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    new-array v0, v6, [B

    move-object/from16 v29, v0

    .line 4351
    .local v29, "csd":[B
    move-object/from16 v0, v48

    iget v6, v0, Landroid/media/MediaCodec$BufferInfo;->offset:I

    move-object/from16 v0, v48

    iget v10, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v6, v10

    move-object/from16 v0, v36

    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 4352
    move-object/from16 v0, v48

    iget v6, v0, Landroid/media/MediaCodec$BufferInfo;->offset:I

    move-object/from16 v0, v36

    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 4353
    move-object/from16 v0, v36

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 4354
    const/16 v75, 0x0

    .line 4355
    .local v75, "sps":Ljava/nio/ByteBuffer;
    const/16 v67, 0x0

    .line 4356
    .local v67, "pps":Ljava/nio/ByteBuffer;
    move-object/from16 v0, v48

    iget v6, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/lit8 v23, v6, -0x1

    .local v23, "a":I
    :goto_17
    if-ltz v23, :cond_33

    .line 4357
    const/4 v6, 0x3

    move/from16 v0, v23

    if-le v0, v6, :cond_33

    .line 4358
    aget-byte v6, v29, v23

    const/4 v10, 0x1

    if-ne v6, v10, :cond_35

    add-int/lit8 v6, v23, -0x1

    aget-byte v6, v29, v6

    if-nez v6, :cond_35

    add-int/lit8 v6, v23, -0x2

    aget-byte v6, v29, v6

    if-nez v6, :cond_35

    add-int/lit8 v6, v23, -0x3

    aget-byte v6, v29, v6

    if-nez v6, :cond_35

    .line 4359
    add-int/lit8 v6, v23, -0x3

    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v75

    .line 4360
    move-object/from16 v0, v48

    iget v6, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/lit8 v10, v23, -0x3

    sub-int/2addr v6, v10

    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v67

    .line 4361
    const/4 v6, 0x0

    add-int/lit8 v10, v23, -0x3

    move-object/from16 v0, v75

    move-object/from16 v1, v29

    invoke-virtual {v0, v1, v6, v10}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    move-result-object v6

    const/4 v10, 0x0

    invoke-virtual {v6, v10}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 4362
    add-int/lit8 v6, v23, -0x3

    move-object/from16 v0, v48

    iget v10, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/lit8 v11, v23, -0x3

    sub-int/2addr v10, v11

    move-object/from16 v0, v67

    move-object/from16 v1, v29

    invoke-virtual {v0, v1, v6, v10}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    move-result-object v6

    const/4 v10, 0x0

    invoke-virtual {v6, v10}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 4370
    :cond_33
    const-string/jumbo v6, "video/avc"

    move/from16 v0, v72

    move/from16 v1, v70

    invoke-static {v6, v0, v1}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v59

    .line 4371
    .restart local v59    # "newFormat":Landroid/media/MediaFormat;
    if-eqz v75, :cond_34

    if-eqz v67, :cond_34

    .line 4372
    const-string/jumbo v6, "csd-0"

    move-object/from16 v0, v59

    move-object/from16 v1, v75

    invoke-virtual {v0, v6, v1}, Landroid/media/MediaFormat;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    .line 4373
    const-string/jumbo v6, "csd-1"

    move-object/from16 v0, v59

    move-object/from16 v1, v67

    invoke-virtual {v0, v6, v1}, Landroid/media/MediaFormat;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    .line 4375
    :cond_34
    const/4 v6, 0x0

    move-object/from16 v0, v57

    move-object/from16 v1, v59

    invoke-virtual {v0, v1, v6}, Lorg/telegram/messenger/video/MP4Builder;->addTrack(Landroid/media/MediaFormat;Z)I

    move-result v85

    goto/16 :goto_15

    .line 4356
    .end local v59    # "newFormat":Landroid/media/MediaFormat;
    :cond_35
    add-int/lit8 v23, v23, -0x1

    goto/16 :goto_17

    .line 4378
    .end local v23    # "a":I
    .end local v29    # "csd":[B
    .end local v67    # "pps":Ljava/nio/ByteBuffer;
    .end local v75    # "sps":Ljava/nio/ByteBuffer;
    :cond_36
    const/16 v62, 0x0

    goto/16 :goto_16

    .line 4389
    .end local v36    # "encodedData":Ljava/nio/ByteBuffer;
    .restart local v33    # "decoderStatus":I
    :cond_37
    const/4 v6, -0x3

    move/from16 v0, v33

    if-eq v0, v6, :cond_18

    .line 4391
    const/4 v6, -0x2

    move/from16 v0, v33

    if-ne v0, v6, :cond_38

    .line 4392
    invoke-virtual {v4}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v59

    .line 4393
    .restart local v59    # "newFormat":Landroid/media/MediaFormat;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "newFormat = "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v59

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    goto/16 :goto_10

    .line 4394
    .end local v59    # "newFormat":Landroid/media/MediaFormat;
    :cond_38
    if-gez v33, :cond_39

    .line 4395
    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "unexpected result from decoder.dequeueOutputBuffer: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, v33

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v6, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 4398
    :cond_39
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x12

    if-lt v6, v10, :cond_3e

    .line 4399
    move-object/from16 v0, v48

    iget v6, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-eqz v6, :cond_3d

    const/16 v34, 0x1

    .line 4403
    .local v34, "doRender":Z
    :goto_18
    const-wide/16 v10, 0x0

    cmp-long v6, v18, v10

    if-lez v6, :cond_3a

    move-object/from16 v0, v48

    iget-wide v10, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    cmp-long v6, v10, v18

    if-ltz v6, :cond_3a

    .line 4404
    const/16 v50, 0x1

    .line 4405
    const/16 v30, 0x1

    .line 4406
    const/16 v34, 0x0

    .line 4407
    move-object/from16 v0, v48

    iget v6, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    or-int/lit8 v6, v6, 0x4

    move-object/from16 v0, v48

    iput v6, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    .line 4409
    :cond_3a
    const-wide/16 v10, 0x0

    cmp-long v6, v76, v10

    if-lez v6, :cond_3b

    const-wide/16 v10, -0x1

    cmp-long v6, v88, v10

    if-nez v6, :cond_3b

    .line 4410
    move-object/from16 v0, v48

    iget-wide v10, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    cmp-long v6, v10, v76

    if-gez v6, :cond_41

    .line 4411
    const/16 v34, 0x0

    .line 4412
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "drop frame startTime = "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, v76

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v10, " present time = "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v48

    iget-wide v10, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v6, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 4417
    :cond_3b
    :goto_19
    move/from16 v0, v33

    move/from16 v1, v34

    invoke-virtual {v4, v0, v1}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 4418
    if-eqz v34, :cond_3c

    .line 4419
    const/16 v44, 0x0

    .line 4421
    .local v44, "errorWait":Z
    :try_start_b
    invoke-virtual/range {v64 .. v64}, Lorg/telegram/messenger/video/OutputSurface;->awaitNewImage()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 4426
    :goto_1a
    if-nez v44, :cond_3c

    .line 4427
    :try_start_c
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x12

    if-lt v6, v10, :cond_42

    .line 4428
    const/4 v6, 0x0

    move-object/from16 v0, v64

    invoke-virtual {v0, v6}, Lorg/telegram/messenger/video/OutputSurface;->drawImage(Z)V

    .line 4429
    move-object/from16 v0, v48

    iget-wide v10, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    const-wide/16 v12, 0x3e8

    mul-long/2addr v10, v12

    move-object/from16 v0, v53

    invoke-virtual {v0, v10, v11}, Lorg/telegram/messenger/video/InputSurface;->setPresentationTime(J)V

    .line 4430
    invoke-virtual/range {v53 .. v53}, Lorg/telegram/messenger/video/InputSurface;->swapBuffers()Z

    .line 4446
    .end local v44    # "errorWait":Z
    :cond_3c
    :goto_1b
    move-object/from16 v0, v48

    iget v6, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v6, v6, 0x4

    if-eqz v6, :cond_18

    .line 4447
    const/16 v32, 0x0

    .line 4448
    const-string/jumbo v6, "decoder stream end"

    invoke-static {v6}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 4449
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x12

    if-lt v6, v10, :cond_44

    .line 4450
    invoke-virtual/range {v37 .. v37}, Landroid/media/MediaCodec;->signalEndOfInputStream()V

    goto/16 :goto_10

    .line 4399
    .end local v34    # "doRender":Z
    :cond_3d
    const/16 v34, 0x0

    goto/16 :goto_18

    .line 4401
    :cond_3e
    move-object/from16 v0, v48

    iget v6, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-nez v6, :cond_3f

    move-object/from16 v0, v48

    iget-wide v10, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    const-wide/16 v12, 0x0

    cmp-long v6, v10, v12

    if-eqz v6, :cond_40

    :cond_3f
    const/16 v34, 0x1

    .restart local v34    # "doRender":Z
    :goto_1c
    goto/16 :goto_18

    .end local v34    # "doRender":Z
    :cond_40
    const/16 v34, 0x0

    goto :goto_1c

    .line 4414
    .restart local v34    # "doRender":Z
    :cond_41
    move-object/from16 v0, v48

    iget-wide v0, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    move-wide/from16 v88, v0

    goto :goto_19

    .line 4422
    .restart local v44    # "errorWait":Z
    :catch_1
    move-exception v35

    .line 4423
    .restart local v35    # "e":Ljava/lang/Exception;
    const/16 v44, 0x1

    .line 4424
    invoke-static/range {v35 .. v35}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1a

    .line 4432
    .end local v35    # "e":Ljava/lang/Exception;
    :cond_42
    const-wide/16 v10, 0x9c4

    move-object/from16 v0, v37

    invoke-virtual {v0, v10, v11}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v5

    .line 4433
    .restart local v5    # "inputBufIndex":I
    if-ltz v5, :cond_43

    .line 4434
    const/4 v6, 0x1

    move-object/from16 v0, v64

    invoke-virtual {v0, v6}, Lorg/telegram/messenger/video/OutputSurface;->drawImage(Z)V

    .line 4435
    invoke-virtual/range {v64 .. v64}, Lorg/telegram/messenger/video/OutputSurface;->getFrame()Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 4436
    .local v8, "rgbBuf":Ljava/nio/ByteBuffer;
    aget-object v9, v38, v5

    .line 4437
    .local v9, "yuvBuf":Ljava/nio/ByteBuffer;
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    move/from16 v10, v28

    move/from16 v11, v72

    move/from16 v12, v70

    move/from16 v13, v66

    move/from16 v14, v78

    .line 4438
    invoke-static/range {v8 .. v14}, Lorg/telegram/messenger/Utilities;->convertVideoFrame(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;IIIII)I

    .line 4439
    const/4 v12, 0x0

    move-object/from16 v0, v48

    iget-wide v14, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    const/16 v16, 0x0

    move-object/from16 v10, v37

    move v11, v5

    move/from16 v13, v25

    invoke-virtual/range {v10 .. v16}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    goto :goto_1b

    .line 4441
    .end local v8    # "rgbBuf":Ljava/nio/ByteBuffer;
    .end local v9    # "yuvBuf":Ljava/nio/ByteBuffer;
    :cond_43
    const-string/jumbo v6, "input buffer not available"

    invoke-static {v6}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    goto :goto_1b

    .line 4452
    .end local v5    # "inputBufIndex":I
    .end local v44    # "errorWait":Z
    :cond_44
    const-wide/16 v10, 0x9c4

    move-object/from16 v0, v37

    invoke-virtual {v0, v10, v11}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v5

    .line 4453
    .restart local v5    # "inputBufIndex":I
    if-ltz v5, :cond_18

    .line 4454
    const/4 v12, 0x0

    const/4 v13, 0x1

    move-object/from16 v0, v48

    iget-wide v14, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    const/16 v16, 0x4

    move-object/from16 v10, v37

    move v11, v5

    invoke-virtual/range {v10 .. v16}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto/16 :goto_10

    .line 4462
    .end local v5    # "inputBufIndex":I
    .end local v32    # "decoderOutputAvailable":Z
    .end local v33    # "decoderStatus":I
    .end local v34    # "doRender":Z
    .end local v39    # "encoderOutputAvailable":Z
    .end local v41    # "encoderStatus":I
    :cond_45
    const-wide/16 v10, -0x1

    cmp-long v6, v88, v10

    if-eqz v6, :cond_4b

    .line 4463
    move-wide/from16 v16, v88

    .end local v86    # "videoStartTime":J
    .restart local v16    # "videoStartTime":J
    goto/16 :goto_3

    .line 4490
    .end local v4    # "decoder":Landroid/media/MediaCodec;
    .end local v16    # "videoStartTime":J
    .end local v22    # "TIMEOUT_USEC":I
    .end local v25    # "bufferSize":I
    .end local v28    # "colorFormat":I
    .end local v30    # "decoderDone":Z
    .end local v31    # "decoderInputBuffers":[Ljava/nio/ByteBuffer;
    .end local v37    # "encoder":Landroid/media/MediaCodec;
    .end local v38    # "encoderInputBuffers":[Ljava/nio/ByteBuffer;
    .end local v40    # "encoderOutputBuffers":[Ljava/nio/ByteBuffer;
    .end local v50    # "inputDone":Z
    .end local v52    # "inputFormat":Landroid/media/MediaFormat;
    .end local v53    # "inputSurface":Lorg/telegram/messenger/video/InputSurface;
    .end local v56    # "manufacturer":Ljava/lang/String;
    .end local v62    # "outputDone":Z
    .end local v63    # "outputFormat":Landroid/media/MediaFormat;
    .end local v64    # "outputSurface":Lorg/telegram/messenger/video/OutputSurface;
    .end local v66    # "padding":I
    .end local v69    # "processorType":I
    .end local v71    # "resultHeightAligned":I
    .end local v78    # "swapUV":I
    .end local v83    # "videoIndex":I
    .end local v85    # "videoTrackIndex":I
    .end local v88    # "videoTime":J
    .restart local v86    # "videoStartTime":J
    :cond_46
    const/16 v21, 0x0

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-object/from16 v13, v46

    move-object/from16 v14, v57

    move-object/from16 v15, v48

    move-wide/from16 v16, v76

    :try_start_d
    invoke-direct/range {v11 .. v21}, Lorg/telegram/messenger/MediaController;->readAndWriteTrack(Lorg/telegram/messenger/MessageObject;Landroid/media/MediaExtractor;Lorg/telegram/messenger/video/MP4Builder;Landroid/media/MediaCodec$BufferInfo;JJLjava/io/File;Z)J
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_6
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    move-result-wide v88

    .line 4491
    .restart local v88    # "videoTime":J
    const-wide/16 v10, -0x1

    cmp-long v6, v88, v10

    if-eqz v6, :cond_4a

    .line 4492
    move-wide/from16 v16, v88

    .end local v86    # "videoStartTime":J
    .restart local v16    # "videoStartTime":J
    goto/16 :goto_4

    .line 4508
    .end local v88    # "videoTime":J
    :catch_2
    move-exception v35

    .line 4509
    .restart local v35    # "e":Ljava/lang/Exception;
    invoke-static/range {v35 .. v35}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_5

    .line 4498
    .end local v16    # "videoStartTime":J
    .end local v35    # "e":Ljava/lang/Exception;
    .end local v46    # "extractor":Landroid/media/MediaExtractor;
    .end local v48    # "info":Landroid/media/MediaCodec$BufferInfo;
    .end local v58    # "movie":Lorg/telegram/messenger/video/Mp4Movie;
    .restart local v45    # "extractor":Landroid/media/MediaExtractor;
    .restart local v86    # "videoStartTime":J
    :catch_3
    move-exception v35

    move-wide/from16 v16, v86

    .line 4499
    .end local v86    # "videoStartTime":J
    .restart local v16    # "videoStartTime":J
    .restart local v35    # "e":Ljava/lang/Exception;
    :goto_1d
    const/16 v43, 0x1

    .line 4500
    :try_start_e
    invoke-static/range {v35 .. v35}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    .line 4502
    if-eqz v45, :cond_47

    .line 4503
    invoke-virtual/range {v45 .. v45}, Landroid/media/MediaExtractor;->release()V

    .line 4505
    :cond_47
    if-eqz v57, :cond_48

    .line 4507
    :try_start_f
    invoke-virtual/range {v57 .. v57}, Lorg/telegram/messenger/video/MP4Builder;->finishMovie()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_4

    .line 4512
    :cond_48
    :goto_1e
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "time = "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long v10, v10, v80

    invoke-virtual {v6, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 4508
    :catch_4
    move-exception v35

    .line 4509
    invoke-static/range {v35 .. v35}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1e

    .line 4508
    .end local v35    # "e":Ljava/lang/Exception;
    :catch_5
    move-exception v35

    .line 4509
    .restart local v35    # "e":Ljava/lang/Exception;
    invoke-static/range {v35 .. v35}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_13

    .line 4515
    .end local v16    # "videoStartTime":J
    .end local v35    # "e":Ljava/lang/Exception;
    .end local v45    # "extractor":Landroid/media/MediaExtractor;
    .end local v57    # "mediaMuxer":Lorg/telegram/messenger/video/MP4Builder;
    .restart local v86    # "videoStartTime":J
    :cond_49
    invoke-interface/range {v68 .. v68}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string/jumbo v10, "isPreviousOk"

    const/4 v11, 0x1

    invoke-interface {v6, v10, v11}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 4516
    const/4 v6, 0x1

    const/4 v10, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2, v6, v10}, Lorg/telegram/messenger/MediaController;->didWriteData(Lorg/telegram/messenger/MessageObject;Ljava/io/File;ZZ)V

    .line 4517
    const/4 v6, 0x0

    goto/16 :goto_1

    .line 4502
    .restart local v45    # "extractor":Landroid/media/MediaExtractor;
    .restart local v57    # "mediaMuxer":Lorg/telegram/messenger/video/MP4Builder;
    :catchall_1
    move-exception v6

    move-wide/from16 v16, v86

    .end local v86    # "videoStartTime":J
    .restart local v16    # "videoStartTime":J
    goto/16 :goto_12

    .end local v45    # "extractor":Landroid/media/MediaExtractor;
    .restart local v46    # "extractor":Landroid/media/MediaExtractor;
    .restart local v48    # "info":Landroid/media/MediaCodec$BufferInfo;
    .restart local v58    # "movie":Lorg/telegram/messenger/video/Mp4Movie;
    :catchall_2
    move-exception v6

    move-object/from16 v45, v46

    .end local v46    # "extractor":Landroid/media/MediaExtractor;
    .restart local v45    # "extractor":Landroid/media/MediaExtractor;
    goto/16 :goto_12

    .end local v48    # "info":Landroid/media/MediaCodec$BufferInfo;
    .end local v58    # "movie":Lorg/telegram/messenger/video/Mp4Movie;
    .restart local v35    # "e":Ljava/lang/Exception;
    :catchall_3
    move-exception v6

    goto/16 :goto_12

    .line 4498
    .end local v16    # "videoStartTime":J
    .end local v35    # "e":Ljava/lang/Exception;
    .end local v45    # "extractor":Landroid/media/MediaExtractor;
    .restart local v46    # "extractor":Landroid/media/MediaExtractor;
    .restart local v48    # "info":Landroid/media/MediaCodec$BufferInfo;
    .restart local v58    # "movie":Lorg/telegram/messenger/video/Mp4Movie;
    .restart local v86    # "videoStartTime":J
    :catch_6
    move-exception v35

    move-object/from16 v45, v46

    .end local v46    # "extractor":Landroid/media/MediaExtractor;
    .restart local v45    # "extractor":Landroid/media/MediaExtractor;
    move-wide/from16 v16, v86

    .end local v86    # "videoStartTime":J
    .restart local v16    # "videoStartTime":J
    goto :goto_1d

    .end local v45    # "extractor":Landroid/media/MediaExtractor;
    .restart local v46    # "extractor":Landroid/media/MediaExtractor;
    :catch_7
    move-exception v35

    move-object/from16 v45, v46

    .end local v46    # "extractor":Landroid/media/MediaExtractor;
    .restart local v45    # "extractor":Landroid/media/MediaExtractor;
    goto :goto_1d

    .line 4465
    .end local v16    # "videoStartTime":J
    .end local v45    # "extractor":Landroid/media/MediaExtractor;
    .restart local v4    # "decoder":Landroid/media/MediaCodec;
    .restart local v25    # "bufferSize":I
    .restart local v28    # "colorFormat":I
    .restart local v30    # "decoderDone":Z
    .restart local v37    # "encoder":Landroid/media/MediaCodec;
    .restart local v46    # "extractor":Landroid/media/MediaExtractor;
    .restart local v50    # "inputDone":Z
    .restart local v52    # "inputFormat":Landroid/media/MediaFormat;
    .restart local v54    # "inputSurface":Lorg/telegram/messenger/video/InputSurface;
    .restart local v56    # "manufacturer":Ljava/lang/String;
    .restart local v62    # "outputDone":Z
    .restart local v63    # "outputFormat":Landroid/media/MediaFormat;
    .restart local v64    # "outputSurface":Lorg/telegram/messenger/video/OutputSurface;
    .restart local v66    # "padding":I
    .restart local v69    # "processorType":I
    .restart local v71    # "resultHeightAligned":I
    .restart local v78    # "swapUV":I
    .restart local v83    # "videoIndex":I
    .restart local v85    # "videoTrackIndex":I
    .restart local v86    # "videoStartTime":J
    .restart local v88    # "videoTime":J
    :catch_8
    move-exception v35

    move-object/from16 v53, v54

    .end local v54    # "inputSurface":Lorg/telegram/messenger/video/InputSurface;
    .restart local v53    # "inputSurface":Lorg/telegram/messenger/video/InputSurface;
    goto/16 :goto_2

    .end local v4    # "decoder":Landroid/media/MediaCodec;
    .end local v25    # "bufferSize":I
    .end local v28    # "colorFormat":I
    .end local v30    # "decoderDone":Z
    .end local v37    # "encoder":Landroid/media/MediaCodec;
    .end local v50    # "inputDone":Z
    .end local v52    # "inputFormat":Landroid/media/MediaFormat;
    .end local v53    # "inputSurface":Lorg/telegram/messenger/video/InputSurface;
    .end local v56    # "manufacturer":Ljava/lang/String;
    .end local v62    # "outputDone":Z
    .end local v63    # "outputFormat":Landroid/media/MediaFormat;
    .end local v64    # "outputSurface":Lorg/telegram/messenger/video/OutputSurface;
    .end local v66    # "padding":I
    .end local v69    # "processorType":I
    .end local v71    # "resultHeightAligned":I
    .end local v78    # "swapUV":I
    .end local v83    # "videoIndex":I
    .end local v85    # "videoTrackIndex":I
    .end local v88    # "videoTime":J
    :cond_4a
    move-wide/from16 v16, v86

    .end local v86    # "videoStartTime":J
    .restart local v16    # "videoStartTime":J
    goto/16 :goto_4

    .end local v16    # "videoStartTime":J
    .restart local v4    # "decoder":Landroid/media/MediaCodec;
    .restart local v22    # "TIMEOUT_USEC":I
    .restart local v25    # "bufferSize":I
    .restart local v28    # "colorFormat":I
    .restart local v30    # "decoderDone":Z
    .restart local v31    # "decoderInputBuffers":[Ljava/nio/ByteBuffer;
    .restart local v37    # "encoder":Landroid/media/MediaCodec;
    .restart local v38    # "encoderInputBuffers":[Ljava/nio/ByteBuffer;
    .restart local v40    # "encoderOutputBuffers":[Ljava/nio/ByteBuffer;
    .restart local v50    # "inputDone":Z
    .restart local v52    # "inputFormat":Landroid/media/MediaFormat;
    .restart local v53    # "inputSurface":Lorg/telegram/messenger/video/InputSurface;
    .restart local v56    # "manufacturer":Ljava/lang/String;
    .restart local v62    # "outputDone":Z
    .restart local v63    # "outputFormat":Landroid/media/MediaFormat;
    .restart local v64    # "outputSurface":Lorg/telegram/messenger/video/OutputSurface;
    .restart local v66    # "padding":I
    .restart local v69    # "processorType":I
    .restart local v71    # "resultHeightAligned":I
    .restart local v78    # "swapUV":I
    .restart local v83    # "videoIndex":I
    .restart local v85    # "videoTrackIndex":I
    .restart local v86    # "videoStartTime":J
    .restart local v88    # "videoTime":J
    :cond_4b
    move-wide/from16 v16, v86

    .end local v86    # "videoStartTime":J
    .restart local v16    # "videoStartTime":J
    goto/16 :goto_3
.end method

.method public static copyFileToCache(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;
    .locals 15
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "ext"    # Ljava/lang/String;

    .prologue
    .line 3465
    const/4 v5, 0x0

    .line 3466
    .local v5, "inputStream":Ljava/io/InputStream;
    const/4 v8, 0x0

    .line 3468
    .local v8, "output":Ljava/io/FileOutputStream;
    :try_start_0
    invoke-static {p0}, Lorg/telegram/messenger/MediaController;->getFileName(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v7

    .line 3469
    .local v7, "name":Ljava/lang/String;
    if-nez v7, :cond_0

    .line 3470
    sget v4, Lorg/telegram/messenger/UserConfig;->lastLocalId:I

    .line 3471
    .local v4, "id":I
    sget v10, Lorg/telegram/messenger/UserConfig;->lastLocalId:I

    add-int/lit8 v10, v10, -0x1

    sput v10, Lorg/telegram/messenger/UserConfig;->lastLocalId:I

    .line 3472
    const/4 v10, 0x0

    invoke-static {v10}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    .line 3473
    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v11, "%d.%s"

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    aput-object p1, v12, v13

    invoke-static {v10, v11, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 3475
    .end local v4    # "id":I
    :cond_0
    sget-object v10, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    invoke-virtual {v10, p0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v5

    .line 3476
    new-instance v3, Ljava/io/File;

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v10

    const/4 v11, 0x4

    invoke-virtual {v10, v11}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v10

    invoke-direct {v3, v10, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3477
    .local v3, "f":Ljava/io/File;
    new-instance v9, Ljava/io/FileOutputStream;

    invoke-direct {v9, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3478
    .end local v8    # "output":Ljava/io/FileOutputStream;
    .local v9, "output":Ljava/io/FileOutputStream;
    const/16 v10, 0x5000

    :try_start_1
    new-array v0, v10, [B

    .line 3480
    .local v0, "buffer":[B
    :goto_0
    invoke-virtual {v5, v0}, Ljava/io/InputStream;->read([B)I

    move-result v6

    .local v6, "len":I
    const/4 v10, -0x1

    if-eq v6, v10, :cond_3

    .line 3481
    const/4 v10, 0x0

    invoke-virtual {v9, v0, v10, v6}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 3484
    .end local v0    # "buffer":[B
    .end local v6    # "len":I
    :catch_0
    move-exception v1

    move-object v8, v9

    .line 3485
    .end local v3    # "f":Ljava/io/File;
    .end local v7    # "name":Ljava/lang/String;
    .end local v9    # "output":Ljava/io/FileOutputStream;
    .local v1, "e":Ljava/lang/Exception;
    .restart local v8    # "output":Ljava/io/FileOutputStream;
    :goto_1
    :try_start_2
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3488
    if-eqz v5, :cond_1

    .line 3489
    :try_start_3
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 3495
    :cond_1
    :goto_2
    if-eqz v8, :cond_2

    .line 3496
    :try_start_4
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 3502
    :cond_2
    :goto_3
    const/4 v10, 0x0

    .end local v1    # "e":Ljava/lang/Exception;
    :goto_4
    return-object v10

    .line 3483
    .end local v8    # "output":Ljava/io/FileOutputStream;
    .restart local v0    # "buffer":[B
    .restart local v3    # "f":Ljava/io/File;
    .restart local v6    # "len":I
    .restart local v7    # "name":Ljava/lang/String;
    .restart local v9    # "output":Ljava/io/FileOutputStream;
    :cond_3
    :try_start_5
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result-object v10

    .line 3488
    if-eqz v5, :cond_4

    .line 3489
    :try_start_6
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 3495
    :cond_4
    :goto_5
    if-eqz v9, :cond_5

    .line 3496
    :try_start_7
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    :cond_5
    :goto_6
    move-object v8, v9

    .line 3500
    .end local v9    # "output":Ljava/io/FileOutputStream;
    .restart local v8    # "output":Ljava/io/FileOutputStream;
    goto :goto_4

    .line 3491
    .end local v8    # "output":Ljava/io/FileOutputStream;
    .restart local v9    # "output":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v2

    .line 3492
    .local v2, "e2":Ljava/lang/Exception;
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_5

    .line 3498
    .end local v2    # "e2":Ljava/lang/Exception;
    :catch_2
    move-exception v2

    .line 3499
    .restart local v2    # "e2":Ljava/lang/Exception;
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_6

    .line 3491
    .end local v0    # "buffer":[B
    .end local v2    # "e2":Ljava/lang/Exception;
    .end local v3    # "f":Ljava/io/File;
    .end local v6    # "len":I
    .end local v7    # "name":Ljava/lang/String;
    .end local v9    # "output":Ljava/io/FileOutputStream;
    .restart local v1    # "e":Ljava/lang/Exception;
    .restart local v8    # "output":Ljava/io/FileOutputStream;
    :catch_3
    move-exception v2

    .line 3492
    .restart local v2    # "e2":Ljava/lang/Exception;
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 3498
    .end local v2    # "e2":Ljava/lang/Exception;
    :catch_4
    move-exception v2

    .line 3499
    .restart local v2    # "e2":Ljava/lang/Exception;
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_3

    .line 3487
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "e2":Ljava/lang/Exception;
    :catchall_0
    move-exception v10

    .line 3488
    :goto_7
    if-eqz v5, :cond_6

    .line 3489
    :try_start_8
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    .line 3495
    :cond_6
    :goto_8
    if-eqz v8, :cond_7

    .line 3496
    :try_start_9
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    .line 3500
    :cond_7
    :goto_9
    throw v10

    .line 3491
    :catch_5
    move-exception v2

    .line 3492
    .restart local v2    # "e2":Ljava/lang/Exception;
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_8

    .line 3498
    .end local v2    # "e2":Ljava/lang/Exception;
    :catch_6
    move-exception v2

    .line 3499
    .restart local v2    # "e2":Ljava/lang/Exception;
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_9

    .line 3487
    .end local v2    # "e2":Ljava/lang/Exception;
    .end local v8    # "output":Ljava/io/FileOutputStream;
    .restart local v3    # "f":Ljava/io/File;
    .restart local v7    # "name":Ljava/lang/String;
    .restart local v9    # "output":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v10

    move-object v8, v9

    .end local v9    # "output":Ljava/io/FileOutputStream;
    .restart local v8    # "output":Ljava/io/FileOutputStream;
    goto :goto_7

    .line 3484
    .end local v3    # "f":Ljava/io/File;
    .end local v7    # "name":Ljava/lang/String;
    :catch_7
    move-exception v1

    goto :goto_1
.end method

.method private didWriteData(Lorg/telegram/messenger/MessageObject;Ljava/io/File;ZZ)V
    .locals 7
    .param p1, "messageObject"    # Lorg/telegram/messenger/MessageObject;
    .param p2, "file"    # Ljava/io/File;
    .param p3, "last"    # Z
    .param p4, "error"    # Z

    .prologue
    .line 3922
    iget-boolean v6, p0, Lorg/telegram/messenger/MediaController;->videoConvertFirstWrite:Z

    .line 3923
    .local v6, "firstWrite":Z
    if-eqz v6, :cond_0

    .line 3924
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/messenger/MediaController;->videoConvertFirstWrite:Z

    .line 3926
    :cond_0
    new-instance v0, Lorg/telegram/messenger/MediaController$28;

    move-object v1, p0

    move v2, p4

    move v3, p3

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v6}, Lorg/telegram/messenger/MediaController$28;-><init>(Lorg/telegram/messenger/MediaController;ZZLorg/telegram/messenger/MessageObject;Ljava/io/File;Z)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 3946
    return-void
.end method

.method private getCurrentDownloadMask()I
    .locals 1

    .prologue
    .line 1067
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->isConnectedToWiFi()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1068
    iget v0, p0, Lorg/telegram/messenger/MediaController;->wifiDownloadMask:I

    .line 1072
    :goto_0
    return v0

    .line 1069
    :cond_0
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->isRoaming()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1070
    iget v0, p0, Lorg/telegram/messenger/MediaController;->roamingDownloadMask:I

    goto :goto_0

    .line 1072
    :cond_1
    iget v0, p0, Lorg/telegram/messenger/MediaController;->mobileDataDownloadMask:I

    goto :goto_0
.end method

.method public static getFileName(Landroid/net/Uri;)Ljava/lang/String;
    .locals 10
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 3438
    const/4 v9, 0x0

    .line 3439
    .local v9, "result":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "content"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3440
    const/4 v6, 0x0

    .line 3442
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v3, "_display_name"

    aput-object v3, v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 3443
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3444
    const-string/jumbo v0, "_display_name"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v9

    .line 3449
    :cond_0
    if-eqz v6, :cond_1

    .line 3450
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 3454
    .end local v6    # "cursor":Landroid/database/Cursor;
    :cond_1
    :goto_0
    if-nez v9, :cond_2

    .line 3455
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v9

    .line 3456
    const/16 v0, 0x2f

    invoke-virtual {v9, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v7

    .line 3457
    .local v7, "cut":I
    const/4 v0, -0x1

    if-eq v7, v0, :cond_2

    .line 3458
    add-int/lit8 v0, v7, 0x1

    invoke-virtual {v9, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    .line 3461
    .end local v7    # "cut":I
    :cond_2
    return-object v9

    .line 3446
    .restart local v6    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v8

    .line 3447
    .local v8, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-static {v8}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3449
    if-eqz v6, :cond_1

    .line 3450
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 3449
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 3450
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public static getInstance()Lorg/telegram/messenger/MediaController;
    .locals 4

    .prologue
    .line 615
    sget-object v0, Lorg/telegram/messenger/MediaController;->Instance:Lorg/telegram/messenger/MediaController;

    .line 616
    .local v0, "localInstance":Lorg/telegram/messenger/MediaController;
    if-nez v0, :cond_1

    .line 617
    const-class v3, Lorg/telegram/messenger/MediaController;

    monitor-enter v3

    .line 618
    :try_start_0
    sget-object v0, Lorg/telegram/messenger/MediaController;->Instance:Lorg/telegram/messenger/MediaController;

    .line 619
    if-nez v0, :cond_0

    .line 620
    new-instance v1, Lorg/telegram/messenger/MediaController;

    invoke-direct {v1}, Lorg/telegram/messenger/MediaController;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "localInstance":Lorg/telegram/messenger/MediaController;
    .local v1, "localInstance":Lorg/telegram/messenger/MediaController;
    :try_start_1
    sput-object v1, Lorg/telegram/messenger/MediaController;->Instance:Lorg/telegram/messenger/MediaController;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v0, v1

    .line 622
    .end local v1    # "localInstance":Lorg/telegram/messenger/MediaController;
    .restart local v0    # "localInstance":Lorg/telegram/messenger/MediaController;
    :cond_0
    :try_start_2
    monitor-exit v3

    .line 624
    :cond_1
    return-object v0

    .line 622
    :catchall_0
    move-exception v2

    :goto_0
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .end local v0    # "localInstance":Lorg/telegram/messenger/MediaController;
    .restart local v1    # "localInstance":Lorg/telegram/messenger/MediaController;
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "localInstance":Lorg/telegram/messenger/MediaController;
    .restart local v0    # "localInstance":Lorg/telegram/messenger/MediaController;
    goto :goto_0
.end method

.method private native getTotalPcmDuration()J
.end method

.method public static isGif(Landroid/net/Uri;)Z
    .locals 9
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v5, 0x0

    const/4 v8, 0x3

    .line 3413
    const/4 v3, 0x0

    .line 3415
    .local v3, "inputStream":Ljava/io/InputStream;
    :try_start_0
    sget-object v6, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-virtual {v6, p0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3

    .line 3416
    const/4 v6, 0x3

    new-array v2, v6, [B

    .line 3417
    .local v2, "header":[B
    const/4 v6, 0x0

    const/4 v7, 0x3

    invoke-virtual {v3, v2, v6, v7}, Ljava/io/InputStream;->read([BII)I

    move-result v6

    if-ne v6, v8, :cond_1

    .line 3418
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v2}, Ljava/lang/String;-><init>([B)V

    .line 3419
    .local v4, "str":Ljava/lang/String;
    if-eqz v4, :cond_1

    const-string/jumbo v6, "gif"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-eqz v6, :cond_1

    .line 3420
    const/4 v5, 0x1

    .line 3427
    if-eqz v3, :cond_0

    .line 3428
    :try_start_1
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 3434
    .end local v2    # "header":[B
    .end local v4    # "str":Ljava/lang/String;
    :cond_0
    :goto_0
    return v5

    .line 3430
    .restart local v2    # "header":[B
    .restart local v4    # "str":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 3431
    .local v1, "e2":Ljava/lang/Exception;
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 3427
    .end local v1    # "e2":Ljava/lang/Exception;
    .end local v4    # "str":Ljava/lang/String;
    :cond_1
    if-eqz v3, :cond_0

    .line 3428
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 3430
    :catch_1
    move-exception v1

    .line 3431
    .restart local v1    # "e2":Ljava/lang/Exception;
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 3423
    .end local v1    # "e2":Ljava/lang/Exception;
    .end local v2    # "header":[B
    :catch_2
    move-exception v0

    .line 3424
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3427
    if-eqz v3, :cond_0

    .line 3428
    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_0

    .line 3430
    :catch_3
    move-exception v1

    .line 3431
    .restart local v1    # "e2":Ljava/lang/Exception;
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 3426
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "e2":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    .line 3427
    if-eqz v3, :cond_2

    .line 3428
    :try_start_5
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 3432
    :cond_2
    :goto_1
    throw v5

    .line 3430
    :catch_4
    move-exception v1

    .line 3431
    .restart local v1    # "e2":Ljava/lang/Exception;
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private isNearToSensor(F)Z
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 1663
    const/high16 v0, 0x40a00000    # 5.0f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->proximitySensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result v0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private native isOpusFile(Ljava/lang/String;)I
.end method

.method private static isRecognizedFormat(I)Z
    .locals 1
    .param p0, "colorFormat"    # I

    .prologue
    .line 3874
    sparse-switch p0, :sswitch_data_0

    .line 3882
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 3880
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 3874
    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_0
        0x15 -> :sswitch_0
        0x27 -> :sswitch_0
        0x7f000100 -> :sswitch_0
    .end sparse-switch
.end method

.method public static isWebp(Landroid/net/Uri;)Z
    .locals 9
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v5, 0x0

    const/16 v8, 0xc

    .line 3385
    const/4 v3, 0x0

    .line 3387
    .local v3, "inputStream":Ljava/io/InputStream;
    :try_start_0
    sget-object v6, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-virtual {v6, p0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3

    .line 3388
    const/16 v6, 0xc

    new-array v2, v6, [B

    .line 3389
    .local v2, "header":[B
    const/4 v6, 0x0

    const/16 v7, 0xc

    invoke-virtual {v3, v2, v6, v7}, Ljava/io/InputStream;->read([BII)I

    move-result v6

    if-ne v6, v8, :cond_1

    .line 3390
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v2}, Ljava/lang/String;-><init>([B)V

    .line 3391
    .local v4, "str":Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 3392
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 3393
    const-string/jumbo v6, "riff"

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string/jumbo v6, "webp"

    invoke-virtual {v4, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-eqz v6, :cond_1

    .line 3394
    const/4 v5, 0x1

    .line 3402
    if-eqz v3, :cond_0

    .line 3403
    :try_start_1
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 3409
    .end local v2    # "header":[B
    .end local v4    # "str":Ljava/lang/String;
    :cond_0
    :goto_0
    return v5

    .line 3405
    .restart local v2    # "header":[B
    .restart local v4    # "str":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 3406
    .local v1, "e2":Ljava/lang/Exception;
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 3402
    .end local v1    # "e2":Ljava/lang/Exception;
    .end local v4    # "str":Ljava/lang/String;
    :cond_1
    if-eqz v3, :cond_0

    .line 3403
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 3405
    :catch_1
    move-exception v1

    .line 3406
    .restart local v1    # "e2":Ljava/lang/Exception;
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 3398
    .end local v1    # "e2":Ljava/lang/Exception;
    .end local v2    # "header":[B
    :catch_2
    move-exception v0

    .line 3399
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3402
    if-eqz v3, :cond_0

    .line 3403
    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_0

    .line 3405
    :catch_3
    move-exception v1

    .line 3406
    .restart local v1    # "e2":Ljava/lang/Exception;
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 3401
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "e2":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    .line 3402
    if-eqz v3, :cond_2

    .line 3403
    :try_start_5
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 3407
    :cond_2
    :goto_1
    throw v5

    .line 3405
    :catch_4
    move-exception v1

    .line 3406
    .restart local v1    # "e2":Ljava/lang/Exception;
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public static loadGalleryPhotosAlbums(I)V
    .locals 2
    .param p0, "guid"    # I

    .prologue
    .line 3595
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lorg/telegram/messenger/MediaController$26;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/MediaController$26;-><init>(I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 3765
    .local v0, "thread":Ljava/lang/Thread;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 3766
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 3767
    return-void
.end method

.method private native openOpusFile(Ljava/lang/String;)I
.end method

.method private playNextMessage(Z)V
    .locals 8
    .param p1, "byStop"    # Z

    .prologue
    const/4 v5, 0x2

    const/4 v7, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 2215
    iget-boolean v2, p0, Lorg/telegram/messenger/MediaController;->shuffleMusic:Z

    if-eqz v2, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->shuffledPlaylist:Ljava/util/ArrayList;

    .line 2217
    .local v0, "currentPlayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    :goto_0
    if-eqz p1, :cond_2

    iget v2, p0, Lorg/telegram/messenger/MediaController;->repeatMode:I

    if-ne v2, v5, :cond_2

    iget-boolean v2, p0, Lorg/telegram/messenger/MediaController;->forceLoopCurrentPlaylist:Z

    if-nez v2, :cond_2

    .line 2218
    invoke-virtual {p0, v6, v6}, Lorg/telegram/messenger/MediaController;->cleanupPlayer(ZZ)V

    .line 2219
    iget v2, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {p0, v2}, Lorg/telegram/messenger/MediaController;->playMessage(Lorg/telegram/messenger/MessageObject;)Z

    .line 2289
    :cond_0
    :goto_1
    return-void

    .line 2215
    .end local v0    # "currentPlayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->playlist:Ljava/util/ArrayList;

    goto :goto_0

    .line 2222
    .restart local v0    # "currentPlayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    :cond_2
    iget v2, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    .line 2223
    iget v2, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v2, v3, :cond_7

    .line 2224
    iput v6, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    .line 2225
    if-eqz p1, :cond_7

    iget v2, p0, Lorg/telegram/messenger/MediaController;->repeatMode:I

    if-nez v2, :cond_7

    iget-boolean v2, p0, Lorg/telegram/messenger/MediaController;->forceLoopCurrentPlaylist:Z

    if-nez v2, :cond_7

    .line 2226
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    if-nez v2, :cond_3

    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;

    if-nez v2, :cond_3

    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-eqz v2, :cond_0

    .line 2227
    :cond_3
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    if-eqz v2, :cond_5

    .line 2229
    :try_start_0
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->reset()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2234
    :goto_2
    :try_start_1
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->stop()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 2239
    :goto_3
    :try_start_2
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->release()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 2243
    :goto_4
    iput-object v4, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    .line 2272
    :cond_4
    :goto_5
    invoke-direct {p0}, Lorg/telegram/messenger/MediaController;->stopProgressTimer()V

    .line 2273
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lorg/telegram/messenger/MediaController;->lastProgress:J

    .line 2274
    iput v6, p0, Lorg/telegram/messenger/MediaController;->buffersWrited:I

    .line 2275
    iput-boolean v7, p0, Lorg/telegram/messenger/MediaController;->isPaused:Z

    .line 2276
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    const/4 v3, 0x0

    iput v3, v2, Lorg/telegram/messenger/MessageObject;->audioProgress:F

    .line 2277
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    iput v6, v2, Lorg/telegram/messenger/MessageObject;->audioProgressSec:I

    .line 2278
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->messagePlayingProgressDidChanged:I

    new-array v4, v5, [Ljava/lang/Object;

    iget-object v5, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 2279
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->messagePlayingPlayStateChanged:I

    new-array v4, v7, [Ljava/lang/Object;

    iget-object v5, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 2230
    :catch_0
    move-exception v1

    .line 2231
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 2235
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 2236
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_3

    .line 2240
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v1

    .line 2241
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_4

    .line 2244
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_5
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;

    if-eqz v2, :cond_6

    .line 2245
    iget-object v3, p0, Lorg/telegram/messenger/MediaController;->playerObjectSync:Ljava/lang/Object;

    monitor-enter v3

    .line 2247
    :try_start_3
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;

    invoke-virtual {v2}, Landroid/media/AudioTrack;->pause()V

    .line 2248
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;

    invoke-virtual {v2}, Landroid/media/AudioTrack;->flush()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2253
    :goto_6
    :try_start_4
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;

    invoke-virtual {v2}, Landroid/media/AudioTrack;->release()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2257
    :goto_7
    const/4 v2, 0x0

    :try_start_5
    iput-object v2, p0, Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;

    .line 2258
    monitor-exit v3

    goto :goto_5

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v2

    .line 2249
    :catch_3
    move-exception v1

    .line 2250
    .restart local v1    # "e":Ljava/lang/Exception;
    :try_start_6
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_6

    .line 2254
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v1

    .line 2255
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_7

    .line 2259
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_6
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-eqz v2, :cond_4

    .line 2260
    iput-object v4, p0, Lorg/telegram/messenger/MediaController;->currentAspectRatioFrameLayout:Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    .line 2261
    iput-object v4, p0, Lorg/telegram/messenger/MediaController;->currentTextureViewContainer:Landroid/widget/FrameLayout;

    .line 2262
    iput-boolean v6, p0, Lorg/telegram/messenger/MediaController;->currentAspectRatioFrameLayoutReady:Z

    .line 2263
    iput-object v4, p0, Lorg/telegram/messenger/MediaController;->currentTextureView:Landroid/view/TextureView;

    .line 2264
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/VideoPlayer;->releasePlayer()V

    .line 2265
    iput-object v4, p0, Lorg/telegram/messenger/MediaController;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    .line 2267
    :try_start_7
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->baseActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v2, v3}, Landroid/view/Window;->clearFlags(I)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    goto/16 :goto_5

    .line 2268
    :catch_5
    move-exception v1

    .line 2269
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_5

    .line 2284
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_7
    iget v2, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    if-ltz v2, :cond_0

    iget v2, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 2287
    iput-boolean v7, p0, Lorg/telegram/messenger/MediaController;->playMusicAgain:Z

    .line 2288
    iget v2, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {p0, v2}, Lorg/telegram/messenger/MediaController;->playMessage(Lorg/telegram/messenger/MessageObject;)Z

    goto/16 :goto_1
.end method

.method private processLaterArrays()V
    .locals 5

    .prologue
    .line 1370
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->addLaterArray:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1371
    .local v1, "listener":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;

    invoke-virtual {p0, v2, v3}, Lorg/telegram/messenger/MediaController;->addLoadingFileObserver(Ljava/lang/String;Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;)V

    goto :goto_0

    .line 1373
    .end local v1    # "listener":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;>;"
    :cond_0
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->addLaterArray:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 1374
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->deleteLaterArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;

    .line 1375
    .local v0, "listener":Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;
    invoke-virtual {p0, v0}, Lorg/telegram/messenger/MediaController;->removeLoadingFileObserver(Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;)V

    goto :goto_1

    .line 1377
    .end local v0    # "listener":Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;
    :cond_1
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->deleteLaterArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1378
    return-void
.end method

.method private processMediaObserver(Landroid/net/Uri;)V
    .locals 22
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 1225
    :try_start_0
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getRealScreenSize()Landroid/graphics/Point;

    move-result-object v19

    .line 1227
    .local v19, "size":Landroid/graphics/Point;
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/MediaController;->mediaProjections:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "date_added DESC LIMIT 1"

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 1228
    .local v10, "cursor":Landroid/database/Cursor;
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 1229
    .local v18, "screenshotDates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    if-eqz v10, :cond_b

    .line 1230
    :cond_0
    :goto_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1231
    const-string/jumbo v21, ""

    .line 1232
    .local v21, "val":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 1233
    .local v11, "data":Ljava/lang/String;
    const/4 v2, 0x1

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 1234
    .local v14, "display_name":Ljava/lang/String;
    const/4 v2, 0x2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1235
    .local v8, "album_name":Ljava/lang/String;
    const/4 v2, 0x3

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 1236
    .local v12, "date":J
    const/4 v2, 0x4

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 1237
    .local v20, "title":Ljava/lang/String;
    const/4 v2, 0x5

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    .line 1238
    .local v17, "photoW":I
    const/4 v2, 0x6

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 1239
    .local v16, "photoH":I
    if-eqz v11, :cond_1

    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "screenshot"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_1
    if-eqz v14, :cond_2

    .line 1240
    invoke-virtual {v14}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "screenshot"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_2
    if-eqz v8, :cond_3

    .line 1241
    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "screenshot"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_3
    if-eqz v20, :cond_0

    .line 1242
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "screenshot"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    if-eqz v2, :cond_0

    .line 1244
    :cond_4
    if-eqz v17, :cond_5

    if-nez v16, :cond_6

    .line 1245
    :cond_5
    :try_start_1
    new-instance v9, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v9}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1246
    .local v9, "bmOptions":Landroid/graphics/BitmapFactory$Options;
    const/4 v2, 0x1

    iput-boolean v2, v9, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 1247
    invoke-static {v11, v9}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 1248
    iget v0, v9, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v17, v0

    .line 1249
    iget v0, v9, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move/from16 v16, v0

    .line 1251
    .end local v9    # "bmOptions":Landroid/graphics/BitmapFactory$Options;
    :cond_6
    if-lez v17, :cond_8

    if-lez v16, :cond_8

    move-object/from16 v0, v19

    iget v2, v0, Landroid/graphics/Point;->x:I

    move/from16 v0, v17

    if-ne v0, v2, :cond_7

    move-object/from16 v0, v19

    iget v2, v0, Landroid/graphics/Point;->y:I

    move/from16 v0, v16

    if-eq v0, v2, :cond_8

    :cond_7
    move-object/from16 v0, v19

    iget v2, v0, Landroid/graphics/Point;->x:I

    move/from16 v0, v16

    if-ne v0, v2, :cond_0

    move-object/from16 v0, v19

    iget v2, v0, Landroid/graphics/Point;->y:I

    move/from16 v0, v17

    if-ne v0, v2, :cond_0

    .line 1252
    :cond_8
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 1254
    :catch_0
    move-exception v15

    .line 1255
    .local v15, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 1270
    .end local v8    # "album_name":Ljava/lang/String;
    .end local v10    # "cursor":Landroid/database/Cursor;
    .end local v11    # "data":Ljava/lang/String;
    .end local v12    # "date":J
    .end local v14    # "display_name":Ljava/lang/String;
    .end local v15    # "e":Ljava/lang/Exception;
    .end local v16    # "photoH":I
    .end local v17    # "photoW":I
    .end local v18    # "screenshotDates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v19    # "size":Landroid/graphics/Point;
    .end local v20    # "title":Ljava/lang/String;
    .end local v21    # "val":Ljava/lang/String;
    :catch_1
    move-exception v15

    .line 1271
    .restart local v15    # "e":Ljava/lang/Exception;
    invoke-static {v15}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1273
    .end local v15    # "e":Ljava/lang/Exception;
    :cond_9
    :goto_1
    return-void

    .line 1259
    .restart local v10    # "cursor":Landroid/database/Cursor;
    .restart local v18    # "screenshotDates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .restart local v19    # "size":Landroid/graphics/Point;
    :cond_a
    :try_start_3
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1261
    :cond_b
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_9

    .line 1262
    new-instance v2, Lorg/telegram/messenger/MediaController$6;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v2, v0, v1}, Lorg/telegram/messenger/MediaController$6;-><init>(Lorg/telegram/messenger/MediaController;Ljava/util/ArrayList;)V

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1
.end method

.method private readAndWriteTrack(Lorg/telegram/messenger/MessageObject;Landroid/media/MediaExtractor;Lorg/telegram/messenger/video/MP4Builder;Landroid/media/MediaCodec$BufferInfo;JJLjava/io/File;Z)J
    .locals 25
    .param p1, "messageObject"    # Lorg/telegram/messenger/MessageObject;
    .param p2, "extractor"    # Landroid/media/MediaExtractor;
    .param p3, "mediaMuxer"    # Lorg/telegram/messenger/video/MP4Builder;
    .param p4, "info"    # Landroid/media/MediaCodec$BufferInfo;
    .param p5, "start"    # J
    .param p7, "end"    # J
    .param p9, "file"    # Ljava/io/File;
    .param p10, "isAudio"    # Z
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 3950
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p10

    invoke-direct {v0, v1, v2}, Lorg/telegram/messenger/MediaController;->selectTrack(Landroid/media/MediaExtractor;Z)I

    move-result v20

    .line 3951
    .local v20, "trackIndex":I
    if-ltz v20, :cond_12

    .line 3952
    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/media/MediaExtractor;->selectTrack(I)V

    .line 3953
    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v17

    .line 3954
    .local v17, "trackFormat":Landroid/media/MediaFormat;
    move-object/from16 v0, p3

    move-object/from16 v1, v17

    move/from16 v2, p10

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/video/MP4Builder;->addTrack(Landroid/media/MediaFormat;Z)I

    move-result v15

    .line 3955
    .local v15, "muxerTrackIndex":I
    const-string/jumbo v22, "max-input-size"

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v14

    .line 3956
    .local v14, "maxBufferSize":I
    const/4 v11, 0x0

    .line 3957
    .local v11, "inputDone":Z
    const-wide/16 v22, 0x0

    cmp-long v22, p5, v22

    if-lez v22, :cond_5

    .line 3958
    const/16 v22, 0x0

    move-object/from16 v0, p2

    move-wide/from16 v1, p5

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/MediaExtractor;->seekTo(JI)V

    .line 3962
    :goto_0
    invoke-static {v14}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 3963
    .local v8, "buffer":Ljava/nio/ByteBuffer;
    const-wide/16 v18, -0x1

    .line 3965
    .local v18, "startTime":J
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/MediaController;->checkConversionCanceled()V

    .line 3967
    :cond_0
    :goto_1
    if-nez v11, :cond_11

    .line 3968
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/MediaController;->checkConversionCanceled()V

    .line 3970
    const/4 v9, 0x0

    .line 3971
    .local v9, "eof":Z
    invoke-virtual/range {p2 .. p2}, Landroid/media/MediaExtractor;->getSampleTrackIndex()I

    move-result v10

    .line 3972
    .local v10, "index":I
    move/from16 v0, v20

    if-ne v10, v0, :cond_f

    .line 3973
    const/16 v22, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v22

    invoke-virtual {v0, v8, v1}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p4

    iput v0, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 3974
    sget v22, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v23, 0x15

    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_1

    .line 3975
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v8, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 3976
    move-object/from16 v0, p4

    iget v0, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    move/from16 v22, v0

    move/from16 v0, v22

    invoke-virtual {v8, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 3978
    :cond_1
    if-nez p10, :cond_8

    .line 3979
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v7

    .line 3980
    .local v7, "array":[B
    if-eqz v7, :cond_8

    .line 3981
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v16

    .line 3982
    .local v16, "offset":I
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->limit()I

    move-result v22

    add-int v13, v16, v22

    .line 3983
    .local v13, "len":I
    const/16 v21, -0x1

    .line 3984
    .local v21, "writeStart":I
    move/from16 v6, v16

    .local v6, "a":I
    :goto_2
    add-int/lit8 v22, v13, -0x4

    move/from16 v0, v22

    if-gt v6, v0, :cond_8

    .line 3985
    aget-byte v22, v7, v6

    if-nez v22, :cond_2

    add-int/lit8 v22, v6, 0x1

    aget-byte v22, v7, v22

    if-nez v22, :cond_2

    add-int/lit8 v22, v6, 0x2

    aget-byte v22, v7, v22

    if-nez v22, :cond_2

    add-int/lit8 v22, v6, 0x3

    aget-byte v22, v7, v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_3

    :cond_2
    add-int/lit8 v22, v13, -0x4

    move/from16 v0, v22

    if-ne v6, v0, :cond_4

    .line 3986
    :cond_3
    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_7

    .line 3987
    sub-int v23, v6, v21

    add-int/lit8 v22, v13, -0x4

    move/from16 v0, v22

    if-eq v6, v0, :cond_6

    const/16 v22, 0x4

    :goto_3
    sub-int v12, v23, v22

    .line 3988
    .local v12, "l":I
    shr-int/lit8 v22, v12, 0x18

    move/from16 v0, v22

    int-to-byte v0, v0

    move/from16 v22, v0

    aput-byte v22, v7, v21

    .line 3989
    add-int/lit8 v22, v21, 0x1

    shr-int/lit8 v23, v12, 0x10

    move/from16 v0, v23

    int-to-byte v0, v0

    move/from16 v23, v0

    aput-byte v23, v7, v22

    .line 3990
    add-int/lit8 v22, v21, 0x2

    shr-int/lit8 v23, v12, 0x8

    move/from16 v0, v23

    int-to-byte v0, v0

    move/from16 v23, v0

    aput-byte v23, v7, v22

    .line 3991
    add-int/lit8 v22, v21, 0x3

    int-to-byte v0, v12

    move/from16 v23, v0

    aput-byte v23, v7, v22

    .line 3992
    move/from16 v21, v6

    .line 3984
    .end local v12    # "l":I
    :cond_4
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 3960
    .end local v6    # "a":I
    .end local v7    # "array":[B
    .end local v8    # "buffer":Ljava/nio/ByteBuffer;
    .end local v9    # "eof":Z
    .end local v10    # "index":I
    .end local v13    # "len":I
    .end local v16    # "offset":I
    .end local v18    # "startTime":J
    .end local v21    # "writeStart":I
    :cond_5
    const-wide/16 v22, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, p2

    move-wide/from16 v1, v22

    move/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/MediaExtractor;->seekTo(JI)V

    goto/16 :goto_0

    .line 3987
    .restart local v6    # "a":I
    .restart local v7    # "array":[B
    .restart local v8    # "buffer":Ljava/nio/ByteBuffer;
    .restart local v9    # "eof":Z
    .restart local v10    # "index":I
    .restart local v13    # "len":I
    .restart local v16    # "offset":I
    .restart local v18    # "startTime":J
    .restart local v21    # "writeStart":I
    :cond_6
    const/16 v22, 0x0

    goto :goto_3

    .line 3994
    :cond_7
    move/from16 v21, v6

    goto :goto_4

    .line 4000
    .end local v6    # "a":I
    .end local v7    # "array":[B
    .end local v13    # "len":I
    .end local v16    # "offset":I
    .end local v21    # "writeStart":I
    :cond_8
    move-object/from16 v0, p4

    iget v0, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    move/from16 v22, v0

    if-ltz v22, :cond_d

    .line 4001
    invoke-virtual/range {p2 .. p2}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v22

    move-wide/from16 v0, v22

    move-object/from16 v2, p4

    iput-wide v0, v2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 4007
    :goto_5
    move-object/from16 v0, p4

    iget v0, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    move/from16 v22, v0

    if-lez v22, :cond_b

    if-nez v9, :cond_b

    .line 4008
    const-wide/16 v22, 0x0

    cmp-long v22, p5, v22

    if-lez v22, :cond_9

    const-wide/16 v22, -0x1

    cmp-long v22, v18, v22

    if-nez v22, :cond_9

    .line 4009
    move-object/from16 v0, p4

    iget-wide v0, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    move-wide/from16 v18, v0

    .line 4011
    :cond_9
    const-wide/16 v22, 0x0

    cmp-long v22, p7, v22

    if-ltz v22, :cond_a

    move-object/from16 v0, p4

    iget-wide v0, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    move-wide/from16 v22, v0

    cmp-long v22, v22, p7

    if-gez v22, :cond_e

    .line 4012
    :cond_a
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p4

    iput v0, v1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    .line 4013
    invoke-virtual/range {p2 .. p2}, Landroid/media/MediaExtractor;->getSampleFlags()I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p4

    iput v0, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    .line 4014
    const/16 v22, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    move/from16 v2, v22

    invoke-virtual {v0, v15, v8, v1, v2}, Lorg/telegram/messenger/video/MP4Builder;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;Z)Z

    move-result v22

    if-eqz v22, :cond_b

    .line 4015
    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p9

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/telegram/messenger/MediaController;->didWriteData(Lorg/telegram/messenger/MessageObject;Ljava/io/File;ZZ)V

    .line 4021
    :cond_b
    :goto_6
    if-nez v9, :cond_c

    .line 4022
    invoke-virtual/range {p2 .. p2}, Landroid/media/MediaExtractor;->advance()Z

    .line 4029
    :cond_c
    :goto_7
    if-eqz v9, :cond_0

    .line 4030
    const/4 v11, 0x1

    goto/16 :goto_1

    .line 4003
    :cond_d
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p4

    iput v0, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 4004
    const/4 v9, 0x1

    goto :goto_5

    .line 4018
    :cond_e
    const/4 v9, 0x1

    goto :goto_6

    .line 4024
    :cond_f
    const/16 v22, -0x1

    move/from16 v0, v22

    if-ne v10, v0, :cond_10

    .line 4025
    const/4 v9, 0x1

    goto :goto_7

    .line 4027
    :cond_10
    invoke-virtual/range {p2 .. p2}, Landroid/media/MediaExtractor;->advance()Z

    goto :goto_7

    .line 4034
    .end local v9    # "eof":Z
    .end local v10    # "index":I
    :cond_11
    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/media/MediaExtractor;->unselectTrack(I)V

    .line 4037
    .end local v8    # "buffer":Ljava/nio/ByteBuffer;
    .end local v11    # "inputDone":Z
    .end local v14    # "maxBufferSize":I
    .end local v15    # "muxerTrackIndex":I
    .end local v17    # "trackFormat":Landroid/media/MediaFormat;
    .end local v18    # "startTime":J
    :goto_8
    return-wide v18

    :cond_12
    const-wide/16 v18, -0x1

    goto :goto_8
.end method

.method private native readOpusFile(Ljava/nio/ByteBuffer;I[I)V
.end method

.method public static saveFile(Ljava/lang/String;Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V
    .locals 12
    .param p0, "fullPath"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "type"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "mime"    # Ljava/lang/String;

    .prologue
    .line 3225
    if-nez p0, :cond_1

    .line 3382
    :cond_0
    :goto_0
    return-void

    .line 3229
    :cond_1
    const/4 v8, 0x0

    .line 3230
    .local v8, "file":Ljava/io/File;
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2

    .line 3231
    new-instance v8, Ljava/io/File;

    .end local v8    # "file":Ljava/io/File;
    invoke-direct {v8, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3232
    .restart local v8    # "file":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3233
    const/4 v8, 0x0

    .line 3237
    :cond_2
    if-eqz v8, :cond_0

    .line 3241
    move-object v3, v8

    .line 3242
    .local v3, "sourceFile":Ljava/io/File;
    const/4 v0, 0x1

    new-array v4, v0, [Z

    .line 3243
    .local v4, "cancelled":[Z
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3244
    const/4 v9, 0x0

    .line 3245
    .local v9, "progressDialog":Lorg/telegram/ui/ActionBar/AlertDialog;
    if-eqz p1, :cond_3

    .line 3247
    :try_start_0
    new-instance v10, Lorg/telegram/ui/ActionBar/AlertDialog;

    const/4 v0, 0x2

    invoke-direct {v10, p1, v0}, Lorg/telegram/ui/ActionBar/AlertDialog;-><init>(Landroid/content/Context;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3248
    .end local v9    # "progressDialog":Lorg/telegram/ui/ActionBar/AlertDialog;
    .local v10, "progressDialog":Lorg/telegram/ui/ActionBar/AlertDialog;
    :try_start_1
    const-string/jumbo v0, "Loading"

    const v1, 0x7f0703eb

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 3249
    const/4 v0, 0x0

    invoke-virtual {v10, v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 3250
    const/4 v0, 0x1

    invoke-virtual {v10, v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->setCancelable(Z)V

    .line 3251
    new-instance v0, Lorg/telegram/messenger/MediaController$24;

    invoke-direct {v0, v4}, Lorg/telegram/messenger/MediaController$24;-><init>([Z)V

    invoke-virtual {v10, v0}, Lorg/telegram/ui/ActionBar/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 3257
    invoke-virtual {v10}, Lorg/telegram/ui/ActionBar/AlertDialog;->show()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v9, v10

    .line 3263
    .end local v10    # "progressDialog":Lorg/telegram/ui/ActionBar/AlertDialog;
    .restart local v9    # "progressDialog":Lorg/telegram/ui/ActionBar/AlertDialog;
    :cond_3
    :goto_1
    move-object v5, v9

    .line 3265
    .local v5, "finalProgress":Lorg/telegram/ui/ActionBar/AlertDialog;
    new-instance v11, Ljava/lang/Thread;

    new-instance v0, Lorg/telegram/messenger/MediaController$25;

    move v1, p2

    move-object v2, p3

    move-object/from16 v6, p4

    invoke-direct/range {v0 .. v6}, Lorg/telegram/messenger/MediaController$25;-><init>(ILjava/lang/String;Ljava/io/File;[ZLorg/telegram/ui/ActionBar/AlertDialog;Ljava/lang/String;)V

    invoke-direct {v11, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 3380
    invoke-virtual {v11}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 3258
    .end local v5    # "finalProgress":Lorg/telegram/ui/ActionBar/AlertDialog;
    :catch_0
    move-exception v7

    .line 3259
    .local v7, "e":Ljava/lang/Exception;
    :goto_2
    invoke-static {v7}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 3258
    .end local v7    # "e":Ljava/lang/Exception;
    .end local v9    # "progressDialog":Lorg/telegram/ui/ActionBar/AlertDialog;
    .restart local v10    # "progressDialog":Lorg/telegram/ui/ActionBar/AlertDialog;
    :catch_1
    move-exception v7

    move-object v9, v10

    .end local v10    # "progressDialog":Lorg/telegram/ui/ActionBar/AlertDialog;
    .restart local v9    # "progressDialog":Lorg/telegram/ui/ActionBar/AlertDialog;
    goto :goto_2
.end method

.method private native seekOpusFile(F)I
.end method

.method private seekOpusPlayer(F)V
    .locals 2
    .param p1, "progress"    # F

    .prologue
    .line 2084
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    .line 2115
    :goto_0
    return-void

    .line 2087
    :cond_0
    iget-boolean v0, p0, Lorg/telegram/messenger/MediaController;->isPaused:Z

    if-nez v0, :cond_1

    .line 2088
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->pause()V

    .line 2090
    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->flush()V

    .line 2091
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->fileDecodingQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MediaController$12;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/MediaController$12;-><init>(Lorg/telegram/messenger/MediaController;F)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static selectCodec(Ljava/lang/String;)Landroid/media/MediaCodecInfo;
    .locals 11
    .param p0, "mimeType"    # Ljava/lang/String;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 3851
    invoke-static {}, Landroid/media/MediaCodecList;->getCodecCount()I

    move-result v4

    .line 3852
    .local v4, "numCodecs":I
    const/4 v2, 0x0

    .line 3853
    .local v2, "lastCodecInfo":Landroid/media/MediaCodecInfo;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_4

    .line 3854
    invoke-static {v1}, Landroid/media/MediaCodecList;->getCodecInfoAt(I)Landroid/media/MediaCodecInfo;

    move-result-object v0

    .line 3855
    .local v0, "codecInfo":Landroid/media/MediaCodecInfo;
    invoke-virtual {v0}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v7

    if-nez v7, :cond_1

    .line 3853
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3858
    :cond_1
    invoke-virtual {v0}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v6

    .line 3859
    .local v6, "types":[Ljava/lang/String;
    array-length v8, v6

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v8, :cond_0

    aget-object v5, v6, v7

    .line 3860
    .local v5, "type":Ljava/lang/String;
    invoke-virtual {v5, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 3861
    move-object v2, v0

    .line 3862
    invoke-virtual {v2}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "OMX.SEC.avc.enc"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    move-object v3, v2

    .line 3870
    .end local v0    # "codecInfo":Landroid/media/MediaCodecInfo;
    .end local v2    # "lastCodecInfo":Landroid/media/MediaCodecInfo;
    .end local v5    # "type":Ljava/lang/String;
    .end local v6    # "types":[Ljava/lang/String;
    .local v3, "lastCodecInfo":Landroid/media/MediaCodecInfo;
    :goto_2
    return-object v3

    .line 3864
    .end local v3    # "lastCodecInfo":Landroid/media/MediaCodecInfo;
    .restart local v0    # "codecInfo":Landroid/media/MediaCodecInfo;
    .restart local v2    # "lastCodecInfo":Landroid/media/MediaCodecInfo;
    .restart local v5    # "type":Ljava/lang/String;
    .restart local v6    # "types":[Ljava/lang/String;
    :cond_2
    invoke-virtual {v2}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "OMX.SEC.AVC.Encoder"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    move-object v3, v2

    .line 3865
    .end local v2    # "lastCodecInfo":Landroid/media/MediaCodecInfo;
    .restart local v3    # "lastCodecInfo":Landroid/media/MediaCodecInfo;
    goto :goto_2

    .line 3859
    .end local v3    # "lastCodecInfo":Landroid/media/MediaCodecInfo;
    .restart local v2    # "lastCodecInfo":Landroid/media/MediaCodecInfo;
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .end local v0    # "codecInfo":Landroid/media/MediaCodecInfo;
    .end local v5    # "type":Ljava/lang/String;
    .end local v6    # "types":[Ljava/lang/String;
    :cond_4
    move-object v3, v2

    .line 3870
    .end local v2    # "lastCodecInfo":Landroid/media/MediaCodecInfo;
    .restart local v3    # "lastCodecInfo":Landroid/media/MediaCodecInfo;
    goto :goto_2
.end method

.method public static selectColorFormat(Landroid/media/MediaCodecInfo;Ljava/lang/String;)I
    .locals 6
    .param p0, "codecInfo"    # Landroid/media/MediaCodecInfo;
    .param p1, "mimeType"    # Ljava/lang/String;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 3888
    invoke-virtual {p0, p1}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v0

    .line 3889
    .local v0, "capabilities":Landroid/media/MediaCodecInfo$CodecCapabilities;
    const/4 v3, 0x0

    .line 3890
    .local v3, "lastColorFormat":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v4, v0, Landroid/media/MediaCodecInfo$CodecCapabilities;->colorFormats:[I

    array-length v4, v4

    if-ge v2, v4, :cond_2

    .line 3891
    iget-object v4, v0, Landroid/media/MediaCodecInfo$CodecCapabilities;->colorFormats:[I

    aget v1, v4, v2

    .line 3892
    .local v1, "colorFormat":I
    invoke-static {v1}, Lorg/telegram/messenger/MediaController;->isRecognizedFormat(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3893
    move v3, v1

    .line 3894
    invoke-virtual {p0}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "OMX.SEC.AVC.Encoder"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v4, 0x13

    if-eq v1, v4, :cond_1

    .line 3899
    .end local v1    # "colorFormat":I
    :cond_0
    :goto_1
    return v1

    .line 3890
    .restart local v1    # "colorFormat":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v1    # "colorFormat":I
    :cond_2
    move v1, v3

    .line 3899
    goto :goto_1
.end method

.method private selectTrack(Landroid/media/MediaExtractor;Z)I
    .locals 5
    .param p1, "extractor"    # Landroid/media/MediaExtractor;
    .param p2, "audio"    # Z
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 3904
    invoke-virtual {p1}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v3

    .line 3905
    .local v3, "numTracks":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_3

    .line 3906
    invoke-virtual {p1, v1}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v0

    .line 3907
    .local v0, "format":Landroid/media/MediaFormat;
    const-string/jumbo v4, "mime"

    invoke-virtual {v0, v4}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3908
    .local v2, "mime":Ljava/lang/String;
    if-eqz p2, :cond_1

    .line 3909
    const-string/jumbo v4, "audio/"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 3918
    .end local v0    # "format":Landroid/media/MediaFormat;
    .end local v1    # "i":I
    .end local v2    # "mime":Ljava/lang/String;
    :cond_0
    :goto_1
    return v1

    .line 3913
    .restart local v0    # "format":Landroid/media/MediaFormat;
    .restart local v1    # "i":I
    .restart local v2    # "mime":Ljava/lang/String;
    :cond_1
    const-string/jumbo v4, "video/"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 3905
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3918
    .end local v0    # "format":Landroid/media/MediaFormat;
    .end local v2    # "mime":Ljava/lang/String;
    :cond_3
    const/4 v1, -0x5

    goto :goto_1
.end method

.method private setPlayerVolume()V
    .locals 4

    .prologue
    .line 805
    :try_start_0
    iget v2, p0, Lorg/telegram/messenger/MediaController;->audioFocus:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    .line 806
    const/high16 v1, 0x3f800000    # 1.0f

    .line 810
    .local v1, "volume":F
    :goto_0
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    if-eqz v2, :cond_2

    .line 811
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2, v1, v1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 820
    .end local v1    # "volume":F
    :cond_0
    :goto_1
    return-void

    .line 808
    :cond_1
    const v1, 0x3e4ccccd    # 0.2f

    .restart local v1    # "volume":F
    goto :goto_0

    .line 812
    :cond_2
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;

    if-eqz v2, :cond_3

    .line 813
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;

    invoke-virtual {v2, v1, v1}, Landroid/media/AudioTrack;->setStereoVolume(FF)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 817
    .end local v1    # "volume":F
    :catch_0
    move-exception v0

    .line 818
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 814
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "volume":F
    :cond_3
    :try_start_1
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-eqz v2, :cond_0

    .line 815
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/VideoPlayer;->setVolume(F)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private setUseFrontSpeaker(Z)V
    .locals 3
    .param p1, "value"    # Z

    .prologue
    const/4 v2, 0x0

    .line 1833
    iput-boolean p1, p0, Lorg/telegram/messenger/MediaController;->useFrontSpeaker:Z

    .line 1834
    invoke-static {}, Lorg/telegram/messenger/NotificationsController;->getInstance()Lorg/telegram/messenger/NotificationsController;

    move-result-object v1

    iget-object v0, v1, Lorg/telegram/messenger/NotificationsController;->audioManager:Landroid/media/AudioManager;

    .line 1835
    .local v0, "audioManager":Landroid/media/AudioManager;
    iget-boolean v1, p0, Lorg/telegram/messenger/MediaController;->useFrontSpeaker:Z

    if-eqz v1, :cond_0

    .line 1836
    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->setBluetoothScoOn(Z)V

    .line 1837
    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    .line 1841
    :goto_0
    return-void

    .line 1839
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    goto :goto_0
.end method

.method private startAudioAgain(Z)V
    .locals 9
    .param p1, "paused"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1853
    iget-object v5, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-nez v5, :cond_1

    .line 1885
    :cond_0
    :goto_0
    return-void

    .line 1857
    :cond_1
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v5

    sget v6, Lorg/telegram/messenger/NotificationCenter;->audioRouteChanged:I

    new-array v7, v4, [Ljava/lang/Object;

    iget-boolean v8, p0, Lorg/telegram/messenger/MediaController;->useFrontSpeaker:Z

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v7, v3

    invoke-virtual {v5, v6, v7}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 1858
    iget-object v5, p0, Lorg/telegram/messenger/MediaController;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-eqz v5, :cond_4

    .line 1859
    iget-object v4, p0, Lorg/telegram/messenger/MediaController;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    iget-boolean v5, p0, Lorg/telegram/messenger/MediaController;->useFrontSpeaker:Z

    if-eqz v5, :cond_2

    :goto_1
    invoke-virtual {v4, v3}, Lorg/telegram/ui/Components/VideoPlayer;->setStreamType(I)V

    .line 1860
    if-nez p1, :cond_3

    .line 1861
    iget-object v3, p0, Lorg/telegram/messenger/MediaController;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/VideoPlayer;->play()V

    goto :goto_0

    .line 1859
    :cond_2
    const/4 v3, 0x3

    goto :goto_1

    .line 1863
    :cond_3
    iget-object v3, p0, Lorg/telegram/messenger/MediaController;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/VideoPlayer;->pause()V

    goto :goto_0

    .line 1866
    :cond_4
    iget-object v5, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    if-eqz v5, :cond_5

    move v1, v4

    .line 1867
    .local v1, "post":Z
    :goto_2
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    .line 1868
    .local v0, "currentMessageObject":Lorg/telegram/messenger/MessageObject;
    iget-object v5, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    iget v2, v5, Lorg/telegram/messenger/MessageObject;->audioProgress:F

    .line 1869
    .local v2, "progress":F
    invoke-virtual {p0, v3, v4}, Lorg/telegram/messenger/MediaController;->cleanupPlayer(ZZ)V

    .line 1870
    iput v2, v0, Lorg/telegram/messenger/MessageObject;->audioProgress:F

    .line 1871
    invoke-virtual {p0, v0}, Lorg/telegram/messenger/MediaController;->playMessage(Lorg/telegram/messenger/MessageObject;)Z

    .line 1872
    if-eqz p1, :cond_0

    .line 1873
    if-eqz v1, :cond_6

    .line 1874
    new-instance v3, Lorg/telegram/messenger/MediaController$9;

    invoke-direct {v3, p0, v0}, Lorg/telegram/messenger/MediaController$9;-><init>(Lorg/telegram/messenger/MediaController;Lorg/telegram/messenger/MessageObject;)V

    const-wide/16 v4, 0x64

    invoke-static {v3, v4, v5}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto :goto_0

    .end local v0    # "currentMessageObject":Lorg/telegram/messenger/MessageObject;
    .end local v1    # "post":Z
    .end local v2    # "progress":F
    :cond_5
    move v1, v3

    .line 1866
    goto :goto_2

    .line 1881
    .restart local v0    # "currentMessageObject":Lorg/telegram/messenger/MessageObject;
    .restart local v1    # "post":Z
    .restart local v2    # "progress":F
    :cond_6
    invoke-virtual {p0, v0}, Lorg/telegram/messenger/MediaController;->pauseMessage(Lorg/telegram/messenger/MessageObject;)Z

    goto :goto_0
.end method

.method private startProgressTimer(Lorg/telegram/messenger/MessageObject;)V
    .locals 8
    .param p1, "currentPlayingMessageObject"    # Lorg/telegram/messenger/MessageObject;

    .prologue
    .line 823
    iget-object v7, p0, Lorg/telegram/messenger/MediaController;->progressTimerSync:Ljava/lang/Object;

    monitor-enter v7

    .line 824
    :try_start_0
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->progressTimer:Ljava/util/Timer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 826
    :try_start_1
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->progressTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 827
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/messenger/MediaController;->progressTimer:Ljava/util/Timer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 832
    :cond_0
    :goto_0
    :try_start_2
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/MediaController;->progressTimer:Ljava/util/Timer;

    .line 833
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->progressTimer:Ljava/util/Timer;

    new-instance v1, Lorg/telegram/messenger/MediaController$5;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/MediaController$5;-><init>(Lorg/telegram/messenger/MediaController;Lorg/telegram/messenger/MessageObject;)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x11

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 883
    monitor-exit v7

    .line 884
    return-void

    .line 828
    :catch_0
    move-exception v6

    .line 829
    .local v6, "e":Ljava/lang/Exception;
    invoke-static {v6}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 883
    .end local v6    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method private native startRecord(Ljava/lang/String;)I
.end method

.method private startVideoConvertFromQueue()Z
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 3824
    iget-object v6, p0, Lorg/telegram/messenger/MediaController;->videoConvertQueue:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3

    .line 3825
    iget-object v6, p0, Lorg/telegram/messenger/MediaController;->videoConvertSync:Ljava/lang/Object;

    monitor-enter v6

    .line 3826
    const/4 v7, 0x0

    :try_start_0
    iput-boolean v7, p0, Lorg/telegram/messenger/MediaController;->cancelCurrentVideoConversion:Z

    .line 3827
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3828
    iget-object v6, p0, Lorg/telegram/messenger/MediaController;->videoConvertQueue:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/MessageObject;

    .line 3829
    .local v3, "messageObject":Lorg/telegram/messenger/MessageObject;
    new-instance v2, Landroid/content/Intent;

    sget-object v5, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-class v6, Lorg/telegram/messenger/VideoEncodingService;

    invoke-direct {v2, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3830
    .local v2, "intent":Landroid/content/Intent;
    const-string/jumbo v5, "path"

    iget-object v6, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3831
    iget-object v5, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v5, :cond_0

    .line 3832
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    iget-object v5, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_0

    .line 3833
    iget-object v5, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    .line 3834
    .local v1, "documentAttribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    instance-of v5, v1, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAnimated;

    if-eqz v5, :cond_2

    .line 3835
    const-string/jumbo v5, "gif"

    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3840
    .end local v0    # "a":I
    .end local v1    # "documentAttribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    :cond_0
    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v5

    if-eqz v5, :cond_1

    .line 3841
    sget-object v5, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v5, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 3843
    :cond_1
    invoke-static {v3}, Lorg/telegram/messenger/MediaController$VideoConvertRunnable;->runConversion(Lorg/telegram/messenger/MessageObject;)V

    .line 3846
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "messageObject":Lorg/telegram/messenger/MessageObject;
    :goto_1
    return v4

    .line 3827
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 3832
    .restart local v0    # "a":I
    .restart local v1    # "documentAttribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    .restart local v2    # "intent":Landroid/content/Intent;
    .restart local v3    # "messageObject":Lorg/telegram/messenger/MessageObject;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v0    # "a":I
    .end local v1    # "documentAttribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "messageObject":Lorg/telegram/messenger/MessageObject;
    :cond_3
    move v4, v5

    .line 3846
    goto :goto_1
.end method

.method private stopProgressTimer()V
    .locals 3

    .prologue
    .line 887
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->progressTimerSync:Ljava/lang/Object;

    monitor-enter v2

    .line 888
    :try_start_0
    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->progressTimer:Ljava/util/Timer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 890
    :try_start_1
    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->progressTimer:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 891
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/telegram/messenger/MediaController;->progressTimer:Ljava/util/Timer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 896
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v2

    .line 897
    return-void

    .line 892
    :catch_0
    move-exception v0

    .line 893
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 896
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private native stopRecord()V
.end method

.method private stopRecordingInternal(I)V
    .locals 6
    .param p1, "send"    # I

    .prologue
    const/4 v5, 0x0

    .line 3139
    if-eqz p1, :cond_0

    .line 3140
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->recordingAudio:Lorg/telegram/tgnet/TLRPC$TL_document;

    .line 3141
    .local v0, "audioToSend":Lorg/telegram/tgnet/TLRPC$TL_document;
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->recordingAudioFile:Ljava/io/File;

    .line 3142
    .local v2, "recordingAudioFileToSend":Ljava/io/File;
    iget-object v3, p0, Lorg/telegram/messenger/MediaController;->fileEncodingQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v4, Lorg/telegram/messenger/MediaController$22;

    invoke-direct {v4, p0, v0, v2, p1}, Lorg/telegram/messenger/MediaController$22;-><init>(Lorg/telegram/messenger/MediaController;Lorg/telegram/tgnet/TLRPC$TL_document;Ljava/io/File;I)V

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 3174
    .end local v0    # "audioToSend":Lorg/telegram/tgnet/TLRPC$TL_document;
    .end local v2    # "recordingAudioFileToSend":Ljava/io/File;
    :cond_0
    :try_start_0
    iget-object v3, p0, Lorg/telegram/messenger/MediaController;->audioRecorder:Landroid/media/AudioRecord;

    if-eqz v3, :cond_1

    .line 3175
    iget-object v3, p0, Lorg/telegram/messenger/MediaController;->audioRecorder:Landroid/media/AudioRecord;

    invoke-virtual {v3}, Landroid/media/AudioRecord;->release()V

    .line 3176
    const/4 v3, 0x0

    iput-object v3, p0, Lorg/telegram/messenger/MediaController;->audioRecorder:Landroid/media/AudioRecord;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3181
    :cond_1
    :goto_0
    iput-object v5, p0, Lorg/telegram/messenger/MediaController;->recordingAudio:Lorg/telegram/tgnet/TLRPC$TL_document;

    .line 3182
    iput-object v5, p0, Lorg/telegram/messenger/MediaController;->recordingAudioFile:Ljava/io/File;

    .line 3183
    return-void

    .line 3178
    :catch_0
    move-exception v1

    .line 3179
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private native writeFrame(Ljava/nio/ByteBuffer;I)I
.end method


# virtual methods
.method public addLoadingFileObserver(Ljava/lang/String;Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;)V
    .locals 1
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "observer"    # Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;

    .prologue
    .line 1317
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lorg/telegram/messenger/MediaController;->addLoadingFileObserver(Ljava/lang/String;Lorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;)V

    .line 1318
    return-void
.end method

.method public addLoadingFileObserver(Ljava/lang/String;Lorg/telegram/messenger/MessageObject;Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;)V
    .locals 4
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "messageObject"    # Lorg/telegram/messenger/MessageObject;
    .param p3, "observer"    # Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;

    .prologue
    .line 1321
    iget-boolean v2, p0, Lorg/telegram/messenger/MediaController;->listenerInProgress:Z

    if-eqz v2, :cond_0

    .line 1322
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->addLaterArray:Ljava/util/HashMap;

    invoke-virtual {v2, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1343
    :goto_0
    return-void

    .line 1325
    :cond_0
    invoke-virtual {p0, p3}, Lorg/telegram/messenger/MediaController;->removeLoadingFileObserver(Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;)V

    .line 1327
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->loadingFileObservers:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 1328
    .local v0, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/ref/WeakReference<Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;>;>;"
    if-nez v0, :cond_1

    .line 1329
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/ref/WeakReference<Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;>;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1330
    .restart local v0    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/ref/WeakReference<Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;>;>;"
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->loadingFileObservers:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1332
    :cond_1
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1333
    if-eqz p2, :cond_3

    .line 1334
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->loadingFileMessagesObservers:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 1335
    .local v1, "messageObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    if-nez v1, :cond_2

    .line 1336
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "messageObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1337
    .restart local v1    # "messageObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->loadingFileMessagesObservers:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1339
    :cond_2
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1342
    .end local v1    # "messageObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    :cond_3
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->observersByTag:Ljava/util/HashMap;

    invoke-interface {p3}, Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;->getObserverTag()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public canAutoplayGifs()Z
    .locals 1

    .prologue
    .line 3579
    iget-boolean v0, p0, Lorg/telegram/messenger/MediaController;->autoplayGifs:Z

    return v0
.end method

.method public canCustomTabs()Z
    .locals 1

    .prologue
    .line 3587
    iget-boolean v0, p0, Lorg/telegram/messenger/MediaController;->customTabs:Z

    return v0
.end method

.method public canDirectShare()Z
    .locals 1

    .prologue
    .line 3591
    iget-boolean v0, p0, Lorg/telegram/messenger/MediaController;->directShare:Z

    return v0
.end method

.method public canDownloadMedia(I)Z
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 1063
    invoke-direct {p0}, Lorg/telegram/messenger/MediaController;->getCurrentDownloadMask()I

    move-result v0

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public canRaiseToSpeak()Z
    .locals 1

    .prologue
    .line 3583
    iget-boolean v0, p0, Lorg/telegram/messenger/MediaController;->raiseToSpeak:Z

    return v0
.end method

.method public canSaveToGallery()Z
    .locals 1

    .prologue
    .line 3575
    iget-boolean v0, p0, Lorg/telegram/messenger/MediaController;->saveToGallery:Z

    return v0
.end method

.method public cancelVideoConvert(Lorg/telegram/messenger/MessageObject;)V
    .locals 2
    .param p1, "messageObject"    # Lorg/telegram/messenger/MessageObject;

    .prologue
    .line 3806
    if-nez p1, :cond_1

    .line 3807
    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->videoConvertSync:Ljava/lang/Object;

    monitor-enter v1

    .line 3808
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lorg/telegram/messenger/MediaController;->cancelCurrentVideoConversion:Z

    .line 3809
    monitor-exit v1

    .line 3821
    :cond_0
    :goto_0
    return-void

    .line 3809
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 3811
    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->videoConvertQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3812
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->videoConvertQueue:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_2

    .line 3813
    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->videoConvertSync:Ljava/lang/Object;

    monitor-enter v1

    .line 3814
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lorg/telegram/messenger/MediaController;->cancelCurrentVideoConversion:Z

    .line 3815
    monitor-exit v1

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    .line 3817
    :cond_2
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->videoConvertQueue:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public checkAutodownloadSettings()V
    .locals 12

    .prologue
    const/16 v11, 0x10

    const/16 v10, 0x8

    const/4 v9, 0x4

    const/4 v8, 0x2

    const/4 v7, 0x1

    .line 948
    invoke-direct {p0}, Lorg/telegram/messenger/MediaController;->getCurrentDownloadMask()I

    move-result v1

    .line 949
    .local v1, "currentMask":I
    iget v5, p0, Lorg/telegram/messenger/MediaController;->lastCheckMask:I

    if-ne v1, v5, :cond_1

    .line 1060
    :cond_0
    :goto_0
    return-void

    .line 952
    :cond_1
    iput v1, p0, Lorg/telegram/messenger/MediaController;->lastCheckMask:I

    .line 953
    and-int/lit8 v5, v1, 0x1

    if-eqz v5, :cond_9

    .line 954
    iget-object v5, p0, Lorg/telegram/messenger/MediaController;->photoDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 955
    invoke-virtual {p0, v7}, Lorg/telegram/messenger/MediaController;->newDownloadObjectsAvailable(I)V

    .line 964
    :cond_2
    :goto_1
    and-int/lit8 v5, v1, 0x2

    if-eqz v5, :cond_b

    .line 965
    iget-object v5, p0, Lorg/telegram/messenger/MediaController;->audioDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 966
    invoke-virtual {p0, v8}, Lorg/telegram/messenger/MediaController;->newDownloadObjectsAvailable(I)V

    .line 975
    :cond_3
    :goto_2
    and-int/lit8 v5, v1, 0x40

    if-eqz v5, :cond_d

    .line 976
    iget-object v5, p0, Lorg/telegram/messenger/MediaController;->videoMessageDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 977
    const/16 v5, 0x40

    invoke-virtual {p0, v5}, Lorg/telegram/messenger/MediaController;->newDownloadObjectsAvailable(I)V

    .line 986
    :cond_4
    :goto_3
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_f

    .line 987
    iget-object v5, p0, Lorg/telegram/messenger/MediaController;->documentDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 988
    invoke-virtual {p0, v10}, Lorg/telegram/messenger/MediaController;->newDownloadObjectsAvailable(I)V

    .line 998
    :cond_5
    :goto_4
    and-int/lit8 v5, v1, 0x4

    if-eqz v5, :cond_11

    .line 999
    iget-object v5, p0, Lorg/telegram/messenger/MediaController;->videoDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1000
    invoke-virtual {p0, v9}, Lorg/telegram/messenger/MediaController;->newDownloadObjectsAvailable(I)V

    .line 1009
    :cond_6
    :goto_5
    and-int/lit8 v5, v1, 0x10

    if-eqz v5, :cond_13

    .line 1010
    iget-object v5, p0, Lorg/telegram/messenger/MediaController;->musicDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1011
    invoke-virtual {p0, v11}, Lorg/telegram/messenger/MediaController;->newDownloadObjectsAvailable(I)V

    .line 1021
    :cond_7
    :goto_6
    and-int/lit8 v5, v1, 0x20

    if-eqz v5, :cond_15

    .line 1022
    iget-object v5, p0, Lorg/telegram/messenger/MediaController;->gifDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1023
    const/16 v5, 0x20

    invoke-virtual {p0, v5}, Lorg/telegram/messenger/MediaController;->newDownloadObjectsAvailable(I)V

    .line 1034
    :cond_8
    :goto_7
    invoke-virtual {p0}, Lorg/telegram/messenger/MediaController;->getAutodownloadMask()I

    move-result v4

    .line 1035
    .local v4, "mask":I
    if-nez v4, :cond_17

    .line 1036
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lorg/telegram/messenger/MessagesStorage;->clearDownloadQueue(I)V

    goto :goto_0

    .line 958
    .end local v4    # "mask":I
    :cond_9
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_8
    iget-object v5, p0, Lorg/telegram/messenger/MediaController;->photoDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_a

    .line 959
    iget-object v5, p0, Lorg/telegram/messenger/MediaController;->photoDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/DownloadObject;

    .line 960
    .local v3, "downloadObject":Lorg/telegram/messenger/DownloadObject;
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v6

    iget-object v5, v3, Lorg/telegram/messenger/DownloadObject;->object:Lorg/telegram/tgnet/TLObject;

    check-cast v5, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    invoke-virtual {v6, v5}, Lorg/telegram/messenger/FileLoader;->cancelLoadFile(Lorg/telegram/tgnet/TLRPC$PhotoSize;)V

    .line 958
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 962
    .end local v3    # "downloadObject":Lorg/telegram/messenger/DownloadObject;
    :cond_a
    iget-object v5, p0, Lorg/telegram/messenger/MediaController;->photoDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_1

    .line 969
    .end local v0    # "a":I
    :cond_b
    const/4 v0, 0x0

    .restart local v0    # "a":I
    :goto_9
    iget-object v5, p0, Lorg/telegram/messenger/MediaController;->audioDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_c

    .line 970
    iget-object v5, p0, Lorg/telegram/messenger/MediaController;->audioDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/DownloadObject;

    .line 971
    .restart local v3    # "downloadObject":Lorg/telegram/messenger/DownloadObject;
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v6

    iget-object v5, v3, Lorg/telegram/messenger/DownloadObject;->object:Lorg/telegram/tgnet/TLObject;

    check-cast v5, Lorg/telegram/tgnet/TLRPC$Document;

    invoke-virtual {v6, v5}, Lorg/telegram/messenger/FileLoader;->cancelLoadFile(Lorg/telegram/tgnet/TLRPC$Document;)V

    .line 969
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 973
    .end local v3    # "downloadObject":Lorg/telegram/messenger/DownloadObject;
    :cond_c
    iget-object v5, p0, Lorg/telegram/messenger/MediaController;->audioDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_2

    .line 980
    .end local v0    # "a":I
    :cond_d
    const/4 v0, 0x0

    .restart local v0    # "a":I
    :goto_a
    iget-object v5, p0, Lorg/telegram/messenger/MediaController;->videoMessageDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_e

    .line 981
    iget-object v5, p0, Lorg/telegram/messenger/MediaController;->videoMessageDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/DownloadObject;

    .line 982
    .restart local v3    # "downloadObject":Lorg/telegram/messenger/DownloadObject;
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v6

    iget-object v5, v3, Lorg/telegram/messenger/DownloadObject;->object:Lorg/telegram/tgnet/TLObject;

    check-cast v5, Lorg/telegram/tgnet/TLRPC$Document;

    invoke-virtual {v6, v5}, Lorg/telegram/messenger/FileLoader;->cancelLoadFile(Lorg/telegram/tgnet/TLRPC$Document;)V

    .line 980
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 984
    .end local v3    # "downloadObject":Lorg/telegram/messenger/DownloadObject;
    :cond_e
    iget-object v5, p0, Lorg/telegram/messenger/MediaController;->videoMessageDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_3

    .line 991
    .end local v0    # "a":I
    :cond_f
    const/4 v0, 0x0

    .restart local v0    # "a":I
    :goto_b
    iget-object v5, p0, Lorg/telegram/messenger/MediaController;->documentDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_10

    .line 992
    iget-object v5, p0, Lorg/telegram/messenger/MediaController;->documentDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/DownloadObject;

    .line 993
    .restart local v3    # "downloadObject":Lorg/telegram/messenger/DownloadObject;
    iget-object v2, v3, Lorg/telegram/messenger/DownloadObject;->object:Lorg/telegram/tgnet/TLObject;

    check-cast v2, Lorg/telegram/tgnet/TLRPC$Document;

    .line 994
    .local v2, "document":Lorg/telegram/tgnet/TLRPC$Document;
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v5

    invoke-virtual {v5, v2}, Lorg/telegram/messenger/FileLoader;->cancelLoadFile(Lorg/telegram/tgnet/TLRPC$Document;)V

    .line 991
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 996
    .end local v2    # "document":Lorg/telegram/tgnet/TLRPC$Document;
    .end local v3    # "downloadObject":Lorg/telegram/messenger/DownloadObject;
    :cond_10
    iget-object v5, p0, Lorg/telegram/messenger/MediaController;->documentDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_4

    .line 1003
    .end local v0    # "a":I
    :cond_11
    const/4 v0, 0x0

    .restart local v0    # "a":I
    :goto_c
    iget-object v5, p0, Lorg/telegram/messenger/MediaController;->videoDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_12

    .line 1004
    iget-object v5, p0, Lorg/telegram/messenger/MediaController;->videoDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/DownloadObject;

    .line 1005
    .restart local v3    # "downloadObject":Lorg/telegram/messenger/DownloadObject;
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v6

    iget-object v5, v3, Lorg/telegram/messenger/DownloadObject;->object:Lorg/telegram/tgnet/TLObject;

    check-cast v5, Lorg/telegram/tgnet/TLRPC$Document;

    invoke-virtual {v6, v5}, Lorg/telegram/messenger/FileLoader;->cancelLoadFile(Lorg/telegram/tgnet/TLRPC$Document;)V

    .line 1003
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 1007
    .end local v3    # "downloadObject":Lorg/telegram/messenger/DownloadObject;
    :cond_12
    iget-object v5, p0, Lorg/telegram/messenger/MediaController;->videoDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_5

    .line 1014
    .end local v0    # "a":I
    :cond_13
    const/4 v0, 0x0

    .restart local v0    # "a":I
    :goto_d
    iget-object v5, p0, Lorg/telegram/messenger/MediaController;->musicDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_14

    .line 1015
    iget-object v5, p0, Lorg/telegram/messenger/MediaController;->musicDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/DownloadObject;

    .line 1016
    .restart local v3    # "downloadObject":Lorg/telegram/messenger/DownloadObject;
    iget-object v2, v3, Lorg/telegram/messenger/DownloadObject;->object:Lorg/telegram/tgnet/TLObject;

    check-cast v2, Lorg/telegram/tgnet/TLRPC$Document;

    .line 1017
    .restart local v2    # "document":Lorg/telegram/tgnet/TLRPC$Document;
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v5

    invoke-virtual {v5, v2}, Lorg/telegram/messenger/FileLoader;->cancelLoadFile(Lorg/telegram/tgnet/TLRPC$Document;)V

    .line 1014
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 1019
    .end local v2    # "document":Lorg/telegram/tgnet/TLRPC$Document;
    .end local v3    # "downloadObject":Lorg/telegram/messenger/DownloadObject;
    :cond_14
    iget-object v5, p0, Lorg/telegram/messenger/MediaController;->musicDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_6

    .line 1026
    .end local v0    # "a":I
    :cond_15
    const/4 v0, 0x0

    .restart local v0    # "a":I
    :goto_e
    iget-object v5, p0, Lorg/telegram/messenger/MediaController;->gifDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_16

    .line 1027
    iget-object v5, p0, Lorg/telegram/messenger/MediaController;->gifDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/DownloadObject;

    .line 1028
    .restart local v3    # "downloadObject":Lorg/telegram/messenger/DownloadObject;
    iget-object v2, v3, Lorg/telegram/messenger/DownloadObject;->object:Lorg/telegram/tgnet/TLObject;

    check-cast v2, Lorg/telegram/tgnet/TLRPC$Document;

    .line 1029
    .restart local v2    # "document":Lorg/telegram/tgnet/TLRPC$Document;
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v5

    invoke-virtual {v5, v2}, Lorg/telegram/messenger/FileLoader;->cancelLoadFile(Lorg/telegram/tgnet/TLRPC$Document;)V

    .line 1026
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 1031
    .end local v2    # "document":Lorg/telegram/tgnet/TLRPC$Document;
    .end local v3    # "downloadObject":Lorg/telegram/messenger/DownloadObject;
    :cond_16
    iget-object v5, p0, Lorg/telegram/messenger/MediaController;->gifDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_7

    .line 1038
    .end local v0    # "a":I
    .restart local v4    # "mask":I
    :cond_17
    and-int/lit8 v5, v4, 0x1

    if-nez v5, :cond_18

    .line 1039
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v5

    invoke-virtual {v5, v7}, Lorg/telegram/messenger/MessagesStorage;->clearDownloadQueue(I)V

    .line 1041
    :cond_18
    and-int/lit8 v5, v4, 0x2

    if-nez v5, :cond_19

    .line 1042
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v5

    invoke-virtual {v5, v8}, Lorg/telegram/messenger/MessagesStorage;->clearDownloadQueue(I)V

    .line 1044
    :cond_19
    and-int/lit8 v5, v4, 0x40

    if-nez v5, :cond_1a

    .line 1045
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v5

    const/16 v6, 0x40

    invoke-virtual {v5, v6}, Lorg/telegram/messenger/MessagesStorage;->clearDownloadQueue(I)V

    .line 1047
    :cond_1a
    and-int/lit8 v5, v4, 0x4

    if-nez v5, :cond_1b

    .line 1048
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v5

    invoke-virtual {v5, v9}, Lorg/telegram/messenger/MessagesStorage;->clearDownloadQueue(I)V

    .line 1050
    :cond_1b
    and-int/lit8 v5, v4, 0x8

    if-nez v5, :cond_1c

    .line 1051
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v5

    invoke-virtual {v5, v10}, Lorg/telegram/messenger/MessagesStorage;->clearDownloadQueue(I)V

    .line 1053
    :cond_1c
    and-int/lit8 v5, v4, 0x10

    if-nez v5, :cond_1d

    .line 1054
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v5

    invoke-virtual {v5, v11}, Lorg/telegram/messenger/MessagesStorage;->clearDownloadQueue(I)V

    .line 1056
    :cond_1d
    and-int/lit8 v5, v4, 0x20

    if-nez v5, :cond_0

    .line 1057
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v5

    const/16 v6, 0x20

    invoke-virtual {v5, v6}, Lorg/telegram/messenger/MessagesStorage;->clearDownloadQueue(I)V

    goto/16 :goto_0
.end method

.method public checkSaveToGalleryFiles()V
    .locals 6

    .prologue
    .line 3548
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    const-string/jumbo v5, "Telegram"

    invoke-direct {v2, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3549
    .local v2, "telegramPath":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string/jumbo v4, "Telegram Images"

    invoke-direct {v1, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3550
    .local v1, "imagePath":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 3551
    new-instance v3, Ljava/io/File;

    const-string/jumbo v4, "Telegram Video"

    invoke-direct {v3, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3552
    .local v3, "videoPath":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->mkdir()Z

    .line 3554
    iget-boolean v4, p0, Lorg/telegram/messenger/MediaController;->saveToGallery:Z

    if-eqz v4, :cond_2

    .line 3555
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3556
    new-instance v4, Ljava/io/File;

    const-string/jumbo v5, ".nomedia"

    invoke-direct {v4, v1, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 3558
    :cond_0
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3559
    new-instance v4, Ljava/io/File;

    const-string/jumbo v5, ".nomedia"

    invoke-direct {v4, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 3572
    .end local v1    # "imagePath":Ljava/io/File;
    .end local v2    # "telegramPath":Ljava/io/File;
    .end local v3    # "videoPath":Ljava/io/File;
    :cond_1
    :goto_0
    return-void

    .line 3562
    .restart local v1    # "imagePath":Ljava/io/File;
    .restart local v2    # "telegramPath":Ljava/io/File;
    .restart local v3    # "videoPath":Ljava/io/File;
    :cond_2
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 3563
    new-instance v4, Ljava/io/File;

    const-string/jumbo v5, ".nomedia"

    invoke-direct {v4, v1, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    .line 3565
    :cond_3
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3566
    new-instance v4, Ljava/io/File;

    const-string/jumbo v5, ".nomedia"

    invoke-direct {v4, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3569
    .end local v1    # "imagePath":Ljava/io/File;
    .end local v2    # "telegramPath":Ljava/io/File;
    .end local v3    # "videoPath":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 3570
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public cleanup()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 900
    const/4 v0, 0x1

    invoke-virtual {p0, v2, v0}, Lorg/telegram/messenger/MediaController;->cleanupPlayer(ZZ)V

    .line 901
    iput-object v1, p0, Lorg/telegram/messenger/MediaController;->audioInfo:Lorg/telegram/messenger/audioinfo/AudioInfo;

    .line 902
    iput-boolean v2, p0, Lorg/telegram/messenger/MediaController;->playMusicAgain:Z

    .line 903
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->photoDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 904
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->audioDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 905
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->videoMessageDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 906
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->documentDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 907
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->videoDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 908
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->musicDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 909
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->gifDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 910
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->downloadQueueKeys:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 911
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->videoConvertQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 912
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->playlist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 913
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->shuffledPlaylist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 914
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->generatingWaveform:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 915
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->typingTimes:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 916
    iput-object v1, p0, Lorg/telegram/messenger/MediaController;->voiceMessagesPlaylist:Ljava/util/ArrayList;

    .line 917
    iput-object v1, p0, Lorg/telegram/messenger/MediaController;->voiceMessagesPlaylistMap:Ljava/util/HashMap;

    .line 918
    invoke-virtual {p0, v1}, Lorg/telegram/messenger/MediaController;->cancelVideoConvert(Lorg/telegram/messenger/MessageObject;)V

    .line 919
    return-void
.end method

.method public cleanupPlayer(ZZ)V
    .locals 1
    .param p1, "notify"    # Z
    .param p2, "stopService"    # Z

    .prologue
    .line 1972
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/telegram/messenger/MediaController;->cleanupPlayer(ZZZ)V

    .line 1973
    return-void
.end method

.method public cleanupPlayer(ZZZ)V
    .locals 11
    .param p1, "notify"    # Z
    .param p2, "stopService"    # Z
    .param p3, "byVoiceEnd"    # Z

    .prologue
    .line 1976
    iget-object v6, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    if-eqz v6, :cond_6

    .line 1978
    :try_start_0
    iget-object v6, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v6}, Landroid/media/MediaPlayer;->reset()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1983
    :goto_0
    :try_start_1
    iget-object v6, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v6}, Landroid/media/MediaPlayer;->stop()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1988
    :goto_1
    :try_start_2
    iget-object v6, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v6}, Landroid/media/MediaPlayer;->release()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 1992
    :goto_2
    const/4 v6, 0x0

    iput-object v6, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    .line 2021
    :cond_0
    :goto_3
    invoke-direct {p0}, Lorg/telegram/messenger/MediaController;->stopProgressTimer()V

    .line 2022
    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lorg/telegram/messenger/MediaController;->lastProgress:J

    .line 2023
    const/4 v6, 0x0

    iput v6, p0, Lorg/telegram/messenger/MediaController;->buffersWrited:I

    .line 2024
    const/4 v6, 0x0

    iput-boolean v6, p0, Lorg/telegram/messenger/MediaController;->isPaused:Z

    .line 2025
    iget-object v6, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v6, :cond_4

    .line 2026
    iget-boolean v6, p0, Lorg/telegram/messenger/MediaController;->downloadingCurrentMessage:Z

    if-eqz v6, :cond_1

    .line 2027
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v6

    iget-object v7, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v7}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/telegram/messenger/FileLoader;->cancelLoadFile(Lorg/telegram/tgnet/TLRPC$Document;)V

    .line 2029
    :cond_1
    iget-object v3, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    .line 2030
    .local v3, "lastFile":Lorg/telegram/messenger/MessageObject;
    iget-object v6, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    const/4 v7, 0x0

    iput v7, v6, Lorg/telegram/messenger/MessageObject;->audioProgress:F

    .line 2031
    iget-object v6, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    const/4 v7, 0x0

    iput v7, v6, Lorg/telegram/messenger/MessageObject;->audioProgressSec:I

    .line 2032
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v6

    sget v7, Lorg/telegram/messenger/NotificationCenter;->messagePlayingProgressDidChanged:I

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v10}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 2033
    const/4 v6, 0x0

    iput-object v6, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    .line 2034
    const/4 v6, 0x0

    iput-boolean v6, p0, Lorg/telegram/messenger/MediaController;->downloadingCurrentMessage:Z

    .line 2035
    if-eqz p1, :cond_3

    .line 2036
    invoke-static {}, Lorg/telegram/messenger/NotificationsController;->getInstance()Lorg/telegram/messenger/NotificationsController;

    move-result-object v6

    iget-object v6, v6, Lorg/telegram/messenger/NotificationsController;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v6, p0}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 2037
    const/4 v6, 0x0

    iput v6, p0, Lorg/telegram/messenger/MediaController;->hasAudioFocus:I

    .line 2038
    iget-object v6, p0, Lorg/telegram/messenger/MediaController;->voiceMessagesPlaylist:Ljava/util/ArrayList;

    if-eqz v6, :cond_2

    .line 2039
    if-eqz p3, :cond_8

    iget-object v6, p0, Lorg/telegram/messenger/MediaController;->voiceMessagesPlaylist:Ljava/util/ArrayList;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v3, :cond_8

    .line 2040
    iget-object v6, p0, Lorg/telegram/messenger/MediaController;->voiceMessagesPlaylist:Ljava/util/ArrayList;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2041
    iget-object v6, p0, Lorg/telegram/messenger/MediaController;->voiceMessagesPlaylistMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2042
    iget-object v6, p0, Lorg/telegram/messenger/MediaController;->voiceMessagesPlaylist:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2043
    const/4 v6, 0x0

    iput-object v6, p0, Lorg/telegram/messenger/MediaController;->voiceMessagesPlaylist:Ljava/util/ArrayList;

    .line 2044
    const/4 v6, 0x0

    iput-object v6, p0, Lorg/telegram/messenger/MediaController;->voiceMessagesPlaylistMap:Ljava/util/HashMap;

    .line 2051
    :cond_2
    :goto_4
    const/4 v4, 0x0

    .line 2052
    .local v4, "next":Z
    iget-object v6, p0, Lorg/telegram/messenger/MediaController;->voiceMessagesPlaylist:Ljava/util/ArrayList;

    if-eqz v6, :cond_9

    .line 2053
    iget-object v6, p0, Lorg/telegram/messenger/MediaController;->voiceMessagesPlaylist:Ljava/util/ArrayList;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/messenger/MessageObject;

    .line 2054
    .local v5, "nextVoiceMessage":Lorg/telegram/messenger/MessageObject;
    invoke-virtual {p0, v5}, Lorg/telegram/messenger/MediaController;->playMessage(Lorg/telegram/messenger/MessageObject;)Z

    .line 2055
    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->isRoundVideo()Z

    move-result v6

    if-nez v6, :cond_3

    iget-object v6, p0, Lorg/telegram/messenger/MediaController;->pipRoundVideoView:Lorg/telegram/ui/Components/PipRoundVideoView;

    if-eqz v6, :cond_3

    .line 2056
    iget-object v6, p0, Lorg/telegram/messenger/MediaController;->pipRoundVideoView:Lorg/telegram/ui/Components/PipRoundVideoView;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lorg/telegram/ui/Components/PipRoundVideoView;->close(Z)V

    .line 2057
    const/4 v6, 0x0

    iput-object v6, p0, Lorg/telegram/messenger/MediaController;->pipRoundVideoView:Lorg/telegram/ui/Components/PipRoundVideoView;

    .line 2071
    .end local v4    # "next":Z
    .end local v5    # "nextVoiceMessage":Lorg/telegram/messenger/MessageObject;
    :cond_3
    :goto_5
    if-eqz p2, :cond_4

    .line 2072
    new-instance v2, Landroid/content/Intent;

    sget-object v6, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-class v7, Lorg/telegram/messenger/MusicPlayerService;

    invoke-direct {v2, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2073
    .local v2, "intent":Landroid/content/Intent;
    sget-object v6, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v6, v2}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 2076
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "lastFile":Lorg/telegram/messenger/MessageObject;
    :cond_4
    iget-boolean v6, p0, Lorg/telegram/messenger/MediaController;->useFrontSpeaker:Z

    if-nez v6, :cond_5

    iget-boolean v6, p0, Lorg/telegram/messenger/MediaController;->raiseToSpeak:Z

    if-nez v6, :cond_5

    .line 2077
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->raiseChat:Lorg/telegram/ui/ChatActivity;

    .line 2078
    .local v0, "chat":Lorg/telegram/ui/ChatActivity;
    iget-object v6, p0, Lorg/telegram/messenger/MediaController;->raiseChat:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {p0, v6}, Lorg/telegram/messenger/MediaController;->stopRaiseToEarSensors(Lorg/telegram/ui/ChatActivity;)V

    .line 2079
    iput-object v0, p0, Lorg/telegram/messenger/MediaController;->raiseChat:Lorg/telegram/ui/ChatActivity;

    .line 2081
    .end local v0    # "chat":Lorg/telegram/ui/ChatActivity;
    :cond_5
    return-void

    .line 1979
    :catch_0
    move-exception v1

    .line 1980
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 1984
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 1985
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 1989
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v1

    .line 1990
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .line 1993
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_6
    iget-object v6, p0, Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;

    if-eqz v6, :cond_7

    .line 1994
    iget-object v7, p0, Lorg/telegram/messenger/MediaController;->playerObjectSync:Ljava/lang/Object;

    monitor-enter v7

    .line 1996
    :try_start_3
    iget-object v6, p0, Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;

    invoke-virtual {v6}, Landroid/media/AudioTrack;->pause()V

    .line 1997
    iget-object v6, p0, Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;

    invoke-virtual {v6}, Landroid/media/AudioTrack;->flush()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2002
    :goto_6
    :try_start_4
    iget-object v6, p0, Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;

    invoke-virtual {v6}, Landroid/media/AudioTrack;->release()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2006
    :goto_7
    const/4 v6, 0x0

    :try_start_5
    iput-object v6, p0, Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;

    .line 2007
    monitor-exit v7

    goto/16 :goto_3

    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v6

    .line 1998
    :catch_3
    move-exception v1

    .line 1999
    .restart local v1    # "e":Ljava/lang/Exception;
    :try_start_6
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_6

    .line 2003
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v1

    .line 2004
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_7

    .line 2008
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_7
    iget-object v6, p0, Lorg/telegram/messenger/MediaController;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-eqz v6, :cond_0

    .line 2009
    const/4 v6, 0x0

    iput-object v6, p0, Lorg/telegram/messenger/MediaController;->currentAspectRatioFrameLayout:Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    .line 2010
    const/4 v6, 0x0

    iput-object v6, p0, Lorg/telegram/messenger/MediaController;->currentTextureViewContainer:Landroid/widget/FrameLayout;

    .line 2011
    const/4 v6, 0x0

    iput-boolean v6, p0, Lorg/telegram/messenger/MediaController;->currentAspectRatioFrameLayoutReady:Z

    .line 2012
    const/4 v6, 0x0

    iput-object v6, p0, Lorg/telegram/messenger/MediaController;->currentTextureView:Landroid/view/TextureView;

    .line 2013
    iget-object v6, p0, Lorg/telegram/messenger/MediaController;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {v6}, Lorg/telegram/ui/Components/VideoPlayer;->releasePlayer()V

    .line 2014
    const/4 v6, 0x0

    iput-object v6, p0, Lorg/telegram/messenger/MediaController;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    .line 2016
    :try_start_7
    iget-object v6, p0, Lorg/telegram/messenger/MediaController;->baseActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/16 v7, 0x80

    invoke-virtual {v6, v7}, Landroid/view/Window;->clearFlags(I)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    goto/16 :goto_3

    .line 2017
    :catch_5
    move-exception v1

    .line 2018
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_3

    .line 2047
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v3    # "lastFile":Lorg/telegram/messenger/MessageObject;
    :cond_8
    const/4 v6, 0x0

    iput-object v6, p0, Lorg/telegram/messenger/MediaController;->voiceMessagesPlaylist:Ljava/util/ArrayList;

    .line 2048
    const/4 v6, 0x0

    iput-object v6, p0, Lorg/telegram/messenger/MediaController;->voiceMessagesPlaylistMap:Ljava/util/HashMap;

    goto/16 :goto_4

    .line 2060
    .restart local v4    # "next":Z
    :cond_9
    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->isVoice()Z

    move-result v6

    if-nez v6, :cond_a

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->isRoundVideo()Z

    move-result v6

    if-eqz v6, :cond_b

    :cond_a
    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v6

    if-eqz v6, :cond_b

    .line 2061
    invoke-virtual {p0}, Lorg/telegram/messenger/MediaController;->startRecordingIfFromSpeaker()V

    .line 2063
    :cond_b
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v6

    sget v7, Lorg/telegram/messenger/NotificationCenter;->messagePlayingDidReset:I

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 2064
    const/4 v6, 0x0

    iput v6, p0, Lorg/telegram/messenger/MediaController;->pipSwitchingState:I

    .line 2065
    iget-object v6, p0, Lorg/telegram/messenger/MediaController;->pipRoundVideoView:Lorg/telegram/ui/Components/PipRoundVideoView;

    if-eqz v6, :cond_3

    .line 2066
    iget-object v6, p0, Lorg/telegram/messenger/MediaController;->pipRoundVideoView:Lorg/telegram/ui/Components/PipRoundVideoView;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lorg/telegram/ui/Components/PipRoundVideoView;->close(Z)V

    .line 2067
    const/4 v6, 0x0

    iput-object v6, p0, Lorg/telegram/messenger/MediaController;->pipRoundVideoView:Lorg/telegram/ui/Components/PipRoundVideoView;

    goto/16 :goto_5
.end method

.method public varargs didReceivedNotification(I[Ljava/lang/Object;)V
    .locals 30
    .param p1, "id"    # I
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 1383
    sget v25, Lorg/telegram/messenger/NotificationCenter;->FileDidFailedLoad:I

    move/from16 v0, p1

    move/from16 v1, v25

    if-eq v0, v1, :cond_0

    sget v25, Lorg/telegram/messenger/NotificationCenter;->httpFileDidFailedLoad:I

    move/from16 v0, p1

    move/from16 v1, v25

    if-ne v0, v1, :cond_5

    .line 1384
    :cond_0
    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/telegram/messenger/MediaController;->listenerInProgress:Z

    .line 1385
    const/16 v25, 0x0

    aget-object v18, p2, v25

    check-cast v18, Ljava/lang/String;

    .line 1386
    .local v18, "fileName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MediaController;->loadingFileObservers:Ljava/util/HashMap;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    .line 1387
    .local v6, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/ref/WeakReference<Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;>;>;"
    if-eqz v6, :cond_3

    .line 1388
    const/4 v4, 0x0

    .local v4, "a":I
    :goto_0
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v25

    move/from16 v0, v25

    if-ge v4, v0, :cond_2

    .line 1389
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/ref/WeakReference;

    .line 1390
    .local v24, "reference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;>;"
    invoke-virtual/range {v24 .. v24}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v25

    if-eqz v25, :cond_1

    .line 1391
    invoke-virtual/range {v24 .. v24}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;->onFailedDownload(Ljava/lang/String;)V

    .line 1392
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MediaController;->observersByTag:Ljava/util/HashMap;

    move-object/from16 v26, v0

    invoke-virtual/range {v24 .. v24}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;

    invoke-interface/range {v25 .. v25}, Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;->getObserverTag()I

    move-result v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1388
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1395
    .end local v24    # "reference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;>;"
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MediaController;->loadingFileObservers:Ljava/util/HashMap;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1397
    .end local v4    # "a":I
    :cond_3
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/telegram/messenger/MediaController;->listenerInProgress:Z

    .line 1398
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/MediaController;->processLaterArrays()V

    .line 1399
    const/16 v25, 0x1

    aget-object v25, p2, v25

    check-cast v25, Ljava/lang/Integer;

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Integer;->intValue()I

    move-result v25

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lorg/telegram/messenger/MediaController;->checkDownloadFinished(Ljava/lang/String;I)V

    .line 1541
    .end local v6    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/ref/WeakReference<Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;>;>;"
    .end local v18    # "fileName":Ljava/lang/String;
    :cond_4
    :goto_1
    return-void

    .line 1400
    :cond_5
    sget v25, Lorg/telegram/messenger/NotificationCenter;->FileDidLoaded:I

    move/from16 v0, p1

    move/from16 v1, v25

    if-eq v0, v1, :cond_6

    sget v25, Lorg/telegram/messenger/NotificationCenter;->httpFileDidLoaded:I

    move/from16 v0, p1

    move/from16 v1, v25

    if-ne v0, v1, :cond_d

    .line 1401
    :cond_6
    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/telegram/messenger/MediaController;->listenerInProgress:Z

    .line 1402
    const/16 v25, 0x0

    aget-object v18, p2, v25

    check-cast v18, Ljava/lang/String;

    .line 1403
    .restart local v18    # "fileName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/messenger/MediaController;->downloadingCurrentMessage:Z

    move/from16 v25, v0

    if-eqz v25, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    move-object/from16 v25, v0

    if-eqz v25, :cond_7

    .line 1404
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object v17

    .line 1405
    .local v17, "file":Ljava/lang/String;
    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_7

    .line 1406
    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/telegram/messenger/MediaController;->playMusicAgain:Z

    .line 1407
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MediaController;->playMessage(Lorg/telegram/messenger/MessageObject;)Z

    .line 1410
    .end local v17    # "file":Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MediaController;->loadingFileMessagesObservers:Ljava/util/HashMap;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/util/ArrayList;

    .line 1411
    .local v22, "messageObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    if-eqz v22, :cond_9

    .line 1412
    const/4 v4, 0x0

    .restart local v4    # "a":I
    :goto_2
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v25

    move/from16 v0, v25

    if-ge v4, v0, :cond_8

    .line 1413
    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lorg/telegram/messenger/MessageObject;

    .line 1414
    .local v21, "messageObject":Lorg/telegram/messenger/MessageObject;
    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, v21

    iput-boolean v0, v1, Lorg/telegram/messenger/MessageObject;->mediaExists:Z

    .line 1412
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1416
    .end local v21    # "messageObject":Lorg/telegram/messenger/MessageObject;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MediaController;->loadingFileMessagesObservers:Ljava/util/HashMap;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1418
    .end local v4    # "a":I
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MediaController;->loadingFileObservers:Ljava/util/HashMap;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    .line 1419
    .restart local v6    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/ref/WeakReference<Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;>;>;"
    if-eqz v6, :cond_c

    .line 1420
    const/4 v4, 0x0

    .restart local v4    # "a":I
    :goto_3
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v25

    move/from16 v0, v25

    if-ge v4, v0, :cond_b

    .line 1421
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/ref/WeakReference;

    .line 1422
    .restart local v24    # "reference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;>;"
    invoke-virtual/range {v24 .. v24}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v25

    if-eqz v25, :cond_a

    .line 1423
    invoke-virtual/range {v24 .. v24}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;->onSuccessDownload(Ljava/lang/String;)V

    .line 1424
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MediaController;->observersByTag:Ljava/util/HashMap;

    move-object/from16 v26, v0

    invoke-virtual/range {v24 .. v24}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;

    invoke-interface/range {v25 .. v25}, Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;->getObserverTag()I

    move-result v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1420
    :cond_a
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 1427
    .end local v24    # "reference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;>;"
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MediaController;->loadingFileObservers:Ljava/util/HashMap;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1429
    .end local v4    # "a":I
    :cond_c
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/telegram/messenger/MediaController;->listenerInProgress:Z

    .line 1430
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/MediaController;->processLaterArrays()V

    .line 1431
    const/16 v25, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lorg/telegram/messenger/MediaController;->checkDownloadFinished(Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 1432
    .end local v6    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/ref/WeakReference<Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;>;>;"
    .end local v18    # "fileName":Ljava/lang/String;
    .end local v22    # "messageObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    :cond_d
    sget v25, Lorg/telegram/messenger/NotificationCenter;->FileLoadProgressChanged:I

    move/from16 v0, p1

    move/from16 v1, v25

    if-ne v0, v1, :cond_10

    .line 1433
    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/telegram/messenger/MediaController;->listenerInProgress:Z

    .line 1434
    const/16 v25, 0x0

    aget-object v18, p2, v25

    check-cast v18, Ljava/lang/String;

    .line 1435
    .restart local v18    # "fileName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MediaController;->loadingFileObservers:Ljava/util/HashMap;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    .line 1436
    .restart local v6    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/ref/WeakReference<Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;>;>;"
    if-eqz v6, :cond_f

    .line 1437
    const/16 v25, 0x1

    aget-object v23, p2, v25

    check-cast v23, Ljava/lang/Float;

    .line 1438
    .local v23, "progress":Ljava/lang/Float;
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v26

    :cond_e
    :goto_4
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_f

    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/ref/WeakReference;

    .line 1439
    .restart local v24    # "reference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;>;"
    invoke-virtual/range {v24 .. v24}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v25

    if-eqz v25, :cond_e

    .line 1440
    invoke-virtual/range {v24 .. v24}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Float;->floatValue()F

    move-result v27

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    move/from16 v2, v27

    invoke-interface {v0, v1, v2}, Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;->onProgressDownload(Ljava/lang/String;F)V

    goto :goto_4

    .line 1444
    .end local v23    # "progress":Ljava/lang/Float;
    .end local v24    # "reference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;>;"
    :cond_f
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/telegram/messenger/MediaController;->listenerInProgress:Z

    .line 1445
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/MediaController;->processLaterArrays()V

    goto/16 :goto_1

    .line 1446
    .end local v6    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/ref/WeakReference<Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;>;>;"
    .end local v18    # "fileName":Ljava/lang/String;
    :cond_10
    sget v25, Lorg/telegram/messenger/NotificationCenter;->FileUploadProgressChanged:I

    move/from16 v0, p1

    move/from16 v1, v25

    if-ne v0, v1, :cond_19

    .line 1447
    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/telegram/messenger/MediaController;->listenerInProgress:Z

    .line 1448
    const/16 v25, 0x0

    aget-object v18, p2, v25

    check-cast v18, Ljava/lang/String;

    .line 1449
    .restart local v18    # "fileName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MediaController;->loadingFileObservers:Ljava/util/HashMap;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    .line 1450
    .restart local v6    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/ref/WeakReference<Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;>;>;"
    if-eqz v6, :cond_12

    .line 1451
    const/16 v25, 0x1

    aget-object v23, p2, v25

    check-cast v23, Ljava/lang/Float;

    .line 1452
    .restart local v23    # "progress":Ljava/lang/Float;
    const/16 v25, 0x2

    aget-object v16, p2, v25

    check-cast v16, Ljava/lang/Boolean;

    .line 1453
    .local v16, "enc":Ljava/lang/Boolean;
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v26

    :cond_11
    :goto_5
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_12

    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/ref/WeakReference;

    .line 1454
    .restart local v24    # "reference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;>;"
    invoke-virtual/range {v24 .. v24}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v25

    if-eqz v25, :cond_11

    .line 1455
    invoke-virtual/range {v24 .. v24}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Float;->floatValue()F

    move-result v27

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v28

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    move/from16 v2, v27

    move/from16 v3, v28

    invoke-interface {v0, v1, v2, v3}, Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;->onProgressUpload(Ljava/lang/String;FZ)V

    goto :goto_5

    .line 1459
    .end local v16    # "enc":Ljava/lang/Boolean;
    .end local v23    # "progress":Ljava/lang/Float;
    .end local v24    # "reference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;>;"
    :cond_12
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/telegram/messenger/MediaController;->listenerInProgress:Z

    .line 1460
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/MediaController;->processLaterArrays()V

    .line 1462
    :try_start_0
    invoke-static {}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance()Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/SendMessagesHelper;->getDelayedMessages(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v10

    .line 1463
    .local v10, "delayedMessages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;>;"
    if-eqz v10, :cond_4

    .line 1464
    const/4 v4, 0x0

    .restart local v4    # "a":I
    :goto_6
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v25

    move/from16 v0, v25

    if-ge v4, v0, :cond_4

    .line 1465
    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;

    .line 1466
    .local v9, "delayedMessage":Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;
    iget-object v0, v9, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    move-object/from16 v25, v0

    if-nez v25, :cond_15

    .line 1467
    iget-object v0, v9, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v12

    .line 1468
    .local v12, "dialog_id":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MediaController;->typingTimes:Ljava/util/HashMap;

    move-object/from16 v25, v0

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Long;

    .line 1469
    .local v19, "lastTime":Ljava/lang/Long;
    if-eqz v19, :cond_13

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Long;->longValue()J

    move-result-wide v26

    const-wide/16 v28, 0xfa0

    add-long v26, v26, v28

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v28

    cmp-long v25, v26, v28

    if-gez v25, :cond_15

    .line 1470
    :cond_13
    iget-object v0, v9, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->documentLocation:Lorg/telegram/tgnet/TLRPC$TL_document;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lorg/telegram/messenger/MessageObject;->isRoundVideoDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v25

    if-eqz v25, :cond_16

    .line 1471
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v25

    const/16 v26, 0x8

    const/16 v27, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v12, v13, v1, v2}, Lorg/telegram/messenger/MessagesController;->sendTyping(JII)V

    .line 1479
    :cond_14
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MediaController;->typingTimes:Ljava/util/HashMap;

    move-object/from16 v25, v0

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v26

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v28

    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v27

    invoke-virtual/range {v25 .. v27}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1464
    .end local v12    # "dialog_id":J
    .end local v19    # "lastTime":Ljava/lang/Long;
    :cond_15
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 1472
    .restart local v12    # "dialog_id":J
    .restart local v19    # "lastTime":Ljava/lang/Long;
    :cond_16
    iget-object v0, v9, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->documentLocation:Lorg/telegram/tgnet/TLRPC$TL_document;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lorg/telegram/messenger/MessageObject;->isVideoDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v25

    if-eqz v25, :cond_17

    .line 1473
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v25

    const/16 v26, 0x5

    const/16 v27, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v12, v13, v1, v2}, Lorg/telegram/messenger/MessagesController;->sendTyping(JII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_7

    .line 1484
    .end local v4    # "a":I
    .end local v9    # "delayedMessage":Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;
    .end local v10    # "delayedMessages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;>;"
    .end local v12    # "dialog_id":J
    .end local v19    # "lastTime":Ljava/lang/Long;
    :catch_0
    move-exception v11

    .line 1485
    .local v11, "e":Ljava/lang/Exception;
    invoke-static {v11}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 1474
    .end local v11    # "e":Ljava/lang/Exception;
    .restart local v4    # "a":I
    .restart local v9    # "delayedMessage":Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;
    .restart local v10    # "delayedMessages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;>;"
    .restart local v12    # "dialog_id":J
    .restart local v19    # "lastTime":Ljava/lang/Long;
    :cond_17
    :try_start_1
    iget-object v0, v9, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->documentLocation:Lorg/telegram/tgnet/TLRPC$TL_document;

    move-object/from16 v25, v0

    if-eqz v25, :cond_18

    .line 1475
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v25

    const/16 v26, 0x3

    const/16 v27, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v12, v13, v1, v2}, Lorg/telegram/messenger/MessagesController;->sendTyping(JII)V

    goto :goto_7

    .line 1476
    :cond_18
    iget-object v0, v9, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    move-object/from16 v25, v0

    if-eqz v25, :cond_14

    .line 1477
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v25

    const/16 v26, 0x4

    const/16 v27, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v12, v13, v1, v2}, Lorg/telegram/messenger/MessagesController;->sendTyping(JII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_7

    .line 1487
    .end local v4    # "a":I
    .end local v6    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/ref/WeakReference<Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;>;>;"
    .end local v9    # "delayedMessage":Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;
    .end local v10    # "delayedMessages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;>;"
    .end local v12    # "dialog_id":J
    .end local v18    # "fileName":Ljava/lang/String;
    .end local v19    # "lastTime":Ljava/lang/Long;
    :cond_19
    sget v25, Lorg/telegram/messenger/NotificationCenter;->messagesDeleted:I

    move/from16 v0, p1

    move/from16 v1, v25

    if-ne v0, v1, :cond_1c

    .line 1488
    const/16 v25, 0x1

    aget-object v25, p2, v25

    check-cast v25, Ljava/lang/Integer;

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 1489
    .local v8, "channelId":I
    const/16 v25, 0x0

    aget-object v20, p2, v25

    check-cast v20, Ljava/util/ArrayList;

    .line 1490
    .local v20, "markAsDeletedMessages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    move-object/from16 v25, v0

    if-eqz v25, :cond_1a

    .line 1491
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    move/from16 v25, v0

    move/from16 v0, v25

    if-ne v8, v0, :cond_1a

    .line 1492
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_1a

    .line 1493
    const/16 v25, 0x1

    const/16 v26, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MediaController;->cleanupPlayer(ZZ)V

    .line 1497
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MediaController;->voiceMessagesPlaylist:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    if-eqz v25, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MediaController;->voiceMessagesPlaylist:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v25

    if-nez v25, :cond_4

    .line 1498
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MediaController;->voiceMessagesPlaylist:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lorg/telegram/messenger/MessageObject;

    .line 1499
    .restart local v21    # "messageObject":Lorg/telegram/messenger/MessageObject;
    move-object/from16 v0, v21

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    move/from16 v25, v0

    move/from16 v0, v25

    if-ne v8, v0, :cond_4

    .line 1500
    const/4 v4, 0x0

    .restart local v4    # "a":I
    :goto_8
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v25

    move/from16 v0, v25

    if-ge v4, v0, :cond_4

    .line 1501
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MediaController;->voiceMessagesPlaylistMap:Ljava/util/HashMap;

    move-object/from16 v25, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    .end local v21    # "messageObject":Lorg/telegram/messenger/MessageObject;
    check-cast v21, Lorg/telegram/messenger/MessageObject;

    .line 1502
    .restart local v21    # "messageObject":Lorg/telegram/messenger/MessageObject;
    if-eqz v21, :cond_1b

    .line 1503
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MediaController;->voiceMessagesPlaylist:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1500
    :cond_1b
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    .line 1508
    .end local v4    # "a":I
    .end local v8    # "channelId":I
    .end local v20    # "markAsDeletedMessages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v21    # "messageObject":Lorg/telegram/messenger/MessageObject;
    :cond_1c
    sget v25, Lorg/telegram/messenger/NotificationCenter;->removeAllMessagesFromDialog:I

    move/from16 v0, p1

    move/from16 v1, v25

    if-ne v0, v1, :cond_1d

    .line 1509
    const/16 v25, 0x0

    aget-object v25, p2, v25

    check-cast v25, Ljava/lang/Long;

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    .line 1510
    .local v14, "did":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    move-object/from16 v25, v0

    if-eqz v25, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v26

    cmp-long v25, v26, v14

    if-nez v25, :cond_4

    .line 1511
    const/16 v25, 0x0

    const/16 v26, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/MediaController;->cleanupPlayer(ZZ)V

    goto/16 :goto_1

    .line 1513
    .end local v14    # "did":J
    :cond_1d
    sget v25, Lorg/telegram/messenger/NotificationCenter;->musicDidLoaded:I

    move/from16 v0, p1

    move/from16 v1, v25

    if-ne v0, v1, :cond_1f

    .line 1514
    const/16 v25, 0x0

    aget-object v25, p2, v25

    check-cast v25, Ljava/lang/Long;

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    .line 1515
    .restart local v14    # "did":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    move-object/from16 v25, v0

    if-eqz v25, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lorg/telegram/messenger/MessageObject;->isMusic()Z

    move-result v25

    if-eqz v25, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v26

    cmp-long v25, v26, v14

    if-nez v25, :cond_4

    .line 1516
    const/16 v25, 0x1

    aget-object v7, p2, v25

    check-cast v7, Ljava/util/ArrayList;

    .line 1517
    .local v7, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MediaController;->playlist:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v0, v1, v7}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    .line 1518
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/messenger/MediaController;->shuffleMusic:Z

    move/from16 v25, v0

    if-eqz v25, :cond_1e

    .line 1519
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/MediaController;->buildShuffledPlayList()V

    .line 1520
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    goto/16 :goto_1

    .line 1522
    :cond_1e
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    move/from16 v25, v0

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v26

    add-int v25, v25, v26

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    goto/16 :goto_1

    .line 1525
    .end local v7    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    .end local v14    # "did":J
    :cond_1f
    sget v25, Lorg/telegram/messenger/NotificationCenter;->didReceivedNewMessages:I

    move/from16 v0, p1

    move/from16 v1, v25

    if-ne v0, v1, :cond_4

    .line 1526
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MediaController;->voiceMessagesPlaylist:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    if-eqz v25, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MediaController;->voiceMessagesPlaylist:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v25

    if-nez v25, :cond_4

    .line 1527
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MediaController;->voiceMessagesPlaylist:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lorg/telegram/messenger/MessageObject;

    .line 1528
    .restart local v21    # "messageObject":Lorg/telegram/messenger/MessageObject;
    const/16 v25, 0x0

    aget-object v25, p2, v25

    check-cast v25, Ljava/lang/Long;

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    .line 1529
    .restart local v14    # "did":J
    invoke-virtual/range {v21 .. v21}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v26

    cmp-long v25, v14, v26

    if-nez v25, :cond_4

    .line 1530
    const/16 v25, 0x1

    aget-object v5, p2, v25

    check-cast v5, Ljava/util/ArrayList;

    .line 1531
    .local v5, "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    const/4 v4, 0x0

    .restart local v4    # "a":I
    :goto_9
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v25

    move/from16 v0, v25

    if-ge v4, v0, :cond_4

    .line 1532
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    .end local v21    # "messageObject":Lorg/telegram/messenger/MessageObject;
    check-cast v21, Lorg/telegram/messenger/MessageObject;

    .line 1533
    .restart local v21    # "messageObject":Lorg/telegram/messenger/MessageObject;
    invoke-virtual/range {v21 .. v21}, Lorg/telegram/messenger/MessageObject;->isVoice()Z

    move-result v25

    if-nez v25, :cond_20

    invoke-virtual/range {v21 .. v21}, Lorg/telegram/messenger/MessageObject;->isRoundVideo()Z

    move-result v25

    if-eqz v25, :cond_22

    :cond_20
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/messenger/MediaController;->voiceMessagesPlaylistUnread:Z

    move/from16 v25, v0

    if-eqz v25, :cond_21

    invoke-virtual/range {v21 .. v21}, Lorg/telegram/messenger/MessageObject;->isContentUnread()Z

    move-result v25

    if-eqz v25, :cond_22

    invoke-virtual/range {v21 .. v21}, Lorg/telegram/messenger/MessageObject;->isOut()Z

    move-result v25

    if-nez v25, :cond_22

    .line 1534
    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MediaController;->voiceMessagesPlaylist:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1535
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MediaController;->voiceMessagesPlaylistMap:Ljava/util/HashMap;

    move-object/from16 v25, v0

    invoke-virtual/range {v21 .. v21}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1531
    :cond_22
    add-int/lit8 v4, v4, 0x1

    goto :goto_9
.end method

.method public generateObserverTag()I
    .locals 2

    .prologue
    .line 1313
    iget v0, p0, Lorg/telegram/messenger/MediaController;->lastTag:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/telegram/messenger/MediaController;->lastTag:I

    return v0
.end method

.method public generateWaveform(Lorg/telegram/messenger/MessageObject;)V
    .locals 6
    .param p1, "messageObject"    # Lorg/telegram/messenger/MessageObject;

    .prologue
    .line 3099
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3100
    .local v0, "id":Ljava/lang/String;
    iget-object v2, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v2}, Lorg/telegram/messenger/FileLoader;->getPathToMessage(Lorg/telegram/tgnet/TLRPC$Message;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 3101
    .local v1, "path":Ljava/lang/String;
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->generatingWaveform:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3136
    :goto_0
    return-void

    .line 3104
    :cond_0
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->generatingWaveform:Ljava/util/HashMap;

    invoke-virtual {v2, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3105
    sget-object v2, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v3, Lorg/telegram/messenger/MediaController$21;

    invoke-direct {v3, p0, v1, v0}, Lorg/telegram/messenger/MediaController$21;-><init>(Lorg/telegram/messenger/MediaController;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public getAudioInfo()Lorg/telegram/messenger/audioinfo/AudioInfo;
    .locals 1

    .prologue
    .line 2894
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->audioInfo:Lorg/telegram/messenger/audioinfo/AudioInfo;

    return-object v0
.end method

.method protected getAutodownloadMask()I
    .locals 2

    .prologue
    .line 922
    const/4 v0, 0x0

    .line 923
    .local v0, "mask":I
    iget v1, p0, Lorg/telegram/messenger/MediaController;->mobileDataDownloadMask:I

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_0

    iget v1, p0, Lorg/telegram/messenger/MediaController;->wifiDownloadMask:I

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_0

    iget v1, p0, Lorg/telegram/messenger/MediaController;->roamingDownloadMask:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    .line 924
    :cond_0
    or-int/lit8 v0, v0, 0x1

    .line 926
    :cond_1
    iget v1, p0, Lorg/telegram/messenger/MediaController;->mobileDataDownloadMask:I

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_2

    iget v1, p0, Lorg/telegram/messenger/MediaController;->wifiDownloadMask:I

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_2

    iget v1, p0, Lorg/telegram/messenger/MediaController;->roamingDownloadMask:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_3

    .line 927
    :cond_2
    or-int/lit8 v0, v0, 0x2

    .line 929
    :cond_3
    iget v1, p0, Lorg/telegram/messenger/MediaController;->mobileDataDownloadMask:I

    and-int/lit8 v1, v1, 0x40

    if-nez v1, :cond_4

    iget v1, p0, Lorg/telegram/messenger/MediaController;->wifiDownloadMask:I

    and-int/lit8 v1, v1, 0x40

    if-nez v1, :cond_4

    iget v1, p0, Lorg/telegram/messenger/MediaController;->roamingDownloadMask:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_5

    .line 930
    :cond_4
    or-int/lit8 v0, v0, 0x40

    .line 932
    :cond_5
    iget v1, p0, Lorg/telegram/messenger/MediaController;->mobileDataDownloadMask:I

    and-int/lit8 v1, v1, 0x4

    if-nez v1, :cond_6

    iget v1, p0, Lorg/telegram/messenger/MediaController;->wifiDownloadMask:I

    and-int/lit8 v1, v1, 0x4

    if-nez v1, :cond_6

    iget v1, p0, Lorg/telegram/messenger/MediaController;->roamingDownloadMask:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_7

    .line 933
    :cond_6
    or-int/lit8 v0, v0, 0x4

    .line 935
    :cond_7
    iget v1, p0, Lorg/telegram/messenger/MediaController;->mobileDataDownloadMask:I

    and-int/lit8 v1, v1, 0x8

    if-nez v1, :cond_8

    iget v1, p0, Lorg/telegram/messenger/MediaController;->wifiDownloadMask:I

    and-int/lit8 v1, v1, 0x8

    if-nez v1, :cond_8

    iget v1, p0, Lorg/telegram/messenger/MediaController;->roamingDownloadMask:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_9

    .line 936
    :cond_8
    or-int/lit8 v0, v0, 0x8

    .line 938
    :cond_9
    iget v1, p0, Lorg/telegram/messenger/MediaController;->mobileDataDownloadMask:I

    and-int/lit8 v1, v1, 0x10

    if-nez v1, :cond_a

    iget v1, p0, Lorg/telegram/messenger/MediaController;->wifiDownloadMask:I

    and-int/lit8 v1, v1, 0x10

    if-nez v1, :cond_a

    iget v1, p0, Lorg/telegram/messenger/MediaController;->roamingDownloadMask:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_b

    .line 939
    :cond_a
    or-int/lit8 v0, v0, 0x10

    .line 941
    :cond_b
    iget v1, p0, Lorg/telegram/messenger/MediaController;->mobileDataDownloadMask:I

    and-int/lit8 v1, v1, 0x20

    if-nez v1, :cond_c

    iget v1, p0, Lorg/telegram/messenger/MediaController;->wifiDownloadMask:I

    and-int/lit8 v1, v1, 0x20

    if-nez v1, :cond_c

    iget v1, p0, Lorg/telegram/messenger/MediaController;->roamingDownloadMask:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_d

    .line 942
    :cond_c
    or-int/lit8 v0, v0, 0x20

    .line 944
    :cond_d
    return v0
.end method

.method public getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;
    .locals 1

    .prologue
    .line 2139
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    return-object v0
.end method

.method public getPlayingMessageObjectNum()I
    .locals 1

    .prologue
    .line 2143
    iget v0, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    return v0
.end method

.method public getRepeatMode()I
    .locals 1

    .prologue
    .line 2902
    iget v0, p0, Lorg/telegram/messenger/MediaController;->repeatMode:I

    return v0
.end method

.method public native getWaveform(Ljava/lang/String;)[B
.end method

.method public native getWaveform2([SI)[B
.end method

.method public isDownloadingCurrentMessage()Z
    .locals 1

    .prologue
    .line 2998
    iget-boolean v0, p0, Lorg/telegram/messenger/MediaController;->downloadingCurrentMessage:Z

    return v0
.end method

.method public isMessagePaused()Z
    .locals 1

    .prologue
    .line 2994
    iget-boolean v0, p0, Lorg/telegram/messenger/MediaController;->isPaused:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/messenger/MediaController;->downloadingCurrentMessage:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPlayingMessage(Lorg/telegram/messenger/MessageObject;)Z
    .locals 4
    .param p1, "messageObject"    # Lorg/telegram/messenger/MessageObject;

    .prologue
    .line 2990
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-eqz v0, :cond_2

    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-wide v0, v0, Lorg/telegram/messenger/MessageObject;->eventId:J

    iget-wide v2, p1, Lorg/telegram/messenger/MessageObject;->eventId:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v0

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v1

    if-ne v0, v1, :cond_2

    iget-boolean v0, p0, Lorg/telegram/messenger/MediaController;->downloadingCurrentMessage:Z

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isRecordingAudio()Z
    .locals 1

    .prologue
    .line 1659
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->recordStartRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->recordingAudio:Lorg/telegram/tgnet/TLRPC$TL_document;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRoundVideoDrawingReady()Z
    .locals 1

    .prologue
    .line 2986
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->currentAspectRatioFrameLayout:Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->currentAspectRatioFrameLayout:Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;->isDrawingReady()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShuffleMusic()Z
    .locals 1

    .prologue
    .line 2898
    iget-boolean v0, p0, Lorg/telegram/messenger/MediaController;->shuffleMusic:Z

    return v0
.end method

.method protected newDownloadObjectsAvailable(I)V
    .locals 3
    .param p1, "downloadMask"    # I

    .prologue
    .line 1126
    invoke-direct {p0}, Lorg/telegram/messenger/MediaController;->getCurrentDownloadMask()I

    move-result v0

    .line 1127
    .local v0, "mask":I
    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->photoDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1128
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/MessagesStorage;->getDownloadQueue(I)V

    .line 1130
    :cond_0
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_1

    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->audioDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1131
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/MessagesStorage;->getDownloadQueue(I)V

    .line 1133
    :cond_1
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_2

    and-int/lit8 v1, p1, 0x40

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->videoMessageDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1134
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v1

    const/16 v2, 0x40

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/MessagesStorage;->getDownloadQueue(I)V

    .line 1136
    :cond_2
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_3

    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->videoDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1137
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/MessagesStorage;->getDownloadQueue(I)V

    .line 1139
    :cond_3
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_4

    and-int/lit8 v1, p1, 0x8

    if-eqz v1, :cond_4

    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->documentDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1140
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/MessagesStorage;->getDownloadQueue(I)V

    .line 1142
    :cond_4
    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_5

    and-int/lit8 v1, p1, 0x10

    if-eqz v1, :cond_5

    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->musicDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1143
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v1

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/MessagesStorage;->getDownloadQueue(I)V

    .line 1145
    :cond_5
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_6

    and-int/lit8 v1, p1, 0x20

    if-eqz v1, :cond_6

    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->gifDownloadQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1146
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v1

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/MessagesStorage;->getDownloadQueue(I)V

    .line 1148
    :cond_6
    return-void
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 1890
    return-void
.end method

.method public onAudioFocusChange(I)V
    .locals 3
    .param p1, "focusChange"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 776
    const/4 v0, -0x1

    if-ne p1, v0, :cond_2

    .line 777
    invoke-virtual {p0}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/MediaController;->isPlayingMessage(Lorg/telegram/messenger/MessageObject;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/telegram/messenger/MediaController;->isMessagePaused()Z

    move-result v0

    if-nez v0, :cond_0

    .line 778
    invoke-virtual {p0}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/MediaController;->pauseMessage(Lorg/telegram/messenger/MessageObject;)Z

    .line 780
    :cond_0
    iput v1, p0, Lorg/telegram/messenger/MediaController;->hasAudioFocus:I

    .line 781
    iput v1, p0, Lorg/telegram/messenger/MediaController;->audioFocus:I

    .line 799
    :cond_1
    :goto_0
    invoke-direct {p0}, Lorg/telegram/messenger/MediaController;->setPlayerVolume()V

    .line 800
    return-void

    .line 782
    :cond_2
    if-ne p1, v2, :cond_3

    .line 783
    const/4 v0, 0x2

    iput v0, p0, Lorg/telegram/messenger/MediaController;->audioFocus:I

    .line 784
    iget-boolean v0, p0, Lorg/telegram/messenger/MediaController;->resumeAudioOnFocusGain:Z

    if-eqz v0, :cond_1

    .line 785
    iput-boolean v1, p0, Lorg/telegram/messenger/MediaController;->resumeAudioOnFocusGain:Z

    .line 786
    invoke-virtual {p0}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/MediaController;->isPlayingMessage(Lorg/telegram/messenger/MessageObject;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/telegram/messenger/MediaController;->isMessagePaused()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 787
    invoke-virtual {p0}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/MediaController;->playMessage(Lorg/telegram/messenger/MessageObject;)Z

    goto :goto_0

    .line 790
    :cond_3
    const/4 v0, -0x3

    if-ne p1, v0, :cond_4

    .line 791
    iput v2, p0, Lorg/telegram/messenger/MediaController;->audioFocus:I

    goto :goto_0

    .line 792
    :cond_4
    const/4 v0, -0x2

    if-ne p1, v0, :cond_1

    .line 793
    iput v1, p0, Lorg/telegram/messenger/MediaController;->audioFocus:I

    .line 794
    invoke-virtual {p0}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/MediaController;->isPlayingMessage(Lorg/telegram/messenger/MessageObject;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/telegram/messenger/MediaController;->isMessagePaused()Z

    move-result v0

    if-nez v0, :cond_1

    .line 795
    invoke-virtual {p0}, Lorg/telegram/messenger/MediaController;->getPlayingMessageObject()Lorg/telegram/messenger/MessageObject;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/MediaController;->pauseMessage(Lorg/telegram/messenger/MessageObject;)Z

    .line 796
    iput-boolean v2, p0, Lorg/telegram/messenger/MediaController;->resumeAudioOnFocusGain:Z

    goto :goto_0
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 18
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    .line 1668
    move-object/from16 v0, p0

    iget-boolean v10, v0, Lorg/telegram/messenger/MediaController;->sensorsStarted:Z

    if-nez v10, :cond_1

    .line 1830
    :cond_0
    :goto_0
    return-void

    .line 1671
    :cond_1
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPService;->getSharedInstance()Lorg/telegram/messenger/voip/VoIPService;

    move-result-object v10

    if-nez v10, :cond_0

    .line 1673
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/messenger/MediaController;->proximitySensor:Landroid/hardware/Sensor;

    if-ne v10, v11, :cond_c

    .line 1674
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "proximity changed to "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/hardware/SensorEvent;->values:[F

    const/4 v12, 0x0

    aget v11, v11, v12

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 1675
    move-object/from16 v0, p0

    iget v10, v0, Lorg/telegram/messenger/MediaController;->lastProximityValue:F

    const/high16 v11, -0x3d380000    # -100.0f

    cmpl-float v10, v10, v11

    if-nez v10, :cond_b

    .line 1676
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/hardware/SensorEvent;->values:[F

    const/4 v11, 0x0

    aget v10, v10, v11

    move-object/from16 v0, p0

    iput v10, v0, Lorg/telegram/messenger/MediaController;->lastProximityValue:F

    .line 1680
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v10, v0, Lorg/telegram/messenger/MediaController;->proximityHasDifferentValues:Z

    if-eqz v10, :cond_3

    .line 1681
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/hardware/SensorEvent;->values:[F

    const/4 v11, 0x0

    aget v10, v10, v11

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lorg/telegram/messenger/MediaController;->isNearToSensor(F)Z

    move-result v10

    move-object/from16 v0, p0

    iput-boolean v10, v0, Lorg/telegram/messenger/MediaController;->proximityTouched:Z

    .line 1707
    :cond_3
    :goto_2
    const/high16 v7, 0x41700000    # 15.0f

    .line 1708
    .local v7, "minDist":F
    const/4 v6, 0x6

    .line 1709
    .local v6, "minCount":I
    const/16 v5, 0xa

    .line 1710
    .local v5, "countLessMax":I
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/messenger/MediaController;->linearSensor:Landroid/hardware/Sensor;

    if-eq v10, v11, :cond_4

    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/messenger/MediaController;->gravitySensor:Landroid/hardware/Sensor;

    if-eq v10, v11, :cond_4

    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/messenger/MediaController;->accelerometerSensor:Landroid/hardware/Sensor;

    if-ne v10, v11, :cond_6

    .line 1711
    :cond_4
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/messenger/MediaController;->gravity:[F

    const/4 v11, 0x0

    aget v10, v10, v11

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/messenger/MediaController;->linearAcceleration:[F

    const/4 v12, 0x0

    aget v11, v11, v12

    mul-float/2addr v10, v11

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/messenger/MediaController;->gravity:[F

    const/4 v12, 0x1

    aget v11, v11, v12

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/messenger/MediaController;->linearAcceleration:[F

    const/4 v13, 0x1

    aget v12, v12, v13

    mul-float/2addr v11, v12

    add-float/2addr v10, v11

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/messenger/MediaController;->gravity:[F

    const/4 v12, 0x2

    aget v11, v11, v12

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/messenger/MediaController;->linearAcceleration:[F

    const/4 v13, 0x2

    aget v12, v12, v13

    mul-float/2addr v11, v12

    add-float v9, v10, v11

    .line 1712
    .local v9, "val":F
    move-object/from16 v0, p0

    iget v10, v0, Lorg/telegram/messenger/MediaController;->raisedToBack:I

    const/4 v11, 0x6

    if-eq v10, v11, :cond_5

    .line 1713
    const/4 v10, 0x0

    cmpl-float v10, v9, v10

    if-lez v10, :cond_13

    move-object/from16 v0, p0

    iget v10, v0, Lorg/telegram/messenger/MediaController;->previousAccValue:F

    const/4 v11, 0x0

    cmpl-float v10, v10, v11

    if-lez v10, :cond_13

    .line 1714
    const/high16 v10, 0x41700000    # 15.0f

    cmpl-float v10, v9, v10

    if-lez v10, :cond_10

    move-object/from16 v0, p0

    iget v10, v0, Lorg/telegram/messenger/MediaController;->raisedToBack:I

    if-nez v10, :cond_10

    .line 1715
    move-object/from16 v0, p0

    iget v10, v0, Lorg/telegram/messenger/MediaController;->raisedToTop:I

    const/4 v11, 0x6

    if-ge v10, v11, :cond_5

    move-object/from16 v0, p0

    iget-boolean v10, v0, Lorg/telegram/messenger/MediaController;->proximityTouched:Z

    if-nez v10, :cond_5

    .line 1716
    move-object/from16 v0, p0

    iget v10, v0, Lorg/telegram/messenger/MediaController;->raisedToTop:I

    add-int/lit8 v10, v10, 0x1

    move-object/from16 v0, p0

    iput v10, v0, Lorg/telegram/messenger/MediaController;->raisedToTop:I

    .line 1717
    move-object/from16 v0, p0

    iget v10, v0, Lorg/telegram/messenger/MediaController;->raisedToTop:I

    const/4 v11, 0x6

    if-ne v10, v11, :cond_5

    .line 1718
    const/4 v10, 0x0

    move-object/from16 v0, p0

    iput v10, v0, Lorg/telegram/messenger/MediaController;->countLess:I

    .line 1754
    :cond_5
    :goto_3
    move-object/from16 v0, p0

    iput v9, v0, Lorg/telegram/messenger/MediaController;->previousAccValue:F

    .line 1755
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/messenger/MediaController;->gravityFast:[F

    const/4 v11, 0x1

    aget v10, v10, v11

    const/high16 v11, 0x40200000    # 2.5f

    cmpl-float v10, v10, v11

    if-lez v10, :cond_17

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/messenger/MediaController;->gravityFast:[F

    const/4 v11, 0x2

    aget v10, v10, v11

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    const/high16 v11, 0x40800000    # 4.0f

    cmpg-float v10, v10, v11

    if-gez v10, :cond_17

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/messenger/MediaController;->gravityFast:[F

    const/4 v11, 0x0

    aget v10, v10, v11

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    const/high16 v11, 0x3fc00000    # 1.5f

    cmpl-float v10, v10, v11

    if-lez v10, :cond_17

    const/4 v10, 0x1

    :goto_4
    move-object/from16 v0, p0

    iput-boolean v10, v0, Lorg/telegram/messenger/MediaController;->accelerometerVertical:Z

    .line 1758
    .end local v9    # "val":F
    :cond_6
    move-object/from16 v0, p0

    iget v10, v0, Lorg/telegram/messenger/MediaController;->raisedToBack:I

    const/4 v11, 0x6

    if-ne v10, v11, :cond_1b

    move-object/from16 v0, p0

    iget-boolean v10, v0, Lorg/telegram/messenger/MediaController;->accelerometerVertical:Z

    if-eqz v10, :cond_1b

    move-object/from16 v0, p0

    iget-boolean v10, v0, Lorg/telegram/messenger/MediaController;->proximityTouched:Z

    if-eqz v10, :cond_1b

    invoke-static {}, Lorg/telegram/messenger/NotificationsController;->getInstance()Lorg/telegram/messenger/NotificationsController;

    move-result-object v10

    iget-object v10, v10, Lorg/telegram/messenger/NotificationsController;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v10}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v10

    if-nez v10, :cond_1b

    .line 1759
    const-string/jumbo v10, "sensor values reached"

    invoke-static {v10}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 1760
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-nez v10, :cond_18

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/messenger/MediaController;->recordStartRunnable:Ljava/lang/Runnable;

    if-nez v10, :cond_18

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/messenger/MediaController;->recordingAudio:Lorg/telegram/tgnet/TLRPC$TL_document;

    if-nez v10, :cond_18

    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v10

    invoke-virtual {v10}, Lorg/telegram/ui/PhotoViewer;->isVisible()Z

    move-result v10

    if-nez v10, :cond_18

    sget-boolean v10, Lorg/telegram/messenger/ApplicationLoader;->isScreenOn:Z

    if-eqz v10, :cond_18

    move-object/from16 v0, p0

    iget-boolean v10, v0, Lorg/telegram/messenger/MediaController;->inputFieldHasText:Z

    if-nez v10, :cond_18

    move-object/from16 v0, p0

    iget-boolean v10, v0, Lorg/telegram/messenger/MediaController;->allowStartRecord:Z

    if-eqz v10, :cond_18

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/messenger/MediaController;->raiseChat:Lorg/telegram/ui/ChatActivity;

    if-eqz v10, :cond_18

    move-object/from16 v0, p0

    iget-boolean v10, v0, Lorg/telegram/messenger/MediaController;->callInProgress:Z

    if-nez v10, :cond_18

    .line 1761
    move-object/from16 v0, p0

    iget-boolean v10, v0, Lorg/telegram/messenger/MediaController;->raiseToEarRecord:Z

    if-nez v10, :cond_9

    .line 1762
    const-string/jumbo v10, "start record"

    invoke-static {v10}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 1763
    const/4 v10, 0x1

    move-object/from16 v0, p0

    iput-boolean v10, v0, Lorg/telegram/messenger/MediaController;->useFrontSpeaker:Z

    .line 1764
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/messenger/MediaController;->raiseChat:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v10}, Lorg/telegram/ui/ChatActivity;->playFirstUnreadVoiceMessage()Z

    move-result v10

    if-nez v10, :cond_7

    .line 1765
    const/4 v10, 0x1

    move-object/from16 v0, p0

    iput-boolean v10, v0, Lorg/telegram/messenger/MediaController;->raiseToEarRecord:Z

    .line 1766
    const/4 v10, 0x0

    move-object/from16 v0, p0

    iput-boolean v10, v0, Lorg/telegram/messenger/MediaController;->useFrontSpeaker:Z

    .line 1767
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/messenger/MediaController;->raiseChat:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v10}, Lorg/telegram/ui/ChatActivity;->getDialogId()J

    move-result-wide v10

    const/4 v12, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v11, v12}, Lorg/telegram/messenger/MediaController;->startRecording(JLorg/telegram/messenger/MessageObject;)V

    .line 1769
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v10, v0, Lorg/telegram/messenger/MediaController;->useFrontSpeaker:Z

    if-eqz v10, :cond_8

    .line 1770
    const/4 v10, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lorg/telegram/messenger/MediaController;->setUseFrontSpeaker(Z)V

    .line 1772
    :cond_8
    const/4 v10, 0x1

    move-object/from16 v0, p0

    iput-boolean v10, v0, Lorg/telegram/messenger/MediaController;->ignoreOnPause:Z

    .line 1773
    move-object/from16 v0, p0

    iget-boolean v10, v0, Lorg/telegram/messenger/MediaController;->proximityHasDifferentValues:Z

    if-eqz v10, :cond_9

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/messenger/MediaController;->proximityWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v10, :cond_9

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/messenger/MediaController;->proximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v10}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v10

    if-nez v10, :cond_9

    .line 1774
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/messenger/MediaController;->proximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v10}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1788
    :cond_9
    :goto_5
    const/4 v10, 0x0

    move-object/from16 v0, p0

    iput v10, v0, Lorg/telegram/messenger/MediaController;->raisedToBack:I

    .line 1789
    const/4 v10, 0x0

    move-object/from16 v0, p0

    iput v10, v0, Lorg/telegram/messenger/MediaController;->raisedToTop:I

    .line 1790
    const/4 v10, 0x0

    move-object/from16 v0, p0

    iput v10, v0, Lorg/telegram/messenger/MediaController;->countLess:I

    .line 1824
    :cond_a
    :goto_6
    move-object/from16 v0, p0

    iget-wide v10, v0, Lorg/telegram/messenger/MediaController;->timeSinceRaise:J

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-eqz v10, :cond_0

    move-object/from16 v0, p0

    iget v10, v0, Lorg/telegram/messenger/MediaController;->raisedToBack:I

    const/4 v11, 0x6

    if-ne v10, v11, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/telegram/messenger/MediaController;->timeSinceRaise:J

    sub-long/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(J)J

    move-result-wide v10

    const-wide/16 v12, 0x3e8

    cmp-long v10, v10, v12

    if-lez v10, :cond_0

    .line 1825
    const/4 v10, 0x0

    move-object/from16 v0, p0

    iput v10, v0, Lorg/telegram/messenger/MediaController;->raisedToBack:I

    .line 1826
    const/4 v10, 0x0

    move-object/from16 v0, p0

    iput v10, v0, Lorg/telegram/messenger/MediaController;->raisedToTop:I

    .line 1827
    const/4 v10, 0x0

    move-object/from16 v0, p0

    iput v10, v0, Lorg/telegram/messenger/MediaController;->countLess:I

    .line 1828
    const-wide/16 v10, 0x0

    move-object/from16 v0, p0

    iput-wide v10, v0, Lorg/telegram/messenger/MediaController;->timeSinceRaise:J

    goto/16 :goto_0

    .line 1677
    .end local v5    # "countLessMax":I
    .end local v6    # "minCount":I
    .end local v7    # "minDist":F
    :cond_b
    move-object/from16 v0, p0

    iget v10, v0, Lorg/telegram/messenger/MediaController;->lastProximityValue:F

    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/hardware/SensorEvent;->values:[F

    const/4 v12, 0x0

    aget v11, v11, v12

    cmpl-float v10, v10, v11

    if-eqz v10, :cond_2

    .line 1678
    const/4 v10, 0x1

    move-object/from16 v0, p0

    iput-boolean v10, v0, Lorg/telegram/messenger/MediaController;->proximityHasDifferentValues:Z

    goto/16 :goto_1

    .line 1683
    :cond_c
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/messenger/MediaController;->accelerometerSensor:Landroid/hardware/Sensor;

    if-ne v10, v11, :cond_e

    .line 1685
    move-object/from16 v0, p0

    iget-wide v10, v0, Lorg/telegram/messenger/MediaController;->lastTimestamp:J

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-nez v10, :cond_d

    const-wide v2, 0x3fef5c2900000000L    # 0.9800000190734863

    .line 1686
    .local v2, "alpha":D
    :goto_7
    const v4, 0x3f4ccccd    # 0.8f

    .line 1687
    .local v4, "alphaFast":F
    move-object/from16 v0, p1

    iget-wide v10, v0, Landroid/hardware/SensorEvent;->timestamp:J

    move-object/from16 v0, p0

    iput-wide v10, v0, Lorg/telegram/messenger/MediaController;->lastTimestamp:J

    .line 1688
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/messenger/MediaController;->gravity:[F

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/messenger/MediaController;->gravity:[F

    const/4 v13, 0x0

    aget v12, v12, v13

    float-to-double v12, v12

    mul-double/2addr v12, v2

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v14, v2

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/hardware/SensorEvent;->values:[F

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aget v16, v16, v17

    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v16, v0

    mul-double v14, v14, v16

    add-double/2addr v12, v14

    double-to-float v12, v12

    aput v12, v10, v11

    .line 1689
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/messenger/MediaController;->gravity:[F

    const/4 v11, 0x1

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/messenger/MediaController;->gravity:[F

    const/4 v13, 0x1

    aget v12, v12, v13

    float-to-double v12, v12

    mul-double/2addr v12, v2

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v14, v2

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/hardware/SensorEvent;->values:[F

    move-object/from16 v16, v0

    const/16 v17, 0x1

    aget v16, v16, v17

    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v16, v0

    mul-double v14, v14, v16

    add-double/2addr v12, v14

    double-to-float v12, v12

    aput v12, v10, v11

    .line 1690
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/messenger/MediaController;->gravity:[F

    const/4 v11, 0x2

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/messenger/MediaController;->gravity:[F

    const/4 v13, 0x2

    aget v12, v12, v13

    float-to-double v12, v12

    mul-double/2addr v12, v2

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v14, v2

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/hardware/SensorEvent;->values:[F

    move-object/from16 v16, v0

    const/16 v17, 0x2

    aget v16, v16, v17

    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v16, v0

    mul-double v14, v14, v16

    add-double/2addr v12, v14

    double-to-float v12, v12

    aput v12, v10, v11

    .line 1691
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/messenger/MediaController;->gravityFast:[F

    const/4 v11, 0x0

    const v12, 0x3f4ccccd    # 0.8f

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/messenger/MediaController;->gravity:[F

    const/4 v14, 0x0

    aget v13, v13, v14

    mul-float/2addr v12, v13

    const v13, 0x3e4ccccc    # 0.19999999f

    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/hardware/SensorEvent;->values:[F

    const/4 v15, 0x0

    aget v14, v14, v15

    mul-float/2addr v13, v14

    add-float/2addr v12, v13

    aput v12, v10, v11

    .line 1692
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/messenger/MediaController;->gravityFast:[F

    const/4 v11, 0x1

    const v12, 0x3f4ccccd    # 0.8f

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/messenger/MediaController;->gravity:[F

    const/4 v14, 0x1

    aget v13, v13, v14

    mul-float/2addr v12, v13

    const v13, 0x3e4ccccc    # 0.19999999f

    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/hardware/SensorEvent;->values:[F

    const/4 v15, 0x1

    aget v14, v14, v15

    mul-float/2addr v13, v14

    add-float/2addr v12, v13

    aput v12, v10, v11

    .line 1693
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/messenger/MediaController;->gravityFast:[F

    const/4 v11, 0x2

    const v12, 0x3f4ccccd    # 0.8f

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/messenger/MediaController;->gravity:[F

    const/4 v14, 0x2

    aget v13, v13, v14

    mul-float/2addr v12, v13

    const v13, 0x3e4ccccc    # 0.19999999f

    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/hardware/SensorEvent;->values:[F

    const/4 v15, 0x2

    aget v14, v14, v15

    mul-float/2addr v13, v14

    add-float/2addr v12, v13

    aput v12, v10, v11

    .line 1695
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/messenger/MediaController;->linearAcceleration:[F

    const/4 v11, 0x0

    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/hardware/SensorEvent;->values:[F

    const/4 v13, 0x0

    aget v12, v12, v13

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/messenger/MediaController;->gravity:[F

    const/4 v14, 0x0

    aget v13, v13, v14

    sub-float/2addr v12, v13

    aput v12, v10, v11

    .line 1696
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/messenger/MediaController;->linearAcceleration:[F

    const/4 v11, 0x1

    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/hardware/SensorEvent;->values:[F

    const/4 v13, 0x1

    aget v12, v12, v13

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/messenger/MediaController;->gravity:[F

    const/4 v14, 0x1

    aget v13, v13, v14

    sub-float/2addr v12, v13

    aput v12, v10, v11

    .line 1697
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/messenger/MediaController;->linearAcceleration:[F

    const/4 v11, 0x2

    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/hardware/SensorEvent;->values:[F

    const/4 v13, 0x2

    aget v12, v12, v13

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/messenger/MediaController;->gravity:[F

    const/4 v14, 0x2

    aget v13, v13, v14

    sub-float/2addr v12, v13

    aput v12, v10, v11

    goto/16 :goto_2

    .line 1685
    .end local v2    # "alpha":D
    .end local v4    # "alphaFast":F
    :cond_d
    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    move-object/from16 v0, p1

    iget-wide v14, v0, Landroid/hardware/SensorEvent;->timestamp:J

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/messenger/MediaController;->lastTimestamp:J

    move-wide/from16 v16, v0

    sub-long v14, v14, v16

    long-to-double v14, v14

    const-wide v16, 0x41cdcd6500000000L    # 1.0E9

    div-double v14, v14, v16

    add-double/2addr v12, v14

    div-double v2, v10, v12

    goto/16 :goto_7

    .line 1698
    :cond_e
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/messenger/MediaController;->linearSensor:Landroid/hardware/Sensor;

    if-ne v10, v11, :cond_f

    .line 1699
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/messenger/MediaController;->linearAcceleration:[F

    const/4 v11, 0x0

    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/hardware/SensorEvent;->values:[F

    const/4 v13, 0x0

    aget v12, v12, v13

    aput v12, v10, v11

    .line 1700
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/messenger/MediaController;->linearAcceleration:[F

    const/4 v11, 0x1

    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/hardware/SensorEvent;->values:[F

    const/4 v13, 0x1

    aget v12, v12, v13

    aput v12, v10, v11

    .line 1701
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/messenger/MediaController;->linearAcceleration:[F

    const/4 v11, 0x2

    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/hardware/SensorEvent;->values:[F

    const/4 v13, 0x2

    aget v12, v12, v13

    aput v12, v10, v11

    goto/16 :goto_2

    .line 1702
    :cond_f
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/telegram/messenger/MediaController;->gravitySensor:Landroid/hardware/Sensor;

    if-ne v10, v11, :cond_3

    .line 1703
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/messenger/MediaController;->gravityFast:[F

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/messenger/MediaController;->gravity:[F

    const/4 v13, 0x0

    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/hardware/SensorEvent;->values:[F

    const/4 v15, 0x0

    aget v14, v14, v15

    aput v14, v12, v13

    aput v14, v10, v11

    .line 1704
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/messenger/MediaController;->gravityFast:[F

    const/4 v11, 0x1

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/messenger/MediaController;->gravity:[F

    const/4 v13, 0x1

    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/hardware/SensorEvent;->values:[F

    const/4 v15, 0x1

    aget v14, v14, v15

    aput v14, v12, v13

    aput v14, v10, v11

    .line 1705
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/messenger/MediaController;->gravityFast:[F

    const/4 v11, 0x2

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/messenger/MediaController;->gravity:[F

    const/4 v13, 0x2

    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/hardware/SensorEvent;->values:[F

    const/4 v15, 0x2

    aget v14, v14, v15

    aput v14, v12, v13

    aput v14, v10, v11

    goto/16 :goto_2

    .line 1722
    .restart local v5    # "countLessMax":I
    .restart local v6    # "minCount":I
    .restart local v7    # "minDist":F
    .restart local v9    # "val":F
    :cond_10
    const/high16 v10, 0x41700000    # 15.0f

    cmpg-float v10, v9, v10

    if-gez v10, :cond_11

    .line 1723
    move-object/from16 v0, p0

    iget v10, v0, Lorg/telegram/messenger/MediaController;->countLess:I

    add-int/lit8 v10, v10, 0x1

    move-object/from16 v0, p0

    iput v10, v0, Lorg/telegram/messenger/MediaController;->countLess:I

    .line 1725
    :cond_11
    move-object/from16 v0, p0

    iget v10, v0, Lorg/telegram/messenger/MediaController;->countLess:I

    const/16 v11, 0xa

    if-eq v10, v11, :cond_12

    move-object/from16 v0, p0

    iget v10, v0, Lorg/telegram/messenger/MediaController;->raisedToTop:I

    const/4 v11, 0x6

    if-ne v10, v11, :cond_12

    move-object/from16 v0, p0

    iget v10, v0, Lorg/telegram/messenger/MediaController;->raisedToBack:I

    if-eqz v10, :cond_5

    .line 1726
    :cond_12
    const/4 v10, 0x0

    move-object/from16 v0, p0

    iput v10, v0, Lorg/telegram/messenger/MediaController;->raisedToBack:I

    .line 1727
    const/4 v10, 0x0

    move-object/from16 v0, p0

    iput v10, v0, Lorg/telegram/messenger/MediaController;->raisedToTop:I

    .line 1728
    const/4 v10, 0x0

    move-object/from16 v0, p0

    iput v10, v0, Lorg/telegram/messenger/MediaController;->countLess:I

    goto/16 :goto_3

    .line 1731
    :cond_13
    const/4 v10, 0x0

    cmpg-float v10, v9, v10

    if-gez v10, :cond_5

    move-object/from16 v0, p0

    iget v10, v0, Lorg/telegram/messenger/MediaController;->previousAccValue:F

    const/4 v11, 0x0

    cmpg-float v10, v10, v11

    if-gez v10, :cond_5

    .line 1732
    move-object/from16 v0, p0

    iget v10, v0, Lorg/telegram/messenger/MediaController;->raisedToTop:I

    const/4 v11, 0x6

    if-ne v10, v11, :cond_14

    const/high16 v10, -0x3e900000    # -15.0f

    cmpg-float v10, v9, v10

    if-gez v10, :cond_14

    .line 1733
    move-object/from16 v0, p0

    iget v10, v0, Lorg/telegram/messenger/MediaController;->raisedToBack:I

    const/4 v11, 0x6

    if-ge v10, v11, :cond_5

    .line 1734
    move-object/from16 v0, p0

    iget v10, v0, Lorg/telegram/messenger/MediaController;->raisedToBack:I

    add-int/lit8 v10, v10, 0x1

    move-object/from16 v0, p0

    iput v10, v0, Lorg/telegram/messenger/MediaController;->raisedToBack:I

    .line 1735
    move-object/from16 v0, p0

    iget v10, v0, Lorg/telegram/messenger/MediaController;->raisedToBack:I

    const/4 v11, 0x6

    if-ne v10, v11, :cond_5

    .line 1736
    const/4 v10, 0x0

    move-object/from16 v0, p0

    iput v10, v0, Lorg/telegram/messenger/MediaController;->raisedToTop:I

    .line 1737
    const/4 v10, 0x0

    move-object/from16 v0, p0

    iput v10, v0, Lorg/telegram/messenger/MediaController;->countLess:I

    .line 1738
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    move-object/from16 v0, p0

    iput-wide v10, v0, Lorg/telegram/messenger/MediaController;->timeSinceRaise:J

    goto/16 :goto_3

    .line 1743
    :cond_14
    const/high16 v10, -0x3e900000    # -15.0f

    cmpl-float v10, v9, v10

    if-lez v10, :cond_15

    .line 1744
    move-object/from16 v0, p0

    iget v10, v0, Lorg/telegram/messenger/MediaController;->countLess:I

    add-int/lit8 v10, v10, 0x1

    move-object/from16 v0, p0

    iput v10, v0, Lorg/telegram/messenger/MediaController;->countLess:I

    .line 1746
    :cond_15
    move-object/from16 v0, p0

    iget v10, v0, Lorg/telegram/messenger/MediaController;->countLess:I

    const/16 v11, 0xa

    if-eq v10, v11, :cond_16

    move-object/from16 v0, p0

    iget v10, v0, Lorg/telegram/messenger/MediaController;->raisedToTop:I

    const/4 v11, 0x6

    if-ne v10, v11, :cond_16

    move-object/from16 v0, p0

    iget v10, v0, Lorg/telegram/messenger/MediaController;->raisedToBack:I

    if-eqz v10, :cond_5

    .line 1747
    :cond_16
    const/4 v10, 0x0

    move-object/from16 v0, p0

    iput v10, v0, Lorg/telegram/messenger/MediaController;->raisedToTop:I

    .line 1748
    const/4 v10, 0x0

    move-object/from16 v0, p0

    iput v10, v0, Lorg/telegram/messenger/MediaController;->raisedToBack:I

    .line 1749
    const/4 v10, 0x0

    move-object/from16 v0, p0

    iput v10, v0, Lorg/telegram/messenger/MediaController;->countLess:I

    goto/16 :goto_3

    .line 1755
    :cond_17
    const/4 v10, 0x0

    goto/16 :goto_4

    .line 1777
    .end local v9    # "val":F
    :cond_18
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v10, :cond_9

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v10}, Lorg/telegram/messenger/MessageObject;->isVoice()Z

    move-result v10

    if-nez v10, :cond_19

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v10}, Lorg/telegram/messenger/MessageObject;->isRoundVideo()Z

    move-result v10

    if-eqz v10, :cond_9

    .line 1778
    :cond_19
    move-object/from16 v0, p0

    iget-boolean v10, v0, Lorg/telegram/messenger/MediaController;->useFrontSpeaker:Z

    if-nez v10, :cond_9

    .line 1779
    const-string/jumbo v10, "start listen"

    invoke-static {v10}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 1780
    move-object/from16 v0, p0

    iget-boolean v10, v0, Lorg/telegram/messenger/MediaController;->proximityHasDifferentValues:Z

    if-eqz v10, :cond_1a

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/messenger/MediaController;->proximityWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v10, :cond_1a

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/messenger/MediaController;->proximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v10}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v10

    if-nez v10, :cond_1a

    .line 1781
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/messenger/MediaController;->proximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v10}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1783
    :cond_1a
    const/4 v10, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lorg/telegram/messenger/MediaController;->setUseFrontSpeaker(Z)V

    .line 1784
    const/4 v10, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lorg/telegram/messenger/MediaController;->startAudioAgain(Z)V

    .line 1785
    const/4 v10, 0x1

    move-object/from16 v0, p0

    iput-boolean v10, v0, Lorg/telegram/messenger/MediaController;->ignoreOnPause:Z

    goto/16 :goto_5

    .line 1791
    :cond_1b
    move-object/from16 v0, p0

    iget-boolean v10, v0, Lorg/telegram/messenger/MediaController;->proximityTouched:Z

    if-eqz v10, :cond_1e

    .line 1792
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v10, :cond_a

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v10}, Lorg/telegram/messenger/MessageObject;->isVoice()Z

    move-result v10

    if-nez v10, :cond_1c

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v10}, Lorg/telegram/messenger/MessageObject;->isRoundVideo()Z

    move-result v10

    if-eqz v10, :cond_a

    .line 1793
    :cond_1c
    sget-object v10, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v11, "plusconfig"

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 1795
    .local v8, "plusPreferences":Landroid/content/SharedPreferences;
    move-object/from16 v0, p0

    iget-boolean v10, v0, Lorg/telegram/messenger/MediaController;->useFrontSpeaker:Z

    if-nez v10, :cond_a

    const-string/jumbo v10, "disableAudioStop"

    const/4 v11, 0x0

    invoke-interface {v8, v10, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    if-nez v10, :cond_a

    .line 1796
    const-string/jumbo v10, "start listen by proximity only"

    invoke-static {v10}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 1797
    move-object/from16 v0, p0

    iget-boolean v10, v0, Lorg/telegram/messenger/MediaController;->proximityHasDifferentValues:Z

    if-eqz v10, :cond_1d

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/messenger/MediaController;->proximityWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v10, :cond_1d

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/messenger/MediaController;->proximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v10}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v10

    if-nez v10, :cond_1d

    .line 1798
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/messenger/MediaController;->proximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v10}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1800
    :cond_1d
    const/4 v10, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lorg/telegram/messenger/MediaController;->setUseFrontSpeaker(Z)V

    .line 1801
    const/4 v10, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lorg/telegram/messenger/MediaController;->startAudioAgain(Z)V

    .line 1802
    const/4 v10, 0x1

    move-object/from16 v0, p0

    iput-boolean v10, v0, Lorg/telegram/messenger/MediaController;->ignoreOnPause:Z

    goto/16 :goto_6

    .line 1805
    .end local v8    # "plusPreferences":Landroid/content/SharedPreferences;
    :cond_1e
    move-object/from16 v0, p0

    iget-boolean v10, v0, Lorg/telegram/messenger/MediaController;->proximityTouched:Z

    if-nez v10, :cond_a

    .line 1806
    move-object/from16 v0, p0

    iget-boolean v10, v0, Lorg/telegram/messenger/MediaController;->raiseToEarRecord:Z

    if-eqz v10, :cond_1f

    .line 1807
    const-string/jumbo v10, "stop record"

    invoke-static {v10}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 1808
    const/4 v10, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lorg/telegram/messenger/MediaController;->stopRecording(I)V

    .line 1809
    const/4 v10, 0x0

    move-object/from16 v0, p0

    iput-boolean v10, v0, Lorg/telegram/messenger/MediaController;->raiseToEarRecord:Z

    .line 1810
    const/4 v10, 0x0

    move-object/from16 v0, p0

    iput-boolean v10, v0, Lorg/telegram/messenger/MediaController;->ignoreOnPause:Z

    .line 1811
    move-object/from16 v0, p0

    iget-boolean v10, v0, Lorg/telegram/messenger/MediaController;->proximityHasDifferentValues:Z

    if-eqz v10, :cond_a

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/messenger/MediaController;->proximityWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v10, :cond_a

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/messenger/MediaController;->proximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v10}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v10

    if-eqz v10, :cond_a

    .line 1812
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/messenger/MediaController;->proximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v10}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_6

    .line 1814
    :cond_1f
    move-object/from16 v0, p0

    iget-boolean v10, v0, Lorg/telegram/messenger/MediaController;->useFrontSpeaker:Z

    if-eqz v10, :cond_a

    .line 1815
    const-string/jumbo v10, "stop listen"

    invoke-static {v10}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 1816
    const/4 v10, 0x0

    move-object/from16 v0, p0

    iput-boolean v10, v0, Lorg/telegram/messenger/MediaController;->useFrontSpeaker:Z

    .line 1817
    const/4 v10, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lorg/telegram/messenger/MediaController;->startAudioAgain(Z)V

    .line 1818
    const/4 v10, 0x0

    move-object/from16 v0, p0

    iput-boolean v10, v0, Lorg/telegram/messenger/MediaController;->ignoreOnPause:Z

    .line 1819
    move-object/from16 v0, p0

    iget-boolean v10, v0, Lorg/telegram/messenger/MediaController;->proximityHasDifferentValues:Z

    if-eqz v10, :cond_a

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/messenger/MediaController;->proximityWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v10, :cond_a

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/messenger/MediaController;->proximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v10}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v10

    if-eqz v10, :cond_a

    .line 1820
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/messenger/MediaController;->proximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v10}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_6
.end method

.method public pauseMessage(Lorg/telegram/messenger/MessageObject;)Z
    .locals 8
    .param p1, "messageObject"    # Lorg/telegram/messenger/MessageObject;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2938
    iget-object v3, p0, Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;

    if-nez v3, :cond_0

    iget-object v3, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    if-nez v3, :cond_0

    iget-object v3, p0, Lorg/telegram/messenger/MediaController;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-eqz v3, :cond_1

    :cond_0
    if-eqz p1, :cond_1

    iget-object v3, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v3

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    if-eq v3, v4, :cond_2

    .line 2957
    :cond_1
    :goto_0
    return v1

    .line 2941
    :cond_2
    invoke-direct {p0}, Lorg/telegram/messenger/MediaController;->stopProgressTimer()V

    .line 2943
    :try_start_0
    iget-object v3, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    if-eqz v3, :cond_4

    .line 2944
    iget-object v3, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->pause()V

    .line 2950
    :cond_3
    :goto_1
    const/4 v3, 0x1

    iput-boolean v3, p0, Lorg/telegram/messenger/MediaController;->isPaused:Z

    .line 2951
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/NotificationCenter;->messagePlayingPlayStateChanged:I

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v7}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    move v1, v2

    .line 2957
    goto :goto_0

    .line 2945
    :cond_4
    iget-object v3, p0, Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;

    if-eqz v3, :cond_5

    .line 2946
    iget-object v3, p0, Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;

    invoke-virtual {v3}, Landroid/media/AudioTrack;->pause()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 2952
    :catch_0
    move-exception v0

    .line 2953
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 2954
    iput-boolean v1, p0, Lorg/telegram/messenger/MediaController;->isPaused:Z

    goto :goto_0

    .line 2947
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_5
    :try_start_1
    iget-object v3, p0, Lorg/telegram/messenger/MediaController;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-eqz v3, :cond_3

    .line 2948
    iget-object v3, p0, Lorg/telegram/messenger/MediaController;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/VideoPlayer;->pause()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public playMessage(Lorg/telegram/messenger/MessageObject;)Z
    .locals 19
    .param p1, "messageObject"    # Lorg/telegram/messenger/MessageObject;

    .prologue
    .line 2475
    if-nez p1, :cond_0

    .line 2476
    const/4 v2, 0x0

    .line 2835
    :goto_0
    return v2

    .line 2478
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;

    if-nez v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    if-nez v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MediaController;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-eqz v2, :cond_4

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v2, :cond_4

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v3

    if-ne v2, v3, :cond_4

    .line 2479
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/messenger/MediaController;->isPaused:Z

    if-eqz v2, :cond_2

    .line 2480
    invoke-virtual/range {p0 .. p1}, Lorg/telegram/messenger/MediaController;->resumeAudio(Lorg/telegram/messenger/MessageObject;)Z

    .line 2482
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/messenger/MediaController;->raiseToSpeak:Z

    if-nez v2, :cond_3

    .line 2483
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MediaController;->raiseChat:Lorg/telegram/ui/ChatActivity;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/MediaController;->startRaiseToEarSensors(Lorg/telegram/ui/ChatActivity;)V

    .line 2485
    :cond_3
    const/4 v2, 0x1

    goto :goto_0

    .line 2487
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isOut()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isContentUnread()Z

    move-result v2

    if-eqz v2, :cond_5

    move-object/from16 v0, p1

    iget-object v2, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    if-nez v2, :cond_5

    .line 2488
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lorg/telegram/messenger/MessagesController;->markMessageContentAsRead(Lorg/telegram/messenger/MessageObject;)V

    .line 2490
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/messenger/MediaController;->playMusicAgain:Z

    if-nez v2, :cond_8

    const/4 v14, 0x1

    .line 2491
    .local v14, "notify":Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v2, :cond_6

    .line 2492
    const/4 v14, 0x0

    .line 2494
    :cond_6
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v2}, Lorg/telegram/messenger/MediaController;->cleanupPlayer(ZZ)V

    .line 2495
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/messenger/MediaController;->playMusicAgain:Z

    .line 2496
    const/4 v12, 0x0

    .line 2497
    .local v12, "file":Ljava/io/File;
    move-object/from16 v0, p1

    iget-object v2, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    if-eqz v2, :cond_7

    move-object/from16 v0, p1

    iget-object v2, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_7

    .line 2498
    new-instance v12, Ljava/io/File;

    .end local v12    # "file":Ljava/io/File;
    move-object/from16 v0, p1

    iget-object v2, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    invoke-direct {v12, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2499
    .restart local v12    # "file":Ljava/io/File;
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_7

    .line 2500
    const/4 v12, 0x0

    .line 2503
    :cond_7
    if-eqz v12, :cond_9

    move-object v9, v12

    .line 2504
    .local v9, "cacheFile":Ljava/io/File;
    :goto_2
    if-eqz v9, :cond_b

    if-eq v9, v12, :cond_b

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_b

    .line 2505
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lorg/telegram/messenger/FileLoader;->loadFile(Lorg/telegram/tgnet/TLRPC$Document;ZI)V

    .line 2506
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/messenger/MediaController;->downloadingCurrentMessage:Z

    .line 2507
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/messenger/MediaController;->isPaused:Z

    .line 2508
    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iput-wide v2, v0, Lorg/telegram/messenger/MediaController;->lastProgress:J

    .line 2509
    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iput-wide v2, v0, Lorg/telegram/messenger/MediaController;->lastPlayPcm:J

    .line 2510
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/messenger/MediaController;->audioInfo:Lorg/telegram/messenger/audioinfo/AudioInfo;

    .line 2511
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    .line 2512
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 2513
    new-instance v13, Landroid/content/Intent;

    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-class v3, Lorg/telegram/messenger/MusicPlayerService;

    invoke-direct {v13, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2514
    .local v13, "intent":Landroid/content/Intent;
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v2, v13}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 2519
    :goto_3
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->messagePlayingPlayStateChanged:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 2520
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 2490
    .end local v9    # "cacheFile":Ljava/io/File;
    .end local v12    # "file":Ljava/io/File;
    .end local v13    # "intent":Landroid/content/Intent;
    .end local v14    # "notify":Z
    :cond_8
    const/4 v14, 0x0

    goto/16 :goto_1

    .line 2503
    .restart local v12    # "file":Ljava/io/File;
    .restart local v14    # "notify":Z
    :cond_9
    move-object/from16 v0, p1

    iget-object v2, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v2}, Lorg/telegram/messenger/FileLoader;->getPathToMessage(Lorg/telegram/tgnet/TLRPC$Message;)Ljava/io/File;

    move-result-object v9

    goto :goto_2

    .line 2516
    .restart local v9    # "cacheFile":Ljava/io/File;
    :cond_a
    new-instance v13, Landroid/content/Intent;

    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-class v3, Lorg/telegram/messenger/MusicPlayerService;

    invoke-direct {v13, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2517
    .restart local v13    # "intent":Landroid/content/Intent;
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v2, v13}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    goto :goto_3

    .line 2522
    .end local v13    # "intent":Landroid/content/Intent;
    :cond_b
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/messenger/MediaController;->downloadingCurrentMessage:Z

    .line 2524
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isMusic()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 2525
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/MediaController;->checkIsNextMusicFileDownloaded()V

    .line 2530
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MediaController;->currentAspectRatioFrameLayout:Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    if-eqz v2, :cond_c

    .line 2531
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/messenger/MediaController;->isDrawingWasReady:Z

    .line 2532
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MediaController;->currentAspectRatioFrameLayout:Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;->setDrawingReady(Z)V

    .line 2534
    :cond_c
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isRoundVideo()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 2535
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MediaController;->playlist:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 2536
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MediaController;->shuffledPlaylist:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 2537
    new-instance v2, Lorg/telegram/ui/Components/VideoPlayer;

    invoke-direct {v2}, Lorg/telegram/ui/Components/VideoPlayer;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/messenger/MediaController;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    .line 2538
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MediaController;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    new-instance v3, Lorg/telegram/messenger/MediaController$14;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/messenger/MediaController$14;-><init>(Lorg/telegram/messenger/MediaController;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/VideoPlayer;->setDelegate(Lorg/telegram/ui/Components/VideoPlayer$VideoPlayerDelegate;)V

    .line 2652
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/messenger/MediaController;->currentAspectRatioFrameLayoutReady:Z

    .line 2653
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MediaController;->pipRoundVideoView:Lorg/telegram/ui/Components/PipRoundVideoView;

    if-nez v2, :cond_d

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lorg/telegram/messenger/MessagesController;->isDialogCreated(J)Z

    move-result v2

    if-nez v2, :cond_13

    .line 2654
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MediaController;->pipRoundVideoView:Lorg/telegram/ui/Components/PipRoundVideoView;

    if-nez v2, :cond_e

    .line 2656
    :try_start_0
    new-instance v2, Lorg/telegram/ui/Components/PipRoundVideoView;

    invoke-direct {v2}, Lorg/telegram/ui/Components/PipRoundVideoView;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/messenger/MediaController;->pipRoundVideoView:Lorg/telegram/ui/Components/PipRoundVideoView;

    .line 2657
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MediaController;->pipRoundVideoView:Lorg/telegram/ui/Components/PipRoundVideoView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MediaController;->baseActivity:Landroid/app/Activity;

    new-instance v4, Lorg/telegram/messenger/MediaController$15;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lorg/telegram/messenger/MediaController$15;-><init>(Lorg/telegram/messenger/MediaController;)V

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/Components/PipRoundVideoView;->show(Landroid/app/Activity;Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2667
    :cond_e
    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MediaController;->pipRoundVideoView:Lorg/telegram/ui/Components/PipRoundVideoView;

    if-eqz v2, :cond_f

    .line 2668
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MediaController;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MediaController;->pipRoundVideoView:Lorg/telegram/ui/Components/PipRoundVideoView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/PipRoundVideoView;->getTextureView()Landroid/view/TextureView;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/VideoPlayer;->setTextureView(Landroid/view/TextureView;)V

    .line 2673
    :cond_f
    :goto_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MediaController;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-static {v9}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    const-string/jumbo v4, "other"

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/Components/VideoPlayer;->preparePlayer(Landroid/net/Uri;Ljava/lang/String;)V

    .line 2674
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MediaController;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/messenger/MediaController;->useFrontSpeaker:Z

    if-eqz v2, :cond_14

    const/4 v2, 0x0

    :goto_7
    invoke-virtual {v3, v2}, Lorg/telegram/ui/Components/VideoPlayer;->setStreamType(I)V

    .line 2675
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MediaController;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/VideoPlayer;->play()V

    .line 2765
    :goto_8
    invoke-direct/range {p0 .. p1}, Lorg/telegram/messenger/MediaController;->checkAudioFocus(Lorg/telegram/messenger/MessageObject;)V

    .line 2766
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/MediaController;->setPlayerVolume()V

    .line 2768
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/messenger/MediaController;->isPaused:Z

    .line 2769
    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iput-wide v2, v0, Lorg/telegram/messenger/MediaController;->lastProgress:J

    .line 2770
    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iput-wide v2, v0, Lorg/telegram/messenger/MediaController;->lastPlayPcm:J

    .line 2771
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    .line 2772
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/messenger/MediaController;->raiseToSpeak:Z

    if-nez v2, :cond_10

    .line 2773
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MediaController;->raiseChat:Lorg/telegram/ui/ChatActivity;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/MediaController;->startRaiseToEarSensors(Lorg/telegram/ui/ChatActivity;)V

    .line 2775
    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lorg/telegram/messenger/MediaController;->startProgressTimer(Lorg/telegram/messenger/MessageObject;)V

    .line 2776
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->messagePlayingDidStarted:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 2778
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MediaController;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-eqz v2, :cond_1e

    .line 2780
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    iget v2, v2, Lorg/telegram/messenger/MessageObject;->audioProgress:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_11

    .line 2781
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MediaController;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/VideoPlayer;->getDuration()J

    move-result-wide v2

    long-to-float v2, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    iget v3, v3, Lorg/telegram/messenger/MessageObject;->audioProgress:F

    mul-float/2addr v2, v3

    float-to-int v0, v2

    move/from16 v16, v0

    .line 2782
    .local v16, "seekTo":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MediaController;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    move/from16 v0, v16

    int-to-long v4, v0

    invoke-virtual {v2, v4, v5}, Lorg/telegram/ui/Components/VideoPlayer;->seekTo(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 2827
    .end local v16    # "seekTo":I
    :cond_11
    :goto_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->isMusic()Z

    move-result v2

    if-eqz v2, :cond_21

    .line 2828
    new-instance v13, Landroid/content/Intent;

    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-class v3, Lorg/telegram/messenger/MusicPlayerService;

    invoke-direct {v13, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2829
    .restart local v13    # "intent":Landroid/content/Intent;
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v2, v13}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 2835
    :goto_a
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 2527
    .end local v13    # "intent":Landroid/content/Intent;
    :cond_12
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/MediaController;->checkIsNextVoiceFileDownloaded()V

    goto/16 :goto_4

    .line 2663
    :catch_0
    move-exception v10

    .line 2664
    .local v10, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/messenger/MediaController;->pipRoundVideoView:Lorg/telegram/ui/Components/PipRoundVideoView;

    goto/16 :goto_5

    .line 2670
    .end local v10    # "e":Ljava/lang/Exception;
    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MediaController;->currentTextureView:Landroid/view/TextureView;

    if-eqz v2, :cond_f

    .line 2671
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MediaController;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MediaController;->currentTextureView:Landroid/view/TextureView;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/VideoPlayer;->setTextureView(Landroid/view/TextureView;)V

    goto/16 :goto_6

    .line 2674
    :cond_14
    const/4 v2, 0x3

    goto/16 :goto_7

    .line 2676
    :cond_15
    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lorg/telegram/messenger/MediaController;->isOpusFile(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_19

    .line 2677
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MediaController;->playlist:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 2678
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MediaController;->shuffledPlaylist:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 2679
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/MediaController;->playerObjectSync:Ljava/lang/Object;

    move-object/from16 v18, v0

    monitor-enter v18

    .line 2681
    const/4 v2, 0x3

    :try_start_2
    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/messenger/MediaController;->ignoreFirstProgress:I

    .line 2682
    new-instance v17, Ljava/util/concurrent/Semaphore;

    const/4 v2, 0x0

    move-object/from16 v0, v17

    invoke-direct {v0, v2}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    .line 2683
    .local v17, "semaphore":Ljava/util/concurrent/Semaphore;
    const/4 v2, 0x1

    new-array v15, v2, [Ljava/lang/Boolean;

    .line 2684
    .local v15, "result":[Ljava/lang/Boolean;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MediaController;->fileDecodingQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v3, Lorg/telegram/messenger/MediaController$16;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v3, v0, v15, v9, v1}, Lorg/telegram/messenger/MediaController$16;-><init>(Lorg/telegram/messenger/MediaController;[Ljava/lang/Boolean;Ljava/io/File;Ljava/util/concurrent/Semaphore;)V

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 2691
    invoke-virtual/range {v17 .. v17}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 2693
    const/4 v2, 0x0

    aget-object v2, v15, v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v2

    if-nez v2, :cond_16

    .line 2694
    const/4 v2, 0x0

    :try_start_3
    monitor-exit v18

    goto/16 :goto_0

    .line 2723
    .end local v15    # "result":[Ljava/lang/Boolean;
    .end local v17    # "semaphore":Ljava/util/concurrent/Semaphore;
    :catchall_0
    move-exception v2

    monitor-exit v18
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 2696
    .restart local v15    # "result":[Ljava/lang/Boolean;
    .restart local v17    # "semaphore":Ljava/util/concurrent/Semaphore;
    :cond_16
    :try_start_4
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/MediaController;->getTotalPcmDuration()J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lorg/telegram/messenger/MediaController;->currentTotalPcmDuration:J

    .line 2698
    new-instance v2, Landroid/media/AudioTrack;

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lorg/telegram/messenger/MediaController;->useFrontSpeaker:Z

    if-eqz v3, :cond_17

    const/4 v3, 0x0

    :goto_b
    const v4, 0xbb80

    const/4 v5, 0x4

    const/4 v6, 0x2

    move-object/from16 v0, p0

    iget v7, v0, Lorg/telegram/messenger/MediaController;->playerBufferSize:I

    const/4 v8, 0x1

    invoke-direct/range {v2 .. v8}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;

    .line 2699
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3, v4}, Landroid/media/AudioTrack;->setStereoVolume(FF)I

    .line 2700
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;

    new-instance v3, Lorg/telegram/messenger/MediaController$17;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/messenger/MediaController$17;-><init>(Lorg/telegram/messenger/MediaController;)V

    invoke-virtual {v2, v3}, Landroid/media/AudioTrack;->setPlaybackPositionUpdateListener(Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;)V

    .line 2711
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;

    invoke-virtual {v2}, Landroid/media/AudioTrack;->play()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2723
    :try_start_5
    monitor-exit v18

    goto/16 :goto_8

    .line 2698
    :cond_17
    const/4 v3, 0x3

    goto :goto_b

    .line 2712
    .end local v15    # "result":[Ljava/lang/Boolean;
    .end local v17    # "semaphore":Ljava/util/concurrent/Semaphore;
    :catch_1
    move-exception v10

    .line 2713
    .restart local v10    # "e":Ljava/lang/Exception;
    invoke-static {v10}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 2714
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;

    if-eqz v2, :cond_18

    .line 2715
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;

    invoke-virtual {v2}, Landroid/media/AudioTrack;->release()V

    .line 2716
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;

    .line 2717
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/messenger/MediaController;->isPaused:Z

    .line 2718
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    .line 2719
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/messenger/MediaController;->downloadingCurrentMessage:Z

    .line 2721
    :cond_18
    const/4 v2, 0x0

    monitor-exit v18
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    .line 2726
    .end local v10    # "e":Ljava/lang/Exception;
    :cond_19
    :try_start_6
    new-instance v2, Landroid/media/MediaPlayer;

    invoke-direct {v2}, Landroid/media/MediaPlayer;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    .line 2727
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/messenger/MediaController;->useFrontSpeaker:Z

    if-eqz v2, :cond_1b

    const/4 v2, 0x0

    :goto_c
    invoke-virtual {v3, v2}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 2728
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 2729
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    new-instance v3, Lorg/telegram/messenger/MediaController$18;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v3, v0, v1}, Lorg/telegram/messenger/MediaController$18;-><init>(Lorg/telegram/messenger/MediaController;Lorg/telegram/messenger/MessageObject;)V

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 2739
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->prepare()V

    .line 2740
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->start()V

    .line 2741
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->isVoice()Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 2742
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/messenger/MediaController;->audioInfo:Lorg/telegram/messenger/audioinfo/AudioInfo;

    .line 2743
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MediaController;->playlist:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 2744
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MediaController;->shuffledPlaylist:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto/16 :goto_8

    .line 2752
    :catch_2
    move-exception v10

    .line 2753
    .restart local v10    # "e":Ljava/lang/Exception;
    invoke-static {v10}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 2754
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/NotificationCenter;->messagePlayingPlayStateChanged:I

    const/4 v2, 0x1

    new-array v5, v2, [Ljava/lang/Object;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v2, :cond_1d

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v2

    :goto_d
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v6

    invoke-virtual {v3, v4, v5}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 2755
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    if-eqz v2, :cond_1a

    .line 2756
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->release()V

    .line 2757
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    .line 2758
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/messenger/MediaController;->isPaused:Z

    .line 2759
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    .line 2760
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lorg/telegram/messenger/MediaController;->downloadingCurrentMessage:Z

    .line 2762
    :cond_1a
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 2727
    .end local v10    # "e":Ljava/lang/Exception;
    :cond_1b
    const/4 v2, 0x3

    goto/16 :goto_c

    .line 2747
    :cond_1c
    :try_start_7
    invoke-static {v9}, Lorg/telegram/messenger/audioinfo/AudioInfo;->getAudioInfo(Ljava/io/File;)Lorg/telegram/messenger/audioinfo/AudioInfo;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/messenger/MediaController;->audioInfo:Lorg/telegram/messenger/audioinfo/AudioInfo;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    goto/16 :goto_8

    .line 2748
    :catch_3
    move-exception v10

    .line 2749
    .restart local v10    # "e":Ljava/lang/Exception;
    :try_start_8
    invoke-static {v10}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    goto/16 :goto_8

    .line 2754
    :cond_1d
    const/4 v2, 0x0

    goto :goto_d

    .line 2784
    .end local v10    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v11

    .line 2785
    .local v11, "e2":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    const/4 v3, 0x0

    iput v3, v2, Lorg/telegram/messenger/MessageObject;->audioProgress:F

    .line 2786
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    const/4 v3, 0x0

    iput v3, v2, Lorg/telegram/messenger/MessageObject;->audioProgressSec:I

    .line 2787
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->messagePlayingProgressDidChanged:I

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 2788
    invoke-static {v11}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_9

    .line 2790
    .end local v11    # "e2":Ljava/lang/Exception;
    :cond_1e
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    if-eqz v2, :cond_1f

    .line 2792
    :try_start_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    iget v2, v2, Lorg/telegram/messenger/MessageObject;->audioProgress:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_11

    .line 2793
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    iget v3, v3, Lorg/telegram/messenger/MessageObject;->audioProgress:F

    mul-float/2addr v2, v3

    float-to-int v0, v2

    move/from16 v16, v0

    .line 2794
    .restart local v16    # "seekTo":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/media/MediaPlayer;->seekTo(I)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    goto/16 :goto_9

    .line 2796
    .end local v16    # "seekTo":I
    :catch_5
    move-exception v11

    .line 2797
    .restart local v11    # "e2":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    const/4 v3, 0x0

    iput v3, v2, Lorg/telegram/messenger/MessageObject;->audioProgress:F

    .line 2798
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    const/4 v3, 0x0

    iput v3, v2, Lorg/telegram/messenger/MessageObject;->audioProgressSec:I

    .line 2799
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    sget v3, Lorg/telegram/messenger/NotificationCenter;->messagePlayingProgressDidChanged:I

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v6}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 2800
    invoke-static {v11}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_9

    .line 2802
    .end local v11    # "e2":Ljava/lang/Exception;
    :cond_1f
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;

    if-eqz v2, :cond_11

    .line 2803
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    iget v2, v2, Lorg/telegram/messenger/MessageObject;->audioProgress:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v3

    if-nez v2, :cond_20

    .line 2804
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    const/4 v3, 0x0

    iput v3, v2, Lorg/telegram/messenger/MessageObject;->audioProgress:F

    .line 2806
    :cond_20
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/MediaController;->fileDecodingQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v3, Lorg/telegram/messenger/MediaController$19;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/messenger/MediaController$19;-><init>(Lorg/telegram/messenger/MediaController;)V

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    goto/16 :goto_9

    .line 2831
    :cond_21
    new-instance v13, Landroid/content/Intent;

    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-class v3, Lorg/telegram/messenger/MusicPlayerService;

    invoke-direct {v13, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2832
    .restart local v13    # "intent":Landroid/content/Intent;
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v2, v13}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    goto/16 :goto_a
.end method

.method public playMessageAtIndex(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 2206
    iget v0, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    if-ltz v0, :cond_0

    iget v0, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->playlist:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 2212
    :cond_0
    :goto_0
    return-void

    .line 2209
    :cond_1
    iput p1, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    .line 2210
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/MediaController;->playMusicAgain:Z

    .line 2211
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->playlist:Ljava/util/ArrayList;

    iget v1, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/MediaController;->playMessage(Lorg/telegram/messenger/MessageObject;)Z

    goto :goto_0
.end method

.method public playNextMessage()V
    .locals 1

    .prologue
    .line 2202
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/telegram/messenger/MediaController;->playNextMessage(Z)V

    .line 2203
    return-void
.end method

.method public playPreviousMessage()V
    .locals 4

    .prologue
    .line 2292
    iget-boolean v2, p0, Lorg/telegram/messenger/MediaController;->shuffleMusic:Z

    if-eqz v2, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->shuffledPlaylist:Ljava/util/ArrayList;

    .line 2293
    .local v0, "currentPlayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2311
    :cond_0
    :goto_1
    return-void

    .line 2292
    .end local v0    # "currentPlayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->playlist:Ljava/util/ArrayList;

    goto :goto_0

    .line 2296
    .restart local v0    # "currentPlayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    :cond_2
    iget v2, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/MessageObject;

    .line 2297
    .local v1, "currentSong":Lorg/telegram/messenger/MessageObject;
    iget v2, v1, Lorg/telegram/messenger/MessageObject;->audioProgressSec:I

    const/16 v3, 0xa

    if-le v2, v3, :cond_3

    .line 2298
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lorg/telegram/messenger/MediaController;->seekToProgress(Lorg/telegram/messenger/MessageObject;F)Z

    goto :goto_1

    .line 2302
    :cond_3
    iget v2, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    .line 2303
    iget v2, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    if-gez v2, :cond_4

    .line 2304
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    .line 2306
    :cond_4
    iget v2, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    if-ltz v2, :cond_0

    iget v2, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 2309
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/telegram/messenger/MediaController;->playMusicAgain:Z

    .line 2310
    iget v2, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {p0, v2}, Lorg/telegram/messenger/MediaController;->playMessage(Lorg/telegram/messenger/MessageObject;)Z

    goto :goto_1
.end method

.method protected processDownloadObjects(ILjava/util/ArrayList;)V
    .locals 12
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/DownloadObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "objects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/DownloadObject;>;"
    const/4 v8, 0x2

    const/4 v9, 0x0

    .line 1077
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1123
    :cond_0
    return-void

    .line 1080
    :cond_1
    const/4 v5, 0x0

    .line 1081
    .local v5, "queue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/DownloadObject;>;"
    const/4 v6, 0x1

    if-ne p1, v6, :cond_4

    .line 1082
    iget-object v5, p0, Lorg/telegram/messenger/MediaController;->photoDownloadQueue:Ljava/util/ArrayList;

    .line 1096
    :cond_2
    :goto_0
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v0, v6, :cond_0

    .line 1097
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/DownloadObject;

    .line 1099
    .local v3, "downloadObject":Lorg/telegram/messenger/DownloadObject;
    iget-object v6, v3, Lorg/telegram/messenger/DownloadObject;->object:Lorg/telegram/tgnet/TLObject;

    instance-of v6, v6, Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v6, :cond_a

    .line 1100
    iget-object v2, v3, Lorg/telegram/messenger/DownloadObject;->object:Lorg/telegram/tgnet/TLObject;

    check-cast v2, Lorg/telegram/tgnet/TLRPC$Document;

    .line 1101
    .local v2, "document":Lorg/telegram/tgnet/TLRPC$Document;
    invoke-static {v2}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object v4

    .line 1105
    .end local v2    # "document":Lorg/telegram/tgnet/TLRPC$Document;
    .local v4, "path":Ljava/lang/String;
    :goto_2
    iget-object v6, p0, Lorg/telegram/messenger/MediaController;->downloadQueueKeys:Ljava/util/HashMap;

    invoke-virtual {v6, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 1096
    :cond_3
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1083
    .end local v0    # "a":I
    .end local v3    # "downloadObject":Lorg/telegram/messenger/DownloadObject;
    .end local v4    # "path":Ljava/lang/String;
    :cond_4
    if-ne p1, v8, :cond_5

    .line 1084
    iget-object v5, p0, Lorg/telegram/messenger/MediaController;->audioDownloadQueue:Ljava/util/ArrayList;

    goto :goto_0

    .line 1085
    :cond_5
    const/16 v6, 0x40

    if-ne p1, v6, :cond_6

    .line 1086
    iget-object v5, p0, Lorg/telegram/messenger/MediaController;->videoMessageDownloadQueue:Ljava/util/ArrayList;

    goto :goto_0

    .line 1087
    :cond_6
    const/4 v6, 0x4

    if-ne p1, v6, :cond_7

    .line 1088
    iget-object v5, p0, Lorg/telegram/messenger/MediaController;->videoDownloadQueue:Ljava/util/ArrayList;

    goto :goto_0

    .line 1089
    :cond_7
    const/16 v6, 0x8

    if-ne p1, v6, :cond_8

    .line 1090
    iget-object v5, p0, Lorg/telegram/messenger/MediaController;->documentDownloadQueue:Ljava/util/ArrayList;

    goto :goto_0

    .line 1091
    :cond_8
    const/16 v6, 0x10

    if-ne p1, v6, :cond_9

    .line 1092
    iget-object v5, p0, Lorg/telegram/messenger/MediaController;->musicDownloadQueue:Ljava/util/ArrayList;

    goto :goto_0

    .line 1093
    :cond_9
    const/16 v6, 0x20

    if-ne p1, v6, :cond_2

    .line 1094
    iget-object v5, p0, Lorg/telegram/messenger/MediaController;->gifDownloadQueue:Ljava/util/ArrayList;

    goto :goto_0

    .line 1103
    .restart local v0    # "a":I
    .restart local v3    # "downloadObject":Lorg/telegram/messenger/DownloadObject;
    :cond_a
    iget-object v6, v3, Lorg/telegram/messenger/DownloadObject;->object:Lorg/telegram/tgnet/TLObject;

    invoke-static {v6}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "path":Ljava/lang/String;
    goto :goto_2

    .line 1109
    :cond_b
    const/4 v1, 0x1

    .line 1110
    .local v1, "added":Z
    iget-object v6, v3, Lorg/telegram/messenger/DownloadObject;->object:Lorg/telegram/tgnet/TLObject;

    instance-of v6, v6, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    if-eqz v6, :cond_d

    .line 1111
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v10

    iget-object v6, v3, Lorg/telegram/messenger/DownloadObject;->object:Lorg/telegram/tgnet/TLObject;

    check-cast v6, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    const/4 v11, 0x0

    iget-boolean v7, v3, Lorg/telegram/messenger/DownloadObject;->secret:Z

    if-eqz v7, :cond_c

    move v7, v8

    :goto_4
    invoke-virtual {v10, v6, v11, v7}, Lorg/telegram/messenger/FileLoader;->loadFile(Lorg/telegram/tgnet/TLRPC$PhotoSize;Ljava/lang/String;I)V

    .line 1118
    :goto_5
    if-eqz v1, :cond_3

    .line 1119
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1120
    iget-object v6, p0, Lorg/telegram/messenger/MediaController;->downloadQueueKeys:Ljava/util/HashMap;

    invoke-virtual {v6, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_c
    move v7, v9

    .line 1111
    goto :goto_4

    .line 1112
    :cond_d
    iget-object v6, v3, Lorg/telegram/messenger/DownloadObject;->object:Lorg/telegram/tgnet/TLObject;

    instance-of v6, v6, Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v6, :cond_f

    .line 1113
    iget-object v2, v3, Lorg/telegram/messenger/DownloadObject;->object:Lorg/telegram/tgnet/TLObject;

    check-cast v2, Lorg/telegram/tgnet/TLRPC$Document;

    .line 1114
    .restart local v2    # "document":Lorg/telegram/tgnet/TLRPC$Document;
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v7

    iget-boolean v6, v3, Lorg/telegram/messenger/DownloadObject;->secret:Z

    if-eqz v6, :cond_e

    move v6, v8

    :goto_6
    invoke-virtual {v7, v2, v9, v6}, Lorg/telegram/messenger/FileLoader;->loadFile(Lorg/telegram/tgnet/TLRPC$Document;ZI)V

    goto :goto_5

    :cond_e
    move v6, v9

    goto :goto_6

    .line 1116
    .end local v2    # "document":Lorg/telegram/tgnet/TLRPC$Document;
    :cond_f
    const/4 v1, 0x0

    goto :goto_5
.end method

.method public removeLoadingFileObserver(Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;)V
    .locals 6
    .param p1, "observer"    # Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;

    .prologue
    .line 1346
    iget-boolean v4, p0, Lorg/telegram/messenger/MediaController;->listenerInProgress:Z

    if-eqz v4, :cond_1

    .line 1347
    iget-object v4, p0, Lorg/telegram/messenger/MediaController;->deleteLaterArray:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1367
    :cond_0
    :goto_0
    return-void

    .line 1350
    :cond_1
    iget-object v4, p0, Lorg/telegram/messenger/MediaController;->observersByTag:Ljava/util/HashMap;

    invoke-interface {p1}, Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;->getObserverTag()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1351
    .local v2, "fileName":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 1352
    iget-object v4, p0, Lorg/telegram/messenger/MediaController;->loadingFileObservers:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 1353
    .local v1, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/ref/WeakReference<Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;>;>;"
    if-eqz v1, :cond_5

    .line 1354
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_4

    .line 1355
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 1356
    .local v3, "reference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;>;"
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    if-ne v4, p1, :cond_3

    .line 1357
    :cond_2
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1358
    add-int/lit8 v0, v0, -0x1

    .line 1354
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1361
    .end local v3    # "reference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;>;"
    :cond_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1362
    iget-object v4, p0, Lorg/telegram/messenger/MediaController;->loadingFileObservers:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1365
    .end local v0    # "a":I
    :cond_5
    iget-object v4, p0, Lorg/telegram/messenger/MediaController;->observersByTag:Ljava/util/HashMap;

    invoke-interface {p1}, Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;->getObserverTag()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public resumeAudio(Lorg/telegram/messenger/MessageObject;)Z
    .locals 8
    .param p1, "messageObject"    # Lorg/telegram/messenger/MessageObject;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2961
    iget-object v3, p0, Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;

    if-nez v3, :cond_0

    iget-object v3, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    if-nez v3, :cond_0

    iget-object v3, p0, Lorg/telegram/messenger/MediaController;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-eqz v3, :cond_1

    :cond_0
    if-eqz p1, :cond_1

    iget-object v3, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v3

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    if-eq v3, v4, :cond_2

    .line 2982
    :cond_1
    :goto_0
    return v1

    .line 2966
    :cond_2
    :try_start_0
    iget-object v3, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-direct {p0, v3}, Lorg/telegram/messenger/MediaController;->startProgressTimer(Lorg/telegram/messenger/MessageObject;)V

    .line 2967
    iget-object v3, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    if-eqz v3, :cond_4

    .line 2968
    iget-object v3, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->start()V

    .line 2975
    :cond_3
    :goto_1
    invoke-direct {p0, p1}, Lorg/telegram/messenger/MediaController;->checkAudioFocus(Lorg/telegram/messenger/MessageObject;)V

    .line 2976
    const/4 v3, 0x0

    iput-boolean v3, p0, Lorg/telegram/messenger/MediaController;->isPaused:Z

    .line 2977
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/NotificationCenter;->messagePlayingPlayStateChanged:I

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v7}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    move v1, v2

    .line 2982
    goto :goto_0

    .line 2969
    :cond_4
    iget-object v3, p0, Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;

    if-eqz v3, :cond_5

    .line 2970
    iget-object v3, p0, Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;

    invoke-virtual {v3}, Landroid/media/AudioTrack;->play()V

    .line 2971
    invoke-direct {p0}, Lorg/telegram/messenger/MediaController;->checkPlayerQueue()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 2978
    :catch_0
    move-exception v0

    .line 2979
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 2972
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_5
    :try_start_1
    iget-object v3, p0, Lorg/telegram/messenger/MediaController;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-eqz v3, :cond_3

    .line 2973
    iget-object v3, p0, Lorg/telegram/messenger/MediaController;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/VideoPlayer;->play()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public scheduleVideoConvert(Lorg/telegram/messenger/MessageObject;)V
    .locals 1
    .param p1, "messageObject"    # Lorg/telegram/messenger/MessageObject;

    .prologue
    .line 3789
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/telegram/messenger/MediaController;->scheduleVideoConvert(Lorg/telegram/messenger/MessageObject;Z)Z

    .line 3790
    return-void
.end method

.method public scheduleVideoConvert(Lorg/telegram/messenger/MessageObject;Z)Z
    .locals 3
    .param p1, "messageObject"    # Lorg/telegram/messenger/MessageObject;
    .param p2, "isEmpty"    # Z

    .prologue
    const/4 v0, 0x1

    .line 3793
    if-eqz p2, :cond_1

    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->videoConvertQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 3794
    const/4 v0, 0x0

    .line 3802
    :cond_0
    :goto_0
    return v0

    .line 3795
    :cond_1
    if-eqz p2, :cond_2

    .line 3796
    new-instance v1, Ljava/io/File;

    iget-object v2, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 3798
    :cond_2
    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->videoConvertQueue:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3799
    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->videoConvertQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 3800
    invoke-direct {p0}, Lorg/telegram/messenger/MediaController;->startVideoConvertFromQueue()Z

    goto :goto_0
.end method

.method public seekToProgress(Lorg/telegram/messenger/MessageObject;F)Z
    .locals 6
    .param p1, "messageObject"    # Lorg/telegram/messenger/MessageObject;
    .param p2, "progress"    # F

    .prologue
    const/4 v2, 0x0

    .line 2118
    iget-object v3, p0, Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;

    if-nez v3, :cond_0

    iget-object v3, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    if-nez v3, :cond_0

    iget-object v3, p0, Lorg/telegram/messenger/MediaController;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-eqz v3, :cond_1

    :cond_0
    if-eqz p1, :cond_1

    iget-object v3, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v3

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    if-eq v3, v4, :cond_2

    .line 2135
    :cond_1
    :goto_0
    return v2

    .line 2122
    :cond_2
    :try_start_0
    iget-object v3, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    if-eqz v3, :cond_4

    .line 2123
    iget-object v3, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, p2

    float-to-int v1, v3

    .line 2124
    .local v1, "seekTo":I
    iget-object v3, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 2125
    int-to-long v4, v1

    iput-wide v4, p0, Lorg/telegram/messenger/MediaController;->lastProgress:J

    .line 2135
    .end local v1    # "seekTo":I
    :cond_3
    :goto_1
    const/4 v2, 0x1

    goto :goto_0

    .line 2126
    :cond_4
    iget-object v3, p0, Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;

    if-eqz v3, :cond_5

    .line 2127
    invoke-direct {p0, p2}, Lorg/telegram/messenger/MediaController;->seekOpusPlayer(F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 2131
    :catch_0
    move-exception v0

    .line 2132
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 2128
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_5
    :try_start_1
    iget-object v3, p0, Lorg/telegram/messenger/MediaController;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-eqz v3, :cond_3

    .line 2129
    iget-object v3, p0, Lorg/telegram/messenger/MediaController;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    iget-object v4, p0, Lorg/telegram/messenger/MediaController;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/VideoPlayer;->getDuration()J

    move-result-wide v4

    long-to-float v4, v4

    mul-float/2addr v4, p2

    float-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Lorg/telegram/ui/Components/VideoPlayer;->seekTo(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public setAllowStartRecord(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 1897
    iput-boolean p1, p0, Lorg/telegram/messenger/MediaController;->allowStartRecord:Z

    .line 1898
    return-void
.end method

.method public setBaseActivity(Landroid/app/Activity;Z)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "set"    # Z

    .prologue
    .line 2467
    if-eqz p2, :cond_1

    .line 2468
    iput-object p1, p0, Lorg/telegram/messenger/MediaController;->baseActivity:Landroid/app/Activity;

    .line 2472
    :cond_0
    :goto_0
    return-void

    .line 2469
    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->baseActivity:Landroid/app/Activity;

    if-ne v0, p1, :cond_0

    .line 2470
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/messenger/MediaController;->baseActivity:Landroid/app/Activity;

    goto :goto_0
.end method

.method public setCurrentRoundVisible(Z)V
    .locals 5
    .param p1, "visible"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    .line 2397
    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->currentAspectRatioFrameLayout:Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    if-nez v1, :cond_1

    .line 2434
    :cond_0
    :goto_0
    return-void

    .line 2400
    :cond_1
    if-eqz p1, :cond_4

    .line 2401
    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->pipRoundVideoView:Lorg/telegram/ui/Components/PipRoundVideoView;

    if-eqz v1, :cond_2

    .line 2402
    const/4 v1, 0x2

    iput v1, p0, Lorg/telegram/messenger/MediaController;->pipSwitchingState:I

    .line 2403
    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->pipRoundVideoView:Lorg/telegram/ui/Components/PipRoundVideoView;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/PipRoundVideoView;->close(Z)V

    .line 2404
    iput-object v4, p0, Lorg/telegram/messenger/MediaController;->pipRoundVideoView:Lorg/telegram/ui/Components/PipRoundVideoView;

    goto :goto_0

    .line 2405
    :cond_2
    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->currentAspectRatioFrameLayout:Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    if-eqz v1, :cond_0

    .line 2406
    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->currentAspectRatioFrameLayout:Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    invoke-virtual {v1}, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_3

    .line 2407
    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->currentTextureViewContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->currentAspectRatioFrameLayout:Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 2409
    :cond_3
    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->currentTextureView:Landroid/view/TextureView;

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/VideoPlayer;->setTextureView(Landroid/view/TextureView;)V

    goto :goto_0

    .line 2412
    :cond_4
    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->currentAspectRatioFrameLayout:Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    invoke-virtual {v1}, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 2413
    iput v2, p0, Lorg/telegram/messenger/MediaController;->pipSwitchingState:I

    .line 2414
    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->currentTextureViewContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->currentAspectRatioFrameLayout:Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 2416
    :cond_5
    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->pipRoundVideoView:Lorg/telegram/ui/Components/PipRoundVideoView;

    if-nez v1, :cond_6

    .line 2418
    :try_start_0
    new-instance v1, Lorg/telegram/ui/Components/PipRoundVideoView;

    invoke-direct {v1}, Lorg/telegram/ui/Components/PipRoundVideoView;-><init>()V

    iput-object v1, p0, Lorg/telegram/messenger/MediaController;->pipRoundVideoView:Lorg/telegram/ui/Components/PipRoundVideoView;

    .line 2419
    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->pipRoundVideoView:Lorg/telegram/ui/Components/PipRoundVideoView;

    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->baseActivity:Landroid/app/Activity;

    new-instance v3, Lorg/telegram/messenger/MediaController$13;

    invoke-direct {v3, p0}, Lorg/telegram/messenger/MediaController$13;-><init>(Lorg/telegram/messenger/MediaController;)V

    invoke-virtual {v1, v2, v3}, Lorg/telegram/ui/Components/PipRoundVideoView;->show(Landroid/app/Activity;Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2429
    :cond_6
    :goto_1
    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->pipRoundVideoView:Lorg/telegram/ui/Components/PipRoundVideoView;

    if-eqz v1, :cond_0

    .line 2430
    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->pipRoundVideoView:Lorg/telegram/ui/Components/PipRoundVideoView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/PipRoundVideoView;->getTextureView()Landroid/view/TextureView;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/VideoPlayer;->setTextureView(Landroid/view/TextureView;)V

    goto :goto_0

    .line 2425
    :catch_0
    move-exception v0

    .line 2426
    .local v0, "e":Ljava/lang/Exception;
    iput-object v4, p0, Lorg/telegram/messenger/MediaController;->pipRoundVideoView:Lorg/telegram/ui/Components/PipRoundVideoView;

    goto :goto_1
.end method

.method public setInputFieldHasText(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 1893
    iput-boolean p1, p0, Lorg/telegram/messenger/MediaController;->inputFieldHasText:Z

    .line 1894
    return-void
.end method

.method public setLastVisibleMessageIds(JJLorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$EncryptedChat;Ljava/util/ArrayList;I)V
    .locals 1
    .param p1, "enterTime"    # J
    .param p3, "leaveTime"    # J
    .param p5, "user"    # Lorg/telegram/tgnet/TLRPC$User;
    .param p6, "encryptedChat"    # Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    .param p8, "visibleMessage"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Lorg/telegram/tgnet/TLRPC$User;",
            "Lorg/telegram/tgnet/TLRPC$EncryptedChat;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 1304
    .local p7, "visibleMessages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    iput-wide p1, p0, Lorg/telegram/messenger/MediaController;->lastChatEnterTime:J

    .line 1305
    iput-wide p3, p0, Lorg/telegram/messenger/MediaController;->lastChatLeaveTime:J

    .line 1306
    iput-object p6, p0, Lorg/telegram/messenger/MediaController;->lastSecretChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    .line 1307
    iput-object p5, p0, Lorg/telegram/messenger/MediaController;->lastUser:Lorg/telegram/tgnet/TLRPC$User;

    .line 1308
    iput p8, p0, Lorg/telegram/messenger/MediaController;->lastMessageId:I

    .line 1309
    iput-object p7, p0, Lorg/telegram/messenger/MediaController;->lastChatVisibleMessages:Ljava/util/ArrayList;

    .line 1310
    return-void
.end method

.method public setPlaylist(Ljava/util/ArrayList;Lorg/telegram/messenger/MessageObject;)Z
    .locals 1
    .param p2, "current"    # Lorg/telegram/messenger/MessageObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;",
            "Lorg/telegram/messenger/MessageObject;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 2166
    .local p1, "messageObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lorg/telegram/messenger/MediaController;->setPlaylist(Ljava/util/ArrayList;Lorg/telegram/messenger/MessageObject;Z)Z

    move-result v0

    return v0
.end method

.method public setPlaylist(Ljava/util/ArrayList;Lorg/telegram/messenger/MessageObject;Z)Z
    .locals 8
    .param p2, "current"    # Lorg/telegram/messenger/MessageObject;
    .param p3, "loadMusic"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;",
            "Lorg/telegram/messenger/MessageObject;",
            "Z)Z"
        }
    .end annotation

    .prologue
    .local p1, "messageObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2170
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-ne v2, p2, :cond_0

    .line 2171
    invoke-virtual {p0, p2}, Lorg/telegram/messenger/MediaController;->playMessage(Lorg/telegram/messenger/MessageObject;)Z

    move-result v2

    .line 2198
    :goto_0
    return v2

    .line 2173
    :cond_0
    if-nez p3, :cond_2

    move v2, v3

    :goto_1
    iput-boolean v2, p0, Lorg/telegram/messenger/MediaController;->forceLoopCurrentPlaylist:Z

    .line 2174
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->playlist:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    :goto_2
    iput-boolean v3, p0, Lorg/telegram/messenger/MediaController;->playMusicAgain:Z

    .line 2175
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->playlist:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 2176
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "a":I
    :goto_3
    if-ltz v0, :cond_4

    .line 2177
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/MessageObject;

    .line 2178
    .local v1, "messageObject":Lorg/telegram/messenger/MessageObject;
    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->isMusic()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2179
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->playlist:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2176
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .end local v0    # "a":I
    .end local v1    # "messageObject":Lorg/telegram/messenger/MessageObject;
    :cond_2
    move v2, v4

    .line 2173
    goto :goto_1

    :cond_3
    move v3, v4

    .line 2174
    goto :goto_2

    .line 2182
    .restart local v0    # "a":I
    :cond_4
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->playlist:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    iput v2, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    .line 2183
    iget v2, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_5

    .line 2184
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->playlist:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 2185
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->shuffledPlaylist:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 2186
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->playlist:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iput v2, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    .line 2187
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->playlist:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2189
    :cond_5
    invoke-virtual {p2}, Lorg/telegram/messenger/MessageObject;->isMusic()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2190
    iget-boolean v2, p0, Lorg/telegram/messenger/MediaController;->shuffleMusic:Z

    if-eqz v2, :cond_6

    .line 2191
    invoke-direct {p0}, Lorg/telegram/messenger/MediaController;->buildShuffledPlayList()V

    .line 2192
    iput v4, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    .line 2194
    :cond_6
    if-eqz p3, :cond_7

    .line 2195
    invoke-virtual {p2}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v6

    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->playlist:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v2

    invoke-static {v6, v7, v2}, Lorg/telegram/messenger/query/SharedMediaQuery;->loadMusic(JI)V

    .line 2198
    :cond_7
    invoke-virtual {p0, p2}, Lorg/telegram/messenger/MediaController;->playMessage(Lorg/telegram/messenger/MessageObject;)Z

    move-result v2

    goto/16 :goto_0
.end method

.method public setTextureView(Landroid/view/TextureView;Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;Landroid/widget/FrameLayout;Z)V
    .locals 4
    .param p1, "textureView"    # Landroid/view/TextureView;
    .param p2, "aspectRatioFrameLayout"    # Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;
    .param p3, "container"    # Landroid/widget/FrameLayout;
    .param p4, "set"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 2437
    if-nez p4, :cond_1

    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->currentTextureView:Landroid/view/TextureView;

    if-ne v2, p1, :cond_1

    .line 2438
    iput v0, p0, Lorg/telegram/messenger/MediaController;->pipSwitchingState:I

    .line 2439
    iput-object v3, p0, Lorg/telegram/messenger/MediaController;->currentTextureView:Landroid/view/TextureView;

    .line 2440
    iput-object v3, p0, Lorg/telegram/messenger/MediaController;->currentAspectRatioFrameLayout:Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    .line 2441
    iput-object v3, p0, Lorg/telegram/messenger/MediaController;->currentTextureViewContainer:Landroid/widget/FrameLayout;

    .line 2464
    :cond_0
    :goto_0
    return-void

    .line 2444
    :cond_1
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->currentTextureView:Landroid/view/TextureView;

    if-eq p1, v2, :cond_0

    .line 2447
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;->isDrawingReady()Z

    move-result v2

    if-eqz v2, :cond_3

    :goto_1
    iput-boolean v0, p0, Lorg/telegram/messenger/MediaController;->isDrawingWasReady:Z

    .line 2448
    iput-object p1, p0, Lorg/telegram/messenger/MediaController;->currentTextureView:Landroid/view/TextureView;

    .line 2449
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->pipRoundVideoView:Lorg/telegram/ui/Components/PipRoundVideoView;

    if-eqz v0, :cond_4

    .line 2450
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->pipRoundVideoView:Lorg/telegram/ui/Components/PipRoundVideoView;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/PipRoundVideoView;->getTextureView()Landroid/view/TextureView;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/VideoPlayer;->setTextureView(Landroid/view/TextureView;)V

    .line 2454
    :goto_2
    iput-object p2, p0, Lorg/telegram/messenger/MediaController;->currentAspectRatioFrameLayout:Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    .line 2455
    iput-object p3, p0, Lorg/telegram/messenger/MediaController;->currentTextureViewContainer:Landroid/widget/FrameLayout;

    .line 2456
    iget-boolean v0, p0, Lorg/telegram/messenger/MediaController;->currentAspectRatioFrameLayoutReady:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->currentAspectRatioFrameLayout:Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    if-eqz v0, :cond_0

    .line 2457
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->currentAspectRatioFrameLayout:Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    if-eqz v0, :cond_2

    .line 2458
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->currentAspectRatioFrameLayout:Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    iget v2, p0, Lorg/telegram/messenger/MediaController;->currentAspectRatioFrameLayoutRatio:F

    iget v3, p0, Lorg/telegram/messenger/MediaController;->currentAspectRatioFrameLayoutRotation:I

    invoke-virtual {v0, v2, v3}, Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;->setAspectRatio(FI)V

    .line 2460
    :cond_2
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->currentTextureViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 2461
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->currentTextureViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    :cond_3
    move v0, v1

    .line 2447
    goto :goto_1

    .line 2452
    :cond_4
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->currentTextureView:Landroid/view/TextureView;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/VideoPlayer;->setTextureView(Landroid/view/TextureView;)V

    goto :goto_2
.end method

.method public setVoiceMessagesPlaylist(Ljava/util/ArrayList;Z)V
    .locals 4
    .param p2, "unread"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 2360
    .local p1, "playlist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    iput-object p1, p0, Lorg/telegram/messenger/MediaController;->voiceMessagesPlaylist:Ljava/util/ArrayList;

    .line 2361
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->voiceMessagesPlaylist:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 2362
    iput-boolean p2, p0, Lorg/telegram/messenger/MediaController;->voiceMessagesPlaylistUnread:Z

    .line 2363
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lorg/telegram/messenger/MediaController;->voiceMessagesPlaylistMap:Ljava/util/HashMap;

    .line 2364
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->voiceMessagesPlaylist:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 2365
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->voiceMessagesPlaylist:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/MessageObject;

    .line 2366
    .local v1, "messageObject":Lorg/telegram/messenger/MessageObject;
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->voiceMessagesPlaylistMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2364
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2369
    .end local v0    # "a":I
    .end local v1    # "messageObject":Lorg/telegram/messenger/MessageObject;
    :cond_0
    return-void
.end method

.method public startMediaObserver()V
    .locals 5

    .prologue
    .line 1197
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationHandler:Landroid/os/Handler;

    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->stopMediaObserverRunnable:Lorg/telegram/messenger/MediaController$StopMediaObserverRunnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1198
    iget v1, p0, Lorg/telegram/messenger/MediaController;->startObserverToken:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/telegram/messenger/MediaController;->startObserverToken:I

    .line 1200
    :try_start_0
    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->internalObserver:Lorg/telegram/messenger/MediaController$InternalObserver;

    if-nez v1, :cond_0

    .line 1201
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    new-instance v4, Lorg/telegram/messenger/MediaController$ExternalObserver;

    invoke-direct {v4, p0}, Lorg/telegram/messenger/MediaController$ExternalObserver;-><init>(Lorg/telegram/messenger/MediaController;)V

    iput-object v4, p0, Lorg/telegram/messenger/MediaController;->externalObserver:Lorg/telegram/messenger/MediaController$ExternalObserver;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1207
    :cond_0
    :goto_0
    :try_start_1
    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->externalObserver:Lorg/telegram/messenger/MediaController$ExternalObserver;

    if-nez v1, :cond_1

    .line 1208
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/MediaStore$Images$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    new-instance v4, Lorg/telegram/messenger/MediaController$InternalObserver;

    invoke-direct {v4, p0}, Lorg/telegram/messenger/MediaController$InternalObserver;-><init>(Lorg/telegram/messenger/MediaController;)V

    iput-object v4, p0, Lorg/telegram/messenger/MediaController;->internalObserver:Lorg/telegram/messenger/MediaController$InternalObserver;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1213
    :cond_1
    :goto_1
    return-void

    .line 1203
    :catch_0
    move-exception v0

    .line 1204
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1210
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 1211
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public startRaiseToEarSensors(Lorg/telegram/ui/ChatActivity;)V
    .locals 7
    .param p1, "chatActivity"    # Lorg/telegram/ui/ChatActivity;

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 1901
    if-eqz p1, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->accelerometerSensor:Landroid/hardware/Sensor;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->gravitySensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->linearAcceleration:[F

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->proximitySensor:Landroid/hardware/Sensor;

    if-nez v0, :cond_2

    .line 1934
    :cond_1
    :goto_0
    return-void

    .line 1904
    :cond_2
    iput-object p1, p0, Lorg/telegram/messenger/MediaController;->raiseChat:Lorg/telegram/ui/ChatActivity;

    .line 1905
    iget-boolean v0, p0, Lorg/telegram/messenger/MediaController;->raiseToSpeak:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isVoice()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->isRoundVideo()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1908
    :cond_3
    iget-boolean v0, p0, Lorg/telegram/messenger/MediaController;->sensorsStarted:Z

    if-nez v0, :cond_1

    .line 1909
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->gravity:[F

    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->gravity:[F

    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->gravity:[F

    aput v4, v2, v6

    aput v4, v1, v5

    aput v4, v0, v3

    .line 1910
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->linearAcceleration:[F

    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->linearAcceleration:[F

    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->linearAcceleration:[F

    aput v4, v2, v6

    aput v4, v1, v5

    aput v4, v0, v3

    .line 1911
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->gravityFast:[F

    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->gravityFast:[F

    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->gravityFast:[F

    aput v4, v2, v6

    aput v4, v1, v5

    aput v4, v0, v3

    .line 1912
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/telegram/messenger/MediaController;->lastTimestamp:J

    .line 1913
    iput v4, p0, Lorg/telegram/messenger/MediaController;->previousAccValue:F

    .line 1914
    iput v3, p0, Lorg/telegram/messenger/MediaController;->raisedToTop:I

    .line 1915
    iput v3, p0, Lorg/telegram/messenger/MediaController;->countLess:I

    .line 1916
    iput v3, p0, Lorg/telegram/messenger/MediaController;->raisedToBack:I

    .line 1917
    sget-object v0, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MediaController$10;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/MediaController$10;-><init>(Lorg/telegram/messenger/MediaController;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 1932
    iput-boolean v5, p0, Lorg/telegram/messenger/MediaController;->sensorsStarted:Z

    goto :goto_0
.end method

.method public startRecording(JLorg/telegram/messenger/MessageObject;)V
    .locals 9
    .param p1, "dialog_id"    # J
    .param p3, "reply_to_msg"    # Lorg/telegram/messenger/MessageObject;

    .prologue
    const-wide/16 v4, 0x32

    .line 3002
    const/4 v1, 0x0

    .line 3003
    .local v1, "paused":Z
    iget-object v3, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {p0, v3}, Lorg/telegram/messenger/MediaController;->isPlayingMessage(Lorg/telegram/messenger/MessageObject;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lorg/telegram/messenger/MediaController;->isMessagePaused()Z

    move-result v3

    if-nez v3, :cond_0

    .line 3004
    const/4 v1, 0x1

    .line 3005
    iget-object v3, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {p0, v3}, Lorg/telegram/messenger/MediaController;->pauseMessage(Lorg/telegram/messenger/MessageObject;)Z

    .line 3009
    :cond_0
    :try_start_0
    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v6, "vibrator"

    invoke-virtual {v3, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Vibrator;

    .line 3010
    .local v2, "v":Landroid/os/Vibrator;
    const-wide/16 v6, 0x32

    invoke-virtual {v2, v6, v7}, Landroid/os/Vibrator;->vibrate(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3016
    .end local v2    # "v":Landroid/os/Vibrator;
    :goto_0
    iget-object v3, p0, Lorg/telegram/messenger/MediaController;->recordQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v6, Lorg/telegram/messenger/MediaController$20;

    invoke-direct {v6, p0, p1, p2, p3}, Lorg/telegram/messenger/MediaController$20;-><init>(Lorg/telegram/messenger/MediaController;JLorg/telegram/messenger/MessageObject;)V

    iput-object v6, p0, Lorg/telegram/messenger/MediaController;->recordStartRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_1

    const-wide/16 v4, 0x1f4

    :cond_1
    invoke-virtual {v3, v6, v4, v5}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;J)V

    .line 3096
    return-void

    .line 3012
    :catch_0
    move-exception v0

    .line 3013
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public startRecordingIfFromSpeaker()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1844
    iget-boolean v0, p0, Lorg/telegram/messenger/MediaController;->useFrontSpeaker:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->raiseChat:Lorg/telegram/ui/ChatActivity;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/messenger/MediaController;->allowStartRecord:Z

    if-nez v0, :cond_1

    .line 1850
    :cond_0
    :goto_0
    return-void

    .line 1847
    :cond_1
    iput-boolean v3, p0, Lorg/telegram/messenger/MediaController;->raiseToEarRecord:Z

    .line 1848
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->raiseChat:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChatActivity;->getDialogId()J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lorg/telegram/messenger/MediaController;->startRecording(JLorg/telegram/messenger/MessageObject;)V

    .line 1849
    iput-boolean v3, p0, Lorg/telegram/messenger/MediaController;->ignoreOnPause:Z

    goto :goto_0
.end method

.method public stopAudio()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 2839
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;

    if-nez v2, :cond_0

    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    if-nez v2, :cond_0

    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-eqz v2, :cond_1

    :cond_0
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-nez v2, :cond_2

    .line 2891
    :cond_1
    :goto_0
    return-void

    .line 2843
    :cond_2
    :try_start_0
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v2, :cond_5

    .line 2845
    :try_start_1
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->reset()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 2849
    :goto_1
    :try_start_2
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->stop()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 2860
    :cond_3
    :goto_2
    :try_start_3
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    if-eqz v2, :cond_7

    .line 2861
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->release()V

    .line 2862
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/telegram/messenger/MediaController;->audioPlayer:Landroid/media/MediaPlayer;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 2884
    :cond_4
    :goto_3
    invoke-direct {p0}, Lorg/telegram/messenger/MediaController;->stopProgressTimer()V

    .line 2885
    iput-object v4, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    .line 2886
    iput-boolean v5, p0, Lorg/telegram/messenger/MediaController;->downloadingCurrentMessage:Z

    .line 2887
    iput-boolean v5, p0, Lorg/telegram/messenger/MediaController;->isPaused:Z

    .line 2889
    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-class v3, Lorg/telegram/messenger/MusicPlayerService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2890
    .local v1, "intent":Landroid/content/Intent;
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    goto :goto_0

    .line 2846
    .end local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 2847
    .local v0, "e":Ljava/lang/Exception;
    :try_start_4
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 2856
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 2857
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 2850
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_5
    :try_start_5
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;

    if-eqz v2, :cond_6

    .line 2851
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;

    invoke-virtual {v2}, Landroid/media/AudioTrack;->pause()V

    .line 2852
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;

    invoke-virtual {v2}, Landroid/media/AudioTrack;->flush()V

    goto :goto_2

    .line 2853
    :cond_6
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-eqz v2, :cond_3

    .line 2854
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/VideoPlayer;->pause()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    .line 2863
    :cond_7
    :try_start_6
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;

    if-eqz v2, :cond_8

    .line 2864
    iget-object v3, p0, Lorg/telegram/messenger/MediaController;->playerObjectSync:Ljava/lang/Object;

    monitor-enter v3
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 2865
    :try_start_7
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;

    invoke-virtual {v2}, Landroid/media/AudioTrack;->release()V

    .line 2866
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/telegram/messenger/MediaController;->audioTrackPlayer:Landroid/media/AudioTrack;

    .line 2867
    monitor-exit v3

    goto :goto_3

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    throw v2
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    .line 2881
    :catch_2
    move-exception v0

    .line 2882
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_3

    .line 2868
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_8
    :try_start_9
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    if-eqz v2, :cond_4

    .line 2869
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/telegram/messenger/MediaController;->currentAspectRatioFrameLayout:Lorg/telegram/messenger/exoplayer2/ui/AspectRatioFrameLayout;

    .line 2870
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/telegram/messenger/MediaController;->currentTextureViewContainer:Landroid/widget/FrameLayout;

    .line 2871
    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/telegram/messenger/MediaController;->currentAspectRatioFrameLayoutReady:Z

    .line 2872
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/telegram/messenger/MediaController;->currentTextureView:Landroid/view/TextureView;

    .line 2873
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/VideoPlayer;->releasePlayer()V

    .line 2874
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/telegram/messenger/MediaController;->videoPlayer:Lorg/telegram/ui/Components/VideoPlayer;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    .line 2876
    :try_start_a
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->baseActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v2, v3}, Landroid/view/Window;->clearFlags(I)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3

    goto :goto_3

    .line 2877
    :catch_3
    move-exception v0

    .line 2878
    .restart local v0    # "e":Ljava/lang/Exception;
    :try_start_b
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2

    goto :goto_3
.end method

.method public stopMediaObserver()V
    .locals 4

    .prologue
    .line 1216
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->stopMediaObserverRunnable:Lorg/telegram/messenger/MediaController$StopMediaObserverRunnable;

    if-nez v0, :cond_0

    .line 1217
    new-instance v0, Lorg/telegram/messenger/MediaController$StopMediaObserverRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/telegram/messenger/MediaController$StopMediaObserverRunnable;-><init>(Lorg/telegram/messenger/MediaController;Lorg/telegram/messenger/MediaController$1;)V

    iput-object v0, p0, Lorg/telegram/messenger/MediaController;->stopMediaObserverRunnable:Lorg/telegram/messenger/MediaController$StopMediaObserverRunnable;

    .line 1219
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->stopMediaObserverRunnable:Lorg/telegram/messenger/MediaController$StopMediaObserverRunnable;

    iget v1, p0, Lorg/telegram/messenger/MediaController;->startObserverToken:I

    iput v1, v0, Lorg/telegram/messenger/MediaController$StopMediaObserverRunnable;->currentObserverToken:I

    .line 1220
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationHandler:Landroid/os/Handler;

    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->stopMediaObserverRunnable:Lorg/telegram/messenger/MediaController$StopMediaObserverRunnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1221
    return-void
.end method

.method public stopRaiseToEarSensors(Lorg/telegram/ui/ChatActivity;)V
    .locals 2
    .param p1, "chatActivity"    # Lorg/telegram/ui/ChatActivity;

    .prologue
    const/4 v1, 0x0

    .line 1937
    iget-boolean v0, p0, Lorg/telegram/messenger/MediaController;->ignoreOnPause:Z

    if-eqz v0, :cond_1

    .line 1938
    iput-boolean v1, p0, Lorg/telegram/messenger/MediaController;->ignoreOnPause:Z

    .line 1969
    :cond_0
    :goto_0
    return-void

    .line 1941
    :cond_1
    iget-boolean v0, p0, Lorg/telegram/messenger/MediaController;->sensorsStarted:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/messenger/MediaController;->ignoreOnPause:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->accelerometerSensor:Landroid/hardware/Sensor;

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->gravitySensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->linearAcceleration:[F

    if-eqz v0, :cond_0

    :cond_2
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->proximitySensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->raiseChat:Lorg/telegram/ui/ChatActivity;

    if-ne v0, p1, :cond_0

    .line 1944
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/messenger/MediaController;->raiseChat:Lorg/telegram/ui/ChatActivity;

    .line 1945
    invoke-virtual {p0, v1}, Lorg/telegram/messenger/MediaController;->stopRecording(I)V

    .line 1946
    iput-boolean v1, p0, Lorg/telegram/messenger/MediaController;->sensorsStarted:Z

    .line 1947
    iput-boolean v1, p0, Lorg/telegram/messenger/MediaController;->accelerometerVertical:Z

    .line 1948
    iput-boolean v1, p0, Lorg/telegram/messenger/MediaController;->proximityTouched:Z

    .line 1949
    iput-boolean v1, p0, Lorg/telegram/messenger/MediaController;->raiseToEarRecord:Z

    .line 1950
    iput-boolean v1, p0, Lorg/telegram/messenger/MediaController;->useFrontSpeaker:Z

    .line 1951
    sget-object v0, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MediaController$11;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/MediaController$11;-><init>(Lorg/telegram/messenger/MediaController;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 1966
    iget-boolean v0, p0, Lorg/telegram/messenger/MediaController;->proximityHasDifferentValues:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->proximityWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->proximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1967
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->proximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0
.end method

.method public stopRecording(I)V
    .locals 2
    .param p1, "send"    # I

    .prologue
    .line 3186
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->recordStartRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 3187
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->recordQueue:Lorg/telegram/messenger/DispatchQueue;

    iget-object v1, p0, Lorg/telegram/messenger/MediaController;->recordStartRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->cancelRunnable(Ljava/lang/Runnable;)V

    .line 3188
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/messenger/MediaController;->recordStartRunnable:Ljava/lang/Runnable;

    .line 3190
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/MediaController;->recordQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/MediaController$23;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/MediaController$23;-><init>(Lorg/telegram/messenger/MediaController;I)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 3222
    return-void
.end method

.method public toggleAutoplayGifs()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 3515
    iget-boolean v2, p0, Lorg/telegram/messenger/MediaController;->autoplayGifs:Z

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, p0, Lorg/telegram/messenger/MediaController;->autoplayGifs:Z

    .line 3516
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    sget-object v4, Lorg/telegram/messenger/AndroidUtilities;->mainconfig:Ljava/lang/String;

    invoke-virtual {v2, v4, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 3517
    .local v1, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3518
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v2, "autoplay_gif"

    iget-boolean v3, p0, Lorg/telegram/messenger/MediaController;->autoplayGifs:Z

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 3519
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3520
    return-void

    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "preferences":Landroid/content/SharedPreferences;
    :cond_0
    move v2, v3

    .line 3515
    goto :goto_0
.end method

.method public toggleCustomTabs()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 3531
    iget-boolean v2, p0, Lorg/telegram/messenger/MediaController;->customTabs:Z

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, p0, Lorg/telegram/messenger/MediaController;->customTabs:Z

    .line 3532
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    sget-object v4, Lorg/telegram/messenger/AndroidUtilities;->mainconfig:Ljava/lang/String;

    invoke-virtual {v2, v4, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 3533
    .local v1, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3534
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v2, "custom_tabs"

    iget-boolean v3, p0, Lorg/telegram/messenger/MediaController;->customTabs:Z

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 3535
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3536
    return-void

    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "preferences":Landroid/content/SharedPreferences;
    :cond_0
    move v2, v3

    .line 3531
    goto :goto_0
.end method

.method public toggleDirectShare()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 3539
    iget-boolean v2, p0, Lorg/telegram/messenger/MediaController;->directShare:Z

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, p0, Lorg/telegram/messenger/MediaController;->directShare:Z

    .line 3540
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    sget-object v4, Lorg/telegram/messenger/AndroidUtilities;->mainconfig:Ljava/lang/String;

    invoke-virtual {v2, v4, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 3541
    .local v1, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3542
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v2, "direct_share"

    iget-boolean v3, p0, Lorg/telegram/messenger/MediaController;->directShare:Z

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 3543
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3544
    return-void

    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "preferences":Landroid/content/SharedPreferences;
    :cond_0
    move v2, v3

    .line 3539
    goto :goto_0
.end method

.method public toggleRepeatMode()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2927
    iget v2, p0, Lorg/telegram/messenger/MediaController;->repeatMode:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/telegram/messenger/MediaController;->repeatMode:I

    .line 2928
    iget v2, p0, Lorg/telegram/messenger/MediaController;->repeatMode:I

    const/4 v3, 0x2

    if-le v2, v3, :cond_0

    .line 2929
    iput v4, p0, Lorg/telegram/messenger/MediaController;->repeatMode:I

    .line 2931
    :cond_0
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    sget-object v3, Lorg/telegram/messenger/AndroidUtilities;->mainconfig:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 2932
    .local v1, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2933
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v2, "repeatMode"

    iget v3, p0, Lorg/telegram/messenger/MediaController;->repeatMode:I

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2934
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2935
    return-void
.end method

.method public toggleSaveToGallery()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 3506
    iget-boolean v2, p0, Lorg/telegram/messenger/MediaController;->saveToGallery:Z

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, p0, Lorg/telegram/messenger/MediaController;->saveToGallery:Z

    .line 3507
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    sget-object v4, Lorg/telegram/messenger/AndroidUtilities;->mainconfig:Ljava/lang/String;

    invoke-virtual {v2, v4, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 3508
    .local v1, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3509
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v2, "save_gallery"

    iget-boolean v3, p0, Lorg/telegram/messenger/MediaController;->saveToGallery:Z

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 3510
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3511
    invoke-virtual {p0}, Lorg/telegram/messenger/MediaController;->checkSaveToGalleryFiles()V

    .line 3512
    return-void

    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "preferences":Landroid/content/SharedPreferences;
    :cond_0
    move v2, v3

    .line 3506
    goto :goto_0
.end method

.method public toggleShuffleMusic()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2906
    iget-boolean v2, p0, Lorg/telegram/messenger/MediaController;->shuffleMusic:Z

    if-nez v2, :cond_1

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lorg/telegram/messenger/MediaController;->shuffleMusic:Z

    .line 2907
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    sget-object v5, Lorg/telegram/messenger/AndroidUtilities;->mainconfig:Ljava/lang/String;

    invoke-virtual {v2, v5, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 2908
    .local v1, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2909
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v2, "shuffleMusic"

    iget-boolean v5, p0, Lorg/telegram/messenger/MediaController;->shuffleMusic:Z

    invoke-interface {v0, v2, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2910
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2911
    iget-boolean v2, p0, Lorg/telegram/messenger/MediaController;->shuffleMusic:Z

    if-eqz v2, :cond_2

    .line 2912
    invoke-direct {p0}, Lorg/telegram/messenger/MediaController;->buildShuffledPlayList()V

    .line 2913
    iput v4, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    .line 2924
    :cond_0
    :goto_1
    return-void

    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "preferences":Landroid/content/SharedPreferences;
    :cond_1
    move v2, v4

    .line 2906
    goto :goto_0

    .line 2915
    .restart local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local v1    # "preferences":Landroid/content/SharedPreferences;
    :cond_2
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v2, :cond_0

    .line 2916
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->playlist:Ljava/util/ArrayList;

    iget-object v4, p0, Lorg/telegram/messenger/MediaController;->playingMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    iput v2, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    .line 2917
    iget v2, p0, Lorg/telegram/messenger/MediaController;->currentPlaylistNum:I

    const/4 v4, -0x1

    if-ne v2, v4, :cond_0

    .line 2918
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->playlist:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 2919
    iget-object v2, p0, Lorg/telegram/messenger/MediaController;->shuffledPlaylist:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 2920
    invoke-virtual {p0, v3, v3}, Lorg/telegram/messenger/MediaController;->cleanupPlayer(ZZ)V

    goto :goto_1
.end method

.method public toogleRaiseToSpeak()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 3523
    iget-boolean v2, p0, Lorg/telegram/messenger/MediaController;->raiseToSpeak:Z

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, p0, Lorg/telegram/messenger/MediaController;->raiseToSpeak:Z

    .line 3524
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    sget-object v4, Lorg/telegram/messenger/AndroidUtilities;->mainconfig:Ljava/lang/String;

    invoke-virtual {v2, v4, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 3525
    .local v1, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3526
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v2, "raise_to_speak"

    iget-boolean v3, p0, Lorg/telegram/messenger/MediaController;->raiseToSpeak:Z

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 3527
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3528
    return-void

    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "preferences":Landroid/content/SharedPreferences;
    :cond_0
    move v2, v3

    .line 3523
    goto :goto_0
.end method
