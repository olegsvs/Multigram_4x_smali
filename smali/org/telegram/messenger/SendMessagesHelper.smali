.class public Lorg/telegram/messenger/SendMessagesHelper;
.super Ljava/lang/Object;
.source "SendMessagesHelper.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;,
        Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;
    }
.end annotation


# static fields
.field private static volatile Instance:Lorg/telegram/messenger/SendMessagesHelper;


# instance fields
.field private currentChatInfo:Lorg/telegram/tgnet/TLRPC$ChatFull;

.field private delayedMessages:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;",
            ">;>;"
        }
    .end annotation
.end field

.field private locationProvider:Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;

.field private sendingMessages:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/telegram/tgnet/TLRPC$Message;",
            ">;"
        }
    .end annotation
.end field

.field private unsentMessages:Ljava/util/HashMap;
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

.field private waitingForCallback:Ljava/util/HashMap;
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

.field private waitingForLocation:Ljava/util/HashMap;
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


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 218
    const/4 v0, 0x0

    sput-object v0, Lorg/telegram/messenger/SendMessagesHelper;->Instance:Lorg/telegram/messenger/SendMessagesHelper;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper;->currentChatInfo:Lorg/telegram/tgnet/TLRPC$ChatFull;

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper;->delayedMessages:Ljava/util/HashMap;

    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper;->unsentMessages:Ljava/util/HashMap;

    .line 61
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper;->sendingMessages:Ljava/util/HashMap;

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper;->waitingForLocation:Ljava/util/HashMap;

    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper;->waitingForCallback:Ljava/util/HashMap;

    .line 65
    new-instance v0, Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;

    new-instance v1, Lorg/telegram/messenger/SendMessagesHelper$1;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/SendMessagesHelper$1;-><init>(Lorg/telegram/messenger/SendMessagesHelper;)V

    invoke-direct {v0, v1}, Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;-><init>(Lorg/telegram/messenger/SendMessagesHelper$LocationProvider$LocationProviderDelegate;)V

    iput-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper;->locationProvider:Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;

    .line 234
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->FileDidUpload:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 235
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->FileDidFailUpload:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 236
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->FilePreparingStarted:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 237
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->FileNewChunkAvailable:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 238
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->FilePreparingFailed:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 239
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->httpFileDidFailedLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 240
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->httpFileDidLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 241
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->FileDidLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 242
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->FileDidFailedLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 243
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/messenger/SendMessagesHelper;Landroid/location/Location;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/SendMessagesHelper;
    .param p1, "x1"    # Landroid/location/Location;

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lorg/telegram/messenger/SendMessagesHelper;->sendLocation(Landroid/location/Location;)V

    return-void
.end method

.method static synthetic access$100(Lorg/telegram/messenger/SendMessagesHelper;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/SendMessagesHelper;

    .prologue
    .line 56
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper;->waitingForLocation:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1000(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Ljava/lang/CharSequence;)Z
    .locals 2
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Landroid/net/Uri;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # J
    .param p6, "x5"    # Lorg/telegram/messenger/MessageObject;
    .param p7, "x6"    # Ljava/lang/CharSequence;

    .prologue
    .line 56
    invoke-static/range {p0 .. p7}, Lorg/telegram/messenger/SendMessagesHelper;->prepareSendingDocumentInternal(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 56
    invoke-static {p0}, Lorg/telegram/messenger/SendMessagesHelper;->getTrimmedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Ljava/lang/String;J)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # J

    .prologue
    .line 56
    invoke-static {p0, p1, p2}, Lorg/telegram/messenger/SendMessagesHelper;->createVideoThumbnail(Ljava/lang/String;J)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;Lorg/telegram/messenger/VideoEditedInfo;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;
    .param p2, "x2"    # Lorg/telegram/messenger/VideoEditedInfo;

    .prologue
    .line 56
    invoke-static {p0, p1, p2}, Lorg/telegram/messenger/SendMessagesHelper;->fillVideoAttribute(Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;Lorg/telegram/messenger/VideoEditedInfo;)V

    return-void
.end method

.method static synthetic access$700(Lorg/telegram/messenger/SendMessagesHelper;Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/SendMessagesHelper;
    .param p1, "x1"    # Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lorg/telegram/messenger/SendMessagesHelper;->performSendDelayedMessage(Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;)V

    return-void
.end method

.method static synthetic access$800(Lorg/telegram/messenger/SendMessagesHelper;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$Message;Ljava/lang/String;Z)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/SendMessagesHelper;
    .param p1, "x1"    # Lorg/telegram/messenger/MessageObject;
    .param p2, "x2"    # Lorg/telegram/tgnet/TLRPC$Message;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Z

    .prologue
    .line 56
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/messenger/SendMessagesHelper;->updateMediaPaths(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$Message;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$900(Lorg/telegram/messenger/SendMessagesHelper;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/SendMessagesHelper;

    .prologue
    .line 56
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper;->waitingForCallback:Ljava/util/HashMap;

    return-object v0
.end method

.method private static createVideoThumbnail(Ljava/lang/String;J)Landroid/graphics/Bitmap;
    .locals 11
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "time"    # J

    .prologue
    const/4 v10, 0x1

    .line 3819
    const/4 v0, 0x0

    .line 3820
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v4, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v4}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 3822
    .local v4, "retriever":Landroid/media/MediaMetadataRetriever;
    :try_start_0
    invoke-virtual {v4, p0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 3823
    const/4 v8, 0x1

    invoke-virtual {v4, p1, p2, v8}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(JI)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 3828
    :try_start_1
    invoke-virtual {v4}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    .line 3834
    :goto_0
    if-nez v0, :cond_0

    const/4 v8, 0x0

    .line 3846
    :goto_1
    return-object v8

    .line 3824
    :catch_0
    move-exception v8

    .line 3828
    :try_start_2
    invoke-virtual {v4}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 3829
    :catch_1
    move-exception v8

    goto :goto_0

    .line 3827
    :catchall_0
    move-exception v8

    .line 3828
    :try_start_3
    invoke-virtual {v4}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_3

    .line 3831
    :goto_2
    throw v8

    .line 3836
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    .line 3837
    .local v7, "width":I
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 3838
    .local v2, "height":I
    invoke-static {v7, v2}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 3839
    .local v3, "max":I
    const/16 v8, 0x5a

    if-le v3, v8, :cond_1

    .line 3840
    const/high16 v8, 0x42b40000    # 90.0f

    int-to-float v9, v3

    div-float v5, v8, v9

    .line 3841
    .local v5, "scale":F
    int-to-float v8, v7

    mul-float/2addr v8, v5

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 3842
    .local v6, "w":I
    int-to-float v8, v2

    mul-float/2addr v8, v5

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 3843
    .local v1, "h":I
    invoke-static {v0, v6, v1, v10}, Lorg/telegram/messenger/Bitmaps;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .end local v1    # "h":I
    .end local v5    # "scale":F
    .end local v6    # "w":I
    :cond_1
    move-object v8, v0

    .line 3846
    goto :goto_1

    .line 3829
    .end local v2    # "height":I
    .end local v3    # "max":I
    .end local v7    # "width":I
    :catch_2
    move-exception v8

    goto :goto_0

    :catch_3
    move-exception v9

    goto :goto_2
.end method

.method private static fillVideoAttribute(Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;Lorg/telegram/messenger/VideoEditedInfo;)V
    .locals 16
    .param p0, "videoPath"    # Ljava/lang/String;
    .param p1, "attributeVideo"    # Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;
    .param p2, "videoEditedInfo"    # Lorg/telegram/messenger/VideoEditedInfo;

    .prologue
    .line 3760
    const/4 v5, 0x0

    .line 3762
    .local v5, "infoObtained":Z
    const/4 v6, 0x0

    .line 3764
    .local v6, "mediaMetadataRetriever":Landroid/media/MediaMetadataRetriever;
    :try_start_0
    new-instance v7, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v7}, Landroid/media/MediaMetadataRetriever;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3765
    .end local v6    # "mediaMetadataRetriever":Landroid/media/MediaMetadataRetriever;
    .local v7, "mediaMetadataRetriever":Landroid/media/MediaMetadataRetriever;
    :try_start_1
    move-object/from16 v0, p0

    invoke-virtual {v7, v0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 3766
    const/16 v13, 0x12

    invoke-virtual {v7, v13}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v12

    .line 3767
    .local v12, "width":Ljava/lang/String;
    if-eqz v12, :cond_0

    .line 3768
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    move-object/from16 v0, p1

    iput v13, v0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;->w:I

    .line 3770
    :cond_0
    const/16 v13, 0x13

    invoke-virtual {v7, v13}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v4

    .line 3771
    .local v4, "height":Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 3772
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    move-object/from16 v0, p1

    iput v13, v0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;->h:I

    .line 3774
    :cond_1
    const/16 v13, 0x9

    invoke-virtual {v7, v13}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v2

    .line 3775
    .local v2, "duration":Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 3776
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    long-to-float v13, v14

    const/high16 v14, 0x447a0000    # 1000.0f

    div-float/2addr v13, v14

    float-to-double v14, v13

    invoke-static {v14, v15}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v14

    double-to-int v13, v14

    move-object/from16 v0, p1

    iput v13, v0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;->duration:I

    .line 3778
    :cond_2
    sget v13, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v14, 0x11

    if-lt v13, v14, :cond_3

    .line 3779
    const/16 v13, 0x18

    invoke-virtual {v7, v13}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v9

    .line 3780
    .local v9, "rotation":Ljava/lang/String;
    if-eqz v9, :cond_3

    .line 3781
    invoke-static {v9}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 3782
    .local v11, "val":I
    if-eqz p2, :cond_7

    .line 3783
    move-object/from16 v0, p2

    iput v11, v0, Lorg/telegram/messenger/VideoEditedInfo;->rotationValue:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3791
    .end local v9    # "rotation":Ljava/lang/String;
    .end local v11    # "val":I
    :cond_3
    :goto_0
    const/4 v5, 0x1

    .line 3796
    if-eqz v7, :cond_4

    .line 3797
    :try_start_2
    invoke-virtual {v7}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :cond_4
    move-object v6, v7

    .line 3803
    .end local v2    # "duration":Ljava/lang/String;
    .end local v4    # "height":Ljava/lang/String;
    .end local v7    # "mediaMetadataRetriever":Landroid/media/MediaMetadataRetriever;
    .end local v12    # "width":Ljava/lang/String;
    .restart local v6    # "mediaMetadataRetriever":Landroid/media/MediaMetadataRetriever;
    :cond_5
    :goto_1
    if-nez v5, :cond_6

    .line 3805
    :try_start_3
    sget-object v13, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    new-instance v14, Ljava/io/File;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v14}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/MediaPlayer;

    move-result-object v8

    .line 3806
    .local v8, "mp":Landroid/media/MediaPlayer;
    if-eqz v8, :cond_6

    .line 3807
    invoke-virtual {v8}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v13

    int-to-float v13, v13

    const/high16 v14, 0x447a0000    # 1000.0f

    div-float/2addr v13, v14

    float-to-double v14, v13

    invoke-static {v14, v15}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v14

    double-to-int v13, v14

    move-object/from16 v0, p1

    iput v13, v0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;->duration:I

    .line 3808
    invoke-virtual {v8}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v13

    move-object/from16 v0, p1

    iput v13, v0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;->w:I

    .line 3809
    invoke-virtual {v8}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v13

    move-object/from16 v0, p1

    iput v13, v0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;->h:I

    .line 3810
    invoke-virtual {v8}, Landroid/media/MediaPlayer;->release()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    .line 3816
    .end local v8    # "mp":Landroid/media/MediaPlayer;
    :cond_6
    :goto_2
    return-void

    .line 3784
    .end local v6    # "mediaMetadataRetriever":Landroid/media/MediaMetadataRetriever;
    .restart local v2    # "duration":Ljava/lang/String;
    .restart local v4    # "height":Ljava/lang/String;
    .restart local v7    # "mediaMetadataRetriever":Landroid/media/MediaMetadataRetriever;
    .restart local v9    # "rotation":Ljava/lang/String;
    .restart local v11    # "val":I
    .restart local v12    # "width":Ljava/lang/String;
    :cond_7
    const/16 v13, 0x5a

    if-eq v11, v13, :cond_8

    const/16 v13, 0x10e

    if-ne v11, v13, :cond_3

    .line 3785
    :cond_8
    :try_start_4
    move-object/from16 v0, p1

    iget v10, v0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;->w:I

    .line 3786
    .local v10, "temp":I
    move-object/from16 v0, p1

    iget v13, v0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;->h:I

    move-object/from16 v0, p1

    iput v13, v0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;->w:I

    .line 3787
    move-object/from16 v0, p1

    iput v10, v0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;->h:I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    .line 3792
    .end local v2    # "duration":Ljava/lang/String;
    .end local v4    # "height":Ljava/lang/String;
    .end local v9    # "rotation":Ljava/lang/String;
    .end local v10    # "temp":I
    .end local v11    # "val":I
    .end local v12    # "width":Ljava/lang/String;
    :catch_0
    move-exception v3

    move-object v6, v7

    .line 3793
    .end local v7    # "mediaMetadataRetriever":Landroid/media/MediaMetadataRetriever;
    .local v3, "e":Ljava/lang/Exception;
    .restart local v6    # "mediaMetadataRetriever":Landroid/media/MediaMetadataRetriever;
    :goto_3
    :try_start_5
    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 3796
    if-eqz v6, :cond_5

    .line 3797
    :try_start_6
    invoke-virtual {v6}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_1

    .line 3799
    :catch_1
    move-exception v3

    .line 3800
    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 3799
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v6    # "mediaMetadataRetriever":Landroid/media/MediaMetadataRetriever;
    .restart local v2    # "duration":Ljava/lang/String;
    .restart local v4    # "height":Ljava/lang/String;
    .restart local v7    # "mediaMetadataRetriever":Landroid/media/MediaMetadataRetriever;
    .restart local v12    # "width":Ljava/lang/String;
    :catch_2
    move-exception v3

    .line 3800
    .restart local v3    # "e":Ljava/lang/Exception;
    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    move-object v6, v7

    .line 3802
    .end local v7    # "mediaMetadataRetriever":Landroid/media/MediaMetadataRetriever;
    .restart local v6    # "mediaMetadataRetriever":Landroid/media/MediaMetadataRetriever;
    goto :goto_1

    .line 3795
    .end local v2    # "duration":Ljava/lang/String;
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v4    # "height":Ljava/lang/String;
    .end local v12    # "width":Ljava/lang/String;
    :catchall_0
    move-exception v13

    .line 3796
    :goto_4
    if-eqz v6, :cond_9

    .line 3797
    :try_start_7
    invoke-virtual {v6}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    .line 3801
    :cond_9
    :goto_5
    throw v13

    .line 3799
    :catch_3
    move-exception v3

    .line 3800
    .restart local v3    # "e":Ljava/lang/Exception;
    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_5

    .line 3812
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v3

    .line 3813
    .restart local v3    # "e":Ljava/lang/Exception;
    invoke-static {v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 3795
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v6    # "mediaMetadataRetriever":Landroid/media/MediaMetadataRetriever;
    .restart local v7    # "mediaMetadataRetriever":Landroid/media/MediaMetadataRetriever;
    :catchall_1
    move-exception v13

    move-object v6, v7

    .end local v7    # "mediaMetadataRetriever":Landroid/media/MediaMetadataRetriever;
    .restart local v6    # "mediaMetadataRetriever":Landroid/media/MediaMetadataRetriever;
    goto :goto_4

    .line 3792
    :catch_5
    move-exception v3

    goto :goto_3
.end method

.method public static getInstance()Lorg/telegram/messenger/SendMessagesHelper;
    .locals 4

    .prologue
    .line 221
    sget-object v0, Lorg/telegram/messenger/SendMessagesHelper;->Instance:Lorg/telegram/messenger/SendMessagesHelper;

    .line 222
    .local v0, "localInstance":Lorg/telegram/messenger/SendMessagesHelper;
    if-nez v0, :cond_1

    .line 223
    const-class v3, Lorg/telegram/messenger/SendMessagesHelper;

    monitor-enter v3

    .line 224
    :try_start_0
    sget-object v0, Lorg/telegram/messenger/SendMessagesHelper;->Instance:Lorg/telegram/messenger/SendMessagesHelper;

    .line 225
    if-nez v0, :cond_0

    .line 226
    new-instance v1, Lorg/telegram/messenger/SendMessagesHelper;

    invoke-direct {v1}, Lorg/telegram/messenger/SendMessagesHelper;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "localInstance":Lorg/telegram/messenger/SendMessagesHelper;
    .local v1, "localInstance":Lorg/telegram/messenger/SendMessagesHelper;
    :try_start_1
    sput-object v1, Lorg/telegram/messenger/SendMessagesHelper;->Instance:Lorg/telegram/messenger/SendMessagesHelper;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v0, v1

    .line 228
    .end local v1    # "localInstance":Lorg/telegram/messenger/SendMessagesHelper;
    .restart local v0    # "localInstance":Lorg/telegram/messenger/SendMessagesHelper;
    :cond_0
    :try_start_2
    monitor-exit v3

    .line 230
    :cond_1
    return-object v0

    .line 228
    :catchall_0
    move-exception v2

    :goto_0
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .end local v0    # "localInstance":Lorg/telegram/messenger/SendMessagesHelper;
    .restart local v1    # "localInstance":Lorg/telegram/messenger/SendMessagesHelper;
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "localInstance":Lorg/telegram/messenger/SendMessagesHelper;
    .restart local v0    # "localInstance":Lorg/telegram/messenger/SendMessagesHelper;
    goto :goto_0
.end method

.method private static getTrimmedString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "src"    # Ljava/lang/String;

    .prologue
    .line 3579
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 3580
    .local v0, "result":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 3589
    .end local v0    # "result":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 3583
    .restart local v0    # "result":Ljava/lang/String;
    :cond_0
    :goto_1
    const-string/jumbo v1, "\n"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3584
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 3586
    :cond_1
    :goto_2
    const-string/jumbo v1, "\n"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3587
    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_2
    move-object v0, p0

    .line 3589
    goto :goto_0
.end method

.method private performSendDelayedMessage(Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;)V
    .locals 14
    .param p1, "message"    # Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;

    .prologue
    const/high16 v5, 0x2000000

    const/high16 v6, 0x1000000

    const/4 v4, 0x4

    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 2315
    iget v0, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->type:I

    if-nez v0, :cond_5

    .line 2316
    iget-object v0, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->httpLocation:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 2317
    iget-object v0, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->httpLocation:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lorg/telegram/messenger/SendMessagesHelper;->putToDelayedMessages(Ljava/lang/String;Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;)V

    .line 2318
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v0

    iget-object v2, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->httpLocation:Ljava/lang/String;

    const-string/jumbo v3, "file"

    invoke-virtual {v0, v2, v3}, Lorg/telegram/messenger/ImageLoader;->loadHttpFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 2454
    :cond_0
    :goto_0
    return-void

    .line 2320
    :cond_1
    iget-object v0, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->sendRequest:Lorg/telegram/tgnet/TLObject;

    if-eqz v0, :cond_2

    .line 2321
    iget-object v0, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2322
    .local v1, "location":Ljava/lang/String;
    invoke-direct {p0, v1, p1}, Lorg/telegram/messenger/SendMessagesHelper;->putToDelayedMessages(Ljava/lang/String;Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;)V

    .line 2323
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    invoke-virtual {v0, v1, v2, v8, v6}, Lorg/telegram/messenger/FileLoader;->uploadFile(Ljava/lang/String;ZZI)V

    goto :goto_0

    .line 2325
    .end local v1    # "location":Ljava/lang/String;
    :cond_2
    iget-object v0, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2326
    .restart local v1    # "location":Ljava/lang/String;
    iget-object v0, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->sendEncryptedRequest:Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;

    if-eqz v0, :cond_4

    iget-object v0, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$FileLocation;->dc_id:I

    if-eqz v0, :cond_4

    .line 2327
    new-instance v12, Ljava/io/File;

    invoke-direct {v12, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2328
    .local v12, "file":Ljava/io/File;
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2329
    iget-object v0, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    invoke-static {v0, v8}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2330
    new-instance v12, Ljava/io/File;

    .end local v12    # "file":Ljava/io/File;
    invoke-direct {v12, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2332
    .restart local v12    # "file":Ljava/io/File;
    :cond_3
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_4

    .line 2333
    iget-object v0, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lorg/telegram/messenger/SendMessagesHelper;->putToDelayedMessages(Ljava/lang/String;Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;)V

    .line 2334
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    iget-object v3, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    const-string/jumbo v4, "jpg"

    invoke-virtual {v0, v3, v4, v2, v2}, Lorg/telegram/messenger/FileLoader;->loadFile(Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/lang/String;II)V

    goto :goto_0

    .line 2338
    .end local v12    # "file":Ljava/io/File;
    :cond_4
    invoke-direct {p0, v1, p1}, Lorg/telegram/messenger/SendMessagesHelper;->putToDelayedMessages(Ljava/lang/String;Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;)V

    .line 2339
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    invoke-virtual {v0, v1, v8, v8, v6}, Lorg/telegram/messenger/FileLoader;->uploadFile(Ljava/lang/String;ZZI)V

    goto :goto_0

    .line 2342
    .end local v1    # "location":Ljava/lang/String;
    :cond_5
    iget v0, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->type:I

    if-ne v0, v8, :cond_13

    .line 2343
    iget-object v0, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    if-eqz v0, :cond_7

    iget-object v0, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    invoke-virtual {v0}, Lorg/telegram/messenger/VideoEditedInfo;->needConvert()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2344
    iget-object v0, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    .line 2345
    .restart local v1    # "location":Ljava/lang/String;
    if-nez v1, :cond_6

    .line 2346
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v2

    invoke-virtual {v2, v4}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->documentLocation:Lorg/telegram/tgnet/TLRPC$TL_document;

    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$TL_document;->id:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ".mp4"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2348
    :cond_6
    invoke-direct {p0, v1, p1}, Lorg/telegram/messenger/SendMessagesHelper;->putToDelayedMessages(Ljava/lang/String;Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;)V

    .line 2349
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    iget-object v2, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/MediaController;->scheduleVideoConvert(Lorg/telegram/messenger/MessageObject;)V

    goto/16 :goto_0

    .line 2351
    .end local v1    # "location":Ljava/lang/String;
    :cond_7
    iget-object v0, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    if-eqz v0, :cond_8

    .line 2352
    iget-object v0, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iget-object v0, v0, Lorg/telegram/messenger/VideoEditedInfo;->file:Lorg/telegram/tgnet/TLRPC$InputFile;

    if-eqz v0, :cond_b

    .line 2354
    iget-object v0, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->sendRequest:Lorg/telegram/tgnet/TLObject;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;

    if-eqz v0, :cond_a

    .line 2355
    iget-object v0, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->sendRequest:Lorg/telegram/tgnet/TLObject;

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;

    iget-object v13, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;->media:Lorg/telegram/tgnet/TLRPC$InputMedia;

    .line 2359
    .local v13, "media":Lorg/telegram/tgnet/TLRPC$InputMedia;
    :goto_1
    iget-object v0, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iget-object v0, v0, Lorg/telegram/messenger/VideoEditedInfo;->file:Lorg/telegram/tgnet/TLRPC$InputFile;

    iput-object v0, v13, Lorg/telegram/tgnet/TLRPC$InputMedia;->file:Lorg/telegram/tgnet/TLRPC$InputFile;

    .line 2360
    iget-object v0, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    const/4 v3, 0x0

    iput-object v3, v0, Lorg/telegram/messenger/VideoEditedInfo;->file:Lorg/telegram/tgnet/TLRPC$InputFile;

    .line 2370
    .end local v13    # "media":Lorg/telegram/tgnet/TLRPC$InputMedia;
    :cond_8
    iget-object v0, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->sendRequest:Lorg/telegram/tgnet/TLObject;

    if-eqz v0, :cond_f

    .line 2372
    iget-object v0, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->sendRequest:Lorg/telegram/tgnet/TLObject;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;

    if-eqz v0, :cond_c

    .line 2373
    iget-object v0, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->sendRequest:Lorg/telegram/tgnet/TLObject;

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;

    iget-object v13, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;->media:Lorg/telegram/tgnet/TLRPC$InputMedia;

    .line 2377
    .restart local v13    # "media":Lorg/telegram/tgnet/TLRPC$InputMedia;
    :goto_2
    iget-object v0, v13, Lorg/telegram/tgnet/TLRPC$InputMedia;->file:Lorg/telegram/tgnet/TLRPC$InputFile;

    if-nez v0, :cond_e

    .line 2378
    iget-object v0, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    .line 2379
    .restart local v1    # "location":Ljava/lang/String;
    if-nez v1, :cond_9

    .line 2380
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v3

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->documentLocation:Lorg/telegram/tgnet/TLRPC$TL_document;

    iget-wide v6, v3, Lorg/telegram/tgnet/TLRPC$TL_document;->id:J

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, ".mp4"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2382
    :cond_9
    invoke-direct {p0, v1, p1}, Lorg/telegram/messenger/SendMessagesHelper;->putToDelayedMessages(Ljava/lang/String;Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;)V

    .line 2383
    iget-object v0, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    if-eqz v0, :cond_d

    iget-object v0, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    invoke-virtual {v0}, Lorg/telegram/messenger/VideoEditedInfo;->needConvert()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2384
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    iget-object v3, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->documentLocation:Lorg/telegram/tgnet/TLRPC$TL_document;

    iget v4, v3, Lorg/telegram/tgnet/TLRPC$TL_document;->size:I

    move v3, v2

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/messenger/FileLoader;->uploadFile(Ljava/lang/String;ZZII)V

    goto/16 :goto_0

    .line 2357
    .end local v1    # "location":Ljava/lang/String;
    .end local v13    # "media":Lorg/telegram/tgnet/TLRPC$InputMedia;
    :cond_a
    iget-object v0, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->sendRequest:Lorg/telegram/tgnet/TLObject;

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendBroadcast;

    iget-object v13, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendBroadcast;->media:Lorg/telegram/tgnet/TLRPC$InputMedia;

    .restart local v13    # "media":Lorg/telegram/tgnet/TLRPC$InputMedia;
    goto :goto_1

    .line 2361
    .end local v13    # "media":Lorg/telegram/tgnet/TLRPC$InputMedia;
    :cond_b
    iget-object v0, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iget-object v0, v0, Lorg/telegram/messenger/VideoEditedInfo;->encryptedFile:Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;

    if-eqz v0, :cond_8

    .line 2362
    iget-object v0, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->sendEncryptedRequest:Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget-object v2, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iget-wide v2, v2, Lorg/telegram/messenger/VideoEditedInfo;->estimatedSize:J

    long-to-int v2, v2

    iput v2, v0, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->size:I

    .line 2363
    iget-object v0, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->sendEncryptedRequest:Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget-object v2, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iget-object v2, v2, Lorg/telegram/messenger/VideoEditedInfo;->key:[B

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->key:[B

    .line 2364
    iget-object v0, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->sendEncryptedRequest:Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget-object v2, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iget-object v2, v2, Lorg/telegram/messenger/VideoEditedInfo;->iv:[B

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->iv:[B

    .line 2365
    invoke-static {}, Lorg/telegram/messenger/SecretChatHelper;->getInstance()Lorg/telegram/messenger/SecretChatHelper;

    move-result-object v0

    iget-object v1, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->sendEncryptedRequest:Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;

    iget-object v2, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    iget-object v2, v2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    iget-object v4, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    iget-object v4, v4, Lorg/telegram/messenger/VideoEditedInfo;->encryptedFile:Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;

    iget-object v5, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->originalPath:Ljava/lang/String;

    iget-object v6, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/messenger/SecretChatHelper;->performSendEncryptedRequest(Lorg/telegram/tgnet/TLRPC$DecryptedMessage;Lorg/telegram/tgnet/TLRPC$Message;Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;Ljava/lang/String;Lorg/telegram/messenger/MessageObject;)V

    .line 2366
    iget-object v0, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    const/4 v2, 0x0

    iput-object v2, v0, Lorg/telegram/messenger/VideoEditedInfo;->encryptedFile:Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;

    goto/16 :goto_0

    .line 2375
    :cond_c
    iget-object v0, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->sendRequest:Lorg/telegram/tgnet/TLObject;

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendBroadcast;

    iget-object v13, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendBroadcast;->media:Lorg/telegram/tgnet/TLRPC$InputMedia;

    .restart local v13    # "media":Lorg/telegram/tgnet/TLRPC$InputMedia;
    goto/16 :goto_2

    .line 2386
    .restart local v1    # "location":Ljava/lang/String;
    :cond_d
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    invoke-virtual {v0, v1, v2, v2, v5}, Lorg/telegram/messenger/FileLoader;->uploadFile(Ljava/lang/String;ZZI)V

    goto/16 :goto_0

    .line 2389
    .end local v1    # "location":Ljava/lang/String;
    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v3

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget-wide v4, v3, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "_"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, ".jpg"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2390
    .restart local v1    # "location":Ljava/lang/String;
    invoke-direct {p0, v1, p1}, Lorg/telegram/messenger/SendMessagesHelper;->putToDelayedMessages(Ljava/lang/String;Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;)V

    .line 2391
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    invoke-virtual {v0, v1, v2, v8, v6}, Lorg/telegram/messenger/FileLoader;->uploadFile(Ljava/lang/String;ZZI)V

    goto/16 :goto_0

    .line 2394
    .end local v1    # "location":Ljava/lang/String;
    .end local v13    # "media":Lorg/telegram/tgnet/TLRPC$InputMedia;
    :cond_f
    iget-object v0, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    .line 2395
    .restart local v1    # "location":Ljava/lang/String;
    if-nez v1, :cond_10

    .line 2396
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v3

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->documentLocation:Lorg/telegram/tgnet/TLRPC$TL_document;

    iget-wide v6, v3, Lorg/telegram/tgnet/TLRPC$TL_document;->id:J

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, ".mp4"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2398
    :cond_10
    iget-object v0, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->sendEncryptedRequest:Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;

    if-eqz v0, :cond_11

    iget-object v0, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->documentLocation:Lorg/telegram/tgnet/TLRPC$TL_document;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->dc_id:I

    if-eqz v0, :cond_11

    .line 2399
    new-instance v12, Ljava/io/File;

    invoke-direct {v12, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2400
    .restart local v12    # "file":Ljava/io/File;
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_11

    .line 2401
    iget-object v0, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->documentLocation:Lorg/telegram/tgnet/TLRPC$TL_document;

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lorg/telegram/messenger/SendMessagesHelper;->putToDelayedMessages(Ljava/lang/String;Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;)V

    .line 2402
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    iget-object v3, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->documentLocation:Lorg/telegram/tgnet/TLRPC$TL_document;

    invoke-virtual {v0, v3, v8, v2}, Lorg/telegram/messenger/FileLoader;->loadFile(Lorg/telegram/tgnet/TLRPC$Document;ZI)V

    goto/16 :goto_0

    .line 2406
    .end local v12    # "file":Ljava/io/File;
    :cond_11
    invoke-direct {p0, v1, p1}, Lorg/telegram/messenger/SendMessagesHelper;->putToDelayedMessages(Ljava/lang/String;Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;)V

    .line 2407
    iget-object v0, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    if-eqz v0, :cond_12

    iget-object v0, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    invoke-virtual {v0}, Lorg/telegram/messenger/VideoEditedInfo;->needConvert()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 2408
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v6

    iget-object v0, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->documentLocation:Lorg/telegram/tgnet/TLRPC$TL_document;

    iget v10, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->size:I

    move-object v7, v1

    move v9, v2

    move v11, v5

    invoke-virtual/range {v6 .. v11}, Lorg/telegram/messenger/FileLoader;->uploadFile(Ljava/lang/String;ZZII)V

    goto/16 :goto_0

    .line 2410
    :cond_12
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    invoke-virtual {v0, v1, v8, v2, v5}, Lorg/telegram/messenger/FileLoader;->uploadFile(Ljava/lang/String;ZZI)V

    goto/16 :goto_0

    .line 2414
    .end local v1    # "location":Ljava/lang/String;
    :cond_13
    iget v0, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->type:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1a

    .line 2415
    iget-object v0, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->httpLocation:Ljava/lang/String;

    if-eqz v0, :cond_14

    .line 2416
    iget-object v0, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->httpLocation:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lorg/telegram/messenger/SendMessagesHelper;->putToDelayedMessages(Ljava/lang/String;Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;)V

    .line 2417
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v0

    iget-object v2, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->httpLocation:Ljava/lang/String;

    const-string/jumbo v3, "gif"

    invoke-virtual {v0, v2, v3}, Lorg/telegram/messenger/ImageLoader;->loadHttpFile(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2419
    :cond_14
    iget-object v0, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->sendRequest:Lorg/telegram/tgnet/TLObject;

    if-eqz v0, :cond_18

    .line 2421
    iget-object v0, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->sendRequest:Lorg/telegram/tgnet/TLObject;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;

    if-eqz v0, :cond_15

    .line 2422
    iget-object v0, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->sendRequest:Lorg/telegram/tgnet/TLObject;

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;

    iget-object v13, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;->media:Lorg/telegram/tgnet/TLRPC$InputMedia;

    .line 2426
    .restart local v13    # "media":Lorg/telegram/tgnet/TLRPC$InputMedia;
    :goto_3
    iget-object v0, v13, Lorg/telegram/tgnet/TLRPC$InputMedia;->file:Lorg/telegram/tgnet/TLRPC$InputFile;

    if-nez v0, :cond_17

    .line 2427
    iget-object v0, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    .line 2428
    .restart local v1    # "location":Ljava/lang/String;
    invoke-direct {p0, v1, p1}, Lorg/telegram/messenger/SendMessagesHelper;->putToDelayedMessages(Ljava/lang/String;Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;)V

    .line 2429
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    iget-object v3, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->sendRequest:Lorg/telegram/tgnet/TLObject;

    if-nez v3, :cond_16

    :goto_4
    const/high16 v3, 0x4000000

    invoke-virtual {v0, v1, v8, v2, v3}, Lorg/telegram/messenger/FileLoader;->uploadFile(Ljava/lang/String;ZZI)V

    goto/16 :goto_0

    .line 2424
    .end local v1    # "location":Ljava/lang/String;
    .end local v13    # "media":Lorg/telegram/tgnet/TLRPC$InputMedia;
    :cond_15
    iget-object v0, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->sendRequest:Lorg/telegram/tgnet/TLObject;

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendBroadcast;

    iget-object v13, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendBroadcast;->media:Lorg/telegram/tgnet/TLRPC$InputMedia;

    .restart local v13    # "media":Lorg/telegram/tgnet/TLRPC$InputMedia;
    goto :goto_3

    .restart local v1    # "location":Ljava/lang/String;
    :cond_16
    move v8, v2

    .line 2429
    goto :goto_4

    .line 2430
    .end local v1    # "location":Ljava/lang/String;
    :cond_17
    iget-object v0, v13, Lorg/telegram/tgnet/TLRPC$InputMedia;->thumb:Lorg/telegram/tgnet/TLRPC$InputFile;

    if-nez v0, :cond_0

    iget-object v0, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v0, :cond_0

    .line 2431
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v3

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget-wide v4, v3, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "_"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, ".jpg"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2432
    .restart local v1    # "location":Ljava/lang/String;
    invoke-direct {p0, v1, p1}, Lorg/telegram/messenger/SendMessagesHelper;->putToDelayedMessages(Ljava/lang/String;Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;)V

    .line 2433
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    invoke-virtual {v0, v1, v2, v8, v6}, Lorg/telegram/messenger/FileLoader;->uploadFile(Ljava/lang/String;ZZI)V

    goto/16 :goto_0

    .line 2436
    .end local v1    # "location":Ljava/lang/String;
    .end local v13    # "media":Lorg/telegram/tgnet/TLRPC$InputMedia;
    :cond_18
    iget-object v0, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    .line 2437
    .restart local v1    # "location":Ljava/lang/String;
    iget-object v0, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->sendEncryptedRequest:Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;

    if-eqz v0, :cond_19

    iget-object v0, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->documentLocation:Lorg/telegram/tgnet/TLRPC$TL_document;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->dc_id:I

    if-eqz v0, :cond_19

    .line 2438
    new-instance v12, Ljava/io/File;

    invoke-direct {v12, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2439
    .restart local v12    # "file":Ljava/io/File;
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_19

    .line 2440
    iget-object v0, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->documentLocation:Lorg/telegram/tgnet/TLRPC$TL_document;

    invoke-static {v0}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lorg/telegram/messenger/SendMessagesHelper;->putToDelayedMessages(Ljava/lang/String;Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;)V

    .line 2441
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    iget-object v3, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->documentLocation:Lorg/telegram/tgnet/TLRPC$TL_document;

    invoke-virtual {v0, v3, v8, v2}, Lorg/telegram/messenger/FileLoader;->loadFile(Lorg/telegram/tgnet/TLRPC$Document;ZI)V

    goto/16 :goto_0

    .line 2445
    .end local v12    # "file":Ljava/io/File;
    :cond_19
    invoke-direct {p0, v1, p1}, Lorg/telegram/messenger/SendMessagesHelper;->putToDelayedMessages(Ljava/lang/String;Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;)V

    .line 2446
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    const/high16 v3, 0x4000000

    invoke-virtual {v0, v1, v8, v2, v3}, Lorg/telegram/messenger/FileLoader;->uploadFile(Ljava/lang/String;ZZI)V

    goto/16 :goto_0

    .line 2449
    .end local v1    # "location":Ljava/lang/String;
    :cond_1a
    iget v0, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->type:I

    const/4 v3, 0x3

    if-ne v0, v3, :cond_0

    .line 2450
    iget-object v0, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    .line 2451
    .restart local v1    # "location":Ljava/lang/String;
    invoke-direct {p0, v1, p1}, Lorg/telegram/messenger/SendMessagesHelper;->putToDelayedMessages(Ljava/lang/String;Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;)V

    .line 2452
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    iget-object v3, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->sendRequest:Lorg/telegram/tgnet/TLObject;

    if-nez v3, :cond_1b

    move v2, v8

    :cond_1b
    const/high16 v3, 0x3000000

    invoke-virtual {v0, v1, v2, v8, v3}, Lorg/telegram/messenger/FileLoader;->uploadFile(Ljava/lang/String;ZZI)V

    goto/16 :goto_0
.end method

.method private performSendMessageRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;)V
    .locals 7
    .param p1, "req"    # Lorg/telegram/tgnet/TLObject;
    .param p2, "msgObj"    # Lorg/telegram/messenger/MessageObject;
    .param p3, "originalPath"    # Ljava/lang/String;

    .prologue
    .line 2483
    iget-object v2, p2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    .line 2484
    .local v2, "newMsgObj":Lorg/telegram/tgnet/TLRPC$Message;
    invoke-virtual {p0, v2}, Lorg/telegram/messenger/SendMessagesHelper;->putToSendingMessages(Lorg/telegram/tgnet/TLRPC$Message;)V

    .line 2485
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v6

    new-instance v0, Lorg/telegram/messenger/SendMessagesHelper$9;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/SendMessagesHelper$9;-><init>(Lorg/telegram/messenger/SendMessagesHelper;Lorg/telegram/tgnet/TLRPC$Message;Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;)V

    new-instance v3, Lorg/telegram/messenger/SendMessagesHelper$10;

    invoke-direct {v3, p0, v2}, Lorg/telegram/messenger/SendMessagesHelper$10;-><init>(Lorg/telegram/messenger/SendMessagesHelper;Lorg/telegram/tgnet/TLRPC$Message;)V

    instance-of v1, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMessage;

    if-eqz v1, :cond_0

    const/16 v1, 0x80

    :goto_0
    or-int/lit8 v1, v1, 0x44

    invoke-virtual {v6, p1, v0, v3, v1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;Lorg/telegram/tgnet/QuickAckDelegate;I)I

    .line 2644
    return-void

    .line 2485
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static prepareSendingAudioDocuments(Ljava/util/ArrayList;JLorg/telegram/messenger/MessageObject;)V
    .locals 3
    .param p1, "dialog_id"    # J
    .param p3, "reply_to_msg"    # Lorg/telegram/messenger/MessageObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;J",
            "Lorg/telegram/messenger/MessageObject;",
            ")V"
        }
    .end annotation

    .prologue
    .line 3045
    .local p0, "messageObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lorg/telegram/messenger/SendMessagesHelper$13;

    invoke-direct {v1, p0, p1, p2, p3}, Lorg/telegram/messenger/SendMessagesHelper$13;-><init>(Ljava/util/ArrayList;JLorg/telegram/messenger/MessageObject;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 3090
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 3091
    return-void
.end method

.method public static prepareSendingBotContextResult(Lorg/telegram/tgnet/TLRPC$BotInlineResult;Ljava/util/HashMap;JLorg/telegram/messenger/MessageObject;)V
    .locals 22
    .param p0, "result"    # Lorg/telegram/tgnet/TLRPC$BotInlineResult;
    .param p2, "dialog_id"    # J
    .param p4, "reply_to_msg"    # Lorg/telegram/messenger/MessageObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/tgnet/TLRPC$BotInlineResult;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;J",
            "Lorg/telegram/messenger/MessageObject;",
            ")V"
        }
    .end annotation

    .prologue
    .line 3165
    .local p1, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p0, :cond_1

    .line 3419
    :cond_0
    :goto_0
    return-void

    .line 3168
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->send_message:Lorg/telegram/tgnet/TLRPC$BotInlineMessage;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_botInlineMessageMediaAuto;

    if-eqz v2, :cond_2

    .line 3169
    new-instance v8, Ljava/lang/Thread;

    new-instance v2, Lorg/telegram/messenger/SendMessagesHelper$15;

    move-object/from16 v3, p0

    move-wide/from16 v4, p2

    move-object/from16 v6, p1

    move-object/from16 v7, p4

    invoke-direct/range {v2 .. v7}, Lorg/telegram/messenger/SendMessagesHelper$15;-><init>(Lorg/telegram/tgnet/TLRPC$BotInlineResult;JLjava/util/HashMap;Lorg/telegram/messenger/MessageObject;)V

    invoke-direct {v8, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 3386
    invoke-virtual {v8}, Ljava/lang/Thread;->run()V

    goto :goto_0

    .line 3387
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->send_message:Lorg/telegram/tgnet/TLRPC$BotInlineMessage;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_botInlineMessageText;

    if-eqz v2, :cond_6

    .line 3388
    const/4 v7, 0x0

    .line 3389
    .local v7, "webPage":Lorg/telegram/tgnet/TLRPC$WebPage;
    move-wide/from16 v0, p2

    long-to-int v2, v0

    if-nez v2, :cond_3

    .line 3390
    const/16 v19, 0x0

    .local v19, "a":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->send_message:Lorg/telegram/tgnet/TLRPC$BotInlineMessage;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$BotInlineMessage;->entities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, v19

    if-ge v0, v2, :cond_3

    .line 3391
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->send_message:Lorg/telegram/tgnet/TLRPC$BotInlineMessage;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$BotInlineMessage;->entities:Ljava/util/ArrayList;

    move/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lorg/telegram/tgnet/TLRPC$MessageEntity;

    .line 3392
    .local v20, "entity":Lorg/telegram/tgnet/TLRPC$MessageEntity;
    move-object/from16 v0, v20

    instance-of v2, v0, Lorg/telegram/tgnet/TLRPC$TL_messageEntityUrl;

    if-eqz v2, :cond_4

    .line 3393
    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_webPagePending;

    .end local v7    # "webPage":Lorg/telegram/tgnet/TLRPC$WebPage;
    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_webPagePending;-><init>()V

    .line 3394
    .restart local v7    # "webPage":Lorg/telegram/tgnet/TLRPC$WebPage;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->send_message:Lorg/telegram/tgnet/TLRPC$BotInlineMessage;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$BotInlineMessage;->message:Ljava/lang/String;

    move-object/from16 v0, v20

    iget v3, v0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    move-object/from16 v0, v20

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->offset:I

    move-object/from16 v0, v20

    iget v5, v0, Lorg/telegram/tgnet/TLRPC$MessageEntity;->length:I

    add-int/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v7, Lorg/telegram/tgnet/TLRPC$WebPage;->url:Ljava/lang/String;

    .line 3399
    .end local v19    # "a":I
    .end local v20    # "entity":Lorg/telegram/tgnet/TLRPC$MessageEntity;
    :cond_3
    invoke-static {}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance()Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->send_message:Lorg/telegram/tgnet/TLRPC$BotInlineMessage;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$BotInlineMessage;->message:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->send_message:Lorg/telegram/tgnet/TLRPC$BotInlineMessage;

    iget-boolean v4, v4, Lorg/telegram/tgnet/TLRPC$BotInlineMessage;->no_webpage:Z

    if-nez v4, :cond_5

    const/4 v8, 0x1

    :goto_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->send_message:Lorg/telegram/tgnet/TLRPC$BotInlineMessage;

    iget-object v9, v4, Lorg/telegram/tgnet/TLRPC$BotInlineMessage;->entities:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->send_message:Lorg/telegram/tgnet/TLRPC$BotInlineMessage;

    iget-object v10, v4, Lorg/telegram/tgnet/TLRPC$BotInlineMessage;->reply_markup:Lorg/telegram/tgnet/TLRPC$ReplyMarkup;

    move-wide/from16 v4, p2

    move-object/from16 v6, p4

    move-object/from16 v11, p1

    invoke-virtual/range {v2 .. v11}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$WebPage;ZLjava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;)V

    goto/16 :goto_0

    .line 3390
    .restart local v19    # "a":I
    .restart local v20    # "entity":Lorg/telegram/tgnet/TLRPC$MessageEntity;
    :cond_4
    add-int/lit8 v19, v19, 0x1

    goto :goto_1

    .line 3399
    .end local v19    # "a":I
    .end local v20    # "entity":Lorg/telegram/tgnet/TLRPC$MessageEntity;
    :cond_5
    const/4 v8, 0x0

    goto :goto_2

    .line 3400
    .end local v7    # "webPage":Lorg/telegram/tgnet/TLRPC$WebPage;
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->send_message:Lorg/telegram/tgnet/TLRPC$BotInlineMessage;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_botInlineMessageMediaVenue;

    if-eqz v2, :cond_7

    .line 3401
    new-instance v9, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;

    invoke-direct {v9}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;-><init>()V

    .line 3402
    .local v9, "venue":Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->send_message:Lorg/telegram/tgnet/TLRPC$BotInlineMessage;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$BotInlineMessage;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    iput-object v2, v9, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    .line 3403
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->send_message:Lorg/telegram/tgnet/TLRPC$BotInlineMessage;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$BotInlineMessage;->address:Ljava/lang/String;

    iput-object v2, v9, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;->address:Ljava/lang/String;

    .line 3404
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->send_message:Lorg/telegram/tgnet/TLRPC$BotInlineMessage;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$BotInlineMessage;->title:Ljava/lang/String;

    iput-object v2, v9, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;->title:Ljava/lang/String;

    .line 3405
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->send_message:Lorg/telegram/tgnet/TLRPC$BotInlineMessage;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$BotInlineMessage;->provider:Ljava/lang/String;

    iput-object v2, v9, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;->provider:Ljava/lang/String;

    .line 3406
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->send_message:Lorg/telegram/tgnet/TLRPC$BotInlineMessage;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$BotInlineMessage;->venue_id:Ljava/lang/String;

    iput-object v2, v9, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;->venue_id:Ljava/lang/String;

    .line 3407
    invoke-static {}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance()Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->send_message:Lorg/telegram/tgnet/TLRPC$BotInlineMessage;

    iget-object v13, v2, Lorg/telegram/tgnet/TLRPC$BotInlineMessage;->reply_markup:Lorg/telegram/tgnet/TLRPC$ReplyMarkup;

    move-wide/from16 v10, p2

    move-object/from16 v12, p4

    move-object/from16 v14, p1

    invoke-virtual/range {v8 .. v14}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Lorg/telegram/tgnet/TLRPC$MessageMedia;JLorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;)V

    goto/16 :goto_0

    .line 3408
    .end local v9    # "venue":Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->send_message:Lorg/telegram/tgnet/TLRPC$BotInlineMessage;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_botInlineMessageMediaGeo;

    if-eqz v2, :cond_8

    .line 3409
    new-instance v11, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGeo;

    invoke-direct {v11}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGeo;-><init>()V

    .line 3410
    .local v11, "location":Lorg/telegram/tgnet/TLRPC$TL_messageMediaGeo;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->send_message:Lorg/telegram/tgnet/TLRPC$BotInlineMessage;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$BotInlineMessage;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    iput-object v2, v11, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGeo;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    .line 3411
    invoke-static {}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance()Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->send_message:Lorg/telegram/tgnet/TLRPC$BotInlineMessage;

    iget-object v15, v2, Lorg/telegram/tgnet/TLRPC$BotInlineMessage;->reply_markup:Lorg/telegram/tgnet/TLRPC$ReplyMarkup;

    move-wide/from16 v12, p2

    move-object/from16 v14, p4

    move-object/from16 v16, p1

    invoke-virtual/range {v10 .. v16}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Lorg/telegram/tgnet/TLRPC$MessageMedia;JLorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;)V

    goto/16 :goto_0

    .line 3412
    .end local v11    # "location":Lorg/telegram/tgnet/TLRPC$TL_messageMediaGeo;
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->send_message:Lorg/telegram/tgnet/TLRPC$BotInlineMessage;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_botInlineMessageMediaContact;

    if-eqz v2, :cond_0

    .line 3413
    new-instance v13, Lorg/telegram/tgnet/TLRPC$TL_user;

    invoke-direct {v13}, Lorg/telegram/tgnet/TLRPC$TL_user;-><init>()V

    .line 3414
    .local v13, "user":Lorg/telegram/tgnet/TLRPC$User;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->send_message:Lorg/telegram/tgnet/TLRPC$BotInlineMessage;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$BotInlineMessage;->phone_number:Ljava/lang/String;

    iput-object v2, v13, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    .line 3415
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->send_message:Lorg/telegram/tgnet/TLRPC$BotInlineMessage;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$BotInlineMessage;->first_name:Ljava/lang/String;

    iput-object v2, v13, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    .line 3416
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->send_message:Lorg/telegram/tgnet/TLRPC$BotInlineMessage;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$BotInlineMessage;->last_name:Ljava/lang/String;

    iput-object v2, v13, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    .line 3417
    invoke-static {}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance()Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->send_message:Lorg/telegram/tgnet/TLRPC$BotInlineMessage;

    iget-object v0, v2, Lorg/telegram/tgnet/TLRPC$BotInlineMessage;->reply_markup:Lorg/telegram/tgnet/TLRPC$ReplyMarkup;

    move-object/from16 v17, v0

    move-wide/from16 v14, p2

    move-object/from16 v16, p4

    move-object/from16 v18, p1

    invoke-virtual/range {v12 .. v18}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Lorg/telegram/tgnet/TLRPC$User;JLorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;)V

    goto/16 :goto_0
.end method

.method public static prepareSendingDocument(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Landroid/support/v13/view/inputmethod/InputContentInfoCompat;)V
    .locals 8
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "originalPath"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "mine"    # Ljava/lang/String;
    .param p4, "dialog_id"    # J
    .param p6, "reply_to_msg"    # Lorg/telegram/messenger/MessageObject;
    .param p7, "inputContent"    # Landroid/support/v13/view/inputmethod/InputContentInfoCompat;

    .prologue
    .line 3027
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    if-nez p2, :cond_1

    .line 3042
    :goto_0
    return-void

    .line 3030
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3031
    .local v0, "paths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3032
    .local v1, "originalPaths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 3033
    .local v2, "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    if-eqz p2, :cond_2

    .line 3034
    new-instance v2, Ljava/util/ArrayList;

    .end local v2    # "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3035
    .restart local v2    # "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3037
    :cond_2
    if-eqz p0, :cond_3

    .line 3038
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3039
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    move-object v3, p3

    move-wide v4, p4

    move-object v6, p6

    move-object v7, p7

    .line 3041
    invoke-static/range {v0 .. v7}, Lorg/telegram/messenger/SendMessagesHelper;->prepareSendingDocuments(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Landroid/support/v13/view/inputmethod/InputContentInfoCompat;)V

    goto :goto_0
.end method

.method private static prepareSendingDocumentInternal(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Ljava/lang/CharSequence;)Z
    .locals 32
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "originalPath"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "mime"    # Ljava/lang/String;
    .param p4, "dialog_id"    # J
    .param p6, "reply_to_msg"    # Lorg/telegram/messenger/MessageObject;
    .param p7, "caption"    # Ljava/lang/CharSequence;

    .prologue
    .line 2863
    if-eqz p0, :cond_0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    if-nez p2, :cond_1

    .line 2864
    const/4 v2, 0x0

    .line 3023
    :goto_0
    return v2

    .line 2866
    :cond_1
    if-eqz p2, :cond_2

    invoke-static/range {p2 .. p2}, Lorg/telegram/messenger/AndroidUtilities;->isInternalUri(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2867
    const/4 v2, 0x0

    goto :goto_0

    .line 2869
    :cond_2
    if-eqz p0, :cond_3

    new-instance v2, Ljava/io/File;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->isInternalUri(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2870
    const/4 v2, 0x0

    goto :goto_0

    .line 2872
    :cond_3
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v28

    .line 2873
    .local v28, "myMime":Landroid/webkit/MimeTypeMap;
    const/4 v11, 0x0

    .line 2874
    .local v11, "attributeAudio":Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;
    const/16 v21, 0x0

    .line 2875
    .local v21, "extension":Ljava/lang/String;
    if-eqz p2, :cond_6

    .line 2876
    if-eqz p3, :cond_4

    .line 2877
    move-object/from16 v0, v28

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/webkit/MimeTypeMap;->getExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 2879
    :cond_4
    if-nez v21, :cond_5

    .line 2880
    const-string/jumbo v21, "txt"

    .line 2882
    :cond_5
    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lorg/telegram/messenger/MediaController;->copyFileToCache(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2883
    if-nez p0, :cond_6

    .line 2884
    const/4 v2, 0x0

    goto :goto_0

    .line 2887
    :cond_6
    new-instance v22, Ljava/io/File;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2888
    .local v22, "f":Ljava/io/File;
    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v6, 0x0

    cmp-long v2, v2, v6

    if-nez v2, :cond_8

    .line 2889
    :cond_7
    const/4 v2, 0x0

    goto :goto_0

    .line 2892
    :cond_8
    move-wide/from16 v0, p4

    long-to-int v2, v0

    if-nez v2, :cond_15

    const/16 v26, 0x1

    .line 2893
    .local v26, "isEncrypted":Z
    :goto_1
    if-nez v26, :cond_16

    const/4 v10, 0x1

    .line 2895
    .local v10, "allowSticker":Z
    :goto_2
    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v29

    .line 2896
    .local v29, "name":Ljava/lang/String;
    const-string/jumbo v20, ""

    .line 2897
    .local v20, "ext":Ljava/lang/String;
    if-eqz v21, :cond_17

    .line 2898
    move-object/from16 v20, v21

    .line 2905
    :cond_9
    :goto_3
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "mp3"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "m4a"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 2906
    :cond_a
    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/audioinfo/AudioInfo;->getAudioInfo(Ljava/io/File;)Lorg/telegram/messenger/audioinfo/AudioInfo;

    move-result-object v14

    .line 2907
    .local v14, "audioInfo":Lorg/telegram/messenger/audioinfo/AudioInfo;
    if-eqz v14, :cond_d

    invoke-virtual {v14}, Lorg/telegram/messenger/audioinfo/AudioInfo;->getDuration()J

    move-result-wide v2

    const-wide/16 v6, 0x0

    cmp-long v2, v2, v6

    if-eqz v2, :cond_d

    .line 2908
    new-instance v11, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;

    .end local v11    # "attributeAudio":Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;
    invoke-direct {v11}, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;-><init>()V

    .line 2909
    .restart local v11    # "attributeAudio":Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;
    invoke-virtual {v14}, Lorg/telegram/messenger/audioinfo/AudioInfo;->getDuration()J

    move-result-wide v2

    const-wide/16 v6, 0x3e8

    div-long/2addr v2, v6

    long-to-int v2, v2

    iput v2, v11, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;->duration:I

    .line 2910
    invoke-virtual {v14}, Lorg/telegram/messenger/audioinfo/AudioInfo;->getTitle()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v11, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;->title:Ljava/lang/String;

    .line 2911
    invoke-virtual {v14}, Lorg/telegram/messenger/audioinfo/AudioInfo;->getArtist()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v11, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;->performer:Ljava/lang/String;

    .line 2912
    iget-object v2, v11, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;->title:Ljava/lang/String;

    if-nez v2, :cond_b

    .line 2913
    const-string/jumbo v2, ""

    iput-object v2, v11, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;->title:Ljava/lang/String;

    .line 2915
    :cond_b
    iget v2, v11, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;->flags:I

    or-int/lit8 v2, v2, 0x1

    iput v2, v11, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;->flags:I

    .line 2916
    iget-object v2, v11, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;->performer:Ljava/lang/String;

    if-nez v2, :cond_c

    .line 2917
    const-string/jumbo v2, ""

    iput-object v2, v11, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;->performer:Ljava/lang/String;

    .line 2919
    :cond_c
    iget v2, v11, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;->flags:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v11, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;->flags:I

    .line 2922
    .end local v14    # "audioInfo":Lorg/telegram/messenger/audioinfo/AudioInfo;
    :cond_d
    const/16 v30, 0x0

    .line 2923
    .local v30, "sendNew":Z
    if-eqz p1, :cond_e

    .line 2924
    const-string/jumbo v2, "attheme"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 2925
    const/16 v30, 0x1

    .line 2933
    :cond_e
    :goto_4
    const/16 v18, 0x0

    .line 2934
    .local v18, "document":Lorg/telegram/tgnet/TLRPC$TL_document;
    if-nez v30, :cond_f

    if-nez v26, :cond_f

    .line 2935
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v3

    if-nez v26, :cond_1a

    const/4 v2, 0x1

    :goto_5
    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v2}, Lorg/telegram/messenger/MessagesStorage;->getSentFile(Ljava/lang/String;I)Lorg/telegram/tgnet/TLObject;

    move-result-object v18

    .end local v18    # "document":Lorg/telegram/tgnet/TLRPC$TL_document;
    check-cast v18, Lorg/telegram/tgnet/TLRPC$TL_document;

    .line 2936
    .restart local v18    # "document":Lorg/telegram/tgnet/TLRPC$TL_document;
    if-nez v18, :cond_f

    invoke-virtual/range {p0 .. p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    if-nez v26, :cond_f

    .line 2937
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    if-nez v26, :cond_1b

    const/4 v2, 0x1

    :goto_6
    invoke-virtual {v3, v6, v2}, Lorg/telegram/messenger/MessagesStorage;->getSentFile(Ljava/lang/String;I)Lorg/telegram/tgnet/TLObject;

    move-result-object v18

    .end local v18    # "document":Lorg/telegram/tgnet/TLRPC$TL_document;
    check-cast v18, Lorg/telegram/tgnet/TLRPC$TL_document;

    .line 2940
    .restart local v18    # "document":Lorg/telegram/tgnet/TLRPC$TL_document;
    :cond_f
    if-nez v18, :cond_13

    .line 2941
    new-instance v18, Lorg/telegram/tgnet/TLRPC$TL_document;

    .end local v18    # "document":Lorg/telegram/tgnet/TLRPC$TL_document;
    invoke-direct/range {v18 .. v18}, Lorg/telegram/tgnet/TLRPC$TL_document;-><init>()V

    .line 2942
    .restart local v18    # "document":Lorg/telegram/tgnet/TLRPC$TL_document;
    const-wide/16 v2, 0x0

    move-object/from16 v0, v18

    iput-wide v2, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->id:J

    .line 2943
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v2

    move-object/from16 v0, v18

    iput v2, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->date:I

    .line 2944
    new-instance v24, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeFilename;

    invoke-direct/range {v24 .. v24}, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeFilename;-><init>()V

    .line 2945
    .local v24, "fileName":Lorg/telegram/tgnet/TLRPC$TL_documentAttributeFilename;
    move-object/from16 v0, v29

    move-object/from16 v1, v24

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeFilename;->file_name:Ljava/lang/String;

    .line 2946
    move-object/from16 v0, v18

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->attributes:Ljava/util/ArrayList;

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2947
    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->length()J

    move-result-wide v2

    long-to-int v2, v2

    move-object/from16 v0, v18

    iput v2, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->size:I

    .line 2948
    const/4 v2, 0x0

    move-object/from16 v0, v18

    iput v2, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->dc_id:I

    .line 2949
    if-eqz v11, :cond_10

    .line 2950
    move-object/from16 v0, v18

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2952
    :cond_10
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1e

    .line 2953
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "webp"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 2954
    const-string/jumbo v2, "image/webp"

    move-object/from16 v0, v18

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->mime_type:Ljava/lang/String;

    .line 2966
    :goto_7
    move-object/from16 v0, v18

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->mime_type:Ljava/lang/String;

    const-string/jumbo v3, "image/gif"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 2968
    :try_start_0
    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/high16 v6, 0x42b40000    # 90.0f

    const/high16 v7, 0x42b40000    # 90.0f

    const/4 v8, 0x1

    invoke-static {v2, v3, v6, v7, v8}, Lorg/telegram/messenger/ImageLoader;->loadBitmap(Ljava/lang/String;Landroid/net/Uri;FFZ)Landroid/graphics/Bitmap;

    move-result-object v15

    .line 2969
    .local v15, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v15, :cond_11

    .line 2970
    const-string/jumbo v2, "animation.gif"

    move-object/from16 v0, v24

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeFilename;->file_name:Ljava/lang/String;

    .line 2971
    const/high16 v2, 0x42b40000    # 90.0f

    const/high16 v3, 0x42b40000    # 90.0f

    const/16 v6, 0x37

    move/from16 v0, v26

    invoke-static {v15, v2, v3, v6, v0}, Lorg/telegram/messenger/ImageLoader;->scaleAndSaveImage(Landroid/graphics/Bitmap;FFIZ)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v2

    move-object/from16 v0, v18

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 2972
    invoke-virtual {v15}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2978
    .end local v15    # "bitmap":Landroid/graphics/Bitmap;
    :cond_11
    :goto_8
    move-object/from16 v0, v18

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->mime_type:Ljava/lang/String;

    const-string/jumbo v3, "image/webp"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    if-eqz v10, :cond_12

    .line 2979
    new-instance v16, Landroid/graphics/BitmapFactory$Options;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 2981
    .local v16, "bmOptions":Landroid/graphics/BitmapFactory$Options;
    const/4 v2, 0x1

    :try_start_1
    move-object/from16 v0, v16

    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 2982
    new-instance v23, Ljava/io/RandomAccessFile;

    const-string/jumbo v2, "r"

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2983
    .local v23, "file":Ljava/io/RandomAccessFile;
    invoke-virtual/range {v23 .. v23}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    sget-object v3, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v4, 0x0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual/range {v2 .. v7}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v17

    .line 2984
    .local v17, "buffer":Ljava/nio/ByteBuffer;
    const/4 v2, 0x0

    invoke-virtual/range {v17 .. v17}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    const/4 v6, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-static {v2, v0, v3, v1, v6}, Lorg/telegram/messenger/Utilities;->loadWebpImage(Landroid/graphics/Bitmap;Ljava/nio/ByteBuffer;ILandroid/graphics/BitmapFactory$Options;Z)Z

    .line 2985
    invoke-virtual/range {v23 .. v23}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 2989
    .end local v17    # "buffer":Ljava/nio/ByteBuffer;
    .end local v23    # "file":Ljava/io/RandomAccessFile;
    :goto_9
    move-object/from16 v0, v16

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-eqz v2, :cond_12

    move-object/from16 v0, v16

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-eqz v2, :cond_12

    move-object/from16 v0, v16

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    const/16 v3, 0x320

    if-gt v2, v3, :cond_12

    move-object/from16 v0, v16

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    const/16 v3, 0x320

    if-gt v2, v3, :cond_12

    .line 2990
    new-instance v13, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeSticker;

    invoke-direct {v13}, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeSticker;-><init>()V

    .line 2991
    .local v13, "attributeSticker":Lorg/telegram/tgnet/TLRPC$TL_documentAttributeSticker;
    const-string/jumbo v2, ""

    iput-object v2, v13, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeSticker;->alt:Ljava/lang/String;

    .line 2992
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetEmpty;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetEmpty;-><init>()V

    iput-object v2, v13, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeSticker;->stickerset:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    .line 2993
    move-object/from16 v0, v18

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2994
    new-instance v12, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeImageSize;

    invoke-direct {v12}, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeImageSize;-><init>()V

    .line 2995
    .local v12, "attributeImageSize":Lorg/telegram/tgnet/TLRPC$TL_documentAttributeImageSize;
    move-object/from16 v0, v16

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput v2, v12, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeImageSize;->w:I

    .line 2996
    move-object/from16 v0, v16

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iput v2, v12, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeImageSize;->h:I

    .line 2997
    move-object/from16 v0, v18

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3000
    .end local v12    # "attributeImageSize":Lorg/telegram/tgnet/TLRPC$TL_documentAttributeImageSize;
    .end local v13    # "attributeSticker":Lorg/telegram/tgnet/TLRPC$TL_documentAttributeSticker;
    .end local v16    # "bmOptions":Landroid/graphics/BitmapFactory$Options;
    :cond_12
    move-object/from16 v0, v18

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    if-nez v2, :cond_13

    .line 3001
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_photoSizeEmpty;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_photoSizeEmpty;-><init>()V

    move-object/from16 v0, v18

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 3002
    move-object/from16 v0, v18

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    const-string/jumbo v3, "s"

    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$PhotoSize;->type:Ljava/lang/String;

    .line 3005
    .end local v24    # "fileName":Lorg/telegram/tgnet/TLRPC$TL_documentAttributeFilename;
    :cond_13
    if-eqz p7, :cond_1f

    .line 3006
    invoke-interface/range {p7 .. p7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v18

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->caption:Ljava/lang/String;

    .line 3011
    :goto_a
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 3012
    .local v9, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_14

    .line 3013
    const-string/jumbo v2, "originalPath"

    move-object/from16 v0, p1

    invoke-virtual {v9, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3015
    :cond_14
    move-object/from16 v4, v18

    .line 3016
    .local v4, "documentFinal":Lorg/telegram/tgnet/TLRPC$TL_document;
    move-object/from16 v5, p0

    .line 3017
    .local v5, "pathFinal":Ljava/lang/String;
    new-instance v3, Lorg/telegram/messenger/SendMessagesHelper$12;

    move-wide/from16 v6, p4

    move-object/from16 v8, p6

    invoke-direct/range {v3 .. v9}, Lorg/telegram/messenger/SendMessagesHelper$12;-><init>(Lorg/telegram/tgnet/TLRPC$TL_document;Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Ljava/util/HashMap;)V

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 3023
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 2892
    .end local v4    # "documentFinal":Lorg/telegram/tgnet/TLRPC$TL_document;
    .end local v5    # "pathFinal":Ljava/lang/String;
    .end local v9    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v10    # "allowSticker":Z
    .end local v18    # "document":Lorg/telegram/tgnet/TLRPC$TL_document;
    .end local v20    # "ext":Ljava/lang/String;
    .end local v26    # "isEncrypted":Z
    .end local v29    # "name":Ljava/lang/String;
    .end local v30    # "sendNew":Z
    :cond_15
    const/16 v26, 0x0

    goto/16 :goto_1

    .line 2893
    .restart local v26    # "isEncrypted":Z
    :cond_16
    const/4 v10, 0x0

    goto/16 :goto_2

    .line 2900
    .restart local v10    # "allowSticker":Z
    .restart local v20    # "ext":Ljava/lang/String;
    .restart local v29    # "name":Ljava/lang/String;
    :cond_17
    const/16 v2, 0x2e

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v25

    .line 2901
    .local v25, "idx":I
    const/4 v2, -0x1

    move/from16 v0, v25

    if-eq v0, v2, :cond_9

    .line 2902
    add-int/lit8 v2, v25, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v20

    goto/16 :goto_3

    .line 2926
    .end local v25    # "idx":I
    .restart local v30    # "sendNew":Z
    :cond_18
    if-eqz v11, :cond_19

    .line 2927
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "audio"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_4

    .line 2929
    :cond_19
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_4

    .line 2935
    .restart local v18    # "document":Lorg/telegram/tgnet/TLRPC$TL_document;
    :cond_1a
    const/4 v2, 0x4

    goto/16 :goto_5

    .line 2937
    :cond_1b
    const/4 v2, 0x4

    goto/16 :goto_6

    .line 2956
    .restart local v24    # "fileName":Lorg/telegram/tgnet/TLRPC$TL_documentAttributeFilename;
    :cond_1c
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 2957
    .local v27, "mimeType":Ljava/lang/String;
    if-eqz v27, :cond_1d

    .line 2958
    move-object/from16 v0, v27

    move-object/from16 v1, v18

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_document;->mime_type:Ljava/lang/String;

    goto/16 :goto_7

    .line 2960
    :cond_1d
    const-string/jumbo v2, "application/octet-stream"

    move-object/from16 v0, v18

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->mime_type:Ljava/lang/String;

    goto/16 :goto_7

    .line 2964
    .end local v27    # "mimeType":Ljava/lang/String;
    :cond_1e
    const-string/jumbo v2, "application/octet-stream"

    move-object/from16 v0, v18

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->mime_type:Ljava/lang/String;

    goto/16 :goto_7

    .line 2974
    :catch_0
    move-exception v19

    .line 2975
    .local v19, "e":Ljava/lang/Exception;
    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_8

    .line 2986
    .end local v19    # "e":Ljava/lang/Exception;
    .restart local v16    # "bmOptions":Landroid/graphics/BitmapFactory$Options;
    :catch_1
    move-exception v19

    .line 2987
    .restart local v19    # "e":Ljava/lang/Exception;
    invoke-static/range {v19 .. v19}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_9

    .line 3008
    .end local v16    # "bmOptions":Landroid/graphics/BitmapFactory$Options;
    .end local v19    # "e":Ljava/lang/Exception;
    .end local v24    # "fileName":Lorg/telegram/tgnet/TLRPC$TL_documentAttributeFilename;
    :cond_1f
    const-string/jumbo v2, ""

    move-object/from16 v0, v18

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->caption:Ljava/lang/String;

    goto/16 :goto_a
.end method

.method public static prepareSendingDocuments(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Landroid/support/v13/view/inputmethod/InputContentInfoCompat;)V
    .locals 10
    .param p3, "mime"    # Ljava/lang/String;
    .param p4, "dialog_id"    # J
    .param p6, "reply_to_msg"    # Lorg/telegram/messenger/MessageObject;
    .param p7, "inputContent"    # Landroid/support/v13/view/inputmethod/InputContentInfoCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/lang/String;",
            "J",
            "Lorg/telegram/messenger/MessageObject;",
            "Landroid/support/v13/view/inputmethod/InputContentInfoCompat;",
            ")V"
        }
    .end annotation

    .prologue
    .line 3094
    .local p0, "paths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p1, "originalPaths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p2, "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    if-nez p0, :cond_0

    if-nez p1, :cond_0

    if-eqz p2, :cond_1

    :cond_0
    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eq v0, v1, :cond_2

    .line 3133
    :cond_1
    :goto_0
    return-void

    .line 3097
    :cond_2
    new-instance v9, Ljava/lang/Thread;

    new-instance v0, Lorg/telegram/messenger/SendMessagesHelper$14;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move-wide v4, p4

    move-object/from16 v6, p6

    move-object v7, p2

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lorg/telegram/messenger/SendMessagesHelper$14;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Ljava/util/ArrayList;Landroid/support/v13/view/inputmethod/InputContentInfoCompat;)V

    invoke-direct {v9, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 3132
    invoke-virtual {v9}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public static prepareSendingPhoto(Ljava/lang/String;Landroid/net/Uri;JLorg/telegram/messenger/MessageObject;Ljava/lang/CharSequence;Ljava/util/ArrayList;Landroid/support/v13/view/inputmethod/InputContentInfoCompat;I)V
    .locals 12
    .param p0, "imageFilePath"    # Ljava/lang/String;
    .param p1, "imageUri"    # Landroid/net/Uri;
    .param p2, "dialog_id"    # J
    .param p4, "reply_to_msg"    # Lorg/telegram/messenger/MessageObject;
    .param p5, "caption"    # Ljava/lang/CharSequence;
    .param p7, "inputContent"    # Landroid/support/v13/view/inputmethod/InputContentInfoCompat;
    .param p8, "ttl"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            "J",
            "Lorg/telegram/messenger/MessageObject;",
            "Ljava/lang/CharSequence;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$InputDocument;",
            ">;",
            "Landroid/support/v13/view/inputmethod/InputContentInfoCompat;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 3136
    .local p6, "stickers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$InputDocument;>;"
    const/4 v2, 0x0

    .line 3137
    .local v2, "paths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 3138
    .local v3, "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    const/4 v7, 0x0

    .line 3139
    .local v7, "captions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v11, 0x0

    .line 3140
    .local v11, "ttls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v8, 0x0

    .line 3141
    .local v8, "masks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$InputDocument;>;>;"
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    .line 3142
    new-instance v2, Ljava/util/ArrayList;

    .end local v2    # "paths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3143
    .restart local v2    # "paths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3145
    :cond_0
    if-eqz p1, :cond_1

    .line 3146
    new-instance v3, Ljava/util/ArrayList;

    .end local v3    # "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 3147
    .restart local v3    # "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3149
    :cond_1
    if-eqz p8, :cond_2

    .line 3150
    new-instance v11, Ljava/util/ArrayList;

    .end local v11    # "ttls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 3151
    .restart local v11    # "ttls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static/range {p8 .. p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3153
    :cond_2
    if-eqz p5, :cond_3

    .line 3154
    new-instance v7, Ljava/util/ArrayList;

    .end local v7    # "captions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 3155
    .restart local v7    # "captions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface/range {p5 .. p5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3157
    :cond_3
    if-eqz p6, :cond_4

    invoke-virtual/range {p6 .. p6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    .line 3158
    new-instance v8, Ljava/util/ArrayList;

    .end local v8    # "masks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$InputDocument;>;>;"
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 3159
    .restart local v8    # "masks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$InputDocument;>;>;"
    new-instance v4, Ljava/util/ArrayList;

    move-object/from16 v0, p6

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3161
    :cond_4
    const/4 v10, 0x0

    move-wide v4, p2

    move-object/from16 v6, p4

    move-object/from16 v9, p7

    invoke-static/range {v2 .. v11}, Lorg/telegram/messenger/SendMessagesHelper;->prepareSendingPhotos(Ljava/util/ArrayList;Ljava/util/ArrayList;JLorg/telegram/messenger/MessageObject;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/support/v13/view/inputmethod/InputContentInfoCompat;ZLjava/util/ArrayList;)V

    .line 3162
    return-void
.end method

.method public static prepareSendingPhotos(Ljava/util/ArrayList;Ljava/util/ArrayList;JLorg/telegram/messenger/MessageObject;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/support/v13/view/inputmethod/InputContentInfoCompat;ZLjava/util/ArrayList;)V
    .locals 12
    .param p2, "dialog_id"    # J
    .param p4, "reply_to_msg"    # Lorg/telegram/messenger/MessageObject;
    .param p7, "inputContent"    # Landroid/support/v13/view/inputmethod/InputContentInfoCompat;
    .param p8, "forceDocument"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;J",
            "Lorg/telegram/messenger/MessageObject;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$InputDocument;",
            ">;>;",
            "Landroid/support/v13/view/inputmethod/InputContentInfoCompat;",
            "Z",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3619
    .local p0, "paths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p1, "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    .local p5, "captions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p6, "masks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$InputDocument;>;>;"
    .local p9, "ttls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-nez p0, :cond_0

    if-eqz p1, :cond_2

    :cond_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3757
    :cond_2
    :goto_0
    return-void

    .line 3622
    :cond_3
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 3623
    .local v4, "pathsCopy":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 3624
    .local v5, "urisCopy":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    if-eqz p0, :cond_4

    .line 3625
    invoke-virtual {v4, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 3627
    :cond_4
    if-eqz p1, :cond_5

    .line 3628
    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 3630
    :cond_5
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lorg/telegram/messenger/SendMessagesHelper$18;

    move-wide v2, p2

    move-object/from16 v6, p9

    move/from16 v7, p8

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p4

    move-object/from16 v11, p7

    invoke-direct/range {v1 .. v11}, Lorg/telegram/messenger/SendMessagesHelper$18;-><init>(JLjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;ZLjava/util/ArrayList;Ljava/util/ArrayList;Lorg/telegram/messenger/MessageObject;Landroid/support/v13/view/inputmethod/InputContentInfoCompat;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 3756
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public static prepareSendingPhotosSearch(Ljava/util/ArrayList;JLorg/telegram/messenger/MessageObject;)V
    .locals 3
    .param p1, "dialog_id"    # J
    .param p3, "reply_to_msg"    # Lorg/telegram/messenger/MessageObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/MediaController$SearchImage;",
            ">;J",
            "Lorg/telegram/messenger/MessageObject;",
            ")V"
        }
    .end annotation

    .prologue
    .line 3422
    .local p0, "photos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MediaController$SearchImage;>;"
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3576
    :cond_0
    :goto_0
    return-void

    .line 3425
    :cond_1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lorg/telegram/messenger/SendMessagesHelper$16;

    invoke-direct {v1, p1, p2, p0, p3}, Lorg/telegram/messenger/SendMessagesHelper$16;-><init>(JLjava/util/ArrayList;Lorg/telegram/messenger/MessageObject;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 3575
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public static prepareSendingText(Ljava/lang/String;J)V
    .locals 3
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "dialog_id"    # J

    .prologue
    .line 3593
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v0

    new-instance v1, Lorg/telegram/messenger/SendMessagesHelper$17;

    invoke-direct {v1, p0, p1, p2}, Lorg/telegram/messenger/SendMessagesHelper$17;-><init>(Ljava/lang/String;J)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 3616
    return-void
.end method

.method public static prepareSendingVideo(Ljava/lang/String;JJIILorg/telegram/messenger/VideoEditedInfo;JLorg/telegram/messenger/MessageObject;Ljava/lang/CharSequence;I)V
    .locals 15
    .param p0, "videoPath"    # Ljava/lang/String;
    .param p1, "estimatedSize"    # J
    .param p3, "duration"    # J
    .param p5, "width"    # I
    .param p6, "height"    # I
    .param p7, "videoEditedInfo"    # Lorg/telegram/messenger/VideoEditedInfo;
    .param p8, "dialog_id"    # J
    .param p10, "reply_to_msg"    # Lorg/telegram/messenger/MessageObject;
    .param p11, "caption"    # Ljava/lang/CharSequence;
    .param p12, "ttl"    # I

    .prologue
    .line 3850
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 3988
    :cond_0
    :goto_0
    return-void

    .line 3853
    :cond_1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lorg/telegram/messenger/SendMessagesHelper$19;

    move-wide/from16 v2, p8

    move-object/from16 v4, p7

    move-object v5, p0

    move-wide/from16 v6, p3

    move/from16 v8, p12

    move/from16 v9, p6

    move/from16 v10, p5

    move-wide/from16 v11, p1

    move-object/from16 v13, p11

    move-object/from16 v14, p10

    invoke-direct/range {v1 .. v14}, Lorg/telegram/messenger/SendMessagesHelper$19;-><init>(JLorg/telegram/messenger/VideoEditedInfo;Ljava/lang/String;JIIIJLjava/lang/CharSequence;Lorg/telegram/messenger/MessageObject;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 3987
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method private putToDelayedMessages(Ljava/lang/String;Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;)V
    .locals 2
    .param p1, "location"    # Ljava/lang/String;
    .param p2, "message"    # Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;

    .prologue
    .line 2794
    iget-object v1, p0, Lorg/telegram/messenger/SendMessagesHelper;->delayedMessages:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 2795
    .local v0, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;>;"
    if-nez v0, :cond_0

    .line 2796
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2797
    .restart local v0    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;>;"
    iget-object v1, p0, Lorg/telegram/messenger/SendMessagesHelper;->delayedMessages:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2799
    :cond_0
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2800
    return-void
.end method

.method private sendLocation(Landroid/location/Location;)V
    .locals 9
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    const/4 v5, 0x0

    .line 1137
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGeo;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGeo;-><init>()V

    .line 1138
    .local v1, "mediaGeo":Lorg/telegram/tgnet/TLRPC$TL_messageMediaGeo;
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_geoPoint;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_geoPoint;-><init>()V

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGeo;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    .line 1139
    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGeo;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    iput-wide v2, v0, Lorg/telegram/tgnet/TLRPC$GeoPoint;->lat:D

    .line 1140
    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGeo;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    iput-wide v2, v0, Lorg/telegram/tgnet/TLRPC$GeoPoint;->_long:D

    .line 1141
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper;->waitingForLocation:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 1142
    .local v7, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/telegram/messenger/MessageObject;>;"
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/MessageObject;

    .line 1143
    .local v4, "messageObject":Lorg/telegram/messenger/MessageObject;
    invoke-static {}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance()Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v0

    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v2

    move-object v6, v5

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Lorg/telegram/tgnet/TLRPC$MessageMedia;JLorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;)V

    goto :goto_0

    .line 1145
    .end local v4    # "messageObject":Lorg/telegram/messenger/MessageObject;
    .end local v7    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/telegram/messenger/MessageObject;>;"
    :cond_0
    return-void
.end method

.method private sendMessage(Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$MessageMedia;Lorg/telegram/tgnet/TLRPC$TL_photo;Lorg/telegram/messenger/VideoEditedInfo;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$TL_document;Lorg/telegram/tgnet/TLRPC$TL_game;JLjava/lang/String;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$WebPage;ZLorg/telegram/messenger/MessageObject;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;I)V
    .locals 56
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "location"    # Lorg/telegram/tgnet/TLRPC$MessageMedia;
    .param p3, "photo"    # Lorg/telegram/tgnet/TLRPC$TL_photo;
    .param p4, "videoEditedInfo"    # Lorg/telegram/messenger/VideoEditedInfo;
    .param p5, "user"    # Lorg/telegram/tgnet/TLRPC$User;
    .param p6, "document"    # Lorg/telegram/tgnet/TLRPC$TL_document;
    .param p7, "game"    # Lorg/telegram/tgnet/TLRPC$TL_game;
    .param p8, "peer"    # J
    .param p10, "path"    # Ljava/lang/String;
    .param p11, "reply_to_msg"    # Lorg/telegram/messenger/MessageObject;
    .param p12, "webPage"    # Lorg/telegram/tgnet/TLRPC$WebPage;
    .param p13, "searchLinks"    # Z
    .param p14, "retryMessageObject"    # Lorg/telegram/messenger/MessageObject;
    .param p16, "replyMarkup"    # Lorg/telegram/tgnet/TLRPC$ReplyMarkup;
    .param p18, "ttl"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/telegram/tgnet/TLRPC$MessageMedia;",
            "Lorg/telegram/tgnet/TLRPC$TL_photo;",
            "Lorg/telegram/messenger/VideoEditedInfo;",
            "Lorg/telegram/tgnet/TLRPC$User;",
            "Lorg/telegram/tgnet/TLRPC$TL_document;",
            "Lorg/telegram/tgnet/TLRPC$TL_game;",
            "J",
            "Ljava/lang/String;",
            "Lorg/telegram/messenger/MessageObject;",
            "Lorg/telegram/tgnet/TLRPC$WebPage;",
            "Z",
            "Lorg/telegram/messenger/MessageObject;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$MessageEntity;",
            ">;",
            "Lorg/telegram/tgnet/TLRPC$ReplyMarkup;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 1377
    .local p15, "entities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$MessageEntity;>;"
    .local p17, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-wide/16 v8, 0x0

    cmp-long v4, p8, v8

    if-nez v4, :cond_1

    .line 2312
    :cond_0
    :goto_0
    return-void

    .line 1381
    :cond_1
    const/16 v43, 0x0

    .line 1382
    .local v43, "originalPath":Ljava/lang/String;
    if-eqz p17, :cond_2

    const-string/jumbo v4, "originalPath"

    move-object/from16 v0, p17

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1383
    const-string/jumbo v4, "originalPath"

    move-object/from16 v0, p17

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v43

    .end local v43    # "originalPath":Ljava/lang/String;
    check-cast v43, Ljava/lang/String;

    .line 1386
    .restart local v43    # "originalPath":Ljava/lang/String;
    :cond_2
    const/16 v38, 0x0

    .line 1387
    .local v38, "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    const/16 v40, 0x0

    .line 1388
    .local v40, "newMsgObj":Lorg/telegram/messenger/MessageObject;
    const/16 v54, -0x1

    .line 1389
    .local v54, "type":I
    move-wide/from16 v0, p8

    long-to-int v0, v0

    move/from16 v34, v0

    .line 1390
    .local v34, "lower_id":I
    const/16 v4, 0x20

    shr-long v8, p8, v4

    long-to-int v0, v8

    move/from16 v30, v0

    .line 1391
    .local v30, "high_id":I
    const/16 v32, 0x0

    .line 1392
    .local v32, "isChannel":Z
    const/16 v16, 0x0

    .line 1393
    .local v16, "encryptedChat":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    if-eqz v34, :cond_3

    invoke-static/range {v34 .. v34}, Lorg/telegram/messenger/MessagesController;->getInputPeer(I)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v48

    .line 1394
    .local v48, "sendToPeer":Lorg/telegram/tgnet/TLRPC$InputPeer;
    :goto_1
    const/16 v49, 0x0

    .line 1395
    .local v49, "sendToPeers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$InputUser;>;"
    if-nez v34, :cond_4

    .line 1396
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/telegram/messenger/MessagesController;->getEncryptedChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    move-result-object v16

    .line 1397
    if-nez v16, :cond_5

    .line 1398
    if-eqz p14, :cond_0

    .line 1399
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    move-object/from16 v0, p14

    iget-object v6, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v4, v6}, Lorg/telegram/messenger/MessagesStorage;->markMessageAsSendError(Lorg/telegram/tgnet/TLRPC$Message;)V

    .line 1400
    move-object/from16 v0, p14

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    const/4 v6, 0x2

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$Message;->send_state:I

    .line 1401
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v4

    sget v6, Lorg/telegram/messenger/NotificationCenter;->messageSendError:I

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-virtual/range {p14 .. p14}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v8, v9

    invoke-virtual {v4, v6, v8}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 1402
    invoke-virtual/range {p14 .. p14}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/SendMessagesHelper;->processSentMessage(I)V

    goto :goto_0

    .line 1393
    .end local v48    # "sendToPeer":Lorg/telegram/tgnet/TLRPC$InputPeer;
    .end local v49    # "sendToPeers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$InputUser;>;"
    :cond_3
    const/16 v48, 0x0

    goto :goto_1

    .line 1406
    .restart local v48    # "sendToPeer":Lorg/telegram/tgnet/TLRPC$InputPeer;
    .restart local v49    # "sendToPeers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$InputUser;>;"
    :cond_4
    move-object/from16 v0, v48

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_inputPeerChannel;

    if-eqz v4, :cond_5

    .line 1407
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    move-object/from16 v0, v48

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$InputPeer;->channel_id:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v25

    .line 1408
    .local v25, "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    if-eqz v25, :cond_10

    move-object/from16 v0, v25

    iget-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez v4, :cond_10

    const/16 v32, 0x1

    .line 1412
    .end local v25    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_5
    :goto_2
    if-eqz p14, :cond_1c

    .line 1413
    :try_start_0
    move-object/from16 v0, p14

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v38, v0

    .line 1414
    invoke-virtual/range {p14 .. p14}, Lorg/telegram/messenger/MessageObject;->isForwarded()Z

    move-result v4

    if-eqz v4, :cond_11

    .line 1415
    const/16 v54, 0x4

    .line 1628
    :cond_6
    :goto_3
    move-object/from16 v0, v38

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    const-wide/16 v14, 0x0

    cmp-long v4, v8, v14

    if-nez v4, :cond_7

    .line 1629
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/SendMessagesHelper;->getNextRandomId()J

    move-result-wide v8

    move-object/from16 v0, v38

    iput-wide v8, v0, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    .line 1631
    :cond_7
    if-eqz p17, :cond_9

    const-string/jumbo v4, "bot"

    move-object/from16 v0, p17

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1632
    if-eqz v16, :cond_43

    .line 1633
    const-string/jumbo v4, "bot_name"

    move-object/from16 v0, p17

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, v38

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->via_bot_name:Ljava/lang/String;

    .line 1634
    move-object/from16 v0, v38

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->via_bot_name:Ljava/lang/String;

    if-nez v4, :cond_8

    .line 1635
    const-string/jumbo v4, ""

    move-object/from16 v0, v38

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->via_bot_name:Ljava/lang/String;

    .line 1640
    :cond_8
    :goto_4
    move-object/from16 v0, v38

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    or-int/lit16 v4, v4, 0x800

    move-object/from16 v0, v38

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    .line 1642
    :cond_9
    move-object/from16 v0, p17

    move-object/from16 v1, v38

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$Message;->params:Ljava/util/HashMap;

    .line 1643
    if-eqz p14, :cond_a

    move-object/from16 v0, p14

    iget-boolean v4, v0, Lorg/telegram/messenger/MessageObject;->resendAsIs:Z

    if-nez v4, :cond_c

    .line 1644
    :cond_a
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v4

    move-object/from16 v0, v38

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    .line 1645
    move-object/from16 v0, v48

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_inputPeerChannel;

    if-eqz v4, :cond_45

    .line 1646
    if-eqz v32, :cond_b

    .line 1647
    const/4 v4, 0x1

    move-object/from16 v0, v38

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->views:I

    .line 1648
    move-object/from16 v0, v38

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    or-int/lit16 v4, v4, 0x400

    move-object/from16 v0, v38

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    .line 1650
    :cond_b
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    move-object/from16 v0, v48

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$InputPeer;->channel_id:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v25

    .line 1651
    .restart local v25    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    if-eqz v25, :cond_c

    .line 1652
    move-object/from16 v0, v25

    iget-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v4, :cond_44

    .line 1653
    move-object/from16 v0, v38

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    const/high16 v6, -0x80000000

    or-int/2addr v4, v6

    move-object/from16 v0, v38

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    .line 1654
    const/4 v4, 0x1

    move-object/from16 v0, v38

    iput-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->unread:Z

    .line 1666
    .end local v25    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_c
    :goto_5
    move-object/from16 v0, v38

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    or-int/lit16 v4, v4, 0x200

    move-object/from16 v0, v38

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    .line 1667
    move-wide/from16 v0, p8

    move-object/from16 v2, v38

    iput-wide v0, v2, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    .line 1668
    if-eqz p11, :cond_d

    .line 1669
    if-eqz v16, :cond_46

    move-object/from16 v0, p11

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-wide v8, v4, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    const-wide/16 v14, 0x0

    cmp-long v4, v8, v14

    if-eqz v4, :cond_46

    .line 1670
    move-object/from16 v0, p11

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-wide v8, v4, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    move-object/from16 v0, v38

    iput-wide v8, v0, Lorg/telegram/tgnet/TLRPC$Message;->reply_to_random_id:J

    .line 1671
    move-object/from16 v0, v38

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    or-int/lit8 v4, v4, 0x8

    move-object/from16 v0, v38

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    .line 1675
    :goto_6
    invoke-virtual/range {p11 .. p11}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    move-object/from16 v0, v38

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->reply_to_msg_id:I

    .line 1677
    :cond_d
    if-eqz p16, :cond_e

    if-nez v16, :cond_e

    .line 1678
    move-object/from16 v0, v38

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    or-int/lit8 v4, v4, 0x40

    move-object/from16 v0, v38

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    .line 1679
    move-object/from16 v0, p16

    move-object/from16 v1, v38

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$Message;->reply_markup:Lorg/telegram/tgnet/TLRPC$ReplyMarkup;

    .line 1681
    :cond_e
    if-eqz v34, :cond_53

    .line 1682
    const/4 v4, 0x1

    move/from16 v0, v30

    if-ne v0, v4, :cond_51

    .line 1683
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper;->currentChatInfo:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-nez v4, :cond_47

    .line 1684
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    move-object/from16 v0, v38

    invoke-virtual {v4, v0}, Lorg/telegram/messenger/MessagesStorage;->markMessageAsSendError(Lorg/telegram/tgnet/TLRPC$Message;)V

    .line 1685
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v4

    sget v6, Lorg/telegram/messenger/NotificationCenter;->messageSendError:I

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    move-object/from16 v0, v38

    iget v11, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v8, v9

    invoke-virtual {v4, v6, v8}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 1686
    move-object/from16 v0, v38

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/SendMessagesHelper;->processSentMessage(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 2303
    :catch_0
    move-exception v29

    move-object/from16 v12, v40

    .line 2304
    .end local v40    # "newMsgObj":Lorg/telegram/messenger/MessageObject;
    .local v12, "newMsgObj":Lorg/telegram/messenger/MessageObject;
    .local v29, "e":Ljava/lang/Exception;
    :goto_7
    invoke-static/range {v29 .. v29}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 2305
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    move-object/from16 v0, v38

    invoke-virtual {v4, v0}, Lorg/telegram/messenger/MessagesStorage;->markMessageAsSendError(Lorg/telegram/tgnet/TLRPC$Message;)V

    .line 2306
    if-eqz v12, :cond_f

    .line 2307
    iget-object v4, v12, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    const/4 v6, 0x2

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$Message;->send_state:I

    .line 2309
    :cond_f
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v4

    sget v6, Lorg/telegram/messenger/NotificationCenter;->messageSendError:I

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    move-object/from16 v0, v38

    iget v11, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v8, v9

    invoke-virtual {v4, v6, v8}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 2310
    move-object/from16 v0, v38

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/SendMessagesHelper;->processSentMessage(I)V

    goto/16 :goto_0

    .line 1408
    .end local v12    # "newMsgObj":Lorg/telegram/messenger/MessageObject;
    .end local v29    # "e":Ljava/lang/Exception;
    .restart local v25    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    .restart local v40    # "newMsgObj":Lorg/telegram/messenger/MessageObject;
    :cond_10
    const/16 v32, 0x0

    goto/16 :goto_2

    .line 1417
    .end local v25    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_11
    :try_start_1
    move-object/from16 v0, p14

    iget v4, v0, Lorg/telegram/messenger/MessageObject;->type:I

    if-nez v4, :cond_14

    .line 1418
    move-object/from16 v0, p14

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGame;

    if-eqz v4, :cond_13

    .line 1423
    :goto_8
    const/16 v54, 0x0

    .line 1447
    :cond_12
    :goto_9
    if-eqz p17, :cond_6

    const-string/jumbo v4, "query_id"

    move-object/from16 v0, p17

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1448
    const/16 v54, 0x9

    goto/16 :goto_3

    .line 1421
    :cond_13
    move-object/from16 v0, v38

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    move-object/from16 p1, v0

    goto :goto_8

    .line 1424
    :cond_14
    move-object/from16 v0, p14

    iget v4, v0, Lorg/telegram/messenger/MessageObject;->type:I

    const/4 v6, 0x4

    if-ne v4, v6, :cond_15

    .line 1425
    move-object/from16 v0, v38

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 p2, v0

    .line 1426
    const/16 v54, 0x1

    goto :goto_9

    .line 1427
    :cond_15
    move-object/from16 v0, p14

    iget v4, v0, Lorg/telegram/messenger/MessageObject;->type:I

    const/4 v6, 0x1

    if-ne v4, v6, :cond_16

    .line 1428
    move-object/from16 v0, v38

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    move-object v0, v4

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_photo;

    move-object/from16 p3, v0

    .line 1429
    const/16 v54, 0x2

    goto :goto_9

    .line 1430
    :cond_16
    move-object/from16 v0, p14

    iget v4, v0, Lorg/telegram/messenger/MessageObject;->type:I

    const/4 v6, 0x3

    if-eq v4, v6, :cond_17

    move-object/from16 v0, p14

    iget v4, v0, Lorg/telegram/messenger/MessageObject;->type:I

    const/4 v6, 0x5

    if-eq v4, v6, :cond_17

    if-eqz p4, :cond_18

    .line 1431
    :cond_17
    const/16 v54, 0x3

    .line 1432
    move-object/from16 v0, v38

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    move-object v0, v4

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_document;

    move-object/from16 p6, v0

    goto :goto_9

    .line 1433
    :cond_18
    move-object/from16 v0, p14

    iget v4, v0, Lorg/telegram/messenger/MessageObject;->type:I

    const/16 v6, 0xc

    if-ne v4, v6, :cond_19

    .line 1434
    new-instance v55, Lorg/telegram/tgnet/TLRPC$TL_userRequest_old2;

    invoke-direct/range {v55 .. v55}, Lorg/telegram/tgnet/TLRPC$TL_userRequest_old2;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1435
    .end local p5    # "user":Lorg/telegram/tgnet/TLRPC$User;
    .local v55, "user":Lorg/telegram/tgnet/TLRPC$User;
    :try_start_2
    move-object/from16 v0, v38

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->phone_number:Ljava/lang/String;

    move-object/from16 v0, v55

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    .line 1436
    move-object/from16 v0, v38

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->first_name:Ljava/lang/String;

    move-object/from16 v0, v55

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    .line 1437
    move-object/from16 v0, v38

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->last_name:Ljava/lang/String;

    move-object/from16 v0, v55

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    .line 1438
    move-object/from16 v0, v38

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->user_id:I

    move-object/from16 v0, v55

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$User;->id:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 1439
    const/16 v54, 0x6

    move-object/from16 p5, v55

    .end local v55    # "user":Lorg/telegram/tgnet/TLRPC$User;
    .restart local p5    # "user":Lorg/telegram/tgnet/TLRPC$User;
    goto/16 :goto_9

    .line 1440
    :cond_19
    :try_start_3
    move-object/from16 v0, p14

    iget v4, v0, Lorg/telegram/messenger/MessageObject;->type:I

    const/16 v6, 0x8

    if-eq v4, v6, :cond_1a

    move-object/from16 v0, p14

    iget v4, v0, Lorg/telegram/messenger/MessageObject;->type:I

    const/16 v6, 0x9

    if-eq v4, v6, :cond_1a

    move-object/from16 v0, p14

    iget v4, v0, Lorg/telegram/messenger/MessageObject;->type:I

    const/16 v6, 0xd

    if-eq v4, v6, :cond_1a

    move-object/from16 v0, p14

    iget v4, v0, Lorg/telegram/messenger/MessageObject;->type:I

    const/16 v6, 0xe

    if-ne v4, v6, :cond_1b

    .line 1441
    :cond_1a
    move-object/from16 v0, v38

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    move-object v0, v4

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_document;

    move-object/from16 p6, v0

    .line 1442
    const/16 v54, 0x7

    goto/16 :goto_9

    .line 1443
    :cond_1b
    move-object/from16 v0, p14

    iget v4, v0, Lorg/telegram/messenger/MessageObject;->type:I

    const/4 v6, 0x2

    if-ne v4, v6, :cond_12

    .line 1444
    move-object/from16 v0, v38

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    move-object v0, v4

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_document;

    move-object/from16 p6, v0

    .line 1445
    const/16 v54, 0x8

    goto/16 :goto_9

    .line 1452
    :cond_1c
    if-eqz p1, :cond_25

    .line 1453
    if-eqz v16, :cond_21

    .line 1454
    new-instance v39, Lorg/telegram/tgnet/TLRPC$TL_message_secret;

    invoke-direct/range {v39 .. v39}, Lorg/telegram/tgnet/TLRPC$TL_message_secret;-><init>()V

    .end local v38    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    .local v39, "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    move-object/from16 v38, v39

    .line 1458
    .end local v39    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    .restart local v38    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    :goto_a
    if-eqz p15, :cond_1d

    invoke-virtual/range {p15 .. p15}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1d

    .line 1459
    move-object/from16 v0, p15

    move-object/from16 v1, v38

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$Message;->entities:Ljava/util/ArrayList;

    .line 1461
    :cond_1d
    if-eqz v16, :cond_1e

    move-object/from16 v0, p12

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_webPagePending;

    if-eqz v4, :cond_1e

    .line 1462
    move-object/from16 v0, p12

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$WebPage;->url:Ljava/lang/String;

    if-eqz v4, :cond_22

    .line 1463
    new-instance v41, Lorg/telegram/tgnet/TLRPC$TL_webPageUrlPending;

    invoke-direct/range {v41 .. v41}, Lorg/telegram/tgnet/TLRPC$TL_webPageUrlPending;-><init>()V

    .line 1464
    .local v41, "newWebPage":Lorg/telegram/tgnet/TLRPC$WebPage;
    move-object/from16 v0, p12

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$WebPage;->url:Ljava/lang/String;

    move-object/from16 v0, v41

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$WebPage;->url:Ljava/lang/String;

    .line 1465
    move-object/from16 p12, v41

    .line 1470
    .end local v41    # "newWebPage":Lorg/telegram/tgnet/TLRPC$WebPage;
    :cond_1e
    :goto_b
    if-nez p12, :cond_23

    .line 1471
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;-><init>()V

    move-object/from16 v0, v38

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    .line 1476
    :goto_c
    if-eqz p17, :cond_24

    const-string/jumbo v4, "query_id"

    move-object/from16 v0, p17

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_24

    .line 1477
    const/16 v54, 0x9

    .line 1481
    :goto_d
    move-object/from16 v0, p1

    move-object/from16 v1, v38

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    .line 1615
    :cond_1f
    :goto_e
    move-object/from16 v0, v38

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    if-nez v4, :cond_20

    .line 1616
    const-string/jumbo v4, ""

    move-object/from16 v0, v38

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    .line 1618
    :cond_20
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getNewMessageId()I

    move-result v4

    move-object/from16 v0, v38

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    move-object/from16 v0, v38

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->local_id:I

    .line 1619
    const/4 v4, 0x1

    move-object/from16 v0, v38

    iput-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    .line 1620
    if-eqz v32, :cond_42

    if-eqz v48, :cond_42

    .line 1621
    move-object/from16 v0, v48

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$InputPeer;->channel_id:I

    neg-int v4, v4

    move-object/from16 v0, v38

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    .line 1626
    :goto_f
    const/4 v4, 0x0

    invoke-static {v4}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    goto/16 :goto_3

    .line 1456
    :cond_21
    new-instance v39, Lorg/telegram/tgnet/TLRPC$TL_message;

    invoke-direct/range {v39 .. v39}, Lorg/telegram/tgnet/TLRPC$TL_message;-><init>()V

    .end local v38    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    .restart local v39    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    move-object/from16 v38, v39

    .end local v39    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    .restart local v38    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    goto/16 :goto_a

    .line 1467
    :cond_22
    const/16 p12, 0x0

    goto :goto_b

    .line 1473
    :cond_23
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;-><init>()V

    move-object/from16 v0, v38

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    .line 1474
    move-object/from16 v0, v38

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v0, p12

    iput-object v0, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    goto :goto_c

    .line 1479
    :cond_24
    const/16 v54, 0x0

    goto :goto_d

    .line 1482
    :cond_25
    if-eqz p2, :cond_28

    .line 1483
    if-eqz v16, :cond_26

    .line 1484
    new-instance v39, Lorg/telegram/tgnet/TLRPC$TL_message_secret;

    invoke-direct/range {v39 .. v39}, Lorg/telegram/tgnet/TLRPC$TL_message_secret;-><init>()V

    .end local v38    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    .restart local v39    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    move-object/from16 v38, v39

    .line 1488
    .end local v39    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    .restart local v38    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    :goto_10
    move-object/from16 v0, p2

    move-object/from16 v1, v38

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    .line 1489
    const-string/jumbo v4, ""

    move-object/from16 v0, v38

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    .line 1490
    if-eqz p17, :cond_27

    const-string/jumbo v4, "query_id"

    move-object/from16 v0, p17

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_27

    .line 1491
    const/16 v54, 0x9

    goto :goto_e

    .line 1486
    :cond_26
    new-instance v39, Lorg/telegram/tgnet/TLRPC$TL_message;

    invoke-direct/range {v39 .. v39}, Lorg/telegram/tgnet/TLRPC$TL_message;-><init>()V

    .end local v38    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    .restart local v39    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    move-object/from16 v38, v39

    .end local v39    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    .restart local v38    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    goto :goto_10

    .line 1493
    :cond_27
    const/16 v54, 0x1

    goto/16 :goto_e

    .line 1495
    :cond_28
    if-eqz p3, :cond_2e

    .line 1496
    if-eqz v16, :cond_2a

    .line 1497
    new-instance v39, Lorg/telegram/tgnet/TLRPC$TL_message_secret;

    invoke-direct/range {v39 .. v39}, Lorg/telegram/tgnet/TLRPC$TL_message_secret;-><init>()V

    .end local v38    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    .restart local v39    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    move-object/from16 v38, v39

    .line 1501
    .end local v39    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    .restart local v38    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    :goto_11
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;-><init>()V

    move-object/from16 v0, v38

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    .line 1502
    move-object/from16 v0, v38

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget v6, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->flags:I

    or-int/lit8 v6, v6, 0x3

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->flags:I

    .line 1503
    move-object/from16 v0, v38

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v0, p3

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_photo;->caption:Ljava/lang/String;

    if-eqz v4, :cond_2b

    move-object/from16 v0, p3

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_photo;->caption:Ljava/lang/String;

    :goto_12
    iput-object v4, v6, Lorg/telegram/tgnet/TLRPC$MessageMedia;->caption:Ljava/lang/String;

    .line 1504
    if-eqz p18, :cond_29

    .line 1505
    move-object/from16 v0, v38

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move/from16 v0, p18

    iput v0, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->ttl_seconds:I

    move/from16 v0, p18

    move-object/from16 v1, v38

    iput v0, v1, Lorg/telegram/tgnet/TLRPC$Message;->ttl:I

    .line 1506
    move-object/from16 v0, v38

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget v6, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->flags:I

    or-int/lit8 v6, v6, 0x4

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->flags:I

    .line 1508
    :cond_29
    move-object/from16 v0, v38

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v0, p3

    iput-object v0, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    .line 1509
    if-eqz p17, :cond_2c

    const-string/jumbo v4, "query_id"

    move-object/from16 v0, p17

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2c

    .line 1510
    const/16 v54, 0x9

    .line 1514
    :goto_13
    const-string/jumbo v4, "-1"

    move-object/from16 v0, v38

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    .line 1515
    if-eqz p10, :cond_2d

    invoke-virtual/range {p10 .. p10}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2d

    const-string/jumbo v4, "http"

    move-object/from16 v0, p10

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2d

    .line 1516
    move-object/from16 v0, p10

    move-object/from16 v1, v38

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    goto/16 :goto_e

    .line 1499
    :cond_2a
    new-instance v39, Lorg/telegram/tgnet/TLRPC$TL_message;

    invoke-direct/range {v39 .. v39}, Lorg/telegram/tgnet/TLRPC$TL_message;-><init>()V

    .end local v38    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    .restart local v39    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    move-object/from16 v38, v39

    .end local v39    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    .restart local v38    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    goto :goto_11

    .line 1503
    :cond_2b
    const-string/jumbo v4, ""

    goto :goto_12

    .line 1512
    :cond_2c
    const/16 v54, 0x2

    goto :goto_13

    .line 1518
    :cond_2d
    move-object/from16 v0, p3

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_photo;->sizes:Ljava/util/ArrayList;

    move-object/from16 v0, p3

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_photo;->sizes:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v0, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    move-object/from16 v33, v0

    .line 1519
    .local v33, "location1":Lorg/telegram/tgnet/TLRPC$FileLocation;
    const/4 v4, 0x1

    move-object/from16 v0, v33

    invoke-static {v0, v4}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v38

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    goto/16 :goto_e

    .line 1521
    .end local v33    # "location1":Lorg/telegram/tgnet/TLRPC$FileLocation;
    :cond_2e
    if-eqz p7, :cond_2f

    .line 1522
    new-instance v39, Lorg/telegram/tgnet/TLRPC$TL_message;

    invoke-direct/range {v39 .. v39}, Lorg/telegram/tgnet/TLRPC$TL_message;-><init>()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 1523
    .end local v38    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    .restart local v39    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    :try_start_4
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGame;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGame;-><init>()V

    move-object/from16 v0, v39

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    .line 1524
    move-object/from16 v0, v39

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    const-string/jumbo v6, ""

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->caption:Ljava/lang/String;

    .line 1525
    move-object/from16 v0, v39

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v0, p7

    iput-object v0, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->game:Lorg/telegram/tgnet/TLRPC$TL_game;

    .line 1526
    const-string/jumbo v4, ""

    move-object/from16 v0, v39

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    .line 1527
    if-eqz p17, :cond_c5

    const-string/jumbo v4, "query_id"

    move-object/from16 v0, p17

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    move-result v4

    if-eqz v4, :cond_c5

    .line 1528
    const/16 v54, 0x9

    move-object/from16 v38, v39

    .end local v39    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    .restart local v38    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    goto/16 :goto_e

    .line 1530
    :cond_2f
    if-eqz p5, :cond_34

    .line 1531
    if-eqz v16, :cond_32

    .line 1532
    :try_start_5
    new-instance v39, Lorg/telegram/tgnet/TLRPC$TL_message_secret;

    invoke-direct/range {v39 .. v39}, Lorg/telegram/tgnet/TLRPC$TL_message_secret;-><init>()V

    .end local v38    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    .restart local v39    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    move-object/from16 v38, v39

    .line 1536
    .end local v39    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    .restart local v38    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    :goto_14
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_messageMediaContact;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaContact;-><init>()V

    move-object/from16 v0, v38

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    .line 1537
    move-object/from16 v0, v38

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v0, p5

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->phone_number:Ljava/lang/String;

    .line 1538
    move-object/from16 v0, v38

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v0, p5

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->first_name:Ljava/lang/String;

    .line 1539
    move-object/from16 v0, v38

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v0, p5

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->last_name:Ljava/lang/String;

    .line 1540
    move-object/from16 v0, v38

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v0, p5

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$User;->id:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->user_id:I

    .line 1541
    move-object/from16 v0, v38

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->first_name:Ljava/lang/String;

    if-nez v4, :cond_30

    .line 1542
    move-object/from16 v0, v38

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    const-string/jumbo v6, ""

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->first_name:Ljava/lang/String;

    move-object/from16 v0, p5

    iput-object v6, v0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    .line 1544
    :cond_30
    move-object/from16 v0, v38

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->last_name:Ljava/lang/String;

    if-nez v4, :cond_31

    .line 1545
    move-object/from16 v0, v38

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    const-string/jumbo v6, ""

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->last_name:Ljava/lang/String;

    move-object/from16 v0, p5

    iput-object v6, v0, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    .line 1547
    :cond_31
    const-string/jumbo v4, ""

    move-object/from16 v0, v38

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    .line 1548
    if-eqz p17, :cond_33

    const-string/jumbo v4, "query_id"

    move-object/from16 v0, p17

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_33

    .line 1549
    const/16 v54, 0x9

    goto/16 :goto_e

    .line 1534
    :cond_32
    new-instance v39, Lorg/telegram/tgnet/TLRPC$TL_message;

    invoke-direct/range {v39 .. v39}, Lorg/telegram/tgnet/TLRPC$TL_message;-><init>()V

    .end local v38    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    .restart local v39    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    move-object/from16 v38, v39

    .end local v39    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    .restart local v38    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    goto :goto_14

    .line 1551
    :cond_33
    const/16 v54, 0x6

    goto/16 :goto_e

    .line 1553
    :cond_34
    if-eqz p6, :cond_1f

    .line 1554
    if-eqz v16, :cond_36

    .line 1555
    new-instance v39, Lorg/telegram/tgnet/TLRPC$TL_message_secret;

    invoke-direct/range {v39 .. v39}, Lorg/telegram/tgnet/TLRPC$TL_message_secret;-><init>()V

    .end local v38    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    .restart local v39    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    move-object/from16 v38, v39

    .line 1559
    .end local v39    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    .restart local v38    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    :goto_15
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;-><init>()V

    move-object/from16 v0, v38

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    .line 1560
    move-object/from16 v0, v38

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget v6, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->flags:I

    or-int/lit8 v6, v6, 0x3

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->flags:I

    .line 1561
    if-eqz p18, :cond_35

    .line 1562
    move-object/from16 v0, v38

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move/from16 v0, p18

    iput v0, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->ttl_seconds:I

    move/from16 v0, p18

    move-object/from16 v1, v38

    iput v0, v1, Lorg/telegram/tgnet/TLRPC$Message;->ttl:I

    .line 1563
    move-object/from16 v0, v38

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget v6, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->flags:I

    or-int/lit8 v6, v6, 0x4

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->flags:I

    .line 1565
    :cond_35
    move-object/from16 v0, v38

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->caption:Ljava/lang/String;

    if-eqz v4, :cond_37

    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->caption:Ljava/lang/String;

    :goto_16
    iput-object v4, v6, Lorg/telegram/tgnet/TLRPC$MessageMedia;->caption:Ljava/lang/String;

    .line 1566
    move-object/from16 v0, v38

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v0, p6

    iput-object v0, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    .line 1567
    if-eqz p17, :cond_38

    const-string/jumbo v4, "query_id"

    move-object/from16 v0, p17

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_38

    .line 1568
    const/16 v54, 0x9

    .line 1576
    :goto_17
    if-nez p4, :cond_3c

    .line 1577
    const-string/jumbo v4, "-1"

    move-object/from16 v0, v38

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    .line 1581
    :goto_18
    if-eqz v16, :cond_3d

    move-object/from16 v0, p6

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->dc_id:I

    if-lez v4, :cond_3d

    invoke-static/range {p6 .. p6}, Lorg/telegram/messenger/MessageObject;->isStickerDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v4

    if-nez v4, :cond_3d

    .line 1582
    invoke-static/range {p6 .. p6}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v38

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    .line 1586
    :goto_19
    if-eqz v16, :cond_1f

    invoke-static/range {p6 .. p6}, Lorg/telegram/messenger/MessageObject;->isStickerDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 1587
    const/16 v20, 0x0

    .local v20, "a":I
    :goto_1a
    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v20

    if-ge v0, v4, :cond_1f

    .line 1588
    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->attributes:Ljava/util/ArrayList;

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    .line 1589
    .local v22, "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    move-object/from16 v0, v22

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeSticker;

    if-eqz v4, :cond_41

    .line 1590
    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->attributes:Ljava/util/ArrayList;

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1591
    new-instance v23, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeSticker_layer55;

    invoke-direct/range {v23 .. v23}, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeSticker_layer55;-><init>()V

    .line 1592
    .local v23, "attributeSticker":Lorg/telegram/tgnet/TLRPC$TL_documentAttributeSticker_layer55;
    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->attributes:Ljava/util/ArrayList;

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1593
    move-object/from16 v0, v22

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->alt:Ljava/lang/String;

    move-object/from16 v0, v23

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeSticker_layer55;->alt:Ljava/lang/String;

    .line 1594
    move-object/from16 v0, v22

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->stickerset:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    if-eqz v4, :cond_40

    .line 1596
    move-object/from16 v0, v22

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->stickerset:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetShortName;

    if-eqz v4, :cond_3e

    .line 1597
    move-object/from16 v0, v22

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->stickerset:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    iget-object v0, v4, Lorg/telegram/tgnet/TLRPC$InputStickerSet;->short_name:Ljava/lang/String;

    move-object/from16 v37, v0

    .line 1601
    .local v37, "name":Ljava/lang/String;
    :goto_1b
    invoke-static/range {v37 .. v37}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3f

    .line 1602
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetShortName;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetShortName;-><init>()V

    move-object/from16 v0, v23

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeSticker_layer55;->stickerset:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    .line 1603
    move-object/from16 v0, v23

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeSticker_layer55;->stickerset:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    move-object/from16 v0, v37

    iput-object v0, v4, Lorg/telegram/tgnet/TLRPC$InputStickerSet;->short_name:Ljava/lang/String;

    goto/16 :goto_e

    .line 1557
    .end local v20    # "a":I
    .end local v22    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    .end local v23    # "attributeSticker":Lorg/telegram/tgnet/TLRPC$TL_documentAttributeSticker_layer55;
    .end local v37    # "name":Ljava/lang/String;
    :cond_36
    new-instance v39, Lorg/telegram/tgnet/TLRPC$TL_message;

    invoke-direct/range {v39 .. v39}, Lorg/telegram/tgnet/TLRPC$TL_message;-><init>()V

    .end local v38    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    .restart local v39    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    move-object/from16 v38, v39

    .end local v39    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    .restart local v38    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    goto/16 :goto_15

    .line 1565
    :cond_37
    const-string/jumbo v4, ""

    goto/16 :goto_16

    .line 1569
    :cond_38
    invoke-static/range {p6 .. p6}, Lorg/telegram/messenger/MessageObject;->isVideoDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v4

    if-nez v4, :cond_39

    invoke-static/range {p6 .. p6}, Lorg/telegram/messenger/MessageObject;->isRoundVideoDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v4

    if-nez v4, :cond_39

    if-eqz p4, :cond_3a

    .line 1570
    :cond_39
    const/16 v54, 0x3

    goto/16 :goto_17

    .line 1571
    :cond_3a
    invoke-static/range {p6 .. p6}, Lorg/telegram/messenger/MessageObject;->isVoiceDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v4

    if-eqz v4, :cond_3b

    .line 1572
    const/16 v54, 0x8

    goto/16 :goto_17

    .line 1574
    :cond_3b
    const/16 v54, 0x7

    goto/16 :goto_17

    .line 1579
    :cond_3c
    invoke-virtual/range {p4 .. p4}, Lorg/telegram/messenger/VideoEditedInfo;->getString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v38

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    goto/16 :goto_18

    .line 1584
    :cond_3d
    move-object/from16 v0, p10

    move-object/from16 v1, v38

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    goto/16 :goto_19

    .line 1599
    .restart local v20    # "a":I
    .restart local v22    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    .restart local v23    # "attributeSticker":Lorg/telegram/tgnet/TLRPC$TL_documentAttributeSticker_layer55;
    :cond_3e
    move-object/from16 v0, v22

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->stickerset:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    iget-wide v8, v4, Lorg/telegram/tgnet/TLRPC$InputStickerSet;->id:J

    invoke-static {v8, v9}, Lorg/telegram/messenger/query/StickersQuery;->getStickerSetName(J)Ljava/lang/String;

    move-result-object v37

    .restart local v37    # "name":Ljava/lang/String;
    goto :goto_1b

    .line 1605
    :cond_3f
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetEmpty;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetEmpty;-><init>()V

    move-object/from16 v0, v23

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeSticker_layer55;->stickerset:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    goto/16 :goto_e

    .line 1608
    .end local v37    # "name":Ljava/lang/String;
    :cond_40
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetEmpty;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetEmpty;-><init>()V

    move-object/from16 v0, v23

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeSticker_layer55;->stickerset:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    goto/16 :goto_e

    .line 1587
    .end local v23    # "attributeSticker":Lorg/telegram/tgnet/TLRPC$TL_documentAttributeSticker_layer55;
    :cond_41
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_1a

    .line 1623
    .end local v20    # "a":I
    .end local v22    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    :cond_42
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v4

    move-object/from16 v0, v38

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    .line 1624
    move-object/from16 v0, v38

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    or-int/lit16 v4, v4, 0x100

    move-object/from16 v0, v38

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    goto/16 :goto_f

    .line 1638
    :cond_43
    const-string/jumbo v4, "bot"

    move-object/from16 v0, p17

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object/from16 v0, v38

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->via_bot_id:I

    goto/16 :goto_4

    .line 1656
    .restart local v25    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_44
    const/4 v4, 0x1

    move-object/from16 v0, v38

    iput-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->post:Z

    .line 1657
    move-object/from16 v0, v25

    iget-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$Chat;->signatures:Z

    if-eqz v4, :cond_c

    .line 1658
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v4

    move-object/from16 v0, v38

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    goto/16 :goto_5

    .line 1663
    .end local v25    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_45
    const/4 v4, 0x1

    move-object/from16 v0, v38

    iput-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->unread:Z

    goto/16 :goto_5

    .line 1673
    :cond_46
    move-object/from16 v0, v38

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    or-int/lit8 v4, v4, 0x8

    move-object/from16 v0, v38

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    goto/16 :goto_6

    .line 1689
    :cond_47
    new-instance v50, Ljava/util/ArrayList;

    invoke-direct/range {v50 .. v50}, Ljava/util/ArrayList;-><init>()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 1690
    .end local v49    # "sendToPeers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$InputUser;>;"
    .local v50, "sendToPeers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$InputUser;>;"
    :try_start_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper;->currentChatInfo:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_48
    :goto_1c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_49

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v44

    check-cast v44, Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    .line 1691
    .local v44, "participant":Lorg/telegram/tgnet/TLRPC$ChatParticipant;
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    move-object/from16 v0, v44

    iget v8, v0, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v51

    .line 1692
    .local v51, "sendToUser":Lorg/telegram/tgnet/TLRPC$User;
    invoke-static/range {v51 .. v51}, Lorg/telegram/messenger/MessagesController;->getInputUser(Lorg/telegram/tgnet/TLRPC$User;)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object v45

    .line 1693
    .local v45, "peerUser":Lorg/telegram/tgnet/TLRPC$InputUser;
    if-eqz v45, :cond_48

    .line 1694
    move-object/from16 v0, v50

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1c

    .line 2303
    .end local v44    # "participant":Lorg/telegram/tgnet/TLRPC$ChatParticipant;
    .end local v45    # "peerUser":Lorg/telegram/tgnet/TLRPC$InputUser;
    .end local v51    # "sendToUser":Lorg/telegram/tgnet/TLRPC$User;
    :catch_1
    move-exception v29

    move-object/from16 v49, v50

    .end local v50    # "sendToPeers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$InputUser;>;"
    .restart local v49    # "sendToPeers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$InputUser;>;"
    move-object/from16 v12, v40

    .end local v40    # "newMsgObj":Lorg/telegram/messenger/MessageObject;
    .restart local v12    # "newMsgObj":Lorg/telegram/messenger/MessageObject;
    goto/16 :goto_7

    .line 1697
    .end local v12    # "newMsgObj":Lorg/telegram/messenger/MessageObject;
    .end local v49    # "sendToPeers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$InputUser;>;"
    .restart local v40    # "newMsgObj":Lorg/telegram/messenger/MessageObject;
    .restart local v50    # "sendToPeers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$InputUser;>;"
    :cond_49
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_peerChat;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_peerChat;-><init>()V

    move-object/from16 v0, v38

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 1698
    move-object/from16 v0, v38

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    move/from16 v0, v34

    iput v0, v4, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    move-object/from16 v49, v50

    .line 1748
    .end local v50    # "sendToPeers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$InputUser;>;"
    .restart local v49    # "sendToPeers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$InputUser;>;"
    :cond_4a
    :goto_1d
    const/4 v4, 0x1

    move/from16 v0, v30

    if-eq v0, v4, :cond_4c

    :try_start_7
    invoke-static/range {v38 .. v38}, Lorg/telegram/messenger/MessageObject;->isVoiceMessage(Lorg/telegram/tgnet/TLRPC$Message;)Z

    move-result v4

    if-nez v4, :cond_4b

    invoke-static/range {v38 .. v38}, Lorg/telegram/messenger/MessageObject;->isRoundVideoMessage(Lorg/telegram/tgnet/TLRPC$Message;)Z

    move-result v4

    if-eqz v4, :cond_4c

    :cond_4b
    move-object/from16 v0, v38

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    if-nez v4, :cond_4c

    .line 1749
    const/4 v4, 0x1

    move-object/from16 v0, v38

    iput-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media_unread:Z

    .line 1752
    :cond_4c
    const/4 v4, 0x1

    move-object/from16 v0, v38

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->send_state:I

    .line 1753
    new-instance v12, Lorg/telegram/messenger/MessageObject;

    const/4 v4, 0x0

    const/4 v6, 0x1

    move-object/from16 v0, v38

    invoke-direct {v12, v0, v4, v6}, Lorg/telegram/messenger/MessageObject;-><init>(Lorg/telegram/tgnet/TLRPC$Message;Ljava/util/AbstractMap;Z)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    .line 1754
    .end local v40    # "newMsgObj":Lorg/telegram/messenger/MessageObject;
    .restart local v12    # "newMsgObj":Lorg/telegram/messenger/MessageObject;
    :try_start_8
    move-object/from16 v0, p11

    iput-object v0, v12, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;

    .line 1755
    invoke-virtual {v12}, Lorg/telegram/messenger/MessageObject;->isForwarded()Z

    move-result v4

    if-nez v4, :cond_4e

    iget v4, v12, Lorg/telegram/messenger/MessageObject;->type:I

    const/4 v6, 0x3

    if-eq v4, v6, :cond_4d

    if-nez p4, :cond_4d

    iget v4, v12, Lorg/telegram/messenger/MessageObject;->type:I

    const/4 v6, 0x2

    if-ne v4, v6, :cond_4e

    :cond_4d
    move-object/from16 v0, v38

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4e

    .line 1756
    const/4 v4, 0x1

    iput-boolean v4, v12, Lorg/telegram/messenger/MessageObject;->attachPathExists:Z

    .line 1759
    :cond_4e
    new-instance v42, Ljava/util/ArrayList;

    invoke-direct/range {v42 .. v42}, Ljava/util/ArrayList;-><init>()V

    .line 1760
    .local v42, "objArr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    move-object/from16 v0, v42

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1761
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1762
    .local v5, "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    move-object/from16 v0, v38

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1763
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Lorg/telegram/messenger/MessagesStorage;->putMessages(Ljava/util/ArrayList;ZZZI)V

    .line 1764
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    move-wide/from16 v0, p8

    move-object/from16 v2, v42

    invoke-virtual {v4, v0, v1, v2}, Lorg/telegram/messenger/MessagesController;->updateInterfaceWithMessages(JLjava/util/ArrayList;)V

    .line 1765
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v4

    sget v6, Lorg/telegram/messenger/NotificationCenter;->dialogsNeedReload:I

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v4, v6, v8}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 1767
    sget-boolean v4, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-eqz v4, :cond_4f

    .line 1768
    if-eqz v48, :cond_4f

    .line 1769
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "send message user_id = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v48

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$InputPeer;->user_id:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, " chat_id = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v48

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$InputPeer;->chat_id:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, " channel_id = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v48

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$InputPeer;->channel_id:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, " access_hash = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v48

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$InputPeer;->access_hash:J

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 1773
    :cond_4f
    if-eqz v54, :cond_50

    const/16 v4, 0x9

    move/from16 v0, v54

    if-ne v0, v4, :cond_68

    if-eqz p1, :cond_68

    if-eqz v16, :cond_68

    .line 1774
    :cond_50
    if-nez v16, :cond_63

    .line 1775
    if-eqz v49, :cond_5d

    .line 1776
    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_messages_sendBroadcast;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_messages_sendBroadcast;-><init>()V

    .line 1777
    .local v7, "reqSend":Lorg/telegram/tgnet/TLRPC$TL_messages_sendBroadcast;
    new-instance v46, Ljava/util/ArrayList;

    invoke-direct/range {v46 .. v46}, Ljava/util/ArrayList;-><init>()V

    .line 1778
    .local v46, "random_ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/16 v20, 0x0

    .restart local v20    # "a":I
    :goto_1e
    invoke-virtual/range {v49 .. v49}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v20

    if-ge v0, v4, :cond_5c

    .line 1779
    sget-object v4, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    invoke-virtual {v4}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v46

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    .line 1778
    add-int/lit8 v20, v20, 0x1

    goto :goto_1e

    .line 1700
    .end local v5    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    .end local v7    # "reqSend":Lorg/telegram/tgnet/TLRPC$TL_messages_sendBroadcast;
    .end local v12    # "newMsgObj":Lorg/telegram/messenger/MessageObject;
    .end local v20    # "a":I
    .end local v42    # "objArr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    .end local v46    # "random_ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .restart local v40    # "newMsgObj":Lorg/telegram/messenger/MessageObject;
    :cond_51
    :try_start_9
    invoke-static/range {v34 .. v34}, Lorg/telegram/messenger/MessagesController;->getPeer(I)Lorg/telegram/tgnet/TLRPC$Peer;

    move-result-object v4

    move-object/from16 v0, v38

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 1701
    if-lez v34, :cond_4a

    .line 1702
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v51

    .line 1703
    .restart local v51    # "sendToUser":Lorg/telegram/tgnet/TLRPC$User;
    if-nez v51, :cond_52

    .line 1704
    move-object/from16 v0, v38

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/SendMessagesHelper;->processSentMessage(I)V

    goto/16 :goto_0

    .line 1707
    :cond_52
    move-object/from16 v0, v51

    iget-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-eqz v4, :cond_4a

    .line 1708
    const/4 v4, 0x0

    move-object/from16 v0, v38

    iput-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->unread:Z

    goto/16 :goto_1d

    .line 1713
    .end local v51    # "sendToUser":Lorg/telegram/tgnet/TLRPC$User;
    :cond_53
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    move-object/from16 v0, v38

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 1714
    move-object/from16 v0, v16

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->participant_id:I

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v6

    if-ne v4, v6, :cond_55

    .line 1715
    move-object/from16 v0, v38

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    move-object/from16 v0, v16

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->admin_id:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    .line 1719
    :goto_1f
    if-eqz p18, :cond_56

    .line 1720
    move/from16 v0, p18

    move-object/from16 v1, v38

    iput v0, v1, Lorg/telegram/tgnet/TLRPC$Message;->ttl:I

    .line 1724
    :goto_20
    move-object/from16 v0, v38

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->ttl:I

    if-eqz v4, :cond_4a

    move-object/from16 v0, v38

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v4, :cond_4a

    .line 1725
    invoke-static/range {v38 .. v38}, Lorg/telegram/messenger/MessageObject;->isVoiceMessage(Lorg/telegram/tgnet/TLRPC$Message;)Z

    move-result v4

    if-eqz v4, :cond_58

    .line 1726
    const/16 v28, 0x0

    .line 1727
    .local v28, "duration":I
    const/16 v20, 0x0

    .restart local v20    # "a":I
    :goto_21
    move-object/from16 v0, v38

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v20

    if-ge v0, v4, :cond_54

    .line 1728
    move-object/from16 v0, v38

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    .line 1729
    .restart local v22    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    move-object/from16 v0, v22

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;

    if-eqz v4, :cond_57

    .line 1730
    move-object/from16 v0, v22

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->duration:I

    move/from16 v28, v0

    .line 1734
    .end local v22    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    :cond_54
    move-object/from16 v0, v38

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->ttl:I

    add-int/lit8 v6, v28, 0x1

    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    move-object/from16 v0, v38

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->ttl:I

    goto/16 :goto_1d

    .line 1717
    .end local v20    # "a":I
    .end local v28    # "duration":I
    :cond_55
    move-object/from16 v0, v38

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    move-object/from16 v0, v16

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->participant_id:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    goto :goto_1f

    .line 1722
    :cond_56
    move-object/from16 v0, v16

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->ttl:I

    move-object/from16 v0, v38

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->ttl:I

    goto :goto_20

    .line 1727
    .restart local v20    # "a":I
    .restart local v22    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    .restart local v28    # "duration":I
    :cond_57
    add-int/lit8 v20, v20, 0x1

    goto :goto_21

    .line 1735
    .end local v20    # "a":I
    .end local v22    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    .end local v28    # "duration":I
    :cond_58
    invoke-static/range {v38 .. v38}, Lorg/telegram/messenger/MessageObject;->isVideoMessage(Lorg/telegram/tgnet/TLRPC$Message;)Z

    move-result v4

    if-nez v4, :cond_59

    invoke-static/range {v38 .. v38}, Lorg/telegram/messenger/MessageObject;->isRoundVideoMessage(Lorg/telegram/tgnet/TLRPC$Message;)Z

    move-result v4

    if-eqz v4, :cond_4a

    .line 1736
    :cond_59
    const/16 v28, 0x0

    .line 1737
    .restart local v28    # "duration":I
    const/16 v20, 0x0

    .restart local v20    # "a":I
    :goto_22
    move-object/from16 v0, v38

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v20

    if-ge v0, v4, :cond_5a

    .line 1738
    move-object/from16 v0, v38

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    .line 1739
    .restart local v22    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    move-object/from16 v0, v22

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;

    if-eqz v4, :cond_5b

    .line 1740
    move-object/from16 v0, v22

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->duration:I

    move/from16 v28, v0

    .line 1744
    .end local v22    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    :cond_5a
    move-object/from16 v0, v38

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->ttl:I

    add-int/lit8 v6, v28, 0x1

    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    move-object/from16 v0, v38

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->ttl:I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    goto/16 :goto_1d

    .line 1737
    .restart local v22    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    :cond_5b
    add-int/lit8 v20, v20, 0x1

    goto :goto_22

    .line 1781
    .end local v22    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    .end local v28    # "duration":I
    .end local v40    # "newMsgObj":Lorg/telegram/messenger/MessageObject;
    .restart local v5    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    .restart local v7    # "reqSend":Lorg/telegram/tgnet/TLRPC$TL_messages_sendBroadcast;
    .restart local v12    # "newMsgObj":Lorg/telegram/messenger/MessageObject;
    .restart local v42    # "objArr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    .restart local v46    # "random_ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :cond_5c
    :try_start_a
    move-object/from16 v0, p1

    iput-object v0, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_sendBroadcast;->message:Ljava/lang/String;

    .line 1782
    move-object/from16 v0, v49

    iput-object v0, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_sendBroadcast;->contacts:Ljava/util/ArrayList;

    .line 1783
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_inputMediaEmpty;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_inputMediaEmpty;-><init>()V

    iput-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_sendBroadcast;->media:Lorg/telegram/tgnet/TLRPC$InputMedia;

    .line 1784
    move-object/from16 v0, v46

    iput-object v0, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_sendBroadcast;->random_id:Ljava/util/ArrayList;

    .line 1785
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v12, v4}, Lorg/telegram/messenger/SendMessagesHelper;->performSendMessageRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2303
    .end local v5    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    .end local v7    # "reqSend":Lorg/telegram/tgnet/TLRPC$TL_messages_sendBroadcast;
    .end local v20    # "a":I
    .end local v42    # "objArr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    .end local v46    # "random_ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :catch_2
    move-exception v29

    goto/16 :goto_7

    .line 1787
    .restart local v5    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    .restart local v42    # "objArr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    :cond_5d
    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMessage;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMessage;-><init>()V

    .line 1788
    .local v7, "reqSend":Lorg/telegram/tgnet/TLRPC$TL_messages_sendMessage;
    move-object/from16 v0, p1

    iput-object v0, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMessage;->message:Ljava/lang/String;

    .line 1789
    if-nez p14, :cond_62

    const/4 v4, 0x1

    :goto_23
    iput-boolean v4, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMessage;->clear_draft:Z

    .line 1790
    move-object/from16 v0, v38

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_peerChannel;

    if-eqz v4, :cond_5e

    .line 1791
    sget-object v4, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v6, "Notifications"

    const/4 v8, 0x0

    invoke-virtual {v4, v6, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "silent_"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, p8

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    invoke-interface {v4, v6, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMessage;->silent:Z

    .line 1793
    :cond_5e
    move-object/from16 v0, v48

    iput-object v0, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMessage;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 1794
    move-object/from16 v0, v38

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    iput-wide v8, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMessage;->random_id:J

    .line 1795
    if-eqz p11, :cond_5f

    .line 1796
    iget v4, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMessage;->flags:I

    or-int/lit8 v4, v4, 0x1

    iput v4, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMessage;->flags:I

    .line 1797
    invoke-virtual/range {p11 .. p11}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    iput v4, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMessage;->reply_to_msg_id:I

    .line 1799
    :cond_5f
    if-nez p13, :cond_60

    .line 1800
    const/4 v4, 0x1

    iput-boolean v4, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMessage;->no_webpage:Z

    .line 1802
    :cond_60
    if-eqz p15, :cond_61

    invoke-virtual/range {p15 .. p15}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_61

    .line 1803
    move-object/from16 v0, p15

    iput-object v0, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMessage;->entities:Ljava/util/ArrayList;

    .line 1804
    iget v4, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMessage;->flags:I

    or-int/lit8 v4, v4, 0x8

    iput v4, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMessage;->flags:I

    .line 1806
    :cond_61
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v12, v4}, Lorg/telegram/messenger/SendMessagesHelper;->performSendMessageRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;)V

    .line 1807
    if-nez p14, :cond_0

    .line 1808
    const/4 v4, 0x0

    move-wide/from16 v0, p8

    invoke-static {v0, v1, v4}, Lorg/telegram/messenger/query/DraftQuery;->cleanDraft(JZ)V

    goto/16 :goto_0

    .line 1789
    :cond_62
    const/4 v4, 0x0

    goto :goto_23

    .line 1813
    .end local v7    # "reqSend":Lorg/telegram/tgnet/TLRPC$TL_messages_sendMessage;
    :cond_63
    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;-><init>()V

    .line 1814
    .local v7, "reqSend":Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;
    move-object/from16 v0, v38

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->ttl:I

    iput v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->ttl:I

    .line 1815
    if-eqz p15, :cond_64

    invoke-virtual/range {p15 .. p15}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_64

    .line 1816
    move-object/from16 v0, p15

    iput-object v0, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->entities:Ljava/util/ArrayList;

    .line 1817
    iget v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->flags:I

    or-int/lit16 v4, v4, 0x80

    iput v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->flags:I

    .line 1819
    :cond_64
    if-eqz p11, :cond_65

    move-object/from16 v0, p11

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-wide v8, v4, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    const-wide/16 v14, 0x0

    cmp-long v4, v8, v14

    if-eqz v4, :cond_65

    .line 1820
    move-object/from16 v0, p11

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-wide v8, v4, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    iput-wide v8, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->reply_to_random_id:J

    .line 1821
    iget v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->flags:I

    or-int/lit8 v4, v4, 0x8

    iput v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->flags:I

    .line 1823
    :cond_65
    if-eqz p17, :cond_66

    const-string/jumbo v4, "bot_name"

    move-object/from16 v0, p17

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_66

    .line 1824
    const-string/jumbo v4, "bot_name"

    move-object/from16 v0, p17

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->via_bot_name:Ljava/lang/String;

    .line 1825
    iget v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->flags:I

    or-int/lit16 v4, v4, 0x800

    iput v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->flags:I

    .line 1827
    :cond_66
    move-object/from16 v0, v38

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    iput-wide v8, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->random_id:J

    .line 1828
    move-object/from16 v0, p1

    iput-object v0, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->message:Ljava/lang/String;

    .line 1829
    if-eqz p12, :cond_67

    move-object/from16 v0, p12

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$WebPage;->url:Ljava/lang/String;

    if-eqz v4, :cond_67

    .line 1830
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaWebPage;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaWebPage;-><init>()V

    iput-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    .line 1831
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p12

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$WebPage;->url:Ljava/lang/String;

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->url:Ljava/lang/String;

    .line 1832
    iget v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->flags:I

    or-int/lit16 v4, v4, 0x200

    iput v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->flags:I

    .line 1836
    :goto_24
    invoke-static {}, Lorg/telegram/messenger/SecretChatHelper;->getInstance()Lorg/telegram/messenger/SecretChatHelper;

    move-result-object v6

    iget-object v8, v12, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v9, v16

    invoke-virtual/range {v6 .. v12}, Lorg/telegram/messenger/SecretChatHelper;->performSendEncryptedRequest(Lorg/telegram/tgnet/TLRPC$DecryptedMessage;Lorg/telegram/tgnet/TLRPC$Message;Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;Ljava/lang/String;Lorg/telegram/messenger/MessageObject;)V

    .line 1837
    if-nez p14, :cond_0

    .line 1838
    const/4 v4, 0x0

    move-wide/from16 v0, p8

    invoke-static {v0, v1, v4}, Lorg/telegram/messenger/query/DraftQuery;->cleanDraft(JZ)V

    goto/16 :goto_0

    .line 1834
    :cond_67
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaEmpty;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaEmpty;-><init>()V

    iput-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    goto :goto_24

    .line 1841
    .end local v7    # "reqSend":Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;
    :cond_68
    const/4 v4, 0x1

    move/from16 v0, v54

    if-lt v0, v4, :cond_69

    const/4 v4, 0x3

    move/from16 v0, v54

    if-le v0, v4, :cond_6b

    :cond_69
    const/4 v4, 0x5

    move/from16 v0, v54

    if-lt v0, v4, :cond_6a

    const/16 v4, 0x8

    move/from16 v0, v54

    if-le v0, v4, :cond_6b

    :cond_6a
    const/16 v4, 0x9

    move/from16 v0, v54

    if-ne v0, v4, :cond_bb

    if-eqz v16, :cond_bb

    .line 1842
    :cond_6b
    if-nez v16, :cond_9a

    .line 1843
    const/16 v31, 0x0

    .line 1844
    .local v31, "inputMedia":Lorg/telegram/tgnet/TLRPC$InputMedia;
    const/16 v27, 0x0

    .line 1845
    .local v27, "delayedMessage":Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;
    const/4 v4, 0x1

    move/from16 v0, v54

    if-ne v0, v4, :cond_6e

    .line 1846
    move-object/from16 v0, p2

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;

    if-eqz v4, :cond_6d

    .line 1847
    new-instance v31, Lorg/telegram/tgnet/TLRPC$TL_inputMediaVenue;

    .end local v31    # "inputMedia":Lorg/telegram/tgnet/TLRPC$InputMedia;
    invoke-direct/range {v31 .. v31}, Lorg/telegram/tgnet/TLRPC$TL_inputMediaVenue;-><init>()V

    .line 1848
    .restart local v31    # "inputMedia":Lorg/telegram/tgnet/TLRPC$InputMedia;
    move-object/from16 v0, p2

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->address:Ljava/lang/String;

    move-object/from16 v0, v31

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$InputMedia;->address:Ljava/lang/String;

    .line 1849
    move-object/from16 v0, p2

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->title:Ljava/lang/String;

    move-object/from16 v0, v31

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$InputMedia;->title:Ljava/lang/String;

    .line 1850
    move-object/from16 v0, p2

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->provider:Ljava/lang/String;

    move-object/from16 v0, v31

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$InputMedia;->provider:Ljava/lang/String;

    .line 1851
    move-object/from16 v0, p2

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->venue_id:Ljava/lang/String;

    move-object/from16 v0, v31

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$InputMedia;->venue_id:Ljava/lang/String;

    .line 1855
    :goto_25
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_inputGeoPoint;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_inputGeoPoint;-><init>()V

    move-object/from16 v0, v31

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$InputMedia;->geo_point:Lorg/telegram/tgnet/TLRPC$InputGeoPoint;

    .line 1856
    move-object/from16 v0, v31

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$InputMedia;->geo_point:Lorg/telegram/tgnet/TLRPC$InputGeoPoint;

    move-object/from16 v0, p2

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    iget-wide v8, v6, Lorg/telegram/tgnet/TLRPC$GeoPoint;->lat:D

    iput-wide v8, v4, Lorg/telegram/tgnet/TLRPC$InputGeoPoint;->lat:D

    .line 1857
    move-object/from16 v0, v31

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$InputMedia;->geo_point:Lorg/telegram/tgnet/TLRPC$InputGeoPoint;

    move-object/from16 v0, p2

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    iget-wide v8, v6, Lorg/telegram/tgnet/TLRPC$GeoPoint;->_long:D

    iput-wide v8, v4, Lorg/telegram/tgnet/TLRPC$InputGeoPoint;->_long:D

    .line 1983
    :cond_6c
    :goto_26
    if-eqz v49, :cond_8d

    .line 1984
    new-instance v47, Lorg/telegram/tgnet/TLRPC$TL_messages_sendBroadcast;

    invoke-direct/range {v47 .. v47}, Lorg/telegram/tgnet/TLRPC$TL_messages_sendBroadcast;-><init>()V

    .line 1985
    .local v47, "request":Lorg/telegram/tgnet/TLRPC$TL_messages_sendBroadcast;
    new-instance v46, Ljava/util/ArrayList;

    invoke-direct/range {v46 .. v46}, Ljava/util/ArrayList;-><init>()V

    .line 1986
    .restart local v46    # "random_ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/16 v20, 0x0

    .restart local v20    # "a":I
    :goto_27
    invoke-virtual/range {v49 .. v49}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v20

    if-ge v0, v4, :cond_8a

    .line 1987
    sget-object v4, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    invoke-virtual {v4}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v46

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1986
    add-int/lit8 v20, v20, 0x1

    goto :goto_27

    .line 1853
    .end local v20    # "a":I
    .end local v46    # "random_ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v47    # "request":Lorg/telegram/tgnet/TLRPC$TL_messages_sendBroadcast;
    :cond_6d
    new-instance v31, Lorg/telegram/tgnet/TLRPC$TL_inputMediaGeoPoint;

    .end local v31    # "inputMedia":Lorg/telegram/tgnet/TLRPC$InputMedia;
    invoke-direct/range {v31 .. v31}, Lorg/telegram/tgnet/TLRPC$TL_inputMediaGeoPoint;-><init>()V

    .restart local v31    # "inputMedia":Lorg/telegram/tgnet/TLRPC$InputMedia;
    goto :goto_25

    .line 1858
    :cond_6e
    const/4 v4, 0x2

    move/from16 v0, v54

    if-eq v0, v4, :cond_6f

    const/16 v4, 0x9

    move/from16 v0, v54

    if-ne v0, v4, :cond_77

    if-eqz p3, :cond_77

    .line 1859
    :cond_6f
    move-object/from16 v0, p3

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$TL_photo;->access_hash:J

    const-wide/16 v14, 0x0

    cmp-long v4, v8, v14

    if-nez v4, :cond_75

    .line 1860
    new-instance v31, Lorg/telegram/tgnet/TLRPC$TL_inputMediaUploadedPhoto;

    .end local v31    # "inputMedia":Lorg/telegram/tgnet/TLRPC$InputMedia;
    invoke-direct/range {v31 .. v31}, Lorg/telegram/tgnet/TLRPC$TL_inputMediaUploadedPhoto;-><init>()V

    .line 1861
    .restart local v31    # "inputMedia":Lorg/telegram/tgnet/TLRPC$InputMedia;
    move-object/from16 v0, p3

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_photo;->caption:Ljava/lang/String;

    if-eqz v4, :cond_71

    move-object/from16 v0, p3

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_photo;->caption:Ljava/lang/String;

    :goto_28
    move-object/from16 v0, v31

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$InputMedia;->caption:Ljava/lang/String;

    .line 1862
    if-eqz p18, :cond_70

    .line 1863
    move/from16 v0, p18

    move-object/from16 v1, v31

    iput v0, v1, Lorg/telegram/tgnet/TLRPC$InputMedia;->ttl_seconds:I

    move/from16 v0, p18

    move-object/from16 v1, v38

    iput v0, v1, Lorg/telegram/tgnet/TLRPC$Message;->ttl:I

    .line 1864
    move-object/from16 v0, v31

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$InputMedia;->flags:I

    or-int/lit8 v4, v4, 0x2

    move-object/from16 v0, v31

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$InputMedia;->flags:I

    .line 1866
    :cond_70
    if-eqz p17, :cond_73

    .line 1867
    const-string/jumbo v4, "masks"

    move-object/from16 v0, p17

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Ljava/lang/String;

    .line 1868
    .local v35, "masks":Ljava/lang/String;
    if-eqz v35, :cond_73

    .line 1869
    new-instance v52, Lorg/telegram/tgnet/SerializedData;

    invoke-static/range {v35 .. v35}, Lorg/telegram/messenger/Utilities;->hexToBytes(Ljava/lang/String;)[B

    move-result-object v4

    move-object/from16 v0, v52

    invoke-direct {v0, v4}, Lorg/telegram/tgnet/SerializedData;-><init>([B)V

    .line 1870
    .local v52, "serializedData":Lorg/telegram/tgnet/SerializedData;
    const/4 v4, 0x0

    move-object/from16 v0, v52

    invoke-virtual {v0, v4}, Lorg/telegram/tgnet/SerializedData;->readInt32(Z)I

    move-result v26

    .line 1871
    .local v26, "count":I
    const/16 v20, 0x0

    .restart local v20    # "a":I
    :goto_29
    move/from16 v0, v20

    move/from16 v1, v26

    if-ge v0, v1, :cond_72

    .line 1872
    move-object/from16 v0, v31

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$InputMedia;->stickers:Ljava/util/ArrayList;

    const/4 v6, 0x0

    move-object/from16 v0, v52

    invoke-virtual {v0, v6}, Lorg/telegram/tgnet/SerializedData;->readInt32(Z)I

    move-result v6

    const/4 v8, 0x0

    move-object/from16 v0, v52

    invoke-static {v0, v6, v8}, Lorg/telegram/tgnet/TLRPC$InputDocument;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$InputDocument;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1871
    add-int/lit8 v20, v20, 0x1

    goto :goto_29

    .line 1861
    .end local v20    # "a":I
    .end local v26    # "count":I
    .end local v35    # "masks":Ljava/lang/String;
    .end local v52    # "serializedData":Lorg/telegram/tgnet/SerializedData;
    :cond_71
    const-string/jumbo v4, ""

    goto :goto_28

    .line 1874
    .restart local v20    # "a":I
    .restart local v26    # "count":I
    .restart local v35    # "masks":Ljava/lang/String;
    .restart local v52    # "serializedData":Lorg/telegram/tgnet/SerializedData;
    :cond_72
    move-object/from16 v0, v31

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$InputMedia;->flags:I

    or-int/lit8 v4, v4, 0x1

    move-object/from16 v0, v31

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$InputMedia;->flags:I

    .line 1877
    .end local v20    # "a":I
    .end local v26    # "count":I
    .end local v35    # "masks":Ljava/lang/String;
    .end local v52    # "serializedData":Lorg/telegram/tgnet/SerializedData;
    :cond_73
    new-instance v27, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;

    .end local v27    # "delayedMessage":Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;
    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;-><init>(Lorg/telegram/messenger/SendMessagesHelper;)V

    .line 1878
    .restart local v27    # "delayedMessage":Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;
    move-object/from16 v0, v43

    move-object/from16 v1, v27

    iput-object v0, v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->originalPath:Ljava/lang/String;

    .line 1879
    const/4 v4, 0x0

    move-object/from16 v0, v27

    iput v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->type:I

    .line 1880
    move-object/from16 v0, v27

    iput-object v12, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    .line 1881
    if-eqz p10, :cond_74

    invoke-virtual/range {p10 .. p10}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_74

    const-string/jumbo v4, "http"

    move-object/from16 v0, p10

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_74

    .line 1882
    move-object/from16 v0, p10

    move-object/from16 v1, v27

    iput-object v0, v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->httpLocation:Ljava/lang/String;

    goto/16 :goto_26

    .line 1884
    :cond_74
    move-object/from16 v0, p3

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_photo;->sizes:Ljava/util/ArrayList;

    move-object/from16 v0, p3

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_photo;->sizes:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    move-object/from16 v0, v27

    iput-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    goto/16 :goto_26

    .line 1887
    :cond_75
    new-instance v36, Lorg/telegram/tgnet/TLRPC$TL_inputMediaPhoto;

    invoke-direct/range {v36 .. v36}, Lorg/telegram/tgnet/TLRPC$TL_inputMediaPhoto;-><init>()V

    .line 1888
    .local v36, "media":Lorg/telegram/tgnet/TLRPC$TL_inputMediaPhoto;
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_inputPhoto;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_inputPhoto;-><init>()V

    move-object/from16 v0, v36

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaPhoto;->id:Lorg/telegram/tgnet/TLRPC$InputPhoto;

    .line 1889
    move-object/from16 v0, p3

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_photo;->caption:Ljava/lang/String;

    if-eqz v4, :cond_76

    move-object/from16 v0, p3

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_photo;->caption:Ljava/lang/String;

    :goto_2a
    move-object/from16 v0, v36

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaPhoto;->caption:Ljava/lang/String;

    .line 1890
    move-object/from16 v0, v36

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaPhoto;->id:Lorg/telegram/tgnet/TLRPC$InputPhoto;

    move-object/from16 v0, p3

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$TL_photo;->id:J

    iput-wide v8, v4, Lorg/telegram/tgnet/TLRPC$InputPhoto;->id:J

    .line 1891
    move-object/from16 v0, v36

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaPhoto;->id:Lorg/telegram/tgnet/TLRPC$InputPhoto;

    move-object/from16 v0, p3

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$TL_photo;->access_hash:J

    iput-wide v8, v4, Lorg/telegram/tgnet/TLRPC$InputPhoto;->access_hash:J

    .line 1892
    move-object/from16 v31, v36

    .line 1893
    goto/16 :goto_26

    .line 1889
    :cond_76
    const-string/jumbo v4, ""

    goto :goto_2a

    .line 1894
    .end local v36    # "media":Lorg/telegram/tgnet/TLRPC$TL_inputMediaPhoto;
    :cond_77
    const/4 v4, 0x3

    move/from16 v0, v54

    if-ne v0, v4, :cond_7c

    .line 1895
    move-object/from16 v0, p6

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->access_hash:J

    const-wide/16 v14, 0x0

    cmp-long v4, v8, v14

    if-nez v4, :cond_7a

    .line 1896
    new-instance v31, Lorg/telegram/tgnet/TLRPC$TL_inputMediaUploadedDocument;

    .end local v31    # "inputMedia":Lorg/telegram/tgnet/TLRPC$InputMedia;
    invoke-direct/range {v31 .. v31}, Lorg/telegram/tgnet/TLRPC$TL_inputMediaUploadedDocument;-><init>()V

    .line 1897
    .restart local v31    # "inputMedia":Lorg/telegram/tgnet/TLRPC$InputMedia;
    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->caption:Ljava/lang/String;

    if-eqz v4, :cond_79

    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->caption:Ljava/lang/String;

    :goto_2b
    move-object/from16 v0, v31

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$InputMedia;->caption:Ljava/lang/String;

    .line 1898
    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->mime_type:Ljava/lang/String;

    move-object/from16 v0, v31

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$InputMedia;->mime_type:Ljava/lang/String;

    .line 1899
    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->attributes:Ljava/util/ArrayList;

    move-object/from16 v0, v31

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$InputMedia;->attributes:Ljava/util/ArrayList;

    .line 1900
    if-eqz p18, :cond_78

    .line 1901
    move/from16 v0, p18

    move-object/from16 v1, v31

    iput v0, v1, Lorg/telegram/tgnet/TLRPC$InputMedia;->ttl_seconds:I

    move/from16 v0, p18

    move-object/from16 v1, v38

    iput v0, v1, Lorg/telegram/tgnet/TLRPC$Message;->ttl:I

    .line 1902
    move-object/from16 v0, v31

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$InputMedia;->flags:I

    or-int/lit8 v4, v4, 0x2

    move-object/from16 v0, v31

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$InputMedia;->flags:I

    .line 1904
    :cond_78
    new-instance v27, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;

    .end local v27    # "delayedMessage":Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;
    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;-><init>(Lorg/telegram/messenger/SendMessagesHelper;)V

    .line 1905
    .restart local v27    # "delayedMessage":Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;
    move-object/from16 v0, v43

    move-object/from16 v1, v27

    iput-object v0, v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->originalPath:Ljava/lang/String;

    .line 1906
    const/4 v4, 0x1

    move-object/from16 v0, v27

    iput v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->type:I

    .line 1907
    move-object/from16 v0, v27

    iput-object v12, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    .line 1908
    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    move-object/from16 v0, v27

    iput-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 1909
    move-object/from16 v0, p6

    move-object/from16 v1, v27

    iput-object v0, v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->documentLocation:Lorg/telegram/tgnet/TLRPC$TL_document;

    .line 1910
    move-object/from16 v0, p4

    move-object/from16 v1, v27

    iput-object v0, v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    goto/16 :goto_26

    .line 1897
    :cond_79
    const-string/jumbo v4, ""

    goto :goto_2b

    .line 1912
    :cond_7a
    new-instance v36, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;

    invoke-direct/range {v36 .. v36}, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;-><init>()V

    .line 1913
    .local v36, "media":Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_inputDocument;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_inputDocument;-><init>()V

    move-object/from16 v0, v36

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;->id:Lorg/telegram/tgnet/TLRPC$InputDocument;

    .line 1914
    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->caption:Ljava/lang/String;

    if-eqz v4, :cond_7b

    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->caption:Ljava/lang/String;

    :goto_2c
    move-object/from16 v0, v36

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;->caption:Ljava/lang/String;

    .line 1915
    move-object/from16 v0, v36

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;->id:Lorg/telegram/tgnet/TLRPC$InputDocument;

    move-object/from16 v0, p6

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->id:J

    iput-wide v8, v4, Lorg/telegram/tgnet/TLRPC$InputDocument;->id:J

    .line 1916
    move-object/from16 v0, v36

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;->id:Lorg/telegram/tgnet/TLRPC$InputDocument;

    move-object/from16 v0, p6

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->access_hash:J

    iput-wide v8, v4, Lorg/telegram/tgnet/TLRPC$InputDocument;->access_hash:J

    .line 1917
    move-object/from16 v31, v36

    .line 1918
    goto/16 :goto_26

    .line 1914
    :cond_7b
    const-string/jumbo v4, ""

    goto :goto_2c

    .line 1919
    .end local v36    # "media":Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;
    :cond_7c
    const/4 v4, 0x6

    move/from16 v0, v54

    if-ne v0, v4, :cond_7d

    .line 1920
    new-instance v31, Lorg/telegram/tgnet/TLRPC$TL_inputMediaContact;

    .end local v31    # "inputMedia":Lorg/telegram/tgnet/TLRPC$InputMedia;
    invoke-direct/range {v31 .. v31}, Lorg/telegram/tgnet/TLRPC$TL_inputMediaContact;-><init>()V

    .line 1921
    .restart local v31    # "inputMedia":Lorg/telegram/tgnet/TLRPC$InputMedia;
    move-object/from16 v0, p5

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    move-object/from16 v0, v31

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$InputMedia;->phone_number:Ljava/lang/String;

    .line 1922
    move-object/from16 v0, p5

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    move-object/from16 v0, v31

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$InputMedia;->first_name:Ljava/lang/String;

    .line 1923
    move-object/from16 v0, p5

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    move-object/from16 v0, v31

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$InputMedia;->last_name:Ljava/lang/String;

    goto/16 :goto_26

    .line 1924
    :cond_7d
    const/4 v4, 0x7

    move/from16 v0, v54

    if-eq v0, v4, :cond_7e

    const/16 v4, 0x9

    move/from16 v0, v54

    if-ne v0, v4, :cond_85

    .line 1925
    :cond_7e
    move-object/from16 v0, p6

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->access_hash:J

    const-wide/16 v14, 0x0

    cmp-long v4, v8, v14

    if-nez v4, :cond_83

    .line 1926
    if-nez v16, :cond_80

    if-eqz v43, :cond_80

    invoke-virtual/range {v43 .. v43}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_80

    const-string/jumbo v4, "http"

    move-object/from16 v0, v43

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_80

    if-eqz p17, :cond_80

    .line 1927
    new-instance v31, Lorg/telegram/tgnet/TLRPC$TL_inputMediaGifExternal;

    .end local v31    # "inputMedia":Lorg/telegram/tgnet/TLRPC$InputMedia;
    invoke-direct/range {v31 .. v31}, Lorg/telegram/tgnet/TLRPC$TL_inputMediaGifExternal;-><init>()V

    .line 1928
    .restart local v31    # "inputMedia":Lorg/telegram/tgnet/TLRPC$InputMedia;
    const-string/jumbo v4, "url"

    move-object/from16 v0, p17

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string/jumbo v6, "\\|"

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v21

    .line 1929
    .local v21, "args":[Ljava/lang/String;
    move-object/from16 v0, v21

    array-length v4, v0

    const/4 v6, 0x2

    if-ne v4, v6, :cond_7f

    .line 1930
    move-object/from16 v0, v31

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaGifExternal;

    move-object v4, v0

    const/4 v6, 0x0

    aget-object v6, v21, v6

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$TL_inputMediaGifExternal;->url:Ljava/lang/String;

    .line 1931
    const/4 v4, 0x1

    aget-object v4, v21, v4

    move-object/from16 v0, v31

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$InputMedia;->q:Ljava/lang/String;

    .line 1946
    .end local v21    # "args":[Ljava/lang/String;
    :cond_7f
    :goto_2d
    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->mime_type:Ljava/lang/String;

    move-object/from16 v0, v31

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$InputMedia;->mime_type:Ljava/lang/String;

    .line 1947
    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->attributes:Ljava/util/ArrayList;

    move-object/from16 v0, v31

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$InputMedia;->attributes:Ljava/util/ArrayList;

    .line 1948
    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->caption:Ljava/lang/String;

    if-eqz v4, :cond_82

    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->caption:Ljava/lang/String;

    :goto_2e
    move-object/from16 v0, v31

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$InputMedia;->caption:Ljava/lang/String;

    goto/16 :goto_26

    .line 1934
    :cond_80
    new-instance v31, Lorg/telegram/tgnet/TLRPC$TL_inputMediaUploadedDocument;

    .end local v31    # "inputMedia":Lorg/telegram/tgnet/TLRPC$InputMedia;
    invoke-direct/range {v31 .. v31}, Lorg/telegram/tgnet/TLRPC$TL_inputMediaUploadedDocument;-><init>()V

    .line 1935
    .restart local v31    # "inputMedia":Lorg/telegram/tgnet/TLRPC$InputMedia;
    if-eqz p18, :cond_81

    .line 1936
    move/from16 v0, p18

    move-object/from16 v1, v31

    iput v0, v1, Lorg/telegram/tgnet/TLRPC$InputMedia;->ttl_seconds:I

    move/from16 v0, p18

    move-object/from16 v1, v38

    iput v0, v1, Lorg/telegram/tgnet/TLRPC$Message;->ttl:I

    .line 1937
    move-object/from16 v0, v31

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$InputMedia;->flags:I

    or-int/lit8 v4, v4, 0x2

    move-object/from16 v0, v31

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$InputMedia;->flags:I

    .line 1939
    :cond_81
    new-instance v27, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;

    .end local v27    # "delayedMessage":Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;
    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;-><init>(Lorg/telegram/messenger/SendMessagesHelper;)V

    .line 1940
    .restart local v27    # "delayedMessage":Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;
    move-object/from16 v0, v43

    move-object/from16 v1, v27

    iput-object v0, v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->originalPath:Ljava/lang/String;

    .line 1941
    const/4 v4, 0x2

    move-object/from16 v0, v27

    iput v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->type:I

    .line 1942
    move-object/from16 v0, v27

    iput-object v12, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    .line 1943
    move-object/from16 v0, p6

    move-object/from16 v1, v27

    iput-object v0, v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->documentLocation:Lorg/telegram/tgnet/TLRPC$TL_document;

    .line 1944
    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    move-object/from16 v0, v27

    iput-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    goto :goto_2d

    .line 1948
    :cond_82
    const-string/jumbo v4, ""

    goto :goto_2e

    .line 1950
    :cond_83
    new-instance v36, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;

    invoke-direct/range {v36 .. v36}, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;-><init>()V

    .line 1951
    .restart local v36    # "media":Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_inputDocument;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_inputDocument;-><init>()V

    move-object/from16 v0, v36

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;->id:Lorg/telegram/tgnet/TLRPC$InputDocument;

    .line 1952
    move-object/from16 v0, v36

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;->id:Lorg/telegram/tgnet/TLRPC$InputDocument;

    move-object/from16 v0, p6

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->id:J

    iput-wide v8, v4, Lorg/telegram/tgnet/TLRPC$InputDocument;->id:J

    .line 1953
    move-object/from16 v0, v36

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;->id:Lorg/telegram/tgnet/TLRPC$InputDocument;

    move-object/from16 v0, p6

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->access_hash:J

    iput-wide v8, v4, Lorg/telegram/tgnet/TLRPC$InputDocument;->access_hash:J

    .line 1954
    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->caption:Ljava/lang/String;

    if-eqz v4, :cond_84

    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->caption:Ljava/lang/String;

    :goto_2f
    move-object/from16 v0, v36

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;->caption:Ljava/lang/String;

    .line 1955
    move-object/from16 v31, v36

    .line 1956
    goto/16 :goto_26

    .line 1954
    :cond_84
    const-string/jumbo v4, ""

    goto :goto_2f

    .line 1957
    .end local v36    # "media":Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;
    :cond_85
    const/16 v4, 0x8

    move/from16 v0, v54

    if-ne v0, v4, :cond_6c

    .line 1958
    move-object/from16 v0, p6

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->access_hash:J

    const-wide/16 v14, 0x0

    cmp-long v4, v8, v14

    if-nez v4, :cond_88

    .line 1959
    new-instance v31, Lorg/telegram/tgnet/TLRPC$TL_inputMediaUploadedDocument;

    .end local v31    # "inputMedia":Lorg/telegram/tgnet/TLRPC$InputMedia;
    invoke-direct/range {v31 .. v31}, Lorg/telegram/tgnet/TLRPC$TL_inputMediaUploadedDocument;-><init>()V

    .line 1960
    .restart local v31    # "inputMedia":Lorg/telegram/tgnet/TLRPC$InputMedia;
    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->mime_type:Ljava/lang/String;

    move-object/from16 v0, v31

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$InputMedia;->mime_type:Ljava/lang/String;

    .line 1961
    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->attributes:Ljava/util/ArrayList;

    move-object/from16 v0, v31

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$InputMedia;->attributes:Ljava/util/ArrayList;

    .line 1962
    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->caption:Ljava/lang/String;

    if-eqz v4, :cond_87

    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->caption:Ljava/lang/String;

    :goto_30
    move-object/from16 v0, v31

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$InputMedia;->caption:Ljava/lang/String;

    .line 1963
    if-eqz p18, :cond_86

    .line 1964
    move/from16 v0, p18

    move-object/from16 v1, v31

    iput v0, v1, Lorg/telegram/tgnet/TLRPC$InputMedia;->ttl_seconds:I

    move/from16 v0, p18

    move-object/from16 v1, v38

    iput v0, v1, Lorg/telegram/tgnet/TLRPC$Message;->ttl:I

    .line 1965
    move-object/from16 v0, v31

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$InputMedia;->flags:I

    or-int/lit8 v4, v4, 0x2

    move-object/from16 v0, v31

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$InputMedia;->flags:I

    .line 1967
    :cond_86
    new-instance v27, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;

    .end local v27    # "delayedMessage":Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;
    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;-><init>(Lorg/telegram/messenger/SendMessagesHelper;)V

    .line 1968
    .restart local v27    # "delayedMessage":Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;
    const/4 v4, 0x3

    move-object/from16 v0, v27

    iput v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->type:I

    .line 1969
    move-object/from16 v0, v27

    iput-object v12, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    .line 1970
    move-object/from16 v0, p6

    move-object/from16 v1, v27

    iput-object v0, v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->documentLocation:Lorg/telegram/tgnet/TLRPC$TL_document;

    goto/16 :goto_26

    .line 1962
    :cond_87
    const-string/jumbo v4, ""

    goto :goto_30

    .line 1972
    :cond_88
    new-instance v36, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;

    invoke-direct/range {v36 .. v36}, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;-><init>()V

    .line 1973
    .restart local v36    # "media":Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_inputDocument;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_inputDocument;-><init>()V

    move-object/from16 v0, v36

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;->id:Lorg/telegram/tgnet/TLRPC$InputDocument;

    .line 1974
    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->caption:Ljava/lang/String;

    if-eqz v4, :cond_89

    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->caption:Ljava/lang/String;

    :goto_31
    move-object/from16 v0, v36

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;->caption:Ljava/lang/String;

    .line 1975
    move-object/from16 v0, v36

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;->id:Lorg/telegram/tgnet/TLRPC$InputDocument;

    move-object/from16 v0, p6

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->id:J

    iput-wide v8, v4, Lorg/telegram/tgnet/TLRPC$InputDocument;->id:J

    .line 1976
    move-object/from16 v0, v36

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;->id:Lorg/telegram/tgnet/TLRPC$InputDocument;

    move-object/from16 v0, p6

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->access_hash:J

    iput-wide v8, v4, Lorg/telegram/tgnet/TLRPC$InputDocument;->access_hash:J

    .line 1977
    move-object/from16 v31, v36

    goto/16 :goto_26

    .line 1974
    :cond_89
    const-string/jumbo v4, ""

    goto :goto_31

    .line 1989
    .end local v36    # "media":Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;
    .restart local v20    # "a":I
    .restart local v46    # "random_ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .restart local v47    # "request":Lorg/telegram/tgnet/TLRPC$TL_messages_sendBroadcast;
    :cond_8a
    move-object/from16 v0, v49

    move-object/from16 v1, v47

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_sendBroadcast;->contacts:Ljava/util/ArrayList;

    .line 1990
    move-object/from16 v0, v31

    move-object/from16 v1, v47

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_sendBroadcast;->media:Lorg/telegram/tgnet/TLRPC$InputMedia;

    .line 1991
    move-object/from16 v0, v46

    move-object/from16 v1, v47

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_sendBroadcast;->random_id:Ljava/util/ArrayList;

    .line 1992
    const-string/jumbo v4, ""

    move-object/from16 v0, v47

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendBroadcast;->message:Ljava/lang/String;

    .line 1993
    if-eqz v27, :cond_8b

    .line 1994
    move-object/from16 v0, v47

    move-object/from16 v1, v27

    iput-object v0, v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->sendRequest:Lorg/telegram/tgnet/TLObject;

    .line 1996
    :cond_8b
    move-object/from16 v7, v47

    .line 1997
    .local v7, "reqSend":Lorg/telegram/tgnet/TLObject;
    if-nez p14, :cond_8c

    .line 1998
    const/4 v4, 0x0

    move-wide/from16 v0, p8

    invoke-static {v0, v1, v4}, Lorg/telegram/messenger/query/DraftQuery;->cleanDraft(JZ)V

    .line 2017
    .end local v20    # "a":I
    .end local v46    # "random_ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v47    # "request":Lorg/telegram/tgnet/TLRPC$TL_messages_sendBroadcast;
    :cond_8c
    :goto_32
    const/4 v4, 0x1

    move/from16 v0, v54

    if-ne v0, v4, :cond_91

    .line 2018
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v12, v4}, Lorg/telegram/messenger/SendMessagesHelper;->performSendMessageRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2001
    .end local v7    # "reqSend":Lorg/telegram/tgnet/TLObject;
    :cond_8d
    new-instance v47, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;

    invoke-direct/range {v47 .. v47}, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;-><init>()V

    .line 2002
    .local v47, "request":Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;
    move-object/from16 v0, v48

    move-object/from16 v1, v47

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 2003
    move-object/from16 v0, v38

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_peerChannel;

    if-eqz v4, :cond_8e

    .line 2004
    sget-object v4, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v6, "Notifications"

    const/4 v8, 0x0

    invoke-virtual {v4, v6, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "silent_"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, p8

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    invoke-interface {v4, v6, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    move-object/from16 v0, v47

    iput-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;->silent:Z

    .line 2006
    :cond_8e
    move-object/from16 v0, v38

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    move-object/from16 v0, v47

    iput-wide v8, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;->random_id:J

    .line 2007
    move-object/from16 v0, v31

    move-object/from16 v1, v47

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;->media:Lorg/telegram/tgnet/TLRPC$InputMedia;

    .line 2008
    if-eqz p11, :cond_8f

    .line 2009
    move-object/from16 v0, v47

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;->flags:I

    or-int/lit8 v4, v4, 0x1

    move-object/from16 v0, v47

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;->flags:I

    .line 2010
    invoke-virtual/range {p11 .. p11}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    move-object/from16 v0, v47

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;->reply_to_msg_id:I

    .line 2012
    :cond_8f
    if-eqz v27, :cond_90

    .line 2013
    move-object/from16 v0, v47

    move-object/from16 v1, v27

    iput-object v0, v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->sendRequest:Lorg/telegram/tgnet/TLObject;

    .line 2015
    :cond_90
    move-object/from16 v7, v47

    .restart local v7    # "reqSend":Lorg/telegram/tgnet/TLObject;
    goto :goto_32

    .line 2019
    .end local v47    # "request":Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;
    :cond_91
    const/4 v4, 0x2

    move/from16 v0, v54

    if-ne v0, v4, :cond_93

    .line 2020
    move-object/from16 v0, p3

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$TL_photo;->access_hash:J

    const-wide/16 v14, 0x0

    cmp-long v4, v8, v14

    if-nez v4, :cond_92

    .line 2021
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lorg/telegram/messenger/SendMessagesHelper;->performSendDelayedMessage(Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;)V

    goto/16 :goto_0

    .line 2023
    :cond_92
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v12, v4}, Lorg/telegram/messenger/SendMessagesHelper;->performSendMessageRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2025
    :cond_93
    const/4 v4, 0x3

    move/from16 v0, v54

    if-ne v0, v4, :cond_95

    .line 2026
    move-object/from16 v0, p6

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->access_hash:J

    const-wide/16 v14, 0x0

    cmp-long v4, v8, v14

    if-nez v4, :cond_94

    .line 2027
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lorg/telegram/messenger/SendMessagesHelper;->performSendDelayedMessage(Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;)V

    goto/16 :goto_0

    .line 2029
    :cond_94
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v12, v4}, Lorg/telegram/messenger/SendMessagesHelper;->performSendMessageRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2031
    :cond_95
    const/4 v4, 0x6

    move/from16 v0, v54

    if-ne v0, v4, :cond_96

    .line 2032
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v12, v4}, Lorg/telegram/messenger/SendMessagesHelper;->performSendMessageRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2033
    :cond_96
    const/4 v4, 0x7

    move/from16 v0, v54

    if-ne v0, v4, :cond_98

    .line 2034
    move-object/from16 v0, p6

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->access_hash:J

    const-wide/16 v14, 0x0

    cmp-long v4, v8, v14

    if-nez v4, :cond_97

    if-eqz v27, :cond_97

    .line 2035
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lorg/telegram/messenger/SendMessagesHelper;->performSendDelayedMessage(Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;)V

    goto/16 :goto_0

    .line 2037
    :cond_97
    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-direct {v0, v7, v12, v1}, Lorg/telegram/messenger/SendMessagesHelper;->performSendMessageRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2039
    :cond_98
    const/16 v4, 0x8

    move/from16 v0, v54

    if-ne v0, v4, :cond_0

    .line 2040
    move-object/from16 v0, p6

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->access_hash:J

    const-wide/16 v14, 0x0

    cmp-long v4, v8, v14

    if-nez v4, :cond_99

    .line 2041
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lorg/telegram/messenger/SendMessagesHelper;->performSendDelayedMessage(Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;)V

    goto/16 :goto_0

    .line 2043
    :cond_99
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v12, v4}, Lorg/telegram/messenger/SendMessagesHelper;->performSendMessageRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2048
    .end local v7    # "reqSend":Lorg/telegram/tgnet/TLObject;
    .end local v27    # "delayedMessage":Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;
    .end local v31    # "inputMedia":Lorg/telegram/tgnet/TLRPC$InputMedia;
    :cond_9a
    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;-><init>()V

    .line 2049
    .local v7, "reqSend":Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;
    move-object/from16 v0, v38

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->ttl:I

    iput v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->ttl:I

    .line 2050
    if-eqz p15, :cond_9b

    invoke-virtual/range {p15 .. p15}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_9b

    .line 2051
    move-object/from16 v0, p15

    iput-object v0, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->entities:Ljava/util/ArrayList;

    .line 2052
    iget v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->flags:I

    or-int/lit16 v4, v4, 0x80

    iput v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->flags:I

    .line 2054
    :cond_9b
    if-eqz p11, :cond_9c

    move-object/from16 v0, p11

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-wide v8, v4, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    const-wide/16 v14, 0x0

    cmp-long v4, v8, v14

    if-eqz v4, :cond_9c

    .line 2055
    move-object/from16 v0, p11

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-wide v8, v4, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    iput-wide v8, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->reply_to_random_id:J

    .line 2056
    iget v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->flags:I

    or-int/lit8 v4, v4, 0x8

    iput v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->flags:I

    .line 2058
    :cond_9c
    iget v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->flags:I

    or-int/lit16 v4, v4, 0x200

    iput v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->flags:I

    .line 2059
    if-eqz p17, :cond_9d

    const-string/jumbo v4, "bot_name"

    move-object/from16 v0, p17

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_9d

    .line 2060
    const-string/jumbo v4, "bot_name"

    move-object/from16 v0, p17

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->via_bot_name:Ljava/lang/String;

    .line 2061
    iget v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->flags:I

    or-int/lit16 v4, v4, 0x800

    iput v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->flags:I

    .line 2063
    :cond_9d
    move-object/from16 v0, v38

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    iput-wide v8, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->random_id:J

    .line 2064
    const-string/jumbo v4, ""

    iput-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->message:Ljava/lang/String;

    .line 2065
    const/4 v4, 0x1

    move/from16 v0, v54

    if-ne v0, v4, :cond_a0

    .line 2066
    move-object/from16 v0, p2

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;

    if-eqz v4, :cond_9f

    .line 2067
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaVenue;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaVenue;-><init>()V

    iput-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    .line 2068
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p2

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->address:Ljava/lang/String;

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->address:Ljava/lang/String;

    .line 2069
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p2

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->title:Ljava/lang/String;

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->title:Ljava/lang/String;

    .line 2070
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p2

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->provider:Ljava/lang/String;

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->provider:Ljava/lang/String;

    .line 2071
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p2

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->venue_id:Ljava/lang/String;

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->venue_id:Ljava/lang/String;

    .line 2075
    :goto_33
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p2

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    iget-wide v8, v6, Lorg/telegram/tgnet/TLRPC$GeoPoint;->lat:D

    iput-wide v8, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->lat:D

    .line 2076
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p2

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    iget-wide v8, v6, Lorg/telegram/tgnet/TLRPC$GeoPoint;->_long:D

    iput-wide v8, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->_long:D

    .line 2077
    invoke-static {}, Lorg/telegram/messenger/SecretChatHelper;->getInstance()Lorg/telegram/messenger/SecretChatHelper;

    move-result-object v6

    iget-object v8, v12, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v9, v16

    invoke-virtual/range {v6 .. v12}, Lorg/telegram/messenger/SecretChatHelper;->performSendEncryptedRequest(Lorg/telegram/tgnet/TLRPC$DecryptedMessage;Lorg/telegram/tgnet/TLRPC$Message;Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;Ljava/lang/String;Lorg/telegram/messenger/MessageObject;)V

    .line 2252
    :cond_9e
    :goto_34
    if-nez p14, :cond_0

    .line 2253
    const/4 v4, 0x0

    move-wide/from16 v0, p8

    invoke-static {v0, v1, v4}, Lorg/telegram/messenger/query/DraftQuery;->cleanDraft(JZ)V

    goto/16 :goto_0

    .line 2073
    :cond_9f
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaGeoPoint;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaGeoPoint;-><init>()V

    iput-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    goto :goto_33

    .line 2078
    :cond_a0
    const/4 v4, 0x2

    move/from16 v0, v54

    if-eq v0, v4, :cond_a1

    const/16 v4, 0x9

    move/from16 v0, v54

    if-ne v0, v4, :cond_a6

    if-eqz p3, :cond_a6

    .line 2079
    :cond_a1
    move-object/from16 v0, p3

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_photo;->sizes:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v53

    check-cast v53, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 2080
    .local v53, "small":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    move-object/from16 v0, p3

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_photo;->sizes:Ljava/util/ArrayList;

    move-object/from16 v0, p3

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_photo;->sizes:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 2081
    .local v24, "big":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    invoke-static/range {v53 .. v53}, Lorg/telegram/messenger/ImageLoader;->fillPhotoSizeWithBytes(Lorg/telegram/tgnet/TLRPC$PhotoSize;)V

    .line 2082
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaPhoto;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaPhoto;-><init>()V

    iput-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    .line 2083
    iget-object v6, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p3

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_photo;->caption:Ljava/lang/String;

    if-eqz v4, :cond_a2

    move-object/from16 v0, p3

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_photo;->caption:Ljava/lang/String;

    :goto_35
    iput-object v4, v6, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->caption:Ljava/lang/String;

    .line 2084
    move-object/from16 v0, v53

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->bytes:[B

    if-eqz v4, :cond_a3

    .line 2085
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaPhoto;

    move-object/from16 v0, v53

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->bytes:[B

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaPhoto;->thumb:[B

    .line 2089
    :goto_36
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, v53

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->h:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->thumb_h:I

    .line 2090
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, v53

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->thumb_w:I

    .line 2091
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, v24

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->w:I

    .line 2092
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, v24

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->h:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->h:I

    .line 2093
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, v24

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->size:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->size:I

    .line 2094
    move-object/from16 v0, v24

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$FileLocation;->key:[B

    if-nez v4, :cond_a5

    .line 2095
    new-instance v27, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;-><init>(Lorg/telegram/messenger/SendMessagesHelper;)V

    .line 2096
    .restart local v27    # "delayedMessage":Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;
    move-object/from16 v0, v43

    move-object/from16 v1, v27

    iput-object v0, v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->originalPath:Ljava/lang/String;

    .line 2097
    move-object/from16 v0, v27

    iput-object v7, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->sendEncryptedRequest:Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;

    .line 2098
    const/4 v4, 0x0

    move-object/from16 v0, v27

    iput v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->type:I

    .line 2099
    move-object/from16 v0, v27

    iput-object v12, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    .line 2100
    move-object/from16 v0, v16

    move-object/from16 v1, v27

    iput-object v0, v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    .line 2101
    if-eqz p10, :cond_a4

    invoke-virtual/range {p10 .. p10}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_a4

    const-string/jumbo v4, "http"

    move-object/from16 v0, p10

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a4

    .line 2102
    move-object/from16 v0, p10

    move-object/from16 v1, v27

    iput-object v0, v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->httpLocation:Ljava/lang/String;

    .line 2106
    :goto_37
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lorg/telegram/messenger/SendMessagesHelper;->performSendDelayedMessage(Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;)V

    goto/16 :goto_34

    .line 2083
    .end local v27    # "delayedMessage":Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;
    :cond_a2
    const-string/jumbo v4, ""

    goto/16 :goto_35

    .line 2087
    :cond_a3
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaPhoto;

    const/4 v6, 0x0

    new-array v6, v6, [B

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaPhoto;->thumb:[B

    goto/16 :goto_36

    .line 2104
    .restart local v27    # "delayedMessage":Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;
    :cond_a4
    move-object/from16 v0, p3

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_photo;->sizes:Ljava/util/ArrayList;

    move-object/from16 v0, p3

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_photo;->sizes:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    move-object/from16 v0, v27

    iput-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    goto :goto_37

    .line 2108
    .end local v27    # "delayedMessage":Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;
    :cond_a5
    new-instance v10, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedFile;

    invoke-direct {v10}, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedFile;-><init>()V

    .line 2109
    .local v10, "encryptedFile":Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedFile;
    move-object/from16 v0, v24

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget-wide v8, v4, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    iput-wide v8, v10, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedFile;->id:J

    .line 2110
    move-object/from16 v0, v24

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget-wide v8, v4, Lorg/telegram/tgnet/TLRPC$FileLocation;->secret:J

    iput-wide v8, v10, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedFile;->access_hash:J

    .line 2111
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, v24

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$FileLocation;->key:[B

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->key:[B

    .line 2112
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, v24

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$FileLocation;->iv:[B

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->iv:[B

    .line 2113
    invoke-static {}, Lorg/telegram/messenger/SecretChatHelper;->getInstance()Lorg/telegram/messenger/SecretChatHelper;

    move-result-object v6

    iget-object v8, v12, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    const/4 v11, 0x0

    move-object/from16 v9, v16

    invoke-virtual/range {v6 .. v12}, Lorg/telegram/messenger/SecretChatHelper;->performSendEncryptedRequest(Lorg/telegram/tgnet/TLRPC$DecryptedMessage;Lorg/telegram/tgnet/TLRPC$Message;Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;Ljava/lang/String;Lorg/telegram/messenger/MessageObject;)V

    goto/16 :goto_34

    .line 2115
    .end local v10    # "encryptedFile":Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedFile;
    .end local v24    # "big":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    .end local v53    # "small":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    :cond_a6
    const/4 v4, 0x3

    move/from16 v0, v54

    if-ne v0, v4, :cond_af

    .line 2116
    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    invoke-static {v4}, Lorg/telegram/messenger/ImageLoader;->fillPhotoSizeWithBytes(Lorg/telegram/tgnet/TLRPC$PhotoSize;)V

    .line 2117
    invoke-static/range {p6 .. p6}, Lorg/telegram/messenger/MessageObject;->isNewGifDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v4

    if-nez v4, :cond_a7

    invoke-static/range {p6 .. p6}, Lorg/telegram/messenger/MessageObject;->isRoundVideoDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v4

    if-eqz v4, :cond_aa

    .line 2118
    :cond_a7
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaDocument;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaDocument;-><init>()V

    iput-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    .line 2119
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p6

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->attributes:Ljava/util/ArrayList;

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->attributes:Ljava/util/ArrayList;

    .line 2120
    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    if-eqz v4, :cond_a9

    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->bytes:[B

    if-eqz v4, :cond_a9

    .line 2121
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaDocument;

    move-object/from16 v0, p6

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$PhotoSize;->bytes:[B

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaDocument;->thumb:[B

    .line 2133
    :goto_38
    iget-object v6, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->caption:Ljava/lang/String;

    if-eqz v4, :cond_ac

    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->caption:Ljava/lang/String;

    :goto_39
    iput-object v4, v6, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->caption:Ljava/lang/String;

    .line 2134
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    const-string/jumbo v6, "video/mp4"

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->mime_type:Ljava/lang/String;

    .line 2135
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p6

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->size:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->size:I

    .line 2136
    const/16 v20, 0x0

    .restart local v20    # "a":I
    :goto_3a
    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v20

    if-ge v0, v4, :cond_a8

    .line 2137
    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->attributes:Ljava/util/ArrayList;

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    .line 2138
    .restart local v22    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    move-object/from16 v0, v22

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;

    if-eqz v4, :cond_ad

    .line 2139
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, v22

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->w:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->w:I

    .line 2140
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, v22

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->h:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->h:I

    .line 2141
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, v22

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->duration:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->duration:I

    .line 2145
    .end local v22    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    :cond_a8
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p6

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$PhotoSize;->h:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->thumb_h:I

    .line 2146
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p6

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->thumb_w:I

    .line 2147
    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->key:[B

    if-nez v4, :cond_ae

    .line 2148
    new-instance v27, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;-><init>(Lorg/telegram/messenger/SendMessagesHelper;)V

    .line 2149
    .restart local v27    # "delayedMessage":Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;
    move-object/from16 v0, v43

    move-object/from16 v1, v27

    iput-object v0, v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->originalPath:Ljava/lang/String;

    .line 2150
    move-object/from16 v0, v27

    iput-object v7, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->sendEncryptedRequest:Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;

    .line 2151
    const/4 v4, 0x1

    move-object/from16 v0, v27

    iput v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->type:I

    .line 2152
    move-object/from16 v0, v27

    iput-object v12, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    .line 2153
    move-object/from16 v0, v16

    move-object/from16 v1, v27

    iput-object v0, v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    .line 2154
    move-object/from16 v0, p6

    move-object/from16 v1, v27

    iput-object v0, v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->documentLocation:Lorg/telegram/tgnet/TLRPC$TL_document;

    .line 2155
    move-object/from16 v0, p4

    move-object/from16 v1, v27

    iput-object v0, v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    .line 2156
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lorg/telegram/messenger/SendMessagesHelper;->performSendDelayedMessage(Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;)V

    goto/16 :goto_34

    .line 2123
    .end local v20    # "a":I
    .end local v27    # "delayedMessage":Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;
    :cond_a9
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaDocument;

    const/4 v6, 0x0

    new-array v6, v6, [B

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaDocument;->thumb:[B

    goto/16 :goto_38

    .line 2126
    :cond_aa
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaVideo;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaVideo;-><init>()V

    iput-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    .line 2127
    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    if-eqz v4, :cond_ab

    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->bytes:[B

    if-eqz v4, :cond_ab

    .line 2128
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaVideo;

    move-object/from16 v0, p6

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$PhotoSize;->bytes:[B

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaVideo;->thumb:[B

    goto/16 :goto_38

    .line 2130
    :cond_ab
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaVideo;

    const/4 v6, 0x0

    new-array v6, v6, [B

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaVideo;->thumb:[B

    goto/16 :goto_38

    .line 2133
    :cond_ac
    const-string/jumbo v4, ""

    goto/16 :goto_39

    .line 2136
    .restart local v20    # "a":I
    .restart local v22    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    :cond_ad
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_3a

    .line 2158
    .end local v22    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    :cond_ae
    new-instance v10, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedFile;

    invoke-direct {v10}, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedFile;-><init>()V

    .line 2159
    .restart local v10    # "encryptedFile":Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedFile;
    move-object/from16 v0, p6

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->id:J

    iput-wide v8, v10, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedFile;->id:J

    .line 2160
    move-object/from16 v0, p6

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->access_hash:J

    iput-wide v8, v10, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedFile;->access_hash:J

    .line 2161
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p6

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->key:[B

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->key:[B

    .line 2162
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p6

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->iv:[B

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->iv:[B

    .line 2163
    invoke-static {}, Lorg/telegram/messenger/SecretChatHelper;->getInstance()Lorg/telegram/messenger/SecretChatHelper;

    move-result-object v6

    iget-object v8, v12, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    const/4 v11, 0x0

    move-object/from16 v9, v16

    invoke-virtual/range {v6 .. v12}, Lorg/telegram/messenger/SecretChatHelper;->performSendEncryptedRequest(Lorg/telegram/tgnet/TLRPC$DecryptedMessage;Lorg/telegram/tgnet/TLRPC$Message;Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;Ljava/lang/String;Lorg/telegram/messenger/MessageObject;)V

    goto/16 :goto_34

    .line 2165
    .end local v10    # "encryptedFile":Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedFile;
    .end local v20    # "a":I
    :cond_af
    const/4 v4, 0x6

    move/from16 v0, v54

    if-ne v0, v4, :cond_b0

    .line 2166
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaContact;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaContact;-><init>()V

    iput-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    .line 2167
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p5

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->phone_number:Ljava/lang/String;

    .line 2168
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p5

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->first_name:Ljava/lang/String;

    .line 2169
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p5

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->last_name:Ljava/lang/String;

    .line 2170
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p5

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$User;->id:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->user_id:I

    .line 2171
    invoke-static {}, Lorg/telegram/messenger/SecretChatHelper;->getInstance()Lorg/telegram/messenger/SecretChatHelper;

    move-result-object v13

    iget-object v15, v12, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v14, v7

    move-object/from16 v19, v12

    invoke-virtual/range {v13 .. v19}, Lorg/telegram/messenger/SecretChatHelper;->performSendEncryptedRequest(Lorg/telegram/tgnet/TLRPC$DecryptedMessage;Lorg/telegram/tgnet/TLRPC$Message;Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;Ljava/lang/String;Lorg/telegram/messenger/MessageObject;)V

    goto/16 :goto_34

    .line 2172
    :cond_b0
    const/4 v4, 0x7

    move/from16 v0, v54

    if-eq v0, v4, :cond_b1

    const/16 v4, 0x9

    move/from16 v0, v54

    if-ne v0, v4, :cond_b8

    if-eqz p6, :cond_b8

    .line 2173
    :cond_b1
    invoke-static/range {p6 .. p6}, Lorg/telegram/messenger/MessageObject;->isStickerDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v4

    if-eqz v4, :cond_b3

    .line 2174
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaExternalDocument;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaExternalDocument;-><init>()V

    iput-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    .line 2175
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p6

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->id:J

    iput-wide v8, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->id:J

    .line 2176
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p6

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->date:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->date:I

    .line 2177
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p6

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->access_hash:J

    iput-wide v8, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->access_hash:J

    .line 2178
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p6

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->mime_type:Ljava/lang/String;

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->mime_type:Ljava/lang/String;

    .line 2179
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p6

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->size:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->size:I

    .line 2180
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p6

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->dc_id:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->dc_id:I

    .line 2181
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p6

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->attributes:Ljava/util/ArrayList;

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->attributes:Ljava/util/ArrayList;

    .line 2182
    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    if-nez v4, :cond_b2

    .line 2183
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaExternalDocument;

    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_photoSizeEmpty;

    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_photoSizeEmpty;-><init>()V

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaExternalDocument;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 2184
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaExternalDocument;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaExternalDocument;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    const-string/jumbo v6, "s"

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->type:Ljava/lang/String;

    .line 2188
    :goto_3b
    invoke-static {}, Lorg/telegram/messenger/SecretChatHelper;->getInstance()Lorg/telegram/messenger/SecretChatHelper;

    move-result-object v13

    iget-object v15, v12, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v14, v7

    move-object/from16 v19, v12

    invoke-virtual/range {v13 .. v19}, Lorg/telegram/messenger/SecretChatHelper;->performSendEncryptedRequest(Lorg/telegram/tgnet/TLRPC$DecryptedMessage;Lorg/telegram/tgnet/TLRPC$Message;Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;Ljava/lang/String;Lorg/telegram/messenger/MessageObject;)V

    goto/16 :goto_34

    .line 2186
    :cond_b2
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaExternalDocument;

    move-object/from16 v0, p6

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaExternalDocument;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    goto :goto_3b

    .line 2190
    :cond_b3
    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    invoke-static {v4}, Lorg/telegram/messenger/ImageLoader;->fillPhotoSizeWithBytes(Lorg/telegram/tgnet/TLRPC$PhotoSize;)V

    .line 2191
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaDocument;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaDocument;-><init>()V

    iput-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    .line 2192
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p6

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->attributes:Ljava/util/ArrayList;

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->attributes:Ljava/util/ArrayList;

    .line 2193
    iget-object v6, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->caption:Ljava/lang/String;

    if-eqz v4, :cond_b5

    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->caption:Ljava/lang/String;

    :goto_3c
    iput-object v4, v6, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->caption:Ljava/lang/String;

    .line 2194
    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    if-eqz v4, :cond_b6

    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->bytes:[B

    if-eqz v4, :cond_b6

    .line 2195
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaDocument;

    move-object/from16 v0, p6

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$PhotoSize;->bytes:[B

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaDocument;->thumb:[B

    .line 2196
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p6

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$PhotoSize;->h:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->thumb_h:I

    .line 2197
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p6

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->thumb_w:I

    .line 2203
    :goto_3d
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p6

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->size:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->size:I

    .line 2204
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p6

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->mime_type:Ljava/lang/String;

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->mime_type:Ljava/lang/String;

    .line 2206
    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->key:[B

    if-nez v4, :cond_b7

    .line 2207
    new-instance v27, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;-><init>(Lorg/telegram/messenger/SendMessagesHelper;)V

    .line 2208
    .restart local v27    # "delayedMessage":Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;
    move-object/from16 v0, v43

    move-object/from16 v1, v27

    iput-object v0, v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->originalPath:Ljava/lang/String;

    .line 2209
    move-object/from16 v0, v27

    iput-object v7, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->sendEncryptedRequest:Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;

    .line 2210
    const/4 v4, 0x2

    move-object/from16 v0, v27

    iput v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->type:I

    .line 2211
    move-object/from16 v0, v27

    iput-object v12, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    .line 2212
    move-object/from16 v0, v16

    move-object/from16 v1, v27

    iput-object v0, v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    .line 2213
    if-eqz p10, :cond_b4

    invoke-virtual/range {p10 .. p10}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_b4

    const-string/jumbo v4, "http"

    move-object/from16 v0, p10

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b4

    .line 2214
    move-object/from16 v0, p10

    move-object/from16 v1, v27

    iput-object v0, v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->httpLocation:Ljava/lang/String;

    .line 2216
    :cond_b4
    move-object/from16 v0, p6

    move-object/from16 v1, v27

    iput-object v0, v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->documentLocation:Lorg/telegram/tgnet/TLRPC$TL_document;

    .line 2217
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lorg/telegram/messenger/SendMessagesHelper;->performSendDelayedMessage(Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;)V

    goto/16 :goto_34

    .line 2193
    .end local v27    # "delayedMessage":Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;
    :cond_b5
    const-string/jumbo v4, ""

    goto/16 :goto_3c

    .line 2199
    :cond_b6
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaDocument;

    const/4 v6, 0x0

    new-array v6, v6, [B

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaDocument;->thumb:[B

    .line 2200
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    const/4 v6, 0x0

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->thumb_h:I

    .line 2201
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    const/4 v6, 0x0

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->thumb_w:I

    goto :goto_3d

    .line 2219
    :cond_b7
    new-instance v10, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedFile;

    invoke-direct {v10}, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedFile;-><init>()V

    .line 2220
    .restart local v10    # "encryptedFile":Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedFile;
    move-object/from16 v0, p6

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->id:J

    iput-wide v8, v10, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedFile;->id:J

    .line 2221
    move-object/from16 v0, p6

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->access_hash:J

    iput-wide v8, v10, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedFile;->access_hash:J

    .line 2222
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p6

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->key:[B

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->key:[B

    .line 2223
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p6

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->iv:[B

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->iv:[B

    .line 2224
    invoke-static {}, Lorg/telegram/messenger/SecretChatHelper;->getInstance()Lorg/telegram/messenger/SecretChatHelper;

    move-result-object v6

    iget-object v8, v12, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    const/4 v11, 0x0

    move-object/from16 v9, v16

    invoke-virtual/range {v6 .. v12}, Lorg/telegram/messenger/SecretChatHelper;->performSendEncryptedRequest(Lorg/telegram/tgnet/TLRPC$DecryptedMessage;Lorg/telegram/tgnet/TLRPC$Message;Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;Ljava/lang/String;Lorg/telegram/messenger/MessageObject;)V

    goto/16 :goto_34

    .line 2227
    .end local v10    # "encryptedFile":Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedFile;
    :cond_b8
    const/16 v4, 0x8

    move/from16 v0, v54

    if-ne v0, v4, :cond_9e

    .line 2228
    new-instance v27, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;-><init>(Lorg/telegram/messenger/SendMessagesHelper;)V

    .line 2229
    .restart local v27    # "delayedMessage":Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;
    move-object/from16 v0, v16

    move-object/from16 v1, v27

    iput-object v0, v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    .line 2230
    move-object/from16 v0, v27

    iput-object v7, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->sendEncryptedRequest:Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;

    .line 2231
    move-object/from16 v0, v27

    iput-object v12, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    .line 2232
    move-object/from16 v0, p6

    move-object/from16 v1, v27

    iput-object v0, v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->documentLocation:Lorg/telegram/tgnet/TLRPC$TL_document;

    .line 2233
    const/4 v4, 0x3

    move-object/from16 v0, v27

    iput v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->type:I

    .line 2235
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaDocument;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaDocument;-><init>()V

    iput-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    .line 2236
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p6

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->attributes:Ljava/util/ArrayList;

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->attributes:Ljava/util/ArrayList;

    .line 2237
    iget-object v6, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->caption:Ljava/lang/String;

    if-eqz v4, :cond_b9

    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->caption:Ljava/lang/String;

    :goto_3e
    iput-object v4, v6, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->caption:Ljava/lang/String;

    .line 2238
    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    if-eqz v4, :cond_ba

    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->bytes:[B

    if-eqz v4, :cond_ba

    .line 2239
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaDocument;

    move-object/from16 v0, p6

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$PhotoSize;->bytes:[B

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaDocument;->thumb:[B

    .line 2240
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p6

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$PhotoSize;->h:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->thumb_h:I

    .line 2241
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p6

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->thumb_w:I

    .line 2247
    :goto_3f
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p6

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->mime_type:Ljava/lang/String;

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->mime_type:Ljava/lang/String;

    .line 2248
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p6

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->size:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->size:I

    .line 2249
    move-object/from16 v0, v43

    move-object/from16 v1, v27

    iput-object v0, v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->originalPath:Ljava/lang/String;

    .line 2250
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lorg/telegram/messenger/SendMessagesHelper;->performSendDelayedMessage(Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;)V

    goto/16 :goto_34

    .line 2237
    :cond_b9
    const-string/jumbo v4, ""

    goto :goto_3e

    .line 2243
    :cond_ba
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaDocument;

    const/4 v6, 0x0

    new-array v6, v6, [B

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaDocument;->thumb:[B

    .line 2244
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    const/4 v6, 0x0

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->thumb_h:I

    .line 2245
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    const/4 v6, 0x0

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->thumb_w:I

    goto :goto_3f

    .line 2256
    .end local v7    # "reqSend":Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;
    .end local v27    # "delayedMessage":Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;
    :cond_bb
    const/4 v4, 0x4

    move/from16 v0, v54

    if-ne v0, v4, :cond_c1

    .line 2257
    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;-><init>()V

    .line 2258
    .local v7, "reqSend":Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;
    move-object/from16 v0, v48

    iput-object v0, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->to_peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 2259
    move-object/from16 v0, p14

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-boolean v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->with_my_score:Z

    iput-boolean v4, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->with_my_score:Z

    .line 2260
    move-object/from16 v0, p14

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->ttl:I

    if-eqz v4, :cond_be

    .line 2261
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    move-object/from16 v0, p14

    iget-object v6, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$Message;->ttl:I

    neg-int v6, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v25

    .line 2262
    .restart local v25    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_inputPeerChannel;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_inputPeerChannel;-><init>()V

    iput-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->from_peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 2263
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->from_peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-object/from16 v0, p14

    iget-object v6, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$Message;->ttl:I

    neg-int v6, v6

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$InputPeer;->channel_id:I

    .line 2264
    if-eqz v25, :cond_bc

    .line 2265
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->from_peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-object/from16 v0, v25

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$Chat;->access_hash:J

    iput-wide v8, v4, Lorg/telegram/tgnet/TLRPC$InputPeer;->access_hash:J

    .line 2270
    .end local v25    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_bc
    :goto_40
    move-object/from16 v0, p14

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_peerChannel;

    if-eqz v4, :cond_bd

    .line 2271
    sget-object v4, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v6, "Notifications"

    const/4 v8, 0x0

    invoke-virtual {v4, v6, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "silent_"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, p8

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    invoke-interface {v4, v6, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->silent:Z

    .line 2273
    :cond_bd
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->random_id:Ljava/util/ArrayList;

    move-object/from16 v0, v38

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2274
    invoke-virtual/range {p14 .. p14}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    if-ltz v4, :cond_bf

    .line 2275
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->id:Ljava/util/ArrayList;

    invoke-virtual/range {p14 .. p14}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2283
    :goto_41
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v12, v4}, Lorg/telegram/messenger/SendMessagesHelper;->performSendMessageRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2268
    :cond_be
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_inputPeerEmpty;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_inputPeerEmpty;-><init>()V

    iput-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->from_peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    goto :goto_40

    .line 2277
    :cond_bf
    move-object/from16 v0, p14

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;

    if-eqz v4, :cond_c0

    .line 2278
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->id:Ljava/util/ArrayList;

    move-object/from16 v0, p14

    iget-object v6, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->channel_post:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_41

    .line 2280
    :cond_c0
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->id:Ljava/util/ArrayList;

    move-object/from16 v0, p14

    iget-object v6, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$Message;->fwd_msg_id:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_41

    .line 2284
    .end local v7    # "reqSend":Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;
    :cond_c1
    const/16 v4, 0x9

    move/from16 v0, v54

    if-ne v0, v4, :cond_0

    .line 2285
    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_messages_sendInlineBotResult;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_messages_sendInlineBotResult;-><init>()V

    .line 2286
    .local v7, "reqSend":Lorg/telegram/tgnet/TLRPC$TL_messages_sendInlineBotResult;
    move-object/from16 v0, v48

    iput-object v0, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_sendInlineBotResult;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 2287
    move-object/from16 v0, v38

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    iput-wide v8, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_sendInlineBotResult;->random_id:J

    .line 2288
    if-eqz p11, :cond_c2

    .line 2289
    iget v4, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_sendInlineBotResult;->flags:I

    or-int/lit8 v4, v4, 0x1

    iput v4, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_sendInlineBotResult;->flags:I

    .line 2290
    invoke-virtual/range {p11 .. p11}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    iput v4, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_sendInlineBotResult;->reply_to_msg_id:I

    .line 2292
    :cond_c2
    move-object/from16 v0, v38

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_peerChannel;

    if-eqz v4, :cond_c3

    .line 2293
    sget-object v4, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v6, "Notifications"

    const/4 v8, 0x0

    invoke-virtual {v4, v6, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "silent_"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, p8

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    invoke-interface {v4, v6, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_sendInlineBotResult;->silent:Z

    .line 2295
    :cond_c3
    const-string/jumbo v4, "query_id"

    move-object/from16 v0, p17

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lorg/telegram/messenger/Utilities;->parseLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    iput-wide v8, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_sendInlineBotResult;->query_id:J

    .line 2296
    const-string/jumbo v4, "id"

    move-object/from16 v0, p17

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_sendInlineBotResult;->id:Ljava/lang/String;

    .line 2297
    if-nez p14, :cond_c4

    .line 2298
    const/4 v4, 0x1

    iput-boolean v4, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_sendInlineBotResult;->clear_draft:Z

    .line 2299
    const/4 v4, 0x0

    move-wide/from16 v0, p8

    invoke-static {v0, v1, v4}, Lorg/telegram/messenger/query/DraftQuery;->cleanDraft(JZ)V

    .line 2301
    :cond_c4
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v12, v4}, Lorg/telegram/messenger/SendMessagesHelper;->performSendMessageRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2

    goto/16 :goto_0

    .line 2303
    .end local v5    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    .end local v7    # "reqSend":Lorg/telegram/tgnet/TLRPC$TL_messages_sendInlineBotResult;
    .end local v12    # "newMsgObj":Lorg/telegram/messenger/MessageObject;
    .end local v42    # "objArr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    .end local p5    # "user":Lorg/telegram/tgnet/TLRPC$User;
    .restart local v40    # "newMsgObj":Lorg/telegram/messenger/MessageObject;
    .restart local v55    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :catch_3
    move-exception v29

    move-object/from16 v12, v40

    .end local v40    # "newMsgObj":Lorg/telegram/messenger/MessageObject;
    .restart local v12    # "newMsgObj":Lorg/telegram/messenger/MessageObject;
    move-object/from16 p5, v55

    .end local v55    # "user":Lorg/telegram/tgnet/TLRPC$User;
    .restart local p5    # "user":Lorg/telegram/tgnet/TLRPC$User;
    goto/16 :goto_7

    .end local v12    # "newMsgObj":Lorg/telegram/messenger/MessageObject;
    .end local v38    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    .restart local v39    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    .restart local v40    # "newMsgObj":Lorg/telegram/messenger/MessageObject;
    :catch_4
    move-exception v29

    move-object/from16 v12, v40

    .end local v40    # "newMsgObj":Lorg/telegram/messenger/MessageObject;
    .restart local v12    # "newMsgObj":Lorg/telegram/messenger/MessageObject;
    move-object/from16 v38, v39

    .end local v39    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    .restart local v38    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    goto/16 :goto_7

    .end local v12    # "newMsgObj":Lorg/telegram/messenger/MessageObject;
    .end local v38    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    .restart local v39    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    .restart local v40    # "newMsgObj":Lorg/telegram/messenger/MessageObject;
    :cond_c5
    move-object/from16 v38, v39

    .end local v39    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    .restart local v38    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    goto/16 :goto_e
.end method

.method private updateMediaPaths(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$Message;Ljava/lang/String;Z)V
    .locals 18
    .param p1, "newMsgObj"    # Lorg/telegram/messenger/MessageObject;
    .param p2, "sentMessage"    # Lorg/telegram/tgnet/TLRPC$Message;
    .param p3, "originalPath"    # Ljava/lang/String;
    .param p4, "post"    # Z

    .prologue
    .line 2647
    move-object/from16 v0, p1

    iget-object v9, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    .line 2648
    .local v9, "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    if-nez p2, :cond_1

    .line 2791
    :cond_0
    :goto_0
    return-void

    .line 2651
    :cond_1
    move-object/from16 v0, p2

    iget-object v13, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v13, v13, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;

    if-eqz v13, :cond_d

    move-object/from16 v0, p2

    iget-object v13, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    if-eqz v13, :cond_d

    iget-object v13, v9, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v13, v13, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;

    if-eqz v13, :cond_d

    iget-object v13, v9, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    if-eqz v13, :cond_d

    .line 2652
    move-object/from16 v0, p2

    iget-object v13, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget v13, v13, Lorg/telegram/tgnet/TLRPC$MessageMedia;->ttl_seconds:I

    if-nez v13, :cond_2

    .line 2653
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v13

    move-object/from16 v0, p2

    iget-object v14, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v14, v14, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    const/4 v15, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v13, v0, v14, v15}, Lorg/telegram/messenger/MessagesStorage;->putSentFile(Ljava/lang/String;Lorg/telegram/tgnet/TLObject;I)V

    .line 2656
    :cond_2
    iget-object v13, v9, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_4

    iget-object v13, v9, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    instance-of v13, v13, Lorg/telegram/tgnet/TLRPC$TL_fileLocationUnavailable;

    if-eqz v13, :cond_4

    .line 2657
    iget-object v13, v9, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    move-object/from16 v0, p2

    iget-object v14, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v14, v14, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v14, v14, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    iput-object v14, v13, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    .line 2691
    :cond_3
    iget-object v13, v9, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    move-object/from16 v0, p2

    iput-object v13, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    .line 2692
    iget-object v13, v9, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    move-object/from16 v0, p2

    iput-object v13, v0, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    .line 2693
    iget-object v13, v9, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    move-object/from16 v0, p2

    iget-object v14, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v14, v14, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-wide v14, v14, Lorg/telegram/tgnet/TLRPC$Photo;->id:J

    iput-wide v14, v13, Lorg/telegram/tgnet/TLRPC$Photo;->id:J

    .line 2694
    iget-object v13, v9, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    move-object/from16 v0, p2

    iget-object v14, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v14, v14, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-wide v14, v14, Lorg/telegram/tgnet/TLRPC$Photo;->access_hash:J

    iput-wide v14, v13, Lorg/telegram/tgnet/TLRPC$Photo;->access_hash:J

    goto/16 :goto_0

    .line 2659
    :cond_4
    const/4 v2, 0x0

    .local v2, "a":I
    :goto_1
    move-object/from16 v0, p2

    iget-object v13, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v2, v13, :cond_3

    .line 2660
    move-object/from16 v0, p2

    iget-object v13, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 2661
    .local v11, "size":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    if-eqz v11, :cond_5

    iget-object v13, v11, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v13, :cond_5

    instance-of v13, v11, Lorg/telegram/tgnet/TLRPC$TL_photoSizeEmpty;

    if-nez v13, :cond_5

    iget-object v13, v11, Lorg/telegram/tgnet/TLRPC$PhotoSize;->type:Ljava/lang/String;

    if-nez v13, :cond_6

    .line 2659
    :cond_5
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2664
    :cond_6
    const/4 v4, 0x0

    .local v4, "b":I
    :goto_3
    iget-object v13, v9, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v4, v13, :cond_5

    .line 2665
    iget-object v13, v9, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 2666
    .local v12, "size2":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    if-eqz v12, :cond_7

    iget-object v13, v12, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v13, :cond_7

    iget-object v13, v12, Lorg/telegram/tgnet/TLRPC$PhotoSize;->type:Ljava/lang/String;

    if-nez v13, :cond_8

    .line 2664
    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 2669
    :cond_8
    iget-object v13, v12, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget-wide v14, v13, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    const-wide/32 v16, -0x80000000

    cmp-long v13, v14, v16

    if-nez v13, :cond_9

    iget-object v13, v11, Lorg/telegram/tgnet/TLRPC$PhotoSize;->type:Ljava/lang/String;

    iget-object v14, v12, Lorg/telegram/tgnet/TLRPC$PhotoSize;->type:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_a

    :cond_9
    iget v13, v11, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I

    iget v14, v12, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I

    if-ne v13, v14, :cond_7

    iget v13, v11, Lorg/telegram/tgnet/TLRPC$PhotoSize;->h:I

    iget v14, v12, Lorg/telegram/tgnet/TLRPC$PhotoSize;->h:I

    if-ne v13, v14, :cond_7

    .line 2670
    :cond_a
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v14, v12, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget-wide v14, v14, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "_"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v12, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget v14, v14, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2671
    .local v7, "fileName":Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v14, v11, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget-wide v14, v14, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "_"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v11, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget v14, v14, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 2672
    .local v8, "fileName2":Ljava/lang/String;
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_5

    .line 2675
    new-instance v5, Ljava/io/File;

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v13

    const/4 v14, 0x4

    invoke-virtual {v13, v14}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, ".jpg"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v5, v13, v14}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2677
    .local v5, "cacheFile":Ljava/io/File;
    move-object/from16 v0, p2

    iget-object v13, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget v13, v13, Lorg/telegram/tgnet/TLRPC$MessageMedia;->ttl_seconds:I

    if-nez v13, :cond_c

    move-object/from16 v0, p2

    iget-object v13, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    const/4 v14, 0x1

    if-eq v13, v14, :cond_b

    iget v13, v11, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I

    const/16 v14, 0x5a

    if-gt v13, v14, :cond_b

    iget v13, v11, Lorg/telegram/tgnet/TLRPC$PhotoSize;->h:I

    const/16 v14, 0x5a

    if-le v13, v14, :cond_c

    .line 2678
    :cond_b
    invoke-static {v11}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;)Ljava/io/File;

    move-result-object v6

    .line 2682
    .local v6, "cacheFile2":Ljava/io/File;
    :goto_4
    invoke-virtual {v5, v6}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 2683
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v13

    iget-object v14, v11, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    move/from16 v0, p4

    invoke-virtual {v13, v7, v8, v14, v0}, Lorg/telegram/messenger/ImageLoader;->replaceImageInCache(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$FileLocation;Z)V

    .line 2684
    iget-object v13, v11, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iput-object v13, v12, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 2685
    iget v13, v11, Lorg/telegram/tgnet/TLRPC$PhotoSize;->size:I

    iput v13, v12, Lorg/telegram/tgnet/TLRPC$PhotoSize;->size:I

    goto/16 :goto_2

    .line 2680
    .end local v6    # "cacheFile2":Ljava/io/File;
    :cond_c
    new-instance v6, Ljava/io/File;

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v13

    const/4 v14, 0x4

    invoke-virtual {v13, v14}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, ".jpg"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v6, v13, v14}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .restart local v6    # "cacheFile2":Ljava/io/File;
    goto :goto_4

    .line 2695
    .end local v2    # "a":I
    .end local v4    # "b":I
    .end local v5    # "cacheFile":Ljava/io/File;
    .end local v6    # "cacheFile2":Ljava/io/File;
    .end local v7    # "fileName":Ljava/lang/String;
    .end local v8    # "fileName2":Ljava/lang/String;
    .end local v11    # "size":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    .end local v12    # "size2":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    :cond_d
    move-object/from16 v0, p2

    iget-object v13, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v13, v13, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    if-eqz v13, :cond_20

    move-object/from16 v0, p2

    iget-object v13, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v13, :cond_20

    iget-object v13, v9, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v13, v13, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    if-eqz v13, :cond_20

    iget-object v13, v9, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v13, :cond_20

    .line 2696
    invoke-static/range {p2 .. p2}, Lorg/telegram/messenger/MessageObject;->isVideoMessage(Lorg/telegram/tgnet/TLRPC$Message;)Z

    move-result v13

    if-eqz v13, :cond_13

    .line 2697
    move-object/from16 v0, p2

    iget-object v13, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget v13, v13, Lorg/telegram/tgnet/TLRPC$MessageMedia;->ttl_seconds:I

    if-nez v13, :cond_e

    .line 2698
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v13

    move-object/from16 v0, p2

    iget-object v14, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v14, v14, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    const/4 v15, 0x2

    move-object/from16 v0, p3

    invoke-virtual {v13, v0, v14, v15}, Lorg/telegram/messenger/MessagesStorage;->putSentFile(Ljava/lang/String;Lorg/telegram/tgnet/TLObject;I)V

    .line 2700
    :cond_e
    iget-object v13, v9, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    move-object/from16 v0, p2

    iput-object v13, v0, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    .line 2707
    :cond_f
    :goto_5
    iget-object v13, v9, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v12, v13, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 2708
    .restart local v12    # "size2":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    move-object/from16 v0, p2

    iget-object v13, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v11, v13, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 2709
    .restart local v11    # "size":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    if-eqz v12, :cond_14

    iget-object v13, v12, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v13, :cond_14

    iget-object v13, v12, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget-wide v14, v13, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    const-wide/32 v16, -0x80000000

    cmp-long v13, v14, v16

    if-nez v13, :cond_14

    if-eqz v11, :cond_14

    iget-object v13, v11, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v13, :cond_14

    instance-of v13, v11, Lorg/telegram/tgnet/TLRPC$TL_photoSizeEmpty;

    if-nez v13, :cond_14

    instance-of v13, v12, Lorg/telegram/tgnet/TLRPC$TL_photoSizeEmpty;

    if-nez v13, :cond_14

    .line 2710
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v14, v12, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget-wide v14, v14, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "_"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v12, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget v14, v14, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2711
    .restart local v7    # "fileName":Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v14, v11, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget-wide v14, v14, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "_"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v11, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget v14, v14, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 2712
    .restart local v8    # "fileName2":Ljava/lang/String;
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_10

    .line 2713
    new-instance v5, Ljava/io/File;

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v13

    const/4 v14, 0x4

    invoke-virtual {v13, v14}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, ".jpg"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v5, v13, v14}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2714
    .restart local v5    # "cacheFile":Ljava/io/File;
    new-instance v6, Ljava/io/File;

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v13

    const/4 v14, 0x4

    invoke-virtual {v13, v14}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, ".jpg"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v6, v13, v14}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2715
    .restart local v6    # "cacheFile2":Ljava/io/File;
    invoke-virtual {v5, v6}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 2716
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v13

    iget-object v14, v11, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    move/from16 v0, p4

    invoke-virtual {v13, v7, v8, v14, v0}, Lorg/telegram/messenger/ImageLoader;->replaceImageInCache(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$FileLocation;Z)V

    .line 2717
    iget-object v13, v11, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iput-object v13, v12, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 2718
    iget v13, v11, Lorg/telegram/tgnet/TLRPC$PhotoSize;->size:I

    iput v13, v12, Lorg/telegram/tgnet/TLRPC$PhotoSize;->size:I

    .line 2726
    .end local v5    # "cacheFile":Ljava/io/File;
    .end local v6    # "cacheFile2":Ljava/io/File;
    .end local v7    # "fileName":Ljava/lang/String;
    .end local v8    # "fileName2":Ljava/lang/String;
    :cond_10
    :goto_6
    iget-object v13, v9, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    move-object/from16 v0, p2

    iget-object v14, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v14, v14, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget v14, v14, Lorg/telegram/tgnet/TLRPC$Document;->dc_id:I

    iput v14, v13, Lorg/telegram/tgnet/TLRPC$Document;->dc_id:I

    .line 2727
    iget-object v13, v9, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    move-object/from16 v0, p2

    iget-object v14, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v14, v14, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-wide v14, v14, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    iput-wide v14, v13, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    .line 2728
    iget-object v13, v9, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    move-object/from16 v0, p2

    iget-object v14, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v14, v14, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-wide v14, v14, Lorg/telegram/tgnet/TLRPC$Document;->access_hash:J

    iput-wide v14, v13, Lorg/telegram/tgnet/TLRPC$Document;->access_hash:J

    .line 2729
    const/4 v10, 0x0

    .line 2730
    .local v10, "oldWaveform":[B
    const/4 v2, 0x0

    .restart local v2    # "a":I
    :goto_7
    iget-object v13, v9, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v2, v13, :cond_11

    .line 2731
    iget-object v13, v9, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    .line 2732
    .local v3, "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    instance-of v13, v3, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;

    if-eqz v13, :cond_18

    .line 2733
    iget-object v10, v3, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->waveform:[B

    .line 2737
    .end local v3    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    :cond_11
    iget-object v13, v9, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    move-object/from16 v0, p2

    iget-object v14, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v14, v14, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v14, v14, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    iput-object v14, v13, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    .line 2738
    if-eqz v10, :cond_19

    .line 2739
    const/4 v2, 0x0

    :goto_8
    iget-object v13, v9, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v2, v13, :cond_19

    .line 2740
    iget-object v13, v9, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    .line 2741
    .restart local v3    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    instance-of v13, v3, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;

    if-eqz v13, :cond_12

    .line 2742
    iput-object v10, v3, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->waveform:[B

    .line 2743
    iget v13, v3, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->flags:I

    or-int/lit8 v13, v13, 0x4

    iput v13, v3, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->flags:I

    .line 2739
    :cond_12
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 2701
    .end local v2    # "a":I
    .end local v3    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    .end local v10    # "oldWaveform":[B
    .end local v11    # "size":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    .end local v12    # "size2":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    :cond_13
    invoke-static/range {p2 .. p2}, Lorg/telegram/messenger/MessageObject;->isVoiceMessage(Lorg/telegram/tgnet/TLRPC$Message;)Z

    move-result v13

    if-nez v13, :cond_f

    invoke-static/range {p2 .. p2}, Lorg/telegram/messenger/MessageObject;->isRoundVideoMessage(Lorg/telegram/tgnet/TLRPC$Message;)Z

    move-result v13

    if-nez v13, :cond_f

    .line 2702
    move-object/from16 v0, p2

    iget-object v13, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget v13, v13, Lorg/telegram/tgnet/TLRPC$MessageMedia;->ttl_seconds:I

    if-nez v13, :cond_f

    .line 2703
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v13

    move-object/from16 v0, p2

    iget-object v14, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v14, v14, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    const/4 v15, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v13, v0, v14, v15}, Lorg/telegram/messenger/MessagesStorage;->putSentFile(Ljava/lang/String;Lorg/telegram/tgnet/TLObject;I)V

    goto/16 :goto_5

    .line 2720
    .restart local v11    # "size":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    .restart local v12    # "size2":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    :cond_14
    if-eqz v12, :cond_15

    invoke-static/range {p2 .. p2}, Lorg/telegram/messenger/MessageObject;->isStickerMessage(Lorg/telegram/tgnet/TLRPC$Message;)Z

    move-result v13

    if-eqz v13, :cond_15

    iget-object v13, v12, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v13, :cond_15

    .line 2721
    iget-object v13, v12, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iput-object v13, v11, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    goto/16 :goto_6

    .line 2722
    :cond_15
    if-eqz v12, :cond_16

    iget-object v13, v12, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    instance-of v13, v13, Lorg/telegram/tgnet/TLRPC$TL_fileLocationUnavailable;

    if-nez v13, :cond_17

    :cond_16
    instance-of v13, v12, Lorg/telegram/tgnet/TLRPC$TL_photoSizeEmpty;

    if-eqz v13, :cond_10

    .line 2723
    :cond_17
    iget-object v13, v9, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    move-object/from16 v0, p2

    iget-object v14, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v14, v14, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v14, v14, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iput-object v14, v13, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    goto/16 :goto_6

    .line 2730
    .restart local v2    # "a":I
    .restart local v3    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    .restart local v10    # "oldWaveform":[B
    :cond_18
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_7

    .line 2747
    .end local v3    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    :cond_19
    iget-object v13, v9, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    move-object/from16 v0, p2

    iget-object v14, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v14, v14, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget v14, v14, Lorg/telegram/tgnet/TLRPC$Document;->size:I

    iput v14, v13, Lorg/telegram/tgnet/TLRPC$Document;->size:I

    .line 2748
    iget-object v13, v9, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    move-object/from16 v0, p2

    iget-object v14, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v14, v14, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v14, v14, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    iput-object v14, v13, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    .line 2750
    move-object/from16 v0, p2

    iget v13, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    and-int/lit8 v13, v13, 0x4

    if-nez v13, :cond_1a

    invoke-static/range {p2 .. p2}, Lorg/telegram/messenger/MessageObject;->isOut(Lorg/telegram/tgnet/TLRPC$Message;)Z

    move-result v13

    if-eqz v13, :cond_1a

    .line 2751
    move-object/from16 v0, p2

    iget-object v13, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v13}, Lorg/telegram/messenger/MessageObject;->isNewGifDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v13

    if-eqz v13, :cond_1b

    .line 2752
    move-object/from16 v0, p2

    iget-object v13, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    move-object/from16 v0, p2

    iget v14, v0, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    invoke-static {v13, v14}, Lorg/telegram/messenger/query/StickersQuery;->addRecentGif(Lorg/telegram/tgnet/TLRPC$Document;I)V

    .line 2758
    :cond_1a
    :goto_9
    iget-object v13, v9, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    if-eqz v13, :cond_1f

    iget-object v13, v9, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v14

    const/4 v15, 0x4

    invoke-virtual {v14, v15}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v14

    invoke-virtual {v14}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_1f

    .line 2759
    new-instance v5, Ljava/io/File;

    iget-object v13, v9, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    invoke-direct {v5, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2760
    .restart local v5    # "cacheFile":Ljava/io/File;
    move-object/from16 v0, p2

    iget-object v13, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v14, v13, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    move-object/from16 v0, p2

    iget-object v13, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget v13, v13, Lorg/telegram/tgnet/TLRPC$MessageMedia;->ttl_seconds:I

    if-eqz v13, :cond_1c

    const/4 v13, 0x1

    :goto_a
    invoke-static {v14, v13}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object v6

    .line 2761
    .restart local v6    # "cacheFile2":Ljava/io/File;
    invoke-virtual {v5, v6}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v13

    if-nez v13, :cond_1d

    .line 2762
    iget-object v13, v9, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    move-object/from16 v0, p2

    iput-object v13, v0, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    .line 2763
    iget-object v13, v9, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    move-object/from16 v0, p2

    iput-object v13, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    goto/16 :goto_0

    .line 2753
    .end local v5    # "cacheFile":Ljava/io/File;
    .end local v6    # "cacheFile2":Ljava/io/File;
    :cond_1b
    move-object/from16 v0, p2

    iget-object v13, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v13}, Lorg/telegram/messenger/MessageObject;->isStickerDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v13

    if-eqz v13, :cond_1a

    .line 2754
    const/4 v13, 0x0

    move-object/from16 v0, p2

    iget-object v14, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v14, v14, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    move-object/from16 v0, p2

    iget v15, v0, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    invoke-static {v13, v14, v15}, Lorg/telegram/messenger/query/StickersQuery;->addRecentSticker(ILorg/telegram/tgnet/TLRPC$Document;I)V

    goto :goto_9

    .line 2760
    .restart local v5    # "cacheFile":Ljava/io/File;
    :cond_1c
    const/4 v13, 0x0

    goto :goto_a

    .line 2765
    .restart local v6    # "cacheFile2":Ljava/io/File;
    :cond_1d
    invoke-static/range {p2 .. p2}, Lorg/telegram/messenger/MessageObject;->isVideoMessage(Lorg/telegram/tgnet/TLRPC$Message;)Z

    move-result v13

    if-eqz v13, :cond_1e

    .line 2766
    const/4 v13, 0x1

    move-object/from16 v0, p1

    iput-boolean v13, v0, Lorg/telegram/messenger/MessageObject;->attachPathExists:Z

    goto/16 :goto_0

    .line 2768
    :cond_1e
    move-object/from16 v0, p1

    iget-boolean v13, v0, Lorg/telegram/messenger/MessageObject;->attachPathExists:Z

    move-object/from16 v0, p1

    iput-boolean v13, v0, Lorg/telegram/messenger/MessageObject;->mediaExists:Z

    .line 2769
    const/4 v13, 0x0

    move-object/from16 v0, p1

    iput-boolean v13, v0, Lorg/telegram/messenger/MessageObject;->attachPathExists:Z

    .line 2770
    const-string/jumbo v13, ""

    iput-object v13, v9, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    .line 2771
    if-eqz p3, :cond_0

    const-string/jumbo v13, "http"

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 2772
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v13

    invoke-virtual {v6}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v14

    iget-object v15, v9, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v15, v15, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    move-object/from16 v0, p3

    invoke-virtual {v13, v0, v14, v15}, Lorg/telegram/messenger/MessagesStorage;->addRecentLocalFile(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$Document;)V

    goto/16 :goto_0

    .line 2777
    .end local v5    # "cacheFile":Ljava/io/File;
    .end local v6    # "cacheFile2":Ljava/io/File;
    :cond_1f
    iget-object v13, v9, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    move-object/from16 v0, p2

    iput-object v13, v0, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    .line 2778
    iget-object v13, v9, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    move-object/from16 v0, p2

    iput-object v13, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    goto/16 :goto_0

    .line 2780
    .end local v2    # "a":I
    .end local v10    # "oldWaveform":[B
    .end local v11    # "size":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    .end local v12    # "size2":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    :cond_20
    move-object/from16 v0, p2

    iget-object v13, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v13, v13, Lorg/telegram/tgnet/TLRPC$TL_messageMediaContact;

    if-eqz v13, :cond_21

    iget-object v13, v9, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v13, v13, Lorg/telegram/tgnet/TLRPC$TL_messageMediaContact;

    if-eqz v13, :cond_21

    .line 2781
    move-object/from16 v0, p2

    iget-object v13, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iput-object v13, v9, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    goto/16 :goto_0

    .line 2782
    :cond_21
    move-object/from16 v0, p2

    iget-object v13, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v13, v13, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;

    if-eqz v13, :cond_22

    .line 2783
    move-object/from16 v0, p2

    iget-object v13, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iput-object v13, v9, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    goto/16 :goto_0

    .line 2784
    :cond_22
    move-object/from16 v0, p2

    iget-object v13, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v13, v13, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGame;

    if-eqz v13, :cond_0

    .line 2785
    move-object/from16 v0, p2

    iget-object v13, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iput-object v13, v9, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    .line 2786
    iget-object v13, v9, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v13, v13, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGame;

    if-eqz v13, :cond_0

    move-object/from16 v0, p2

    iget-object v13, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_0

    .line 2787
    move-object/from16 v0, p2

    iget-object v13, v0, Lorg/telegram/tgnet/TLRPC$Message;->entities:Ljava/util/ArrayList;

    iput-object v13, v9, Lorg/telegram/tgnet/TLRPC$Message;->entities:Ljava/util/ArrayList;

    .line 2788
    move-object/from16 v0, p2

    iget-object v13, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    iput-object v13, v9, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    goto/16 :goto_0
.end method


# virtual methods
.method public cancelSendingMessage(Lorg/telegram/messenger/MessageObject;)V
    .locals 12
    .param p1, "object"    # Lorg/telegram/messenger/MessageObject;

    .prologue
    const/4 v2, 0x0

    .line 531
    const/4 v9, 0x0

    .line 532
    .local v9, "keyToRemvoe":Ljava/lang/String;
    const/4 v7, 0x0

    .line 533
    .local v7, "enc":Z
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper;->delayedMessages:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 534
    .local v8, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;>;>;"
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/ArrayList;

    .line 535
    .local v11, "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;>;"
    const/4 v6, 0x0

    .local v6, "a":I
    :goto_1
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v6, v3, :cond_0

    .line 536
    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;

    .line 537
    .local v10, "message":Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;
    iget-object v3, v10, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v3}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v3

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    if-ne v3, v4, :cond_1

    .line 538
    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 539
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v3

    iget-object v4, v10, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/MediaController;->cancelVideoConvert(Lorg/telegram/messenger/MessageObject;)V

    .line 540
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_0

    .line 541
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    .end local v9    # "keyToRemvoe":Ljava/lang/String;
    check-cast v9, Ljava/lang/String;

    .line 542
    .restart local v9    # "keyToRemvoe":Ljava/lang/String;
    iget-object v3, v10, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->sendEncryptedRequest:Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;

    if-eqz v3, :cond_0

    .line 543
    const/4 v7, 0x1

    goto :goto_0

    .line 535
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 550
    .end local v6    # "a":I
    .end local v8    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;>;>;"
    .end local v10    # "message":Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;
    .end local v11    # "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;>;"
    :cond_2
    if-eqz v9, :cond_3

    .line 551
    const-string/jumbo v0, "http"

    invoke-virtual {v9, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 552
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v0

    invoke-virtual {v0, v9}, Lorg/telegram/messenger/ImageLoader;->cancelLoadHttpFile(Ljava/lang/String;)V

    .line 556
    :goto_2
    invoke-virtual {p0, v9}, Lorg/telegram/messenger/SendMessagesHelper;->stopVideoService(Ljava/lang/String;)V

    .line 558
    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 559
    .local v1, "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 560
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v3, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v4, v3, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    const/4 v5, 0x0

    move-object v3, v2

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/messenger/MessagesController;->deleteMessages(Ljava/util/ArrayList;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$EncryptedChat;IZ)V

    .line 561
    return-void

    .line 554
    .end local v1    # "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_4
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    invoke-virtual {v0, v9, v7}, Lorg/telegram/messenger/FileLoader;->cancelUploadFile(Ljava/lang/String;Z)V

    goto :goto_2
.end method

.method public checkUnsentMessages()V
    .locals 2

    .prologue
    .line 2815
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesStorage;->getUnsentMessages(I)V

    .line 2816
    return-void
.end method

.method public cleanup()V
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper;->delayedMessages:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 247
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper;->unsentMessages:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 248
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper;->sendingMessages:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 249
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper;->waitingForLocation:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 250
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper;->waitingForCallback:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 251
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper;->currentChatInfo:Lorg/telegram/tgnet/TLRPC$ChatFull;

    .line 252
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper;->locationProvider:Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;

    invoke-virtual {v0}, Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;->stop()V

    .line 253
    return-void
.end method

.method public varargs didReceivedNotification(I[Ljava/lang/Object;)V
    .locals 34
    .param p1, "id"    # I
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 261
    sget v4, Lorg/telegram/messenger/NotificationCenter;->FileDidUpload:I

    move/from16 v0, p1

    if-ne v0, v4, :cond_10

    .line 262
    const/4 v4, 0x0

    aget-object v24, p2, v4

    check-cast v24, Ljava/lang/String;

    .line 263
    .local v24, "location":Ljava/lang/String;
    const/4 v4, 0x1

    aget-object v19, p2, v4

    check-cast v19, Lorg/telegram/tgnet/TLRPC$InputFile;

    .line 264
    .local v19, "file":Lorg/telegram/tgnet/TLRPC$InputFile;
    const/4 v4, 0x2

    aget-object v8, p2, v4

    check-cast v8, Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;

    .line 265
    .local v8, "encryptedFile":Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper;->delayedMessages:Ljava/util/HashMap;

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/ArrayList;

    .line 266
    .local v16, "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;>;"
    if-eqz v16, :cond_f

    .line 267
    const/4 v15, 0x0

    .local v15, "a":I
    :goto_0
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v15, v4, :cond_e

    .line 268
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;

    .line 269
    .local v27, "message":Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;
    const/16 v26, 0x0

    .line 270
    .local v26, "media":Lorg/telegram/tgnet/TLRPC$InputMedia;
    move-object/from16 v0, v27

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->sendRequest:Lorg/telegram/tgnet/TLObject;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;

    if-eqz v4, :cond_3

    .line 271
    move-object/from16 v0, v27

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->sendRequest:Lorg/telegram/tgnet/TLObject;

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;

    iget-object v0, v4, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;->media:Lorg/telegram/tgnet/TLRPC$InputMedia;

    move-object/from16 v26, v0

    .line 276
    :cond_0
    :goto_1
    if-eqz v19, :cond_b

    if-eqz v26, :cond_b

    .line 277
    move-object/from16 v0, v27

    iget v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->type:I

    if-nez v4, :cond_4

    .line 278
    move-object/from16 v0, v19

    move-object/from16 v1, v26

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$InputMedia;->file:Lorg/telegram/tgnet/TLRPC$InputFile;

    .line 279
    move-object/from16 v0, v27

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->sendRequest:Lorg/telegram/tgnet/TLObject;

    move-object/from16 v0, v27

    iget-object v5, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    move-object/from16 v0, v27

    iget-object v6, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->originalPath:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v6}, Lorg/telegram/messenger/SendMessagesHelper;->performSendMessageRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;)V

    .line 310
    :cond_1
    :goto_2
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 311
    add-int/lit8 v15, v15, -0x1

    .line 267
    :cond_2
    :goto_3
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 272
    :cond_3
    move-object/from16 v0, v27

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->sendRequest:Lorg/telegram/tgnet/TLObject;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_messages_sendBroadcast;

    if-eqz v4, :cond_0

    .line 273
    move-object/from16 v0, v27

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->sendRequest:Lorg/telegram/tgnet/TLObject;

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_messages_sendBroadcast;

    iget-object v0, v4, Lorg/telegram/tgnet/TLRPC$TL_messages_sendBroadcast;->media:Lorg/telegram/tgnet/TLRPC$InputMedia;

    move-object/from16 v26, v0

    goto :goto_1

    .line 280
    :cond_4
    move-object/from16 v0, v27

    iget v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->type:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_7

    .line 281
    move-object/from16 v0, v26

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$InputMedia;->file:Lorg/telegram/tgnet/TLRPC$InputFile;

    if-nez v4, :cond_6

    .line 282
    move-object/from16 v0, v19

    move-object/from16 v1, v26

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$InputMedia;->file:Lorg/telegram/tgnet/TLRPC$InputFile;

    .line 283
    move-object/from16 v0, v26

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$InputMedia;->thumb:Lorg/telegram/tgnet/TLRPC$InputFile;

    if-nez v4, :cond_5

    move-object/from16 v0, v27

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v4, :cond_5

    .line 284
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lorg/telegram/messenger/SendMessagesHelper;->performSendDelayedMessage(Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;)V

    goto :goto_2

    .line 286
    :cond_5
    move-object/from16 v0, v27

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->sendRequest:Lorg/telegram/tgnet/TLObject;

    move-object/from16 v0, v27

    iget-object v5, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    move-object/from16 v0, v27

    iget-object v6, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->originalPath:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v6}, Lorg/telegram/messenger/SendMessagesHelper;->performSendMessageRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;)V

    goto :goto_2

    .line 289
    :cond_6
    move-object/from16 v0, v19

    move-object/from16 v1, v26

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$InputMedia;->thumb:Lorg/telegram/tgnet/TLRPC$InputFile;

    .line 290
    move-object/from16 v0, v26

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$InputMedia;->flags:I

    or-int/lit8 v4, v4, 0x4

    move-object/from16 v0, v26

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$InputMedia;->flags:I

    .line 291
    move-object/from16 v0, v27

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->sendRequest:Lorg/telegram/tgnet/TLObject;

    move-object/from16 v0, v27

    iget-object v5, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    move-object/from16 v0, v27

    iget-object v6, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->originalPath:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v6}, Lorg/telegram/messenger/SendMessagesHelper;->performSendMessageRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;)V

    goto :goto_2

    .line 293
    :cond_7
    move-object/from16 v0, v27

    iget v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->type:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_a

    .line 294
    move-object/from16 v0, v26

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$InputMedia;->file:Lorg/telegram/tgnet/TLRPC$InputFile;

    if-nez v4, :cond_9

    .line 295
    move-object/from16 v0, v19

    move-object/from16 v1, v26

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$InputMedia;->file:Lorg/telegram/tgnet/TLRPC$InputFile;

    .line 296
    move-object/from16 v0, v26

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$InputMedia;->thumb:Lorg/telegram/tgnet/TLRPC$InputFile;

    if-nez v4, :cond_8

    move-object/from16 v0, v27

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v4, :cond_8

    .line 297
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lorg/telegram/messenger/SendMessagesHelper;->performSendDelayedMessage(Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;)V

    goto/16 :goto_2

    .line 299
    :cond_8
    move-object/from16 v0, v27

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->sendRequest:Lorg/telegram/tgnet/TLObject;

    move-object/from16 v0, v27

    iget-object v5, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    move-object/from16 v0, v27

    iget-object v6, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->originalPath:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v6}, Lorg/telegram/messenger/SendMessagesHelper;->performSendMessageRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 302
    :cond_9
    move-object/from16 v0, v19

    move-object/from16 v1, v26

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$InputMedia;->thumb:Lorg/telegram/tgnet/TLRPC$InputFile;

    .line 303
    move-object/from16 v0, v26

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$InputMedia;->flags:I

    or-int/lit8 v4, v4, 0x4

    move-object/from16 v0, v26

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$InputMedia;->flags:I

    .line 304
    move-object/from16 v0, v27

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->sendRequest:Lorg/telegram/tgnet/TLObject;

    move-object/from16 v0, v27

    iget-object v5, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    move-object/from16 v0, v27

    iget-object v6, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->originalPath:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v6}, Lorg/telegram/messenger/SendMessagesHelper;->performSendMessageRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 306
    :cond_a
    move-object/from16 v0, v27

    iget v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->type:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_1

    .line 307
    move-object/from16 v0, v19

    move-object/from16 v1, v26

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$InputMedia;->file:Lorg/telegram/tgnet/TLRPC$InputFile;

    .line 308
    move-object/from16 v0, v27

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->sendRequest:Lorg/telegram/tgnet/TLObject;

    move-object/from16 v0, v27

    iget-object v5, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    move-object/from16 v0, v27

    iget-object v6, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->originalPath:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v6}, Lorg/telegram/messenger/SendMessagesHelper;->performSendMessageRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 312
    :cond_b
    if-eqz v8, :cond_2

    move-object/from16 v0, v27

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->sendEncryptedRequest:Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;

    if-eqz v4, :cond_2

    .line 313
    move-object/from16 v0, v27

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->sendEncryptedRequest:Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaVideo;

    if-nez v4, :cond_c

    move-object/from16 v0, v27

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->sendEncryptedRequest:Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaPhoto;

    if-nez v4, :cond_c

    move-object/from16 v0, v27

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->sendEncryptedRequest:Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaDocument;

    if-eqz v4, :cond_d

    .line 316
    :cond_c
    const/4 v4, 0x5

    aget-object v4, p2, v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v32

    .line 317
    .local v32, "size":J
    move-object/from16 v0, v27

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->sendEncryptedRequest:Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-wide/from16 v0, v32

    long-to-int v5, v0

    iput v5, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->size:I

    .line 319
    .end local v32    # "size":J
    :cond_d
    move-object/from16 v0, v27

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->sendEncryptedRequest:Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;

    iget-object v5, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    const/4 v4, 0x3

    aget-object v4, p2, v4

    check-cast v4, [B

    check-cast v4, [B

    iput-object v4, v5, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->key:[B

    .line 320
    move-object/from16 v0, v27

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->sendEncryptedRequest:Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;

    iget-object v5, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    const/4 v4, 0x4

    aget-object v4, p2, v4

    check-cast v4, [B

    check-cast v4, [B

    iput-object v4, v5, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->iv:[B

    .line 321
    invoke-static {}, Lorg/telegram/messenger/SecretChatHelper;->getInstance()Lorg/telegram/messenger/SecretChatHelper;

    move-result-object v4

    move-object/from16 v0, v27

    iget-object v5, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->sendEncryptedRequest:Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;

    move-object/from16 v0, v27

    iget-object v6, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    iget-object v6, v6, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v0, v27

    iget-object v7, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    move-object/from16 v0, v27

    iget-object v9, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->originalPath:Ljava/lang/String;

    move-object/from16 v0, v27

    iget-object v10, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    invoke-virtual/range {v4 .. v10}, Lorg/telegram/messenger/SecretChatHelper;->performSendEncryptedRequest(Lorg/telegram/tgnet/TLRPC$DecryptedMessage;Lorg/telegram/tgnet/TLRPC$Message;Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;Ljava/lang/String;Lorg/telegram/messenger/MessageObject;)V

    .line 322
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 323
    add-int/lit8 v15, v15, -0x1

    goto/16 :goto_3

    .line 326
    .end local v26    # "media":Lorg/telegram/tgnet/TLRPC$InputMedia;
    .end local v27    # "message":Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;
    :cond_e
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_f

    .line 327
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper;->delayedMessages:Ljava/util/HashMap;

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 528
    .end local v8    # "encryptedFile":Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;
    .end local v15    # "a":I
    .end local v16    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;>;"
    .end local v19    # "file":Lorg/telegram/tgnet/TLRPC$InputFile;
    .end local v24    # "location":Ljava/lang/String;
    :cond_f
    :goto_4
    return-void

    .line 330
    :cond_10
    sget v4, Lorg/telegram/messenger/NotificationCenter;->FileDidFailUpload:I

    move/from16 v0, p1

    if-ne v0, v4, :cond_15

    .line 331
    const/4 v4, 0x0

    aget-object v24, p2, v4

    check-cast v24, Ljava/lang/String;

    .line 332
    .restart local v24    # "location":Ljava/lang/String;
    const/4 v4, 0x1

    aget-object v4, p2, v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v18

    .line 333
    .local v18, "enc":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper;->delayedMessages:Ljava/util/HashMap;

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/ArrayList;

    .line 334
    .restart local v16    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;>;"
    if-eqz v16, :cond_f

    .line 335
    const/4 v15, 0x0

    .restart local v15    # "a":I
    :goto_5
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v15, v4, :cond_14

    .line 336
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;

    .line 337
    .local v29, "obj":Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;
    if-eqz v18, :cond_11

    move-object/from16 v0, v29

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->sendEncryptedRequest:Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;

    if-nez v4, :cond_12

    :cond_11
    if-nez v18, :cond_13

    move-object/from16 v0, v29

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->sendRequest:Lorg/telegram/tgnet/TLObject;

    if-eqz v4, :cond_13

    .line 338
    :cond_12
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    move-object/from16 v0, v29

    iget-object v5, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    iget-object v5, v5, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/MessagesStorage;->markMessageAsSendError(Lorg/telegram/tgnet/TLRPC$Message;)V

    .line 339
    move-object/from16 v0, v29

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    iget-object v4, v4, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    const/4 v5, 0x2

    iput v5, v4, Lorg/telegram/tgnet/TLRPC$Message;->send_state:I

    .line 340
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 341
    add-int/lit8 v15, v15, -0x1

    .line 342
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/NotificationCenter;->messageSendError:I

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    move-object/from16 v0, v29

    iget-object v9, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v9}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v6, v7

    invoke-virtual {v4, v5, v6}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 343
    move-object/from16 v0, v29

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/SendMessagesHelper;->processSentMessage(I)V

    .line 335
    :cond_13
    add-int/lit8 v15, v15, 0x1

    goto :goto_5

    .line 346
    .end local v29    # "obj":Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;
    :cond_14
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_f

    .line 347
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper;->delayedMessages:Ljava/util/HashMap;

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    .line 350
    .end local v15    # "a":I
    .end local v16    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;>;"
    .end local v18    # "enc":Z
    .end local v24    # "location":Ljava/lang/String;
    :cond_15
    sget v4, Lorg/telegram/messenger/NotificationCenter;->FilePreparingStarted:I

    move/from16 v0, p1

    if-ne v0, v4, :cond_18

    .line 351
    const/4 v4, 0x0

    aget-object v28, p2, v4

    check-cast v28, Lorg/telegram/messenger/MessageObject;

    .line 352
    .local v28, "messageObject":Lorg/telegram/messenger/MessageObject;
    invoke-virtual/range {v28 .. v28}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    if-eqz v4, :cond_f

    .line 355
    const/4 v4, 0x1

    aget-object v20, p2, v4

    check-cast v20, Ljava/lang/String;

    .line 357
    .local v20, "finalPath":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper;->delayedMessages:Ljava/util/HashMap;

    move-object/from16 v0, v28

    iget-object v5, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/ArrayList;

    .line 358
    .restart local v16    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;>;"
    if-eqz v16, :cond_f

    .line 359
    const/4 v15, 0x0

    .restart local v15    # "a":I
    :goto_6
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v15, v4, :cond_16

    .line 360
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;

    .line 361
    .restart local v27    # "message":Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;
    move-object/from16 v0, v27

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    move-object/from16 v0, v28

    if-ne v4, v0, :cond_17

    .line 362
    const/4 v4, 0x0

    move-object/from16 v0, v27

    iput-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    .line 363
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lorg/telegram/messenger/SendMessagesHelper;->performSendDelayedMessage(Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;)V

    .line 364
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 368
    .end local v27    # "message":Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;
    :cond_16
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_f

    .line 369
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper;->delayedMessages:Ljava/util/HashMap;

    move-object/from16 v0, v28

    iget-object v5, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    .line 359
    .restart local v27    # "message":Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;
    :cond_17
    add-int/lit8 v15, v15, 0x1

    goto :goto_6

    .line 372
    .end local v15    # "a":I
    .end local v16    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;>;"
    .end local v20    # "finalPath":Ljava/lang/String;
    .end local v27    # "message":Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;
    .end local v28    # "messageObject":Lorg/telegram/messenger/MessageObject;
    :cond_18
    sget v4, Lorg/telegram/messenger/NotificationCenter;->FileNewChunkAvailable:I

    move/from16 v0, p1

    if-ne v0, v4, :cond_1c

    .line 373
    const/4 v4, 0x0

    aget-object v28, p2, v4

    check-cast v28, Lorg/telegram/messenger/MessageObject;

    .line 374
    .restart local v28    # "messageObject":Lorg/telegram/messenger/MessageObject;
    invoke-virtual/range {v28 .. v28}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    if-eqz v4, :cond_f

    .line 377
    const/4 v4, 0x1

    aget-object v20, p2, v4

    check-cast v20, Ljava/lang/String;

    .line 378
    .restart local v20    # "finalPath":Ljava/lang/String;
    const/4 v4, 0x2

    aget-object v4, p2, v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    .line 379
    .local v22, "finalSize":J
    invoke-virtual/range {v28 .. v28}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v4

    long-to-int v4, v4

    if-nez v4, :cond_1a

    const/16 v21, 0x1

    .line 380
    .local v21, "isEncrypted":Z
    :goto_7
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v4

    move-object/from16 v0, v20

    move/from16 v1, v21

    move-wide/from16 v2, v22

    invoke-virtual {v4, v0, v1, v2, v3}, Lorg/telegram/messenger/FileLoader;->checkUploadNewDataAvailable(Ljava/lang/String;ZJ)V

    .line 381
    const-wide/16 v4, 0x0

    cmp-long v4, v22, v4

    if-eqz v4, :cond_f

    .line 382
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper;->delayedMessages:Ljava/util/HashMap;

    move-object/from16 v0, v28

    iget-object v5, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/ArrayList;

    .line 383
    .restart local v16    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;>;"
    if-eqz v16, :cond_f

    .line 384
    const/4 v15, 0x0

    .restart local v15    # "a":I
    :goto_8
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v15, v4, :cond_19

    .line 385
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;

    .line 386
    .restart local v27    # "message":Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;
    move-object/from16 v0, v27

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    move-object/from16 v0, v28

    if-ne v4, v0, :cond_1b

    .line 387
    move-object/from16 v0, v27

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    const/4 v5, 0x0

    iput-object v5, v4, Lorg/telegram/messenger/MessageObject;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    .line 388
    move-object/from16 v0, v27

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    iget-object v4, v4, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    const-string/jumbo v5, "-1"

    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    .line 389
    move-object/from16 v0, v27

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    iget-object v4, v4, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    move-wide/from16 v0, v22

    long-to-int v5, v0

    iput v5, v4, Lorg/telegram/tgnet/TLRPC$Document;->size:I

    .line 391
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 392
    .local v10, "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    move-object/from16 v0, v27

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    iget-object v4, v4, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 393
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v9

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual/range {v9 .. v14}, Lorg/telegram/messenger/MessagesStorage;->putMessages(Ljava/util/ArrayList;ZZZI)V

    .line 397
    .end local v10    # "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    .end local v27    # "message":Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;
    :cond_19
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_f

    .line 398
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper;->delayedMessages:Ljava/util/HashMap;

    move-object/from16 v0, v28

    iget-object v5, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    .line 379
    .end local v15    # "a":I
    .end local v16    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;>;"
    .end local v21    # "isEncrypted":Z
    :cond_1a
    const/16 v21, 0x0

    goto/16 :goto_7

    .line 384
    .restart local v15    # "a":I
    .restart local v16    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;>;"
    .restart local v21    # "isEncrypted":Z
    .restart local v27    # "message":Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;
    :cond_1b
    add-int/lit8 v15, v15, 0x1

    goto :goto_8

    .line 402
    .end local v15    # "a":I
    .end local v16    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;>;"
    .end local v20    # "finalPath":Ljava/lang/String;
    .end local v21    # "isEncrypted":Z
    .end local v22    # "finalSize":J
    .end local v27    # "message":Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;
    .end local v28    # "messageObject":Lorg/telegram/messenger/MessageObject;
    :cond_1c
    sget v4, Lorg/telegram/messenger/NotificationCenter;->FilePreparingFailed:I

    move/from16 v0, p1

    if-ne v0, v4, :cond_1f

    .line 403
    const/4 v4, 0x0

    aget-object v28, p2, v4

    check-cast v28, Lorg/telegram/messenger/MessageObject;

    .line 404
    .restart local v28    # "messageObject":Lorg/telegram/messenger/MessageObject;
    invoke-virtual/range {v28 .. v28}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    if-eqz v4, :cond_f

    .line 407
    const/4 v4, 0x1

    aget-object v20, p2, v4

    check-cast v20, Ljava/lang/String;

    .line 408
    .restart local v20    # "finalPath":Ljava/lang/String;
    move-object/from16 v0, v28

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/SendMessagesHelper;->stopVideoService(Ljava/lang/String;)V

    .line 410
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper;->delayedMessages:Ljava/util/HashMap;

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/ArrayList;

    .line 411
    .restart local v16    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;>;"
    if-eqz v16, :cond_f

    .line 412
    const/4 v15, 0x0

    .restart local v15    # "a":I
    :goto_9
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v15, v4, :cond_1e

    .line 413
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;

    .line 414
    .restart local v27    # "message":Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;
    move-object/from16 v0, v27

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    move-object/from16 v0, v28

    if-ne v4, v0, :cond_1d

    .line 415
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    move-object/from16 v0, v27

    iget-object v5, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    iget-object v5, v5, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/MessagesStorage;->markMessageAsSendError(Lorg/telegram/tgnet/TLRPC$Message;)V

    .line 416
    move-object/from16 v0, v27

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    iget-object v4, v4, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    const/4 v5, 0x2

    iput v5, v4, Lorg/telegram/tgnet/TLRPC$Message;->send_state:I

    .line 417
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 418
    add-int/lit8 v15, v15, -0x1

    .line 419
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/NotificationCenter;->messageSendError:I

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    move-object/from16 v0, v27

    iget-object v9, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v9}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v6, v7

    invoke-virtual {v4, v5, v6}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 420
    move-object/from16 v0, v27

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/SendMessagesHelper;->processSentMessage(I)V

    .line 412
    :cond_1d
    add-int/lit8 v15, v15, 0x1

    goto :goto_9

    .line 423
    .end local v27    # "message":Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;
    :cond_1e
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_f

    .line 424
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper;->delayedMessages:Ljava/util/HashMap;

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    .line 427
    .end local v15    # "a":I
    .end local v16    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;>;"
    .end local v20    # "finalPath":Ljava/lang/String;
    .end local v28    # "messageObject":Lorg/telegram/messenger/MessageObject;
    :cond_1f
    sget v4, Lorg/telegram/messenger/NotificationCenter;->httpFileDidLoaded:I

    move/from16 v0, p1

    if-ne v0, v4, :cond_23

    .line 428
    const/4 v4, 0x0

    aget-object v30, p2, v4

    check-cast v30, Ljava/lang/String;

    .line 429
    .local v30, "path":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper;->delayedMessages:Ljava/util/HashMap;

    move-object/from16 v0, v30

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/ArrayList;

    .line 430
    .restart local v16    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;>;"
    if-eqz v16, :cond_f

    .line 431
    const/4 v15, 0x0

    .restart local v15    # "a":I
    :goto_a
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v15, v4, :cond_22

    .line 432
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;

    .line 433
    .restart local v27    # "message":Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;
    move-object/from16 v0, v27

    iget v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->type:I

    if-nez v4, :cond_21

    .line 434
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    iget-object v5, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->httpLocation:Ljava/lang/String;

    invoke-static {v5}, Lorg/telegram/messenger/Utilities;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v27

    iget-object v5, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->httpLocation:Ljava/lang/String;

    const-string/jumbo v6, "file"

    invoke-static {v5, v6}, Lorg/telegram/messenger/ImageLoader;->getHttpUrlExtension(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    .line 435
    .local v25, "md5":Ljava/lang/String;
    new-instance v17, Ljava/io/File;

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v4

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v4

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    invoke-direct {v0, v4, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 436
    .local v17, "cacheFile":Ljava/io/File;
    sget-object v4, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v5, Lorg/telegram/messenger/SendMessagesHelper$2;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v27

    invoke-direct {v5, v0, v1, v2}, Lorg/telegram/messenger/SendMessagesHelper$2;-><init>(Lorg/telegram/messenger/SendMessagesHelper;Ljava/io/File;Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;)V

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 431
    .end local v17    # "cacheFile":Ljava/io/File;
    .end local v25    # "md5":Ljava/lang/String;
    :cond_20
    :goto_b
    add-int/lit8 v15, v15, 0x1

    goto :goto_a

    .line 464
    :cond_21
    move-object/from16 v0, v27

    iget v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->type:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_20

    .line 465
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    iget-object v5, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->httpLocation:Ljava/lang/String;

    invoke-static {v5}, Lorg/telegram/messenger/Utilities;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ".gif"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    .line 466
    .restart local v25    # "md5":Ljava/lang/String;
    new-instance v17, Ljava/io/File;

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v4

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v4

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    invoke-direct {v0, v4, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 467
    .restart local v17    # "cacheFile":Ljava/io/File;
    sget-object v4, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v5, Lorg/telegram/messenger/SendMessagesHelper$3;

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v17

    invoke-direct {v5, v0, v1, v2}, Lorg/telegram/messenger/SendMessagesHelper$3;-><init>(Lorg/telegram/messenger/SendMessagesHelper;Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;Ljava/io/File;)V

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_b

    .line 503
    .end local v17    # "cacheFile":Ljava/io/File;
    .end local v25    # "md5":Ljava/lang/String;
    .end local v27    # "message":Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;
    :cond_22
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper;->delayedMessages:Ljava/util/HashMap;

    move-object/from16 v0, v30

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    .line 505
    .end local v15    # "a":I
    .end local v16    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;>;"
    .end local v30    # "path":Ljava/lang/String;
    :cond_23
    sget v4, Lorg/telegram/messenger/NotificationCenter;->FileDidLoaded:I

    move/from16 v0, p1

    if-ne v0, v4, :cond_25

    .line 506
    const/4 v4, 0x0

    aget-object v30, p2, v4

    check-cast v30, Ljava/lang/String;

    .line 507
    .restart local v30    # "path":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper;->delayedMessages:Ljava/util/HashMap;

    move-object/from16 v0, v30

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/ArrayList;

    .line 508
    .restart local v16    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;>;"
    if-eqz v16, :cond_f

    .line 509
    const/4 v15, 0x0

    .restart local v15    # "a":I
    :goto_c
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v15, v4, :cond_24

    .line 510
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lorg/telegram/messenger/SendMessagesHelper;->performSendDelayedMessage(Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;)V

    .line 509
    add-int/lit8 v15, v15, 0x1

    goto :goto_c

    .line 512
    :cond_24
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper;->delayedMessages:Ljava/util/HashMap;

    move-object/from16 v0, v30

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    .line 514
    .end local v15    # "a":I
    .end local v16    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;>;"
    .end local v30    # "path":Ljava/lang/String;
    :cond_25
    sget v4, Lorg/telegram/messenger/NotificationCenter;->httpFileDidFailedLoad:I

    move/from16 v0, p1

    if-eq v0, v4, :cond_26

    sget v4, Lorg/telegram/messenger/NotificationCenter;->FileDidFailedLoad:I

    move/from16 v0, p1

    if-ne v0, v4, :cond_f

    .line 515
    :cond_26
    const/4 v4, 0x0

    aget-object v30, p2, v4

    check-cast v30, Ljava/lang/String;

    .line 517
    .restart local v30    # "path":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper;->delayedMessages:Ljava/util/HashMap;

    move-object/from16 v0, v30

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/ArrayList;

    .line 518
    .restart local v16    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;>;"
    if-eqz v16, :cond_f

    .line 519
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_27

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;

    .line 520
    .restart local v27    # "message":Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v5

    move-object/from16 v0, v27

    iget-object v6, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    iget-object v6, v6, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v5, v6}, Lorg/telegram/messenger/MessagesStorage;->markMessageAsSendError(Lorg/telegram/tgnet/TLRPC$Message;)V

    .line 521
    move-object/from16 v0, v27

    iget-object v5, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    iget-object v5, v5, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    const/4 v6, 0x2

    iput v6, v5, Lorg/telegram/tgnet/TLRPC$Message;->send_state:I

    .line 522
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v5

    sget v6, Lorg/telegram/messenger/NotificationCenter;->messageSendError:I

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v9, 0x0

    move-object/from16 v0, v27

    iget-object v11, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v11}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v7, v9

    invoke-virtual {v5, v6, v7}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 523
    move-object/from16 v0, v27

    iget-object v5, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v5}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/telegram/messenger/SendMessagesHelper;->processSentMessage(I)V

    goto :goto_d

    .line 525
    .end local v27    # "message":Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;
    :cond_27
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper;->delayedMessages:Ljava/util/HashMap;

    move-object/from16 v0, v30

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4
.end method

.method public editMessage(Lorg/telegram/messenger/MessageObject;Ljava/lang/String;ZLorg/telegram/ui/ActionBar/BaseFragment;Ljava/util/ArrayList;Ljava/lang/Runnable;)I
    .locals 4
    .param p1, "messageObject"    # Lorg/telegram/messenger/MessageObject;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "searchLinks"    # Z
    .param p4, "fragment"    # Lorg/telegram/ui/ActionBar/BaseFragment;
    .param p6, "callback"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/MessageObject;",
            "Ljava/lang/String;",
            "Z",
            "Lorg/telegram/ui/ActionBar/BaseFragment;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$MessageEntity;",
            ">;",
            "Ljava/lang/Runnable;",
            ")I"
        }
    .end annotation

    .prologue
    .local p5, "entities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$MessageEntity;>;"
    const/4 v1, 0x0

    .line 1099
    if-eqz p4, :cond_0

    invoke-virtual {p4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_0

    if-nez p6, :cond_1

    .line 1113
    :cond_0
    :goto_0
    return v1

    .line 1103
    :cond_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_editMessage;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_editMessage;-><init>()V

    .line 1104
    .local v0, "req":Lorg/telegram/tgnet/TLRPC$TL_messages_editMessage;
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInputPeer(I)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v2

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_editMessage;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 1105
    iput-object p2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_editMessage;->message:Ljava/lang/String;

    .line 1106
    iget v2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_editMessage;->flags:I

    or-int/lit16 v2, v2, 0x800

    iput v2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_editMessage;->flags:I

    .line 1107
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v2

    iput v2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_editMessage;->id:I

    .line 1108
    if-nez p3, :cond_2

    const/4 v1, 0x1

    :cond_2
    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_editMessage;->no_webpage:Z

    .line 1109
    if-eqz p5, :cond_3

    .line 1110
    iput-object p5, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_editMessage;->entities:Ljava/util/ArrayList;

    .line 1111
    iget v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_editMessage;->flags:I

    or-int/lit8 v1, v1, 0x8

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_editMessage;->flags:I

    .line 1113
    :cond_3
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/messenger/SendMessagesHelper$5;

    invoke-direct {v2, p0, p6, p4, v0}, Lorg/telegram/messenger/SendMessagesHelper$5;-><init>(Lorg/telegram/messenger/SendMessagesHelper;Ljava/lang/Runnable;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLRPC$TL_messages_editMessage;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    move-result v1

    goto :goto_0
.end method

.method public generatePhotoSizes(Ljava/lang/String;Landroid/net/Uri;)Lorg/telegram/tgnet/TLRPC$TL_photo;
    .locals 11
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "imageUri"    # Landroid/net/Uri;

    .prologue
    const/16 v5, 0x65

    const/4 v4, 0x0

    const/high16 v10, 0x44480000    # 800.0f

    const/high16 v6, 0x42b40000    # 90.0f

    const/4 v3, 0x1

    .line 2835
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getPhotoSize()I

    move-result v1

    int-to-float v1, v1

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getPhotoSize()I

    move-result v2

    int-to-float v2, v2

    invoke-static {p1, p2, v1, v2, v3}, Lorg/telegram/messenger/ImageLoader;->loadBitmap(Ljava/lang/String;Landroid/net/Uri;FFZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2836
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getPhotoSize()I

    move-result v1

    const/16 v2, 0x320

    if-eq v1, v2, :cond_0

    .line 2837
    invoke-static {p1, p2, v10, v10, v3}, Lorg/telegram/messenger/ImageLoader;->loadBitmap(Ljava/lang/String;Landroid/net/Uri;FFZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2839
    :cond_0
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 2840
    .local v9, "sizes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$PhotoSize;>;"
    const/16 v1, 0x37

    invoke-static {v0, v6, v6, v1, v3}, Lorg/telegram/messenger/ImageLoader;->scaleAndSaveImage(Landroid/graphics/Bitmap;FFIZ)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v8

    .line 2841
    .local v8, "size":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    if-eqz v8, :cond_1

    .line 2842
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2844
    :cond_1
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getPhotoSize()I

    move-result v1

    int-to-float v1, v1

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getPhotoSize()I

    move-result v2

    int-to-float v2, v2

    const/16 v3, 0x50

    move v6, v5

    invoke-static/range {v0 .. v6}, Lorg/telegram/messenger/ImageLoader;->scaleAndSaveImage(Landroid/graphics/Bitmap;FFIZII)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v8

    .line 2845
    if-eqz v8, :cond_2

    .line 2846
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2848
    :cond_2
    if-eqz v0, :cond_3

    .line 2849
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 2851
    :cond_3
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2852
    const/4 v7, 0x0

    .line 2858
    :goto_0
    return-object v7

    .line 2854
    :cond_4
    invoke-static {v4}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    .line 2855
    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_photo;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_photo;-><init>()V

    .line 2856
    .local v7, "photo":Lorg/telegram/tgnet/TLRPC$TL_photo;
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v1

    iput v1, v7, Lorg/telegram/tgnet/TLRPC$TL_photo;->date:I

    .line 2857
    iput-object v9, v7, Lorg/telegram/tgnet/TLRPC$TL_photo;->sizes:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method protected getDelayedMessages(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .param p1, "location"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2803
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper;->delayedMessages:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method protected getNextRandomId()J
    .locals 4

    .prologue
    .line 2807
    const-wide/16 v0, 0x0

    .line 2808
    .local v0, "val":J
    :goto_0
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 2809
    sget-object v2, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    invoke-virtual {v2}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v0

    goto :goto_0

    .line 2811
    :cond_0
    return-wide v0
.end method

.method public isSendingCallback(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$KeyboardButton;)Z
    .locals 6
    .param p1, "messageObject"    # Lorg/telegram/messenger/MessageObject;
    .param p2, "button"    # Lorg/telegram/tgnet/TLRPC$KeyboardButton;

    .prologue
    .line 1293
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 1294
    :cond_0
    const/4 v2, 0x0

    .line 1305
    :goto_0
    return v2

    .line 1297
    :cond_1
    instance-of v2, p2, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonGame;

    if-eqz v2, :cond_2

    .line 1298
    const/4 v1, 0x1

    .line 1304
    .local v1, "type":I
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p2, Lorg/telegram/tgnet/TLRPC$KeyboardButton;->data:[B

    invoke-static {v3}, Lorg/telegram/messenger/Utilities;->bytesToHex([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1305
    .local v0, "key":Ljava/lang/String;
    iget-object v2, p0, Lorg/telegram/messenger/SendMessagesHelper;->waitingForCallback:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0

    .line 1299
    .end local v0    # "key":Ljava/lang/String;
    .end local v1    # "type":I
    :cond_2
    instance-of v2, p2, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonBuy;

    if-eqz v2, :cond_3

    .line 1300
    const/4 v1, 0x2

    .restart local v1    # "type":I
    goto :goto_1

    .line 1302
    .end local v1    # "type":I
    :cond_3
    const/4 v1, 0x0

    .restart local v1    # "type":I
    goto :goto_1
.end method

.method public isSendingCurrentLocation(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$KeyboardButton;)Z
    .locals 4
    .param p1, "messageObject"    # Lorg/telegram/messenger/MessageObject;
    .param p2, "button"    # Lorg/telegram/tgnet/TLRPC$KeyboardButton;

    .prologue
    .line 1157
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 1158
    :cond_0
    const/4 v1, 0x0

    .line 1161
    :goto_0
    return v1

    .line 1160
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lorg/telegram/tgnet/TLRPC$KeyboardButton;->data:[B

    invoke-static {v2}, Lorg/telegram/messenger/Utilities;->bytesToHex([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    instance-of v1, p2, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonGame;

    if-eqz v1, :cond_2

    const-string/jumbo v1, "1"

    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1161
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Lorg/telegram/messenger/SendMessagesHelper;->waitingForLocation:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    .line 1160
    .end local v0    # "key":Ljava/lang/String;
    :cond_2
    const-string/jumbo v1, "0"

    goto :goto_1
.end method

.method public isSendingMessage(I)Z
    .locals 2
    .param p1, "mid"    # I

    .prologue
    .line 2479
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper;->sendingMessages:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public processForwardFromMyName(Lorg/telegram/messenger/MessageObject;J)V
    .locals 20
    .param p1, "messageObject"    # Lorg/telegram/messenger/MessageObject;
    .param p2, "did"    # J

    .prologue
    .line 628
    if-nez p1, :cond_1

    .line 677
    :cond_0
    :goto_0
    return-void

    .line 631
    :cond_1
    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz v4, :cond_7

    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;

    if-nez v4, :cond_7

    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;

    if-nez v4, :cond_7

    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGame;

    if-nez v4, :cond_7

    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_messageMediaInvoice;

    if-nez v4, :cond_7

    .line 632
    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_photo;

    if-eqz v4, :cond_2

    .line 633
    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v6, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    check-cast v6, Lorg/telegram/tgnet/TLRPC$TL_photo;

    const/4 v7, 0x0

    move-object/from16 v0, p1

    iget-object v10, v0, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget v13, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->ttl_seconds:I

    move-object/from16 v5, p0

    move-wide/from16 v8, p2

    invoke-virtual/range {v5 .. v13}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Lorg/telegram/tgnet/TLRPC$TL_photo;Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;I)V

    goto :goto_0

    .line 634
    :cond_2
    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_document;

    if-eqz v4, :cond_3

    .line 635
    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v5, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    check-cast v5, Lorg/telegram/tgnet/TLRPC$TL_document;

    const/4 v6, 0x0

    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v7, v4, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v10, v0, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget v13, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->ttl_seconds:I

    move-object/from16 v4, p0

    move-wide/from16 v8, p2

    invoke-virtual/range {v4 .. v13}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Lorg/telegram/tgnet/TLRPC$TL_document;Lorg/telegram/messenger/VideoEditedInfo;Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;I)V

    goto/16 :goto_0

    .line 636
    :cond_3
    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;

    if-nez v4, :cond_4

    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGeo;

    if-eqz v4, :cond_5

    .line 637
    :cond_4
    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v5, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v0, p1

    iget-object v8, v0, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v4, p0

    move-wide/from16 v6, p2

    invoke-virtual/range {v4 .. v10}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Lorg/telegram/tgnet/TLRPC$MessageMedia;JLorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;)V

    goto/16 :goto_0

    .line 638
    :cond_5
    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->phone_number:Ljava/lang/String;

    if-eqz v4, :cond_6

    .line 639
    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_userContact_old2;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_userContact_old2;-><init>()V

    .line 640
    .local v5, "user":Lorg/telegram/tgnet/TLRPC$User;
    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->phone_number:Ljava/lang/String;

    iput-object v4, v5, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    .line 641
    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->first_name:Ljava/lang/String;

    iput-object v4, v5, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    .line 642
    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->last_name:Ljava/lang/String;

    iput-object v4, v5, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    .line 643
    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->user_id:I

    iput v4, v5, Lorg/telegram/tgnet/TLRPC$User;->id:I

    .line 644
    move-object/from16 v0, p1

    iget-object v8, v0, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v4, p0

    move-wide/from16 v6, p2

    invoke-virtual/range {v4 .. v10}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Lorg/telegram/tgnet/TLRPC$User;JLorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;)V

    goto/16 :goto_0

    .line 645
    .end local v5    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_6
    move-wide/from16 v0, p2

    long-to-int v4, v0

    if-eqz v4, :cond_0

    .line 646
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 647
    .local v17, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 648
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-wide/from16 v2, p2

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Ljava/util/ArrayList;J)I

    goto/16 :goto_0

    .line 650
    .end local v17    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    :cond_7
    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    if-eqz v4, :cond_d

    .line 651
    const/4 v11, 0x0

    .line 652
    .local v11, "webPage":Lorg/telegram/tgnet/TLRPC$WebPage;
    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;

    if-eqz v4, :cond_8

    .line 653
    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v11, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    .line 656
    :cond_8
    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->entities:Ljava/util/ArrayList;

    if-eqz v4, :cond_b

    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->entities:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_b

    .line 657
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 658
    .local v13, "entities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$MessageEntity;>;"
    const/16 v16, 0x0

    .local v16, "a":I
    :goto_1
    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->entities:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v16

    if-ge v0, v4, :cond_c

    .line 659
    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->entities:Ljava/util/ArrayList;

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lorg/telegram/tgnet/TLRPC$MessageEntity;

    .line 660
    .local v18, "entity":Lorg/telegram/tgnet/TLRPC$MessageEntity;
    move-object/from16 v0, v18

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messageEntityBold;

    if-nez v4, :cond_9

    move-object/from16 v0, v18

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messageEntityItalic;

    if-nez v4, :cond_9

    move-object/from16 v0, v18

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messageEntityPre;

    if-nez v4, :cond_9

    move-object/from16 v0, v18

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messageEntityCode;

    if-nez v4, :cond_9

    move-object/from16 v0, v18

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messageEntityTextUrl;

    if-eqz v4, :cond_a

    .line 665
    :cond_9
    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 658
    :cond_a
    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    .line 669
    .end local v13    # "entities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$MessageEntity;>;"
    .end local v16    # "a":I
    .end local v18    # "entity":Lorg/telegram/tgnet/TLRPC$MessageEntity;
    :cond_b
    const/4 v13, 0x0

    .line 671
    .restart local v13    # "entities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$MessageEntity;>;"
    :cond_c
    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v7, v4, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v10, v0, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;

    const/4 v12, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v6, p0

    move-wide/from16 v8, p2

    invoke-virtual/range {v6 .. v15}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$WebPage;ZLjava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;)V

    goto/16 :goto_0

    .line 672
    .end local v11    # "webPage":Lorg/telegram/tgnet/TLRPC$WebPage;
    .end local v13    # "entities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$MessageEntity;>;"
    :cond_d
    move-wide/from16 v0, p2

    long-to-int v4, v0

    if-eqz v4, :cond_0

    .line 673
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 674
    .restart local v17    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 675
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-wide/from16 v2, p2

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Ljava/util/ArrayList;J)I

    goto/16 :goto_0
.end method

.method protected processSentMessage(I)V
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 620
    iget-object v1, p0, Lorg/telegram/messenger/SendMessagesHelper;->unsentMessages:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v0

    .line 621
    .local v0, "prevSize":I
    iget-object v1, p0, Lorg/telegram/messenger/SendMessagesHelper;->unsentMessages:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 622
    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/telegram/messenger/SendMessagesHelper;->unsentMessages:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 623
    invoke-virtual {p0}, Lorg/telegram/messenger/SendMessagesHelper;->checkUnsentMessages()V

    .line 625
    :cond_0
    return-void
.end method

.method protected processUnsentMessages(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$Message;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$User;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$Chat;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$EncryptedChat;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2819
    .local p1, "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    .local p2, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$User;>;"
    .local p3, "chats":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Chat;>;"
    .local p4, "encryptedChats":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$EncryptedChat;>;"
    new-instance v0, Lorg/telegram/messenger/SendMessagesHelper$11;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/SendMessagesHelper$11;-><init>(Lorg/telegram/messenger/SendMessagesHelper;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 2832
    return-void
.end method

.method protected putToSendingMessages(Lorg/telegram/tgnet/TLRPC$Message;)V
    .locals 2
    .param p1, "message"    # Lorg/telegram/tgnet/TLRPC$Message;

    .prologue
    .line 2471
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper;->sendingMessages:Ljava/util/HashMap;

    iget v1, p1, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2472
    return-void
.end method

.method protected removeFromSendingMessages(I)V
    .locals 2
    .param p1, "mid"    # I

    .prologue
    .line 2475
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper;->sendingMessages:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2476
    return-void
.end method

.method public retrySendMessage(Lorg/telegram/messenger/MessageObject;Z)Z
    .locals 12
    .param p1, "messageObject"    # Lorg/telegram/messenger/MessageObject;
    .param p2, "unsent"    # Z

    .prologue
    const-wide/16 v10, 0x0

    const/4 v8, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 564
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v5

    if-ltz v5, :cond_0

    .line 616
    :goto_0
    return v3

    .line 567
    :cond_0
    iget-object v5, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v5, v5, Lorg/telegram/tgnet/TLRPC$TL_messageEncryptedAction;

    if-eqz v5, :cond_e

    .line 568
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v6

    const/16 v5, 0x20

    shr-long/2addr v6, v5

    long-to-int v0, v6

    .line 569
    .local v0, "enc_id":I
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/telegram/messenger/MessagesController;->getEncryptedChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    move-result-object v1

    .line 570
    .local v1, "encryptedChat":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    if-nez v1, :cond_1

    .line 571
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v5

    iget-object v6, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v5, v6}, Lorg/telegram/messenger/MessagesStorage;->markMessageAsSendError(Lorg/telegram/tgnet/TLRPC$Message;)V

    .line 572
    iget-object v5, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    const/4 v6, 0x2

    iput v6, v5, Lorg/telegram/tgnet/TLRPC$Message;->send_state:I

    .line 573
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v5

    sget v6, Lorg/telegram/messenger/NotificationCenter;->messageSendError:I

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v3

    invoke-virtual {v5, v6, v4}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 574
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    invoke-virtual {p0, v4}, Lorg/telegram/messenger/SendMessagesHelper;->processSentMessage(I)V

    goto :goto_0

    .line 577
    :cond_1
    iget-object v3, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-wide v6, v3, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    cmp-long v3, v6, v10

    if-nez v3, :cond_2

    .line 578
    iget-object v3, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {p0}, Lorg/telegram/messenger/SendMessagesHelper;->getNextRandomId()J

    move-result-wide v6

    iput-wide v6, v3, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    .line 580
    :cond_2
    iget-object v3, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$MessageAction;->encryptedAction:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    instance-of v3, v3, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionSetMessageTTL;

    if-eqz v3, :cond_4

    .line 581
    invoke-static {}, Lorg/telegram/messenger/SecretChatHelper;->getInstance()Lorg/telegram/messenger/SecretChatHelper;

    move-result-object v3

    iget-object v5, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v3, v1, v5}, Lorg/telegram/messenger/SecretChatHelper;->sendTTLMessage(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$Message;)V

    :cond_3
    :goto_1
    move v3, v4

    .line 607
    goto :goto_0

    .line 582
    :cond_4
    iget-object v3, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$MessageAction;->encryptedAction:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    instance-of v3, v3, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionDeleteMessages;

    if-eqz v3, :cond_5

    .line 583
    invoke-static {}, Lorg/telegram/messenger/SecretChatHelper;->getInstance()Lorg/telegram/messenger/SecretChatHelper;

    move-result-object v3

    iget-object v5, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v3, v1, v8, v5}, Lorg/telegram/messenger/SecretChatHelper;->sendMessagesDeleteMessage(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$Message;)V

    goto :goto_1

    .line 584
    :cond_5
    iget-object v3, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$MessageAction;->encryptedAction:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    instance-of v3, v3, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionFlushHistory;

    if-eqz v3, :cond_6

    .line 585
    invoke-static {}, Lorg/telegram/messenger/SecretChatHelper;->getInstance()Lorg/telegram/messenger/SecretChatHelper;

    move-result-object v3

    iget-object v5, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v3, v1, v5}, Lorg/telegram/messenger/SecretChatHelper;->sendClearHistoryMessage(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$Message;)V

    goto :goto_1

    .line 586
    :cond_6
    iget-object v3, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$MessageAction;->encryptedAction:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    instance-of v3, v3, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionNotifyLayer;

    if-eqz v3, :cond_7

    .line 587
    invoke-static {}, Lorg/telegram/messenger/SecretChatHelper;->getInstance()Lorg/telegram/messenger/SecretChatHelper;

    move-result-object v3

    iget-object v5, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v3, v1, v5}, Lorg/telegram/messenger/SecretChatHelper;->sendNotifyLayerMessage(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$Message;)V

    goto :goto_1

    .line 588
    :cond_7
    iget-object v3, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$MessageAction;->encryptedAction:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    instance-of v3, v3, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionReadMessages;

    if-eqz v3, :cond_8

    .line 589
    invoke-static {}, Lorg/telegram/messenger/SecretChatHelper;->getInstance()Lorg/telegram/messenger/SecretChatHelper;

    move-result-object v3

    iget-object v5, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v3, v1, v8, v5}, Lorg/telegram/messenger/SecretChatHelper;->sendMessagesReadMessage(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$Message;)V

    goto :goto_1

    .line 590
    :cond_8
    iget-object v3, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$MessageAction;->encryptedAction:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    instance-of v3, v3, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionScreenshotMessages;

    if-eqz v3, :cond_9

    .line 591
    invoke-static {}, Lorg/telegram/messenger/SecretChatHelper;->getInstance()Lorg/telegram/messenger/SecretChatHelper;

    move-result-object v3

    iget-object v5, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v3, v1, v8, v5}, Lorg/telegram/messenger/SecretChatHelper;->sendScreenshotMessage(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$Message;)V

    goto :goto_1

    .line 592
    :cond_9
    iget-object v3, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$MessageAction;->encryptedAction:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    instance-of v3, v3, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionTyping;

    if-nez v3, :cond_3

    .line 594
    iget-object v3, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$MessageAction;->encryptedAction:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    instance-of v3, v3, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionResend;

    if-nez v3, :cond_3

    .line 596
    iget-object v3, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$MessageAction;->encryptedAction:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    instance-of v3, v3, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionCommitKey;

    if-eqz v3, :cond_a

    .line 597
    invoke-static {}, Lorg/telegram/messenger/SecretChatHelper;->getInstance()Lorg/telegram/messenger/SecretChatHelper;

    move-result-object v3

    iget-object v5, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v3, v1, v5}, Lorg/telegram/messenger/SecretChatHelper;->sendCommitKeyMessage(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$Message;)V

    goto/16 :goto_1

    .line 598
    :cond_a
    iget-object v3, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$MessageAction;->encryptedAction:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    instance-of v3, v3, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionAbortKey;

    if-eqz v3, :cond_b

    .line 599
    invoke-static {}, Lorg/telegram/messenger/SecretChatHelper;->getInstance()Lorg/telegram/messenger/SecretChatHelper;

    move-result-object v3

    iget-object v5, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v3, v1, v5, v10, v11}, Lorg/telegram/messenger/SecretChatHelper;->sendAbortKeyMessage(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$Message;J)V

    goto/16 :goto_1

    .line 600
    :cond_b
    iget-object v3, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$MessageAction;->encryptedAction:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    instance-of v3, v3, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionRequestKey;

    if-eqz v3, :cond_c

    .line 601
    invoke-static {}, Lorg/telegram/messenger/SecretChatHelper;->getInstance()Lorg/telegram/messenger/SecretChatHelper;

    move-result-object v3

    iget-object v5, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v3, v1, v5}, Lorg/telegram/messenger/SecretChatHelper;->sendRequestKeyMessage(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$Message;)V

    goto/16 :goto_1

    .line 602
    :cond_c
    iget-object v3, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$MessageAction;->encryptedAction:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    instance-of v3, v3, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionAcceptKey;

    if-eqz v3, :cond_d

    .line 603
    invoke-static {}, Lorg/telegram/messenger/SecretChatHelper;->getInstance()Lorg/telegram/messenger/SecretChatHelper;

    move-result-object v3

    iget-object v5, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v3, v1, v5}, Lorg/telegram/messenger/SecretChatHelper;->sendAcceptKeyMessage(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$Message;)V

    goto/16 :goto_1

    .line 604
    :cond_d
    iget-object v3, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$MessageAction;->encryptedAction:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    instance-of v3, v3, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionNoop;

    if-eqz v3, :cond_3

    .line 605
    invoke-static {}, Lorg/telegram/messenger/SecretChatHelper;->getInstance()Lorg/telegram/messenger/SecretChatHelper;

    move-result-object v3

    iget-object v5, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v3, v1, v5}, Lorg/telegram/messenger/SecretChatHelper;->sendNoopMessage(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$Message;)V

    goto/16 :goto_1

    .line 608
    .end local v0    # "enc_id":I
    .end local v1    # "encryptedChat":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    :cond_e
    iget-object v3, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v3, v3, Lorg/telegram/tgnet/TLRPC$TL_messageActionScreenshotTaken;

    if-eqz v3, :cond_f

    .line 609
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v6

    long-to-int v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v2

    .line 610
    .local v2, "user":Lorg/telegram/tgnet/TLRPC$User;
    iget-object v3, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$Message;->reply_to_msg_id:I

    iget-object v5, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {p0, v2, v3, v5}, Lorg/telegram/messenger/SendMessagesHelper;->sendScreenshotMessage(Lorg/telegram/tgnet/TLRPC$User;ILorg/telegram/tgnet/TLRPC$Message;)V

    .line 612
    .end local v2    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_f
    if-eqz p2, :cond_10

    .line 613
    iget-object v3, p0, Lorg/telegram/messenger/SendMessagesHelper;->unsentMessages:Ljava/util/HashMap;

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 615
    :cond_10
    invoke-virtual {p0, p1}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Lorg/telegram/messenger/MessageObject;)V

    move v3, v4

    .line 616
    goto/16 :goto_0
.end method

.method public sendCallback(ZLorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$KeyboardButton;Lorg/telegram/ui/ChatActivity;)V
    .locals 10
    .param p1, "cache"    # Z
    .param p2, "messageObject"    # Lorg/telegram/messenger/MessageObject;
    .param p3, "button"    # Lorg/telegram/tgnet/TLRPC$KeyboardButton;
    .param p4, "parentFragment"    # Lorg/telegram/ui/ChatActivity;

    .prologue
    const/4 v9, 0x2

    .line 1165
    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    if-nez p4, :cond_1

    .line 1290
    :cond_0
    :goto_0
    return-void

    .line 1170
    :cond_1
    instance-of v1, p3, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonGame;

    if-eqz v1, :cond_2

    .line 1171
    const/4 v3, 0x0

    .line 1172
    .local v3, "cacheFinal":Z
    const/4 v8, 0x1

    .line 1181
    .local v8, "type":I
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, "_"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, "_"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p3, Lorg/telegram/tgnet/TLRPC$KeyboardButton;->data:[B

    invoke-static {v4}, Lorg/telegram/messenger/Utilities;->bytesToHex([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, "_"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1182
    .local v2, "key":Ljava/lang/String;
    iget-object v1, p0, Lorg/telegram/messenger/SendMessagesHelper;->waitingForCallback:Ljava/util/HashMap;

    invoke-virtual {v1, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1184
    new-instance v0, Lorg/telegram/messenger/SendMessagesHelper$6;

    move-object v1, p0

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lorg/telegram/messenger/SendMessagesHelper$6;-><init>(Lorg/telegram/messenger/SendMessagesHelper;Ljava/lang/String;ZLorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$KeyboardButton;Lorg/telegram/ui/ChatActivity;)V

    .line 1265
    .local v0, "requestDelegate":Lorg/telegram/tgnet/RequestDelegate;
    if-eqz v3, :cond_4

    .line 1266
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v1

    invoke-virtual {v1, v2, v0}, Lorg/telegram/messenger/MessagesStorage;->getBotCache(Ljava/lang/String;Lorg/telegram/tgnet/RequestDelegate;)V

    goto :goto_0

    .line 1174
    .end local v0    # "requestDelegate":Lorg/telegram/tgnet/RequestDelegate;
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "cacheFinal":Z
    .end local v8    # "type":I
    :cond_2
    move v3, p1

    .line 1175
    .restart local v3    # "cacheFinal":Z
    instance-of v1, p3, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonBuy;

    if-eqz v1, :cond_3

    .line 1176
    const/4 v8, 0x2

    .restart local v8    # "type":I
    goto :goto_1

    .line 1178
    .end local v8    # "type":I
    :cond_3
    const/4 v8, 0x0

    .restart local v8    # "type":I
    goto :goto_1

    .line 1268
    .restart local v0    # "requestDelegate":Lorg/telegram/tgnet/RequestDelegate;
    .restart local v2    # "key":Ljava/lang/String;
    :cond_4
    instance-of v1, p3, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonBuy;

    if-eqz v1, :cond_6

    .line 1269
    iget-object v1, p2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->flags:I

    and-int/lit8 v1, v1, 0x4

    if-nez v1, :cond_5

    .line 1270
    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_payments_getPaymentForm;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_payments_getPaymentForm;-><init>()V

    .line 1271
    .local v7, "req":Lorg/telegram/tgnet/TLRPC$TL_payments_getPaymentForm;
    invoke-virtual {p2}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v1

    iput v1, v7, Lorg/telegram/tgnet/TLRPC$TL_payments_getPaymentForm;->msg_id:I

    .line 1272
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    invoke-virtual {v1, v7, v0, v9}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    goto/16 :goto_0

    .line 1274
    .end local v7    # "req":Lorg/telegram/tgnet/TLRPC$TL_payments_getPaymentForm;
    :cond_5
    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_payments_getPaymentReceipt;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_payments_getPaymentReceipt;-><init>()V

    .line 1275
    .local v7, "req":Lorg/telegram/tgnet/TLRPC$TL_payments_getPaymentReceipt;
    iget-object v1, p2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$MessageMedia;->receipt_msg_id:I

    iput v1, v7, Lorg/telegram/tgnet/TLRPC$TL_payments_getPaymentReceipt;->msg_id:I

    .line 1276
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    invoke-virtual {v1, v7, v0, v9}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    goto/16 :goto_0

    .line 1279
    .end local v7    # "req":Lorg/telegram/tgnet/TLRPC$TL_payments_getPaymentReceipt;
    :cond_6
    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_messages_getBotCallbackAnswer;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_messages_getBotCallbackAnswer;-><init>()V

    .line 1280
    .local v7, "req":Lorg/telegram/tgnet/TLRPC$TL_messages_getBotCallbackAnswer;
    invoke-virtual {p2}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v4

    long-to-int v1, v4

    invoke-static {v1}, Lorg/telegram/messenger/MessagesController;->getInputPeer(I)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v1

    iput-object v1, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_getBotCallbackAnswer;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 1281
    invoke-virtual {p2}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v1

    iput v1, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_getBotCallbackAnswer;->msg_id:I

    .line 1282
    instance-of v1, p3, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonGame;

    iput-boolean v1, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_getBotCallbackAnswer;->game:Z

    .line 1283
    iget-object v1, p3, Lorg/telegram/tgnet/TLRPC$KeyboardButton;->data:[B

    if-eqz v1, :cond_7

    .line 1284
    iget v1, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_getBotCallbackAnswer;->flags:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_getBotCallbackAnswer;->flags:I

    .line 1285
    iget-object v1, p3, Lorg/telegram/tgnet/TLRPC$KeyboardButton;->data:[B

    iput-object v1, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_getBotCallbackAnswer;->data:[B

    .line 1287
    :cond_7
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    invoke-virtual {v1, v7, v0, v9}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    goto/16 :goto_0
.end method

.method public sendCurrentLocation(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$KeyboardButton;)V
    .locals 4
    .param p1, "messageObject"    # Lorg/telegram/messenger/MessageObject;
    .param p2, "button"    # Lorg/telegram/tgnet/TLRPC$KeyboardButton;

    .prologue
    .line 1148
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 1154
    :cond_0
    :goto_0
    return-void

    .line 1151
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lorg/telegram/tgnet/TLRPC$KeyboardButton;->data:[B

    invoke-static {v2}, Lorg/telegram/messenger/Utilities;->bytesToHex([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    instance-of v1, p2, Lorg/telegram/tgnet/TLRPC$TL_keyboardButtonGame;

    if-eqz v1, :cond_2

    const-string/jumbo v1, "1"

    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1152
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Lorg/telegram/messenger/SendMessagesHelper;->waitingForLocation:Ljava/util/HashMap;

    invoke-virtual {v1, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1153
    iget-object v1, p0, Lorg/telegram/messenger/SendMessagesHelper;->locationProvider:Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;

    invoke-virtual {v1}, Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;->start()V

    goto :goto_0

    .line 1151
    .end local v0    # "key":Ljava/lang/String;
    :cond_2
    const-string/jumbo v1, "0"

    goto :goto_1
.end method

.method public sendGame(Lorg/telegram/tgnet/TLRPC$InputPeer;Lorg/telegram/tgnet/TLRPC$TL_inputMediaGame;JJ)V
    .locals 9
    .param p1, "peer"    # Lorg/telegram/tgnet/TLRPC$InputPeer;
    .param p2, "game"    # Lorg/telegram/tgnet/TLRPC$TL_inputMediaGame;
    .param p3, "random_id"    # J
    .param p5, "taskId"    # J

    .prologue
    .line 1309
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 1346
    :cond_0
    :goto_0
    return-void

    .line 1312
    :cond_1
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;-><init>()V

    .line 1313
    .local v3, "request":Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;
    iput-object p1, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 1314
    iget-object v6, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    instance-of v6, v6, Lorg/telegram/tgnet/TLRPC$TL_inputPeerChannel;

    if-eqz v6, :cond_2

    .line 1315
    sget-object v6, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v7, "Notifications"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "silent_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p1, Lorg/telegram/tgnet/TLRPC$InputPeer;->channel_id:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;->silent:Z

    .line 1317
    :cond_2
    const-wide/16 v6, 0x0

    cmp-long v6, p3, v6

    if-eqz v6, :cond_3

    move-wide v6, p3

    :goto_1
    iput-wide v6, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;->random_id:J

    .line 1318
    iput-object p2, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;->media:Lorg/telegram/tgnet/TLRPC$InputMedia;

    .line 1320
    const-wide/16 v6, 0x0

    cmp-long v6, p5, v6

    if-nez v6, :cond_4

    .line 1321
    const/4 v0, 0x0

    .line 1323
    .local v0, "data":Lorg/telegram/tgnet/NativeByteBuffer;
    :try_start_0
    new-instance v1, Lorg/telegram/tgnet/NativeByteBuffer;

    invoke-virtual {p1}, Lorg/telegram/tgnet/TLRPC$InputPeer;->getObjectSize()I

    move-result v6

    invoke-virtual {p2}, Lorg/telegram/tgnet/TLRPC$TL_inputMediaGame;->getObjectSize()I

    move-result v7

    add-int/2addr v6, v7

    add-int/lit8 v6, v6, 0x4

    add-int/lit8 v6, v6, 0x8

    invoke-direct {v1, v6}, Lorg/telegram/tgnet/NativeByteBuffer;-><init>(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1324
    .end local v0    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .local v1, "data":Lorg/telegram/tgnet/NativeByteBuffer;
    const/4 v6, 0x3

    :try_start_1
    invoke-virtual {v1, v6}, Lorg/telegram/tgnet/NativeByteBuffer;->writeInt32(I)V

    .line 1325
    invoke-virtual {v1, p3, p4}, Lorg/telegram/tgnet/NativeByteBuffer;->writeInt64(J)V

    .line 1326
    invoke-virtual {p1, v1}, Lorg/telegram/tgnet/TLRPC$InputPeer;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 1327
    invoke-virtual {p2, v1}, Lorg/telegram/tgnet/TLRPC$TL_inputMediaGame;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v1

    .line 1331
    .end local v1    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .restart local v0    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    :goto_2
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v6

    invoke-virtual {v6, v0}, Lorg/telegram/messenger/MessagesStorage;->createPendingTask(Lorg/telegram/tgnet/NativeByteBuffer;)J

    move-result-wide v4

    .line 1335
    .end local v0    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .local v4, "newTaskId":J
    :goto_3
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v6

    new-instance v7, Lorg/telegram/messenger/SendMessagesHelper$7;

    invoke-direct {v7, p0, v4, v5}, Lorg/telegram/messenger/SendMessagesHelper$7;-><init>(Lorg/telegram/messenger/SendMessagesHelper;J)V

    invoke-virtual {v6, v3, v7}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto :goto_0

    .line 1317
    .end local v4    # "newTaskId":J
    :cond_3
    invoke-virtual {p0}, Lorg/telegram/messenger/SendMessagesHelper;->getNextRandomId()J

    move-result-wide v6

    goto :goto_1

    .line 1328
    .restart local v0    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    :catch_0
    move-exception v2

    .line 1329
    .local v2, "e":Ljava/lang/Exception;
    :goto_4
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 1333
    .end local v0    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_4
    move-wide v4, p5

    .restart local v4    # "newTaskId":J
    goto :goto_3

    .line 1328
    .end local v4    # "newTaskId":J
    .restart local v1    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    :catch_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    .restart local v0    # "data":Lorg/telegram/tgnet/NativeByteBuffer;
    goto :goto_4
.end method

.method public sendMessage(Ljava/util/ArrayList;J)I
    .locals 42
    .param p2, "peer"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;J)I"
        }
    .end annotation

    .prologue
    .line 777
    .local p1, "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 778
    :cond_0
    const/16 v36, 0x0

    .line 1095
    :cond_1
    :goto_0
    return v36

    .line 780
    :cond_2
    move-wide/from16 v0, p2

    long-to-int v0, v0

    move/from16 v28, v0

    .line 781
    .local v28, "lower_id":I
    const/16 v36, 0x0

    .line 782
    .local v36, "sendResult":I
    if-eqz v28, :cond_2a

    .line 783
    move-wide/from16 v0, p2

    long-to-int v4, v0

    invoke-static {v4}, Lorg/telegram/messenger/MessagesController;->getPeer(I)Lorg/telegram/tgnet/TLRPC$Peer;

    move-result-object v13

    .line 784
    .local v13, "to_id":Lorg/telegram/tgnet/TLRPC$Peer;
    const/16 v24, 0x0

    .line 785
    .local v24, "isMegagroup":Z
    const/16 v25, 0x0

    .line 786
    .local v25, "isSignature":Z
    const/16 v19, 0x1

    .line 787
    .local v19, "canSendStickers":Z
    const/16 v17, 0x1

    .line 788
    .local v17, "canSendMedia":Z
    const/16 v18, 0x1

    .line 789
    .local v18, "canSendPreview":Z
    if-lez v28, :cond_3

    .line 790
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v37

    .line 791
    .local v37, "sendToUser":Lorg/telegram/tgnet/TLRPC$User;
    if-nez v37, :cond_4

    .line 792
    const/16 v36, 0x0

    goto :goto_0

    .line 795
    .end local v37    # "sendToUser":Lorg/telegram/tgnet/TLRPC$User;
    :cond_3
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    move/from16 v0, v28

    neg-int v5, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v20

    .line 796
    .local v20, "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-static/range {v20 .. v20}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 797
    move-object/from16 v0, v20

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    move/from16 v24, v0

    .line 798
    move-object/from16 v0, v20

    iget-boolean v0, v0, Lorg/telegram/tgnet/TLRPC$Chat;->signatures:Z

    move/from16 v25, v0

    .line 799
    move-object/from16 v0, v20

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Chat;->banned_rights:Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;

    if-eqz v4, :cond_4

    .line 800
    move-object/from16 v0, v20

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Chat;->banned_rights:Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;

    iget-boolean v4, v4, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;->send_stickers:Z

    if-nez v4, :cond_6

    const/16 v19, 0x1

    .line 801
    :goto_1
    move-object/from16 v0, v20

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Chat;->banned_rights:Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;

    iget-boolean v4, v4, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;->send_media:Z

    if-nez v4, :cond_7

    const/16 v17, 0x1

    .line 802
    :goto_2
    move-object/from16 v0, v20

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Chat;->banned_rights:Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;

    iget-boolean v4, v4, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;->embed_links:Z

    if-nez v4, :cond_8

    const/16 v18, 0x1

    .line 807
    .end local v20    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_4
    :goto_3
    new-instance v34, Ljava/util/ArrayList;

    invoke-direct/range {v34 .. v34}, Ljava/util/ArrayList;-><init>()V

    .line 808
    .local v34, "objArr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 809
    .local v16, "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    new-instance v35, Ljava/util/ArrayList;

    invoke-direct/range {v35 .. v35}, Ljava/util/ArrayList;-><init>()V

    .line 810
    .local v35, "randomIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 811
    .local v22, "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v29, Ljava/util/HashMap;

    invoke-direct/range {v29 .. v29}, Ljava/util/HashMap;-><init>()V

    .line 812
    .local v29, "messagesByRandomIds":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lorg/telegram/tgnet/TLRPC$Message;>;"
    invoke-static/range {v28 .. v28}, Lorg/telegram/messenger/MessagesController;->getInputPeer(I)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v23

    .line 813
    .local v23, "inputPeer":Lorg/telegram/tgnet/TLRPC$InputPeer;
    const-wide/16 v26, 0x0

    .line 814
    .local v26, "lastDialogId":J
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v31

    .line 815
    .local v31, "myId":I
    move/from16 v0, v31

    int-to-long v4, v0

    cmp-long v4, p2, v4

    if-nez v4, :cond_9

    const/16 v39, 0x1

    .line 816
    .local v39, "toMyself":Z
    :goto_4
    const/4 v15, 0x0

    .local v15, "a":I
    :goto_5
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v15, v4, :cond_1

    .line 817
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lorg/telegram/messenger/MessageObject;

    .line 818
    .local v30, "msgObj":Lorg/telegram/messenger/MessageObject;
    invoke-virtual/range {v30 .. v30}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    if-lez v4, :cond_5

    invoke-virtual/range {v30 .. v30}, Lorg/telegram/messenger/MessageObject;->isSecretPhoto()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 816
    :cond_5
    :goto_6
    add-int/lit8 v15, v15, 0x1

    goto :goto_5

    .line 800
    .end local v15    # "a":I
    .end local v16    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    .end local v22    # "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v23    # "inputPeer":Lorg/telegram/tgnet/TLRPC$InputPeer;
    .end local v26    # "lastDialogId":J
    .end local v29    # "messagesByRandomIds":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lorg/telegram/tgnet/TLRPC$Message;>;"
    .end local v30    # "msgObj":Lorg/telegram/messenger/MessageObject;
    .end local v31    # "myId":I
    .end local v34    # "objArr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    .end local v35    # "randomIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v39    # "toMyself":Z
    .restart local v20    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_6
    const/16 v19, 0x0

    goto :goto_1

    .line 801
    :cond_7
    const/16 v17, 0x0

    goto :goto_2

    .line 802
    :cond_8
    const/16 v18, 0x0

    goto :goto_3

    .line 815
    .end local v20    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    .restart local v16    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    .restart local v22    # "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v23    # "inputPeer":Lorg/telegram/tgnet/TLRPC$InputPeer;
    .restart local v26    # "lastDialogId":J
    .restart local v29    # "messagesByRandomIds":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lorg/telegram/tgnet/TLRPC$Message;>;"
    .restart local v31    # "myId":I
    .restart local v34    # "objArr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    .restart local v35    # "randomIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :cond_9
    const/16 v39, 0x0

    goto :goto_4

    .line 821
    .restart local v15    # "a":I
    .restart local v30    # "msgObj":Lorg/telegram/messenger/MessageObject;
    .restart local v39    # "toMyself":Z
    :cond_a
    if-nez v19, :cond_c

    invoke-virtual/range {v30 .. v30}, Lorg/telegram/messenger/MessageObject;->isSticker()Z

    move-result v4

    if-nez v4, :cond_b

    invoke-virtual/range {v30 .. v30}, Lorg/telegram/messenger/MessageObject;->isGif()Z

    move-result v4

    if-nez v4, :cond_b

    invoke-virtual/range {v30 .. v30}, Lorg/telegram/messenger/MessageObject;->isGame()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 822
    :cond_b
    if-nez v36, :cond_5

    .line 823
    const/16 v36, 0x1

    goto :goto_6

    .line 826
    :cond_c
    if-nez v17, :cond_e

    move-object/from16 v0, v30

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;

    if-nez v4, :cond_d

    move-object/from16 v0, v30

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    if-eqz v4, :cond_e

    .line 827
    :cond_d
    if-nez v36, :cond_5

    .line 828
    const/16 v36, 0x2

    goto :goto_6

    .line 833
    :cond_e
    new-instance v32, Lorg/telegram/tgnet/TLRPC$TL_message;

    invoke-direct/range {v32 .. v32}, Lorg/telegram/tgnet/TLRPC$TL_message;-><init>()V

    .line 834
    .local v32, "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    invoke-virtual/range {v30 .. v30}, Lorg/telegram/messenger/MessageObject;->isForwarded()Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 835
    move-object/from16 v0, v30

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;

    move-object/from16 v0, v32

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;

    .line 836
    const/4 v4, 0x4

    move-object/from16 v0, v32

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    .line 865
    :cond_f
    :goto_7
    if-nez v18, :cond_22

    move-object/from16 v0, v30

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;

    if-eqz v4, :cond_22

    .line 866
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;-><init>()V

    move-object/from16 v0, v32

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    .line 870
    :goto_8
    move-object/from16 v0, v32

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz v4, :cond_10

    .line 871
    move-object/from16 v0, v32

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    or-int/lit16 v4, v4, 0x200

    move-object/from16 v0, v32

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    .line 873
    :cond_10
    if-eqz v24, :cond_11

    .line 874
    move-object/from16 v0, v32

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    const/high16 v5, -0x80000000

    or-int/2addr v4, v5

    move-object/from16 v0, v32

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    .line 876
    :cond_11
    move-object/from16 v0, v30

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->via_bot_id:I

    if-eqz v4, :cond_12

    .line 877
    move-object/from16 v0, v30

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->via_bot_id:I

    move-object/from16 v0, v32

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->via_bot_id:I

    .line 878
    move-object/from16 v0, v32

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    or-int/lit16 v4, v4, 0x800

    move-object/from16 v0, v32

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    .line 880
    :cond_12
    move-object/from16 v0, v30

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    move-object/from16 v0, v32

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    .line 881
    invoke-virtual/range {v30 .. v30}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    move-object/from16 v0, v32

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->fwd_msg_id:I

    .line 882
    move-object/from16 v0, v30

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    move-object/from16 v0, v32

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    .line 883
    move-object/from16 v0, v30

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->entities:Ljava/util/ArrayList;

    move-object/from16 v0, v32

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->entities:Ljava/util/ArrayList;

    .line 884
    move-object/from16 v0, v32

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->entities:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_13

    .line 885
    move-object/from16 v0, v32

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    or-int/lit16 v4, v4, 0x80

    move-object/from16 v0, v32

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    .line 887
    :cond_13
    move-object/from16 v0, v32

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    if-nez v4, :cond_14

    .line 888
    const-string/jumbo v4, ""

    move-object/from16 v0, v32

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    .line 890
    :cond_14
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getNewMessageId()I

    move-result v4

    move-object/from16 v0, v32

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    move-object/from16 v0, v32

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->local_id:I

    .line 891
    const/4 v4, 0x1

    move-object/from16 v0, v32

    iput-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    .line 892
    iget v4, v13, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    if-eqz v4, :cond_24

    if-nez v24, :cond_24

    .line 893
    if-eqz v25, :cond_23

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v4

    :goto_9
    move-object/from16 v0, v32

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    .line 894
    const/4 v4, 0x1

    move-object/from16 v0, v32

    iput-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->post:Z

    .line 899
    :goto_a
    move-object/from16 v0, v32

    iget-wide v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_15

    .line 900
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/SendMessagesHelper;->getNextRandomId()J

    move-result-wide v4

    move-object/from16 v0, v32

    iput-wide v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    .line 902
    :cond_15
    move-object/from16 v0, v32

    iget-wide v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 903
    move-object/from16 v0, v32

    iget-wide v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 904
    move-object/from16 v0, v32

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->fwd_msg_id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 905
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v4

    move-object/from16 v0, v32

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    .line 906
    move-object/from16 v0, v23

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_inputPeerChannel;

    if-eqz v4, :cond_26

    .line 907
    if-nez v24, :cond_25

    .line 908
    const/4 v4, 0x1

    move-object/from16 v0, v32

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->views:I

    .line 909
    move-object/from16 v0, v32

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    or-int/lit16 v4, v4, 0x400

    move-object/from16 v0, v32

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    .line 920
    :goto_b
    move-wide/from16 v0, p2

    move-object/from16 v2, v32

    iput-wide v0, v2, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    .line 921
    move-object/from16 v0, v32

    iput-object v13, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 922
    invoke-static/range {v32 .. v32}, Lorg/telegram/messenger/MessageObject;->isVoiceMessage(Lorg/telegram/tgnet/TLRPC$Message;)Z

    move-result v4

    if-nez v4, :cond_16

    invoke-static/range {v32 .. v32}, Lorg/telegram/messenger/MessageObject;->isRoundVideoMessage(Lorg/telegram/tgnet/TLRPC$Message;)Z

    move-result v4

    if-eqz v4, :cond_17

    :cond_16
    move-object/from16 v0, v32

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    if-nez v4, :cond_17

    .line 923
    const/4 v4, 0x1

    move-object/from16 v0, v32

    iput-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media_unread:Z

    .line 925
    :cond_17
    move-object/from16 v0, v30

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_peerChannel;

    if-eqz v4, :cond_18

    .line 926
    move-object/from16 v0, v30

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    neg-int v4, v4

    move-object/from16 v0, v32

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->ttl:I

    .line 928
    :cond_18
    new-instance v33, Lorg/telegram/messenger/MessageObject;

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object/from16 v0, v33

    move-object/from16 v1, v32

    invoke-direct {v0, v1, v4, v5}, Lorg/telegram/messenger/MessageObject;-><init>(Lorg/telegram/tgnet/TLRPC$Message;Ljava/util/AbstractMap;Z)V

    .line 929
    .local v33, "newMsgObj":Lorg/telegram/messenger/MessageObject;
    move-object/from16 v0, v33

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    const/4 v5, 0x1

    iput v5, v4, Lorg/telegram/tgnet/TLRPC$Message;->send_state:I

    .line 930
    move-object/from16 v0, v34

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 931
    move-object/from16 v0, v16

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 933
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/SendMessagesHelper;->putToSendingMessages(Lorg/telegram/tgnet/TLRPC$Message;)V

    .line 934
    const/16 v21, 0x0

    .line 936
    .local v21, "differentDialog":Z
    sget-boolean v4, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-eqz v4, :cond_19

    .line 937
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "forward message user_id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v23

    iget v5, v0, Lorg/telegram/tgnet/TLRPC$InputPeer;->user_id:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " chat_id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v23

    iget v5, v0, Lorg/telegram/tgnet/TLRPC$InputPeer;->chat_id:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " channel_id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v23

    iget v5, v0, Lorg/telegram/tgnet/TLRPC$InputPeer;->channel_id:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " access_hash = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v23

    iget-wide v6, v0, Lorg/telegram/tgnet/TLRPC$InputPeer;->access_hash:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 940
    :cond_19
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/16 v5, 0x64

    if-eq v4, v5, :cond_1a

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-eq v15, v4, :cond_1a

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-eq v15, v4, :cond_5

    add-int/lit8 v4, v15, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v4

    invoke-virtual/range {v30 .. v30}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-eqz v4, :cond_5

    .line 941
    :cond_1a
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    new-instance v5, Ljava/util/ArrayList;

    move-object/from16 v0, v16

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Lorg/telegram/messenger/MessagesStorage;->putMessages(Ljava/util/ArrayList;ZZZI)V

    .line 942
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    move-wide/from16 v0, p2

    move-object/from16 v2, v34

    invoke-virtual {v4, v0, v1, v2}, Lorg/telegram/messenger/MessagesController;->updateInterfaceWithMessages(JLjava/util/ArrayList;)V

    .line 943
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/NotificationCenter;->dialogsNeedReload:I

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 944
    const/4 v4, 0x0

    invoke-static {v4}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    .line 946
    new-instance v14, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;

    invoke-direct {v14}, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;-><init>()V

    .line 947
    .local v14, "req":Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;
    move-object/from16 v0, v23

    iput-object v0, v14, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->to_peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 948
    iget-object v4, v14, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->to_peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_inputPeerChannel;

    if-eqz v4, :cond_1b

    .line 949
    sget-object v4, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v5, "Notifications"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "silent_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p2

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, v14, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->silent:Z

    .line 951
    :cond_1b
    move-object/from16 v0, v30

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_peerChannel;

    if-eqz v4, :cond_28

    .line 952
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    move-object/from16 v0, v30

    iget-object v5, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v20

    .line 953
    .restart local v20    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_inputPeerChannel;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_inputPeerChannel;-><init>()V

    iput-object v4, v14, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->from_peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 954
    iget-object v4, v14, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->from_peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-object/from16 v0, v30

    iget-object v5, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    iput v5, v4, Lorg/telegram/tgnet/TLRPC$InputPeer;->channel_id:I

    .line 955
    if-eqz v20, :cond_1c

    .line 956
    iget-object v4, v14, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->from_peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-object/from16 v0, v20

    iget-wide v6, v0, Lorg/telegram/tgnet/TLRPC$Chat;->access_hash:J

    iput-wide v6, v4, Lorg/telegram/tgnet/TLRPC$InputPeer;->access_hash:J

    .line 961
    .end local v20    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_1c
    :goto_c
    move-object/from16 v0, v35

    iput-object v0, v14, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->random_id:Ljava/util/ArrayList;

    .line 962
    move-object/from16 v0, v22

    iput-object v0, v14, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->id:Ljava/util/ArrayList;

    .line 963
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_29

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/MessageObject;

    iget-object v4, v4, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-boolean v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->with_my_score:Z

    if-eqz v4, :cond_29

    const/4 v4, 0x1

    :goto_d
    iput-boolean v4, v14, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->with_my_score:Z

    .line 965
    move-object/from16 v11, v16

    .line 966
    .local v11, "newMsgObjArr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    move-object/from16 v12, v34

    .line 967
    .local v12, "newMsgArr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    move-object/from16 v10, v29

    .line 968
    .local v10, "messagesByRandomIdsFinal":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lorg/telegram/tgnet/TLRPC$Message;>;"
    move/from16 v8, v24

    .line 969
    .local v8, "isMegagroupFinal":Z
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v40

    new-instance v4, Lorg/telegram/messenger/SendMessagesHelper$4;

    move-object/from16 v5, p0

    move-wide/from16 v6, p2

    move/from16 v9, v39

    invoke-direct/range {v4 .. v14}, Lorg/telegram/messenger/SendMessagesHelper$4;-><init>(Lorg/telegram/messenger/SendMessagesHelper;JZZLjava/util/HashMap;Ljava/util/ArrayList;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$Peer;Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;)V

    const/16 v5, 0x44

    move-object/from16 v0, v40

    invoke-virtual {v0, v14, v4, v5}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    .line 1081
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-eq v15, v4, :cond_5

    .line 1082
    new-instance v34, Ljava/util/ArrayList;

    .end local v34    # "objArr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    invoke-direct/range {v34 .. v34}, Ljava/util/ArrayList;-><init>()V

    .line 1083
    .restart local v34    # "objArr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    new-instance v16, Ljava/util/ArrayList;

    .end local v16    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 1084
    .restart local v16    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    new-instance v35, Ljava/util/ArrayList;

    .end local v35    # "randomIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-direct/range {v35 .. v35}, Ljava/util/ArrayList;-><init>()V

    .line 1085
    .restart local v35    # "randomIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v22, Ljava/util/ArrayList;

    .end local v22    # "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 1086
    .restart local v22    # "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v29, Ljava/util/HashMap;

    .end local v29    # "messagesByRandomIds":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lorg/telegram/tgnet/TLRPC$Message;>;"
    invoke-direct/range {v29 .. v29}, Ljava/util/HashMap;-><init>()V

    .restart local v29    # "messagesByRandomIds":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lorg/telegram/tgnet/TLRPC$Message;>;"
    goto/16 :goto_6

    .line 837
    .end local v8    # "isMegagroupFinal":Z
    .end local v10    # "messagesByRandomIdsFinal":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lorg/telegram/tgnet/TLRPC$Message;>;"
    .end local v11    # "newMsgObjArr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    .end local v12    # "newMsgArr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    .end local v14    # "req":Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;
    .end local v21    # "differentDialog":Z
    .end local v33    # "newMsgObj":Lorg/telegram/messenger/MessageObject;
    :cond_1d
    invoke-virtual/range {v30 .. v30}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v4

    move/from16 v0, v31

    int-to-long v6, v0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_f

    .line 838
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;-><init>()V

    move-object/from16 v0, v32

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;

    .line 839
    move-object/from16 v0, v32

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;

    invoke-virtual/range {v30 .. v30}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v5

    iput v5, v4, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->channel_post:I

    .line 840
    move-object/from16 v0, v32

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;

    iget v5, v4, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->flags:I

    or-int/lit8 v5, v5, 0x4

    iput v5, v4, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->flags:I

    .line 841
    invoke-virtual/range {v30 .. v30}, Lorg/telegram/messenger/MessageObject;->isFromUser()Z

    move-result v4

    if-eqz v4, :cond_20

    .line 842
    move-object/from16 v0, v32

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;

    move-object/from16 v0, v30

    iget-object v5, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    iput v5, v4, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->from_id:I

    .line 843
    move-object/from16 v0, v32

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;

    iget v5, v4, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->flags:I

    or-int/lit8 v5, v5, 0x1

    iput v5, v4, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->flags:I

    .line 852
    :cond_1e
    :goto_e
    move-object/from16 v0, v30

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->post_author:Ljava/lang/String;

    if-eqz v4, :cond_21

    .line 853
    move-object/from16 v0, v32

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;

    move-object/from16 v0, v30

    iget-object v5, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->post_author:Ljava/lang/String;

    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->post_author:Ljava/lang/String;

    .line 854
    move-object/from16 v0, v32

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;

    iget v5, v4, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->flags:I

    or-int/lit8 v5, v5, 0x8

    iput v5, v4, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->flags:I

    .line 862
    :cond_1f
    :goto_f
    move-object/from16 v0, v30

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    move-object/from16 v0, v32

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    .line 863
    const/4 v4, 0x4

    move-object/from16 v0, v32

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    goto/16 :goto_7

    .line 845
    :cond_20
    move-object/from16 v0, v32

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;

    move-object/from16 v0, v30

    iget-object v5, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    iput v5, v4, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->channel_id:I

    .line 846
    move-object/from16 v0, v32

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;

    iget v5, v4, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->flags:I

    or-int/lit8 v5, v5, 0x2

    iput v5, v4, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->flags:I

    .line 847
    move-object/from16 v0, v30

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-boolean v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->post:Z

    if-eqz v4, :cond_1e

    move-object/from16 v0, v30

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    if-lez v4, :cond_1e

    .line 848
    move-object/from16 v0, v32

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;

    move-object/from16 v0, v30

    iget-object v5, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    iput v5, v4, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->from_id:I

    .line 849
    move-object/from16 v0, v32

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;

    iget v5, v4, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->flags:I

    or-int/lit8 v5, v5, 0x1

    iput v5, v4, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->flags:I

    goto :goto_e

    .line 855
    :cond_21
    invoke-virtual/range {v30 .. v30}, Lorg/telegram/messenger/MessageObject;->isOutOwner()Z

    move-result v4

    if-nez v4, :cond_1f

    move-object/from16 v0, v30

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    if-lez v4, :cond_1f

    move-object/from16 v0, v30

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-boolean v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->post:Z

    if-eqz v4, :cond_1f

    .line 856
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    move-object/from16 v0, v30

    iget-object v5, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v38

    .line 857
    .local v38, "signUser":Lorg/telegram/tgnet/TLRPC$User;
    if-eqz v38, :cond_1f

    .line 858
    move-object/from16 v0, v32

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;

    move-object/from16 v0, v38

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    move-object/from16 v0, v38

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    invoke-static {v5, v6}, Lorg/telegram/messenger/ContactsController;->formatName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->post_author:Ljava/lang/String;

    .line 859
    move-object/from16 v0, v32

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;

    iget v5, v4, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->flags:I

    or-int/lit8 v5, v5, 0x8

    iput v5, v4, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->flags:I

    goto/16 :goto_f

    .line 868
    .end local v38    # "signUser":Lorg/telegram/tgnet/TLRPC$User;
    :cond_22
    move-object/from16 v0, v30

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v0, v32

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    goto/16 :goto_8

    .line 893
    :cond_23
    iget v4, v13, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    neg-int v4, v4

    goto/16 :goto_9

    .line 896
    :cond_24
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v4

    move-object/from16 v0, v32

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    .line 897
    move-object/from16 v0, v32

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    or-int/lit16 v4, v4, 0x100

    move-object/from16 v0, v32

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    goto/16 :goto_a

    .line 911
    :cond_25
    const/4 v4, 0x1

    move-object/from16 v0, v32

    iput-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->unread:Z

    goto/16 :goto_b

    .line 914
    :cond_26
    move-object/from16 v0, v30

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    and-int/lit16 v4, v4, 0x400

    if-eqz v4, :cond_27

    .line 915
    move-object/from16 v0, v30

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->views:I

    move-object/from16 v0, v32

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->views:I

    .line 916
    move-object/from16 v0, v32

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    or-int/lit16 v4, v4, 0x400

    move-object/from16 v0, v32

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    .line 918
    :cond_27
    const/4 v4, 0x1

    move-object/from16 v0, v32

    iput-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->unread:Z

    goto/16 :goto_b

    .line 959
    .restart local v14    # "req":Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;
    .restart local v21    # "differentDialog":Z
    .restart local v33    # "newMsgObj":Lorg/telegram/messenger/MessageObject;
    :cond_28
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_inputPeerEmpty;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_inputPeerEmpty;-><init>()V

    iput-object v4, v14, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->from_peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    goto/16 :goto_c

    .line 963
    :cond_29
    const/4 v4, 0x0

    goto/16 :goto_d

    .line 1091
    .end local v13    # "to_id":Lorg/telegram/tgnet/TLRPC$Peer;
    .end local v14    # "req":Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;
    .end local v15    # "a":I
    .end local v16    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    .end local v17    # "canSendMedia":Z
    .end local v18    # "canSendPreview":Z
    .end local v19    # "canSendStickers":Z
    .end local v21    # "differentDialog":Z
    .end local v22    # "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v23    # "inputPeer":Lorg/telegram/tgnet/TLRPC$InputPeer;
    .end local v24    # "isMegagroup":Z
    .end local v25    # "isSignature":Z
    .end local v26    # "lastDialogId":J
    .end local v29    # "messagesByRandomIds":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lorg/telegram/tgnet/TLRPC$Message;>;"
    .end local v30    # "msgObj":Lorg/telegram/messenger/MessageObject;
    .end local v31    # "myId":I
    .end local v32    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    .end local v33    # "newMsgObj":Lorg/telegram/messenger/MessageObject;
    .end local v34    # "objArr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    .end local v35    # "randomIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v39    # "toMyself":Z
    :cond_2a
    const/4 v15, 0x0

    .restart local v15    # "a":I
    :goto_10
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v15, v4, :cond_1

    .line 1092
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/MessageObject;

    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    invoke-virtual {v0, v4, v1, v2}, Lorg/telegram/messenger/SendMessagesHelper;->processForwardFromMyName(Lorg/telegram/messenger/MessageObject;J)V

    .line 1091
    add-int/lit8 v15, v15, 0x1

    goto :goto_10
.end method

.method public sendMessage(Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$WebPage;ZLjava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;)V
    .locals 20
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "peer"    # J
    .param p4, "reply_to_msg"    # Lorg/telegram/messenger/MessageObject;
    .param p5, "webPage"    # Lorg/telegram/tgnet/TLRPC$WebPage;
    .param p6, "searchLinks"    # Z
    .param p8, "replyMarkup"    # Lorg/telegram/tgnet/TLRPC$ReplyMarkup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Lorg/telegram/messenger/MessageObject;",
            "Lorg/telegram/tgnet/TLRPC$WebPage;",
            "Z",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$MessageEntity;",
            ">;",
            "Lorg/telegram/tgnet/TLRPC$ReplyMarkup;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1361
    .local p7, "entities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$MessageEntity;>;"
    .local p9, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v14, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v8, p2

    move-object/from16 v11, p4

    move-object/from16 v12, p5

    move/from16 v13, p6

    move-object/from16 v15, p7

    move-object/from16 v16, p8

    move-object/from16 v17, p9

    invoke-direct/range {v0 .. v18}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$MessageMedia;Lorg/telegram/tgnet/TLRPC$TL_photo;Lorg/telegram/messenger/VideoEditedInfo;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$TL_document;Lorg/telegram/tgnet/TLRPC$TL_game;JLjava/lang/String;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$WebPage;ZLorg/telegram/messenger/MessageObject;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;I)V

    .line 1362
    return-void
.end method

.method public sendMessage(Lorg/telegram/messenger/MessageObject;)V
    .locals 21
    .param p1, "retryMessageObject"    # Lorg/telegram/messenger/MessageObject;

    .prologue
    .line 1349
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v10

    move-object/from16 v0, p1

    iget-object v2, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v12, v2, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x1

    const/16 v17, 0x0

    move-object/from16 v0, p1

    iget-object v2, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v2, Lorg/telegram/tgnet/TLRPC$Message;->reply_markup:Lorg/telegram/tgnet/TLRPC$ReplyMarkup;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    iget-object v2, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v2, Lorg/telegram/tgnet/TLRPC$Message;->params:Ljava/util/HashMap;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v2, p0

    move-object/from16 v16, p1

    invoke-direct/range {v2 .. v20}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$MessageMedia;Lorg/telegram/tgnet/TLRPC$TL_photo;Lorg/telegram/messenger/VideoEditedInfo;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$TL_document;Lorg/telegram/tgnet/TLRPC$TL_game;JLjava/lang/String;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$WebPage;ZLorg/telegram/messenger/MessageObject;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;I)V

    .line 1350
    return-void
.end method

.method public sendMessage(Lorg/telegram/tgnet/TLRPC$MessageMedia;JLorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;)V
    .locals 20
    .param p1, "location"    # Lorg/telegram/tgnet/TLRPC$MessageMedia;
    .param p2, "peer"    # J
    .param p4, "reply_to_msg"    # Lorg/telegram/messenger/MessageObject;
    .param p5, "replyMarkup"    # Lorg/telegram/tgnet/TLRPC$ReplyMarkup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/tgnet/TLRPC$MessageMedia;",
            "J",
            "Lorg/telegram/messenger/MessageObject;",
            "Lorg/telegram/tgnet/TLRPC$ReplyMarkup;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1365
    .local p6, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-wide/from16 v8, p2

    move-object/from16 v11, p4

    move-object/from16 v16, p5

    move-object/from16 v17, p6

    invoke-direct/range {v0 .. v18}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$MessageMedia;Lorg/telegram/tgnet/TLRPC$TL_photo;Lorg/telegram/messenger/VideoEditedInfo;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$TL_document;Lorg/telegram/tgnet/TLRPC$TL_game;JLjava/lang/String;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$WebPage;ZLorg/telegram/messenger/MessageObject;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;I)V

    .line 1366
    return-void
.end method

.method public sendMessage(Lorg/telegram/tgnet/TLRPC$TL_document;Lorg/telegram/messenger/VideoEditedInfo;Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;I)V
    .locals 20
    .param p1, "document"    # Lorg/telegram/tgnet/TLRPC$TL_document;
    .param p2, "videoEditedInfo"    # Lorg/telegram/messenger/VideoEditedInfo;
    .param p3, "path"    # Ljava/lang/String;
    .param p4, "peer"    # J
    .param p6, "reply_to_msg"    # Lorg/telegram/messenger/MessageObject;
    .param p7, "replyMarkup"    # Lorg/telegram/tgnet/TLRPC$ReplyMarkup;
    .param p9, "ttl"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/tgnet/TLRPC$TL_document;",
            "Lorg/telegram/messenger/VideoEditedInfo;",
            "Ljava/lang/String;",
            "J",
            "Lorg/telegram/messenger/MessageObject;",
            "Lorg/telegram/tgnet/TLRPC$ReplyMarkup;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 1357
    .local p8, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    move-object/from16 v4, p2

    move-object/from16 v6, p1

    move-wide/from16 v8, p4

    move-object/from16 v10, p3

    move-object/from16 v11, p6

    move-object/from16 v16, p7

    move-object/from16 v17, p8

    move/from16 v18, p9

    invoke-direct/range {v0 .. v18}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$MessageMedia;Lorg/telegram/tgnet/TLRPC$TL_photo;Lorg/telegram/messenger/VideoEditedInfo;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$TL_document;Lorg/telegram/tgnet/TLRPC$TL_game;JLjava/lang/String;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$WebPage;ZLorg/telegram/messenger/MessageObject;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;I)V

    .line 1358
    return-void
.end method

.method public sendMessage(Lorg/telegram/tgnet/TLRPC$TL_game;JLorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;)V
    .locals 20
    .param p1, "game"    # Lorg/telegram/tgnet/TLRPC$TL_game;
    .param p2, "peer"    # J
    .param p4, "replyMarkup"    # Lorg/telegram/tgnet/TLRPC$ReplyMarkup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/tgnet/TLRPC$TL_game;",
            "J",
            "Lorg/telegram/tgnet/TLRPC$ReplyMarkup;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1369
    .local p5, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move-wide/from16 v8, p2

    move-object/from16 v16, p4

    move-object/from16 v17, p5

    invoke-direct/range {v0 .. v18}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$MessageMedia;Lorg/telegram/tgnet/TLRPC$TL_photo;Lorg/telegram/messenger/VideoEditedInfo;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$TL_document;Lorg/telegram/tgnet/TLRPC$TL_game;JLjava/lang/String;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$WebPage;ZLorg/telegram/messenger/MessageObject;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;I)V

    .line 1370
    return-void
.end method

.method public sendMessage(Lorg/telegram/tgnet/TLRPC$TL_photo;Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;I)V
    .locals 19
    .param p1, "photo"    # Lorg/telegram/tgnet/TLRPC$TL_photo;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "peer"    # J
    .param p5, "reply_to_msg"    # Lorg/telegram/messenger/MessageObject;
    .param p6, "replyMarkup"    # Lorg/telegram/tgnet/TLRPC$ReplyMarkup;
    .param p8, "ttl"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/tgnet/TLRPC$TL_photo;",
            "Ljava/lang/String;",
            "J",
            "Lorg/telegram/messenger/MessageObject;",
            "Lorg/telegram/tgnet/TLRPC$ReplyMarkup;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 1373
    .local p7, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    move-object/from16 v3, p1

    move-wide/from16 v8, p3

    move-object/from16 v10, p2

    move-object/from16 v11, p5

    move-object/from16 v16, p6

    move-object/from16 v17, p7

    move/from16 v18, p8

    invoke-direct/range {v0 .. v18}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$MessageMedia;Lorg/telegram/tgnet/TLRPC$TL_photo;Lorg/telegram/messenger/VideoEditedInfo;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$TL_document;Lorg/telegram/tgnet/TLRPC$TL_game;JLjava/lang/String;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$WebPage;ZLorg/telegram/messenger/MessageObject;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;I)V

    .line 1374
    return-void
.end method

.method public sendMessage(Lorg/telegram/tgnet/TLRPC$User;JLorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;)V
    .locals 20
    .param p1, "user"    # Lorg/telegram/tgnet/TLRPC$User;
    .param p2, "peer"    # J
    .param p4, "reply_to_msg"    # Lorg/telegram/messenger/MessageObject;
    .param p5, "replyMarkup"    # Lorg/telegram/tgnet/TLRPC$ReplyMarkup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/tgnet/TLRPC$User;",
            "J",
            "Lorg/telegram/messenger/MessageObject;",
            "Lorg/telegram/tgnet/TLRPC$ReplyMarkup;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1353
    .local p6, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v5, p1

    move-wide/from16 v8, p2

    move-object/from16 v11, p4

    move-object/from16 v16, p5

    move-object/from16 v17, p6

    invoke-direct/range {v0 .. v18}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$MessageMedia;Lorg/telegram/tgnet/TLRPC$TL_photo;Lorg/telegram/messenger/VideoEditedInfo;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$TL_document;Lorg/telegram/tgnet/TLRPC$TL_game;JLjava/lang/String;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$WebPage;ZLorg/telegram/messenger/MessageObject;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;I)V

    .line 1354
    return-void
.end method

.method public sendScreenshotMessage(Lorg/telegram/tgnet/TLRPC$User;ILorg/telegram/tgnet/TLRPC$Message;)V
    .locals 11
    .param p1, "user"    # Lorg/telegram/tgnet/TLRPC$User;
    .param p2, "messageId"    # I
    .param p3, "resendMessage"    # Lorg/telegram/tgnet/TLRPC$Message;

    .prologue
    const/4 v10, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 680
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iget v0, p1, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v4

    if-ne v0, v4, :cond_1

    .line 723
    :cond_0
    :goto_0
    return-void

    .line 684
    :cond_1
    new-instance v9, Lorg/telegram/tgnet/TLRPC$TL_messages_sendScreenshotNotification;

    invoke-direct {v9}, Lorg/telegram/tgnet/TLRPC$TL_messages_sendScreenshotNotification;-><init>()V

    .line 685
    .local v9, "req":Lorg/telegram/tgnet/TLRPC$TL_messages_sendScreenshotNotification;
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputPeerUser;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputPeerUser;-><init>()V

    iput-object v0, v9, Lorg/telegram/tgnet/TLRPC$TL_messages_sendScreenshotNotification;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 686
    iget-object v0, v9, Lorg/telegram/tgnet/TLRPC$TL_messages_sendScreenshotNotification;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    iget-wide v4, p1, Lorg/telegram/tgnet/TLRPC$User;->access_hash:J

    iput-wide v4, v0, Lorg/telegram/tgnet/TLRPC$InputPeer;->access_hash:J

    .line 687
    iget-object v0, v9, Lorg/telegram/tgnet/TLRPC$TL_messages_sendScreenshotNotification;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    iget v4, p1, Lorg/telegram/tgnet/TLRPC$User;->id:I

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$InputPeer;->user_id:I

    .line 689
    if-eqz p3, :cond_2

    .line 690
    move-object v6, p3

    .line 691
    .local v6, "message":Lorg/telegram/tgnet/TLRPC$Message;
    iput p2, v9, Lorg/telegram/tgnet/TLRPC$TL_messages_sendScreenshotNotification;->reply_to_msg_id:I

    .line 692
    iget-wide v4, p3, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    iput-wide v4, v9, Lorg/telegram/tgnet/TLRPC$TL_messages_sendScreenshotNotification;->random_id:J

    .line 710
    :goto_1
    iget-wide v4, v6, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    iput-wide v4, v9, Lorg/telegram/tgnet/TLRPC$TL_messages_sendScreenshotNotification;->random_id:J

    .line 712
    new-instance v7, Lorg/telegram/messenger/MessageObject;

    invoke-direct {v7, v6, v10, v2}, Lorg/telegram/messenger/MessageObject;-><init>(Lorg/telegram/tgnet/TLRPC$Message;Ljava/util/AbstractMap;Z)V

    .line 713
    .local v7, "newMsgObj":Lorg/telegram/messenger/MessageObject;
    iget-object v0, v7, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iput v3, v0, Lorg/telegram/tgnet/TLRPC$Message;->send_state:I

    .line 714
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 715
    .local v8, "objArr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 716
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v4, v6, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    invoke-virtual {v0, v4, v5, v8}, Lorg/telegram/messenger/MessagesController;->updateInterfaceWithMessages(JLjava/util/ArrayList;)V

    .line 717
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v4, Lorg/telegram/messenger/NotificationCenter;->dialogsNeedReload:I

    new-array v5, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v4, v5}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 718
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 719
    .local v1, "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 720
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/messenger/MessagesStorage;->putMessages(Ljava/util/ArrayList;ZZZI)V

    .line 722
    invoke-direct {p0, v9, v7, v10}, Lorg/telegram/messenger/SendMessagesHelper;->performSendMessageRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;)V

    goto :goto_0

    .line 694
    .end local v1    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    .end local v6    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    .end local v7    # "newMsgObj":Lorg/telegram/messenger/MessageObject;
    .end local v8    # "objArr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    :cond_2
    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_messageService;

    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_messageService;-><init>()V

    .line 695
    .restart local v6    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    invoke-virtual {p0}, Lorg/telegram/messenger/SendMessagesHelper;->getNextRandomId()J

    move-result-wide v4

    iput-wide v4, v6, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    .line 696
    iget v0, p1, Lorg/telegram/tgnet/TLRPC$User;->id:I

    int-to-long v4, v0

    iput-wide v4, v6, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    .line 697
    iput-boolean v3, v6, Lorg/telegram/tgnet/TLRPC$Message;->unread:Z

    .line 698
    iput-boolean v3, v6, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    .line 699
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getNewMessageId()I

    move-result v0

    iput v0, v6, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    iput v0, v6, Lorg/telegram/tgnet/TLRPC$Message;->local_id:I

    .line 700
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v0

    iput v0, v6, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    .line 701
    iget v0, v6, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    or-int/lit16 v0, v0, 0x100

    iput v0, v6, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    .line 702
    iget v0, v6, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, v6, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    .line 703
    iput p2, v6, Lorg/telegram/tgnet/TLRPC$Message;->reply_to_msg_id:I

    .line 704
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    iput-object v0, v6, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 705
    iget-object v0, v6, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v4, p1, Lorg/telegram/tgnet/TLRPC$User;->id:I

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    .line 706
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v0

    iput v0, v6, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    .line 707
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionScreenshotTaken;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageActionScreenshotTaken;-><init>()V

    iput-object v0, v6, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    .line 708
    invoke-static {v2}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    goto/16 :goto_1
.end method

.method public sendSticker(Lorg/telegram/tgnet/TLRPC$Document;JLorg/telegram/messenger/MessageObject;)V
    .locals 20
    .param p1, "document"    # Lorg/telegram/tgnet/TLRPC$Document;
    .param p2, "peer"    # J
    .param p4, "replyingMessageObject"    # Lorg/telegram/messenger/MessageObject;

    .prologue
    .line 726
    if-nez p1, :cond_1

    .line 774
    :cond_0
    :goto_0
    return-void

    .line 729
    :cond_1
    move-wide/from16 v0, p2

    long-to-int v2, v0

    if-nez v2, :cond_5

    .line 730
    const/16 v2, 0x20

    shr-long v2, p2, v2

    long-to-int v0, v2

    move/from16 v16, v0

    .line 731
    .local v16, "high_id":I
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/MessagesController;->getEncryptedChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    move-result-object v14

    .line 732
    .local v14, "encryptedChat":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    if-eqz v14, :cond_0

    .line 735
    new-instance v18, Lorg/telegram/tgnet/TLRPC$TL_document;

    invoke-direct/range {v18 .. v18}, Lorg/telegram/tgnet/TLRPC$TL_document;-><init>()V

    .line 736
    .local v18, "newDocument":Lorg/telegram/tgnet/TLRPC$TL_document;
    move-object/from16 v0, p1

    iget-wide v2, v0, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    move-object/from16 v0, v18

    iput-wide v2, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->id:J

    .line 737
    move-object/from16 v0, p1

    iget-wide v2, v0, Lorg/telegram/tgnet/TLRPC$Document;->access_hash:J

    move-object/from16 v0, v18

    iput-wide v2, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->access_hash:J

    .line 738
    move-object/from16 v0, p1

    iget v2, v0, Lorg/telegram/tgnet/TLRPC$Document;->date:I

    move-object/from16 v0, v18

    iput v2, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->date:I

    .line 739
    move-object/from16 v0, p1

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    move-object/from16 v0, v18

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->mime_type:Ljava/lang/String;

    .line 740
    move-object/from16 v0, p1

    iget v2, v0, Lorg/telegram/tgnet/TLRPC$Document;->size:I

    move-object/from16 v0, v18

    iput v2, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->size:I

    .line 741
    move-object/from16 v0, p1

    iget v2, v0, Lorg/telegram/tgnet/TLRPC$Document;->dc_id:I

    move-object/from16 v0, v18

    iput v2, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->dc_id:I

    .line 742
    new-instance v2, Ljava/util/ArrayList;

    move-object/from16 v0, p1

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object/from16 v0, v18

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->attributes:Ljava/util/ArrayList;

    .line 743
    move-object/from16 v0, v18

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->mime_type:Ljava/lang/String;

    if-nez v2, :cond_2

    .line 744
    const-string/jumbo v2, ""

    move-object/from16 v0, v18

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->mime_type:Ljava/lang/String;

    .line 746
    :cond_2
    move-object/from16 v0, p1

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_photoSize;

    if-eqz v2, :cond_3

    .line 747
    move-object/from16 v0, p1

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object v15

    .line 748
    .local v15, "file":Ljava/io/File;
    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 750
    :try_start_0
    invoke-virtual {v15}, Ljava/io/File;->length()J

    move-result-wide v2

    long-to-int v0, v2

    move/from16 v17, v0

    .line 751
    .local v17, "len":I
    invoke-virtual {v15}, Ljava/io/File;->length()J

    move-result-wide v2

    long-to-int v2, v2

    new-array v12, v2, [B

    .line 752
    .local v12, "arr":[B
    new-instance v19, Ljava/io/RandomAccessFile;

    const-string/jumbo v2, "r"

    move-object/from16 v0, v19

    invoke-direct {v0, v15, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 753
    .local v19, "reader":Ljava/io/RandomAccessFile;
    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 755
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_photoCachedSize;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_photoCachedSize;-><init>()V

    move-object/from16 v0, v18

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 756
    move-object/from16 v0, v18

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-object/from16 v0, p1

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 757
    move-object/from16 v0, v18

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-object/from16 v0, p1

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$PhotoSize;->size:I

    iput v3, v2, Lorg/telegram/tgnet/TLRPC$PhotoSize;->size:I

    .line 758
    move-object/from16 v0, v18

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-object/from16 v0, p1

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I

    iput v3, v2, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I

    .line 759
    move-object/from16 v0, v18

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-object/from16 v0, p1

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$PhotoSize;->h:I

    iput v3, v2, Lorg/telegram/tgnet/TLRPC$PhotoSize;->h:I

    .line 760
    move-object/from16 v0, v18

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-object/from16 v0, p1

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$PhotoSize;->type:Ljava/lang/String;

    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$PhotoSize;->type:Ljava/lang/String;

    .line 761
    move-object/from16 v0, v18

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iput-object v12, v2, Lorg/telegram/tgnet/TLRPC$PhotoSize;->bytes:[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 767
    .end local v12    # "arr":[B
    .end local v15    # "file":Ljava/io/File;
    .end local v17    # "len":I
    .end local v19    # "reader":Ljava/io/RandomAccessFile;
    :cond_3
    :goto_1
    move-object/from16 v0, v18

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    if-nez v2, :cond_4

    .line 768
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_photoSizeEmpty;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_photoSizeEmpty;-><init>()V

    move-object/from16 v0, v18

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 769
    move-object/from16 v0, v18

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    const-string/jumbo v3, "s"

    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$PhotoSize;->type:Ljava/lang/String;

    .line 771
    :cond_4
    move-object/from16 p1, v18

    .line 773
    .end local v14    # "encryptedChat":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    .end local v16    # "high_id":I
    .end local v18    # "newDocument":Lorg/telegram/tgnet/TLRPC$TL_document;
    :cond_5
    invoke-static {}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance()Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v2

    move-object/from16 v3, p1

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_document;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-wide/from16 v6, p2

    move-object/from16 v8, p4

    invoke-virtual/range {v2 .. v11}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Lorg/telegram/tgnet/TLRPC$TL_document;Lorg/telegram/messenger/VideoEditedInfo;Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;I)V

    goto/16 :goto_0

    .line 762
    .restart local v14    # "encryptedChat":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    .restart local v15    # "file":Ljava/io/File;
    .restart local v16    # "high_id":I
    .restart local v18    # "newDocument":Lorg/telegram/tgnet/TLRPC$TL_document;
    :catch_0
    move-exception v13

    .line 763
    .local v13, "e":Ljava/lang/Exception;
    invoke-static {v13}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public setCurrentChatInfo(Lorg/telegram/tgnet/TLRPC$ChatFull;)V
    .locals 0
    .param p1, "info"    # Lorg/telegram/tgnet/TLRPC$ChatFull;

    .prologue
    .line 256
    iput-object p1, p0, Lorg/telegram/messenger/SendMessagesHelper;->currentChatInfo:Lorg/telegram/tgnet/TLRPC$ChatFull;

    .line 257
    return-void
.end method

.method protected stopVideoService(Ljava/lang/String;)V
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 2457
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v0

    new-instance v1, Lorg/telegram/messenger/SendMessagesHelper$8;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/SendMessagesHelper$8;-><init>(Lorg/telegram/messenger/SendMessagesHelper;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 2468
    return-void
.end method
