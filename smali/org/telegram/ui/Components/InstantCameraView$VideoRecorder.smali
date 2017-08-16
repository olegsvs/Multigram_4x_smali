.class Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;
.super Ljava/lang/Object;
.source "InstantCameraView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/InstantCameraView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VideoRecorder"
.end annotation


# static fields
.field private static final AUDIO_MIME_TYPE:Ljava/lang/String; = "audio/mp4a-latm"

.field private static final FRAME_RATE:I = 0x1e

.field private static final IFRAME_INTERVAL:I = 0x1

.field private static final VIDEO_MIME_TYPE:Ljava/lang/String; = "video/avc"


# instance fields
.field private alphaHandle:I

.field private audioBufferInfo:Landroid/media/MediaCodec$BufferInfo;

.field private audioEncoder:Landroid/media/MediaCodec;

.field private audioRecorder:Landroid/media/AudioRecord;

.field private audioStartTime:J

.field private audioTrackIndex:I

.field private blendEnabled:Z

.field private buffers:Ljava/util/concurrent/ArrayBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ArrayBlockingQueue",
            "<",
            "Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;",
            ">;"
        }
    .end annotation
.end field

.field private buffersToWrite:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;",
            ">;"
        }
    .end annotation
.end field

.field private currentTimestamp:J

.field private drawProgram:I

.field private eglConfig:Landroid/opengl/EGLConfig;

.field private eglContext:Landroid/opengl/EGLContext;

.field private eglDisplay:Landroid/opengl/EGLDisplay;

.field private eglSurface:Landroid/opengl/EGLSurface;

.field private volatile handler:Lorg/telegram/ui/Components/InstantCameraView$EncoderHandler;

.field private lastCameraId:Ljava/lang/Integer;

.field private lastCommitedFrameTime:J

.field private lastTimestamp:J

.field private mediaMuxer:Lorg/telegram/messenger/video/MP4Builder;

.field private positionHandle:I

.field private ready:Z

.field private recorderRunnable:Ljava/lang/Runnable;

.field private volatile running:Z

.field private scaleXHandle:I

.field private scaleYHandle:I

.field private volatile sendWhenDone:I

.field private sharedEglContext:Landroid/opengl/EGLContext;

.field private skippedFirst:Z

.field private skippedTime:J

.field private surface:Landroid/view/Surface;

.field private final sync:Ljava/lang/Object;

.field private textureHandle:I

.field private textureMatrixHandle:I

.field final synthetic this$0:Lorg/telegram/ui/Components/InstantCameraView;

.field private vertexMatrixHandle:I

.field private videoBitrate:I

.field private videoBufferInfo:Landroid/media/MediaCodec$BufferInfo;

.field private videoConvertFirstWrite:Z

.field private videoEncoder:Landroid/media/MediaCodec;

.field private videoFile:Ljava/io/File;

.field private videoHeight:I

.field private videoTrackIndex:I

.field private videoWidth:I


# direct methods
.method private constructor <init>(Lorg/telegram/ui/Components/InstantCameraView;)V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    const/4 v1, -0x5

    .line 1296
    iput-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1307
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoConvertFirstWrite:Z

    .line 1311
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    iput-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglDisplay:Landroid/opengl/EGLDisplay;

    .line 1312
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    iput-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglContext:Landroid/opengl/EGLContext;

    .line 1315
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    iput-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglSurface:Landroid/opengl/EGLSurface;

    .line 1323
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->buffersToWrite:Ljava/util/ArrayList;

    .line 1324
    iput v1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoTrackIndex:I

    .line 1325
    iput v1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioTrackIndex:I

    .line 1328
    iput-wide v2, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioStartTime:J

    .line 1330
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->currentTimestamp:J

    .line 1331
    iput-wide v2, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->lastTimestamp:J

    .line 1335
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->sync:Ljava/lang/Object;

    .line 1351
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->lastCameraId:Ljava/lang/Integer;

    .line 1355
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->buffers:Ljava/util/concurrent/ArrayBlockingQueue;

    .line 1357
    new-instance v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$1;-><init>(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->recorderRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/ui/Components/InstantCameraView;Lorg/telegram/ui/Components/InstantCameraView$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/telegram/ui/Components/InstantCameraView;
    .param p2, "x1"    # Lorg/telegram/ui/Components/InstantCameraView$1;

    .prologue
    .line 1296
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;-><init>(Lorg/telegram/ui/Components/InstantCameraView;)V

    return-void
.end method

.method static synthetic access$3400(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;

    .prologue
    .line 1296
    invoke-direct {p0}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->prepareEncoder()V

    return-void
.end method

.method static synthetic access$3500(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;I)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;
    .param p1, "x1"    # I

    .prologue
    .line 1296
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->handleStopRecording(I)V

    return-void
.end method

.method static synthetic access$3600(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;JLjava/lang/Integer;)V
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;
    .param p1, "x1"    # J
    .param p3, "x2"    # Ljava/lang/Integer;

    .prologue
    .line 1296
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->handleVideoFrameAvailable(JLjava/lang/Integer;)V

    return-void
.end method

.method static synthetic access$3700(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;
    .param p1, "x1"    # Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;

    .prologue
    .line 1296
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->handleAudioFrameAvailable(Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;)V

    return-void
.end method

.method static synthetic access$3800(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;

    .prologue
    .line 1296
    iget-boolean v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->running:Z

    return v0
.end method

.method static synthetic access$3900(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;)Landroid/media/AudioRecord;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;

    .prologue
    .line 1296
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioRecorder:Landroid/media/AudioRecord;

    return-object v0
.end method

.method static synthetic access$4000(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;

    .prologue
    .line 1296
    iget v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->sendWhenDone:I

    return v0
.end method

.method static synthetic access$4100(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;)Ljava/util/concurrent/ArrayBlockingQueue;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;

    .prologue
    .line 1296
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->buffers:Ljava/util/concurrent/ArrayBlockingQueue;

    return-object v0
.end method

.method static synthetic access$4300(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;)Lorg/telegram/ui/Components/InstantCameraView$EncoderHandler;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;

    .prologue
    .line 1296
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->handler:Lorg/telegram/ui/Components/InstantCameraView$EncoderHandler;

    return-object v0
.end method

.method static synthetic access$4900(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;)Ljava/io/File;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;

    .prologue
    .line 1296
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoFile:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$5300(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;Ljava/io/File;Z)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;
    .param p1, "x1"    # Ljava/io/File;
    .param p2, "x2"    # Z

    .prologue
    .line 1296
    invoke-direct {p0, p1, p2}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->didWriteData(Ljava/io/File;Z)V

    return-void
.end method

.method private didWriteData(Ljava/io/File;Z)V
    .locals 6
    .param p1, "file"    # Ljava/io/File;
    .param p2, "last"    # Z

    .prologue
    const/4 v2, 0x0

    .line 1920
    iget-boolean v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoConvertFirstWrite:Z

    if-eqz v0, :cond_0

    .line 1921
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x1

    const/high16 v5, 0x2000000

    move v3, v2

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/messenger/FileLoader;->uploadFile(Ljava/lang/String;ZZII)V

    .line 1922
    iput-boolean v2, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoConvertFirstWrite:Z

    .line 1926
    :goto_0
    return-void

    .line 1924
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v3

    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    :goto_1
    invoke-virtual {v3, v4, v2, v0, v1}, Lorg/telegram/messenger/FileLoader;->checkUploadNewDataAvailable(Ljava/lang/String;ZJ)V

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x0

    goto :goto_1
.end method

.method private handleAudioFrameAvailable(Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;)V
    .locals 18
    .param p1, "input"    # Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;

    .prologue
    .line 1481
    move-object/from16 v0, p0

    iget-wide v4, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioStartTime:J

    const-wide/16 v6, -0x1

    cmp-long v2, v4, v6

    if-nez v2, :cond_0

    .line 1482
    move-object/from16 v0, p1

    iget-object v2, v0, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;->offset:[J

    const/4 v4, 0x0

    aget-wide v4, v2, v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioStartTime:J

    .line 1484
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->buffersToWrite:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1485
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->buffersToWrite:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v4, 0x1

    if-le v2, v4, :cond_1

    .line 1486
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->buffersToWrite:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    .end local p1    # "input":Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;
    check-cast p1, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;

    .line 1489
    .restart local p1    # "input":Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;
    :cond_1
    const/4 v2, 0x0

    :try_start_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->drainEncoder(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1494
    :goto_0
    const/4 v13, 0x0

    .line 1495
    .local v13, "isLast":Z
    :cond_2
    :goto_1
    if-eqz p1, :cond_4

    .line 1496
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioEncoder:Landroid/media/MediaCodec;

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v3

    .line 1497
    .local v3, "inputBufferIndex":I
    if-ltz v3, :cond_2

    .line 1499
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v2, v4, :cond_5

    .line 1500
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v2, v3}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v11

    .line 1506
    .local v11, "inputBuffer":Ljava/nio/ByteBuffer;
    :goto_2
    move-object/from16 v0, p1

    iget-object v2, v0, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;->offset:[J

    move-object/from16 v0, p1

    iget v4, v0, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;->lastWroteBuffer:I

    aget-wide v14, v2, v4

    .line 1507
    .local v14, "startWriteTime":J
    move-object/from16 v0, p1

    iget v9, v0, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;->lastWroteBuffer:I

    .local v9, "a":I
    :goto_3
    move-object/from16 v0, p1

    iget v2, v0, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;->results:I

    if-gt v9, v2, :cond_3

    .line 1508
    move-object/from16 v0, p1

    iget v2, v0, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;->results:I

    if-ge v9, v2, :cond_7

    .line 1509
    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;->read:[I

    aget v4, v4, v9

    if-ge v2, v4, :cond_6

    .line 1510
    move-object/from16 v0, p1

    iput v9, v0, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;->lastWroteBuffer:I

    .line 1511
    const/16 p1, 0x0

    .line 1530
    :cond_3
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioEncoder:Landroid/media/MediaCodec;

    const/4 v4, 0x0

    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    const-wide/16 v6, 0x0

    cmp-long v6, v14, v6

    if-nez v6, :cond_b

    const-wide/16 v6, 0x0

    :goto_5
    if-eqz v13, :cond_c

    const/4 v8, 0x4

    :goto_6
    invoke-virtual/range {v2 .. v8}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1533
    .end local v3    # "inputBufferIndex":I
    .end local v9    # "a":I
    .end local v11    # "inputBuffer":Ljava/nio/ByteBuffer;
    .end local v14    # "startWriteTime":J
    :catch_0
    move-exception v10

    .line 1534
    .local v10, "e":Ljava/lang/Throwable;
    invoke-static {v10}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 1536
    .end local v10    # "e":Ljava/lang/Throwable;
    :cond_4
    return-void

    .line 1490
    .end local v13    # "isLast":Z
    :catch_1
    move-exception v10

    .line 1491
    .local v10, "e":Ljava/lang/Exception;
    invoke-static {v10}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1502
    .end local v10    # "e":Ljava/lang/Exception;
    .restart local v3    # "inputBufferIndex":I
    .restart local v13    # "isLast":Z
    :cond_5
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v12

    .line 1503
    .local v12, "inputBuffers":[Ljava/nio/ByteBuffer;
    aget-object v11, v12, v3

    .line 1504
    .restart local v11    # "inputBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    goto :goto_2

    .line 1514
    .end local v12    # "inputBuffers":[Ljava/nio/ByteBuffer;
    .restart local v9    # "a":I
    .restart local v14    # "startWriteTime":J
    :cond_6
    move-object/from16 v0, p1

    iget-object v2, v0, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;->buffer:[B

    mul-int/lit16 v4, v9, 0x800

    move-object/from16 v0, p1

    iget-object v5, v0, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;->read:[I

    aget v5, v5, v9

    invoke-virtual {v11, v2, v4, v5}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 1516
    :cond_7
    move-object/from16 v0, p1

    iget v2, v0, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;->results:I

    add-int/lit8 v2, v2, -0x1

    if-lt v9, v2, :cond_9

    .line 1517
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->buffersToWrite:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1518
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->running:Z

    if-eqz v2, :cond_8

    .line 1519
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->buffers:Ljava/util/concurrent/ArrayBlockingQueue;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/util/concurrent/ArrayBlockingQueue;->put(Ljava/lang/Object;)V

    .line 1521
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->buffersToWrite:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_a

    .line 1522
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->buffersToWrite:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;

    move-object/from16 p1, v0

    .line 1507
    :cond_9
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_3

    .line 1524
    :cond_a
    move-object/from16 v0, p1

    iget-boolean v13, v0, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;->last:Z

    .line 1525
    const/16 p1, 0x0

    .line 1526
    goto/16 :goto_4

    .line 1530
    :cond_b
    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioStartTime:J

    sub-long v6, v14, v6

    const-wide/16 v16, 0x3e8

    div-long v6, v6, v16
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_5

    :cond_c
    const/4 v8, 0x0

    goto :goto_6
.end method

.method private handleStopRecording(I)V
    .locals 6
    .param p1, "send"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 1623
    iget-boolean v1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->running:Z

    if-eqz v1, :cond_0

    .line 1624
    iput p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->sendWhenDone:I

    .line 1625
    iput-boolean v3, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->running:Z

    .line 1754
    :goto_0
    return-void

    .line 1629
    :cond_0
    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0, v1}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->drainEncoder(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1633
    :goto_1
    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoEncoder:Landroid/media/MediaCodec;

    if-eqz v1, :cond_1

    .line 1635
    :try_start_1
    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->stop()V

    .line 1636
    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->release()V

    .line 1637
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoEncoder:Landroid/media/MediaCodec;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1642
    :cond_1
    :goto_2
    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioEncoder:Landroid/media/MediaCodec;

    if-eqz v1, :cond_2

    .line 1644
    :try_start_2
    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->stop()V

    .line 1645
    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->release()V

    .line 1646
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioEncoder:Landroid/media/MediaCodec;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 1651
    :cond_2
    :goto_3
    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->mediaMuxer:Lorg/telegram/messenger/video/MP4Builder;

    if-eqz v1, :cond_3

    .line 1653
    :try_start_3
    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->mediaMuxer:Lorg/telegram/messenger/video/MP4Builder;

    invoke-virtual {v1}, Lorg/telegram/messenger/video/MP4Builder;->finishMovie()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 1658
    :cond_3
    :goto_4
    if-eqz p1, :cond_6

    .line 1659
    new-instance v1, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$2;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$2;-><init>(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;I)V

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 1738
    :goto_5
    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v2, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglSurface:Landroid/opengl/EGLSurface;

    invoke-static {v1, v2}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    .line 1739
    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    iput-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglSurface:Landroid/opengl/EGLSurface;

    .line 1740
    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->surface:Landroid/view/Surface;

    if-eqz v1, :cond_4

    .line 1741
    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->surface:Landroid/view/Surface;

    invoke-virtual {v1}, Landroid/view/Surface;->release()V

    .line 1742
    iput-object v5, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->surface:Landroid/view/Surface;

    .line 1744
    :cond_4
    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglDisplay:Landroid/opengl/EGLDisplay;

    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-eq v1, v2, :cond_5

    .line 1745
    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglDisplay:Landroid/opengl/EGLDisplay;

    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v3, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v4, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v1, v2, v3, v4}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    .line 1746
    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v2, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglContext:Landroid/opengl/EGLContext;

    invoke-static {v1, v2}, Landroid/opengl/EGL14;->eglDestroyContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;)Z

    .line 1747
    invoke-static {}, Landroid/opengl/EGL14;->eglReleaseThread()Z

    .line 1748
    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglDisplay:Landroid/opengl/EGLDisplay;

    invoke-static {v1}, Landroid/opengl/EGL14;->eglTerminate(Landroid/opengl/EGLDisplay;)Z

    .line 1750
    :cond_5
    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    iput-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglDisplay:Landroid/opengl/EGLDisplay;

    .line 1751
    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    iput-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglContext:Landroid/opengl/EGLContext;

    .line 1752
    iput-object v5, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglConfig:Landroid/opengl/EGLConfig;

    .line 1753
    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->handler:Lorg/telegram/ui/Components/InstantCameraView$EncoderHandler;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/InstantCameraView$EncoderHandler;->exit()V

    goto :goto_0

    .line 1630
    :catch_0
    move-exception v0

    .line 1631
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 1638
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 1639
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 1647
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v0

    .line 1648
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_3

    .line 1654
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v0

    .line 1655
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_4

    .line 1735
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_6
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Lorg/telegram/messenger/FileLoader;->cancelUploadFile(Ljava/lang/String;Z)V

    .line 1736
    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_5
.end method

.method private handleVideoFrameAvailable(JLjava/lang/Integer;)V
    .locals 11
    .param p1, "timestampNanos"    # J
    .param p3, "cameraId"    # Ljava/lang/Integer;

    .prologue
    .line 1540
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->drainEncoder(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1545
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->lastCameraId:Ljava/lang/Integer;

    invoke-virtual {v0, p3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1546
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->lastTimestamp:J

    .line 1547
    iput-object p3, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->lastCameraId:Ljava/lang/Integer;

    .line 1549
    :cond_0
    iget-wide v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->lastTimestamp:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    .line 1550
    iput-wide p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->lastTimestamp:J

    .line 1551
    iget-wide v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->currentTimestamp:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    .line 1552
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->lastCommitedFrameTime:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0xf4240

    mul-long v8, v0, v2

    .line 1553
    .local v8, "dt":J
    const-wide/16 v6, 0x0

    .line 1561
    .local v6, "alphaDt":J
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->lastCommitedFrameTime:J

    .line 1562
    iget-boolean v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->skippedFirst:Z

    if-nez v0, :cond_5

    .line 1563
    iget-wide v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->skippedTime:J

    add-long/2addr v0, v8

    iput-wide v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->skippedTime:J

    .line 1564
    iget-wide v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->skippedTime:J

    const-wide/32 v2, 0xbebc200

    cmp-long v0, v0, v2

    if-gez v0, :cond_4

    .line 1620
    :cond_1
    :goto_2
    return-void

    .line 1541
    .end local v6    # "alphaDt":J
    .end local v8    # "dt":J
    :catch_0
    move-exception v10

    .line 1542
    .local v10, "e":Ljava/lang/Exception;
    invoke-static {v10}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1555
    .end local v10    # "e":Ljava/lang/Exception;
    :cond_2
    const-wide/16 v8, 0x0

    .restart local v8    # "dt":J
    move-wide v6, v8

    .restart local v6    # "alphaDt":J
    goto :goto_1

    .line 1558
    .end local v6    # "alphaDt":J
    .end local v8    # "dt":J
    :cond_3
    iget-wide v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->lastTimestamp:J

    sub-long v8, p1, v0

    .restart local v8    # "dt":J
    move-wide v6, v8

    .line 1559
    .restart local v6    # "alphaDt":J
    iput-wide p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->lastTimestamp:J

    goto :goto_1

    .line 1567
    :cond_4
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->skippedFirst:Z

    .line 1569
    :cond_5
    iget-wide v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->currentTimestamp:J

    add-long/2addr v0, v8

    iput-wide v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->currentTimestamp:J

    .line 1571
    iget v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->drawProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 1572
    iget v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->positionHandle:I

    const/4 v1, 0x3

    const/16 v2, 0x1406

    const/4 v3, 0x0

    const/16 v4, 0xc

    iget-object v5, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    # getter for: Lorg/telegram/ui/Components/InstantCameraView;->vertexBuffer:Ljava/nio/FloatBuffer;
    invoke-static {v5}, Lorg/telegram/ui/Components/InstantCameraView;->access$2300(Lorg/telegram/ui/Components/InstantCameraView;)Ljava/nio/FloatBuffer;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 1573
    iget v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->positionHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 1574
    iget v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->textureHandle:I

    const/4 v1, 0x2

    const/16 v2, 0x1406

    const/4 v3, 0x0

    const/16 v4, 0x8

    iget-object v5, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    # getter for: Lorg/telegram/ui/Components/InstantCameraView;->textureBuffer:Ljava/nio/FloatBuffer;
    invoke-static {v5}, Lorg/telegram/ui/Components/InstantCameraView;->access$2400(Lorg/telegram/ui/Components/InstantCameraView;)Ljava/nio/FloatBuffer;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 1575
    iget v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->textureHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 1576
    iget v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->scaleXHandle:I

    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    # getter for: Lorg/telegram/ui/Components/InstantCameraView;->scaleX:F
    invoke-static {v1}, Lorg/telegram/ui/Components/InstantCameraView;->access$2000(Lorg/telegram/ui/Components/InstantCameraView;)F

    move-result v1

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 1577
    iget v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->scaleYHandle:I

    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    # getter for: Lorg/telegram/ui/Components/InstantCameraView;->scaleY:F
    invoke-static {v1}, Lorg/telegram/ui/Components/InstantCameraView;->access$2100(Lorg/telegram/ui/Components/InstantCameraView;)F

    move-result v1

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 1578
    iget v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->vertexMatrixHandle:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    # getter for: Lorg/telegram/ui/Components/InstantCameraView;->mMVPMatrix:[F
    invoke-static {v3}, Lorg/telegram/ui/Components/InstantCameraView;->access$2800(Lorg/telegram/ui/Components/InstantCameraView;)[F

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 1580
    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 1581
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    # getter for: Lorg/telegram/ui/Components/InstantCameraView;->oldCameraTexture:[I
    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->access$3200(Lorg/telegram/ui/Components/InstantCameraView;)[I

    move-result-object v0

    const/4 v1, 0x0

    aget v0, v0, v1

    if-eqz v0, :cond_7

    .line 1582
    iget-boolean v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->blendEnabled:Z

    if-nez v0, :cond_6

    .line 1583
    const/16 v0, 0xbe2

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 1584
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->blendEnabled:Z

    .line 1586
    :cond_6
    iget v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->textureMatrixHandle:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    # getter for: Lorg/telegram/ui/Components/InstantCameraView;->moldSTMatrix:[F
    invoke-static {v3}, Lorg/telegram/ui/Components/InstantCameraView;->access$3100(Lorg/telegram/ui/Components/InstantCameraView;)[F

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 1587
    iget v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->alphaHandle:I

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 1588
    const v0, 0x8d65

    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    # getter for: Lorg/telegram/ui/Components/InstantCameraView;->oldCameraTexture:[I
    invoke-static {v1}, Lorg/telegram/ui/Components/InstantCameraView;->access$3200(Lorg/telegram/ui/Components/InstantCameraView;)[I

    move-result-object v1

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 1589
    const/4 v0, 0x5

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 1591
    :cond_7
    iget v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->textureMatrixHandle:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    # getter for: Lorg/telegram/ui/Components/InstantCameraView;->mSTMatrix:[F
    invoke-static {v3}, Lorg/telegram/ui/Components/InstantCameraView;->access$2500(Lorg/telegram/ui/Components/InstantCameraView;)[F

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 1592
    iget v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->alphaHandle:I

    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    # getter for: Lorg/telegram/ui/Components/InstantCameraView;->cameraTextureAlpha:F
    invoke-static {v1}, Lorg/telegram/ui/Components/InstantCameraView;->access$3300(Lorg/telegram/ui/Components/InstantCameraView;)F

    move-result v1

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 1593
    const v0, 0x8d65

    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    # getter for: Lorg/telegram/ui/Components/InstantCameraView;->cameraTexture:[I
    invoke-static {v1}, Lorg/telegram/ui/Components/InstantCameraView;->access$2700(Lorg/telegram/ui/Components/InstantCameraView;)[I

    move-result-object v1

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 1594
    const/4 v0, 0x5

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 1596
    iget v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->positionHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 1597
    iget v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->textureHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 1598
    const v0, 0x8d65

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 1599
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 1601
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "frame time = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->currentTimestamp:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 1602
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglSurface:Landroid/opengl/EGLSurface;

    iget-wide v2, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->currentTimestamp:J

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/EGLExt;->eglPresentationTimeANDROID(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;J)Z

    .line 1603
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglSurface:Landroid/opengl/EGLSurface;

    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglSwapBuffers(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    .line 1605
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    # getter for: Lorg/telegram/ui/Components/InstantCameraView;->oldCameraTexture:[I
    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->access$3200(Lorg/telegram/ui/Components/InstantCameraView;)[I

    move-result-object v0

    const/4 v1, 0x0

    aget v0, v0, v1

    if-eqz v0, :cond_8

    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    # getter for: Lorg/telegram/ui/Components/InstantCameraView;->cameraTextureAlpha:F
    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->access$3300(Lorg/telegram/ui/Components/InstantCameraView;)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_8

    .line 1606
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    # getter for: Lorg/telegram/ui/Components/InstantCameraView;->cameraTextureAlpha:F
    invoke-static {v1}, Lorg/telegram/ui/Components/InstantCameraView;->access$3300(Lorg/telegram/ui/Components/InstantCameraView;)F

    move-result v1

    long-to-float v2, v6

    const v3, 0x4d3ebc20    # 2.0E8f

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    # setter for: Lorg/telegram/ui/Components/InstantCameraView;->cameraTextureAlpha:F
    invoke-static {v0, v1}, Lorg/telegram/ui/Components/InstantCameraView;->access$3302(Lorg/telegram/ui/Components/InstantCameraView;F)F

    .line 1607
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    # getter for: Lorg/telegram/ui/Components/InstantCameraView;->cameraTextureAlpha:F
    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->access$3300(Lorg/telegram/ui/Components/InstantCameraView;)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 1608
    const/16 v0, 0xbe2

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 1609
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->blendEnabled:Z

    .line 1610
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    const/high16 v1, 0x3f800000    # 1.0f

    # setter for: Lorg/telegram/ui/Components/InstantCameraView;->cameraTextureAlpha:F
    invoke-static {v0, v1}, Lorg/telegram/ui/Components/InstantCameraView;->access$3302(Lorg/telegram/ui/Components/InstantCameraView;F)F

    .line 1611
    const/4 v0, 0x1

    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    # getter for: Lorg/telegram/ui/Components/InstantCameraView;->oldCameraTexture:[I
    invoke-static {v1}, Lorg/telegram/ui/Components/InstantCameraView;->access$3200(Lorg/telegram/ui/Components/InstantCameraView;)[I

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 1612
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    # getter for: Lorg/telegram/ui/Components/InstantCameraView;->oldCameraTexture:[I
    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->access$3200(Lorg/telegram/ui/Components/InstantCameraView;)[I

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v2, v0, v1

    .line 1613
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    # getter for: Lorg/telegram/ui/Components/InstantCameraView;->cameraReady:Z
    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->access$800(Lorg/telegram/ui/Components/InstantCameraView;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1614
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    const/4 v1, 0x1

    # setter for: Lorg/telegram/ui/Components/InstantCameraView;->cameraReady:Z
    invoke-static {v0, v1}, Lorg/telegram/ui/Components/InstantCameraView;->access$802(Lorg/telegram/ui/Components/InstantCameraView;Z)Z

    goto/16 :goto_2

    .line 1617
    :cond_8
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    # getter for: Lorg/telegram/ui/Components/InstantCameraView;->cameraReady:Z
    invoke-static {v0}, Lorg/telegram/ui/Components/InstantCameraView;->access$800(Lorg/telegram/ui/Components/InstantCameraView;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1618
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    const/4 v1, 0x1

    # setter for: Lorg/telegram/ui/Components/InstantCameraView;->cameraReady:Z
    invoke-static {v0, v1}, Lorg/telegram/ui/Components/InstantCameraView;->access$802(Lorg/telegram/ui/Components/InstantCameraView;Z)Z

    goto/16 :goto_2
.end method

.method private prepareEncoder()V
    .locals 30

    .prologue
    .line 1758
    const v2, 0xac44

    const/16 v3, 0x10

    const/4 v4, 0x2

    :try_start_0
    invoke-static {v2, v3, v4}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v24

    .line 1759
    .local v24, "recordBufferSize":I
    if-gtz v24, :cond_0

    .line 1760
    const/16 v24, 0xe00

    .line 1762
    :cond_0
    const v7, 0xc000

    .line 1763
    .local v7, "bufferSize":I
    move/from16 v0, v24

    if-ge v7, v0, :cond_1

    .line 1764
    move/from16 v0, v24

    div-int/lit16 v2, v0, 0x800

    add-int/lit8 v2, v2, 0x1

    mul-int/lit16 v2, v2, 0x800

    mul-int/lit8 v7, v2, 0x2

    .line 1766
    :cond_1
    const/16 v16, 0x0

    .local v16, "a":I
    :goto_0
    const/4 v2, 0x3

    move/from16 v0, v16

    if-ge v0, v2, :cond_2

    .line 1767
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->buffers:Ljava/util/concurrent/ArrayBlockingQueue;

    new-instance v3, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lorg/telegram/ui/Components/InstantCameraView$AudioBufferInfo;-><init>(Lorg/telegram/ui/Components/InstantCameraView;Lorg/telegram/ui/Components/InstantCameraView$1;)V

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ArrayBlockingQueue;->add(Ljava/lang/Object;)Z

    .line 1766
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    .line 1769
    :cond_2
    new-instance v2, Landroid/media/AudioRecord;

    const/4 v3, 0x1

    const v4, 0xac44

    const/16 v5, 0x10

    const/4 v6, 0x2

    invoke-direct/range {v2 .. v7}, Landroid/media/AudioRecord;-><init>(IIIII)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioRecorder:Landroid/media/AudioRecord;

    .line 1770
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioRecorder:Landroid/media/AudioRecord;

    invoke-virtual {v2}, Landroid/media/AudioRecord;->startRecording()V

    .line 1771
    new-instance v2, Ljava/lang/Thread;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->recorderRunnable:Ljava/lang/Runnable;

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 1773
    new-instance v2, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v2}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    .line 1774
    new-instance v2, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v2}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    .line 1776
    new-instance v18, Landroid/media/MediaFormat;

    invoke-direct/range {v18 .. v18}, Landroid/media/MediaFormat;-><init>()V

    .line 1777
    .local v18, "audioFormat":Landroid/media/MediaFormat;
    const-string/jumbo v2, "mime"

    const-string/jumbo v3, "audio/mp4a-latm"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1778
    const-string/jumbo v2, "aac-profile"

    const/4 v3, 0x2

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 1779
    const-string/jumbo v2, "sample-rate"

    const v3, 0xac44

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 1780
    const-string/jumbo v2, "channel-count"

    const/4 v3, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 1781
    const-string/jumbo v2, "bitrate"

    const/16 v3, 0x7d00

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 1782
    const-string/jumbo v2, "max-input-size"

    const/16 v3, 0x5000

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 1784
    const-string/jumbo v2, "audio/mp4a-latm"

    invoke-static {v2}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioEncoder:Landroid/media/MediaCodec;

    .line 1785
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioEncoder:Landroid/media/MediaCodec;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v2, v0, v3, v4, v5}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 1786
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->start()V

    .line 1788
    const-string/jumbo v2, "video/avc"

    invoke-static {v2}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoEncoder:Landroid/media/MediaCodec;

    .line 1790
    const-string/jumbo v2, "video/avc"

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoWidth:I

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoHeight:I

    invoke-static {v2, v3, v4}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v19

    .line 1792
    .local v19, "format":Landroid/media/MediaFormat;
    const-string/jumbo v2, "color-format"

    const v3, 0x7f000789

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 1793
    const-string/jumbo v2, "bitrate"

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoBitrate:I

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 1794
    const-string/jumbo v2, "frame-rate"

    const/16 v3, 0x1e

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 1795
    const-string/jumbo v2, "i-frame-interval"

    const/4 v3, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 1797
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoEncoder:Landroid/media/MediaCodec;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v2, v0, v3, v4, v5}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 1798
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->createInputSurface()Landroid/view/Surface;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->surface:Landroid/view/Surface;

    .line 1799
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->start()V

    .line 1801
    new-instance v23, Lorg/telegram/messenger/video/Mp4Movie;

    invoke-direct/range {v23 .. v23}, Lorg/telegram/messenger/video/Mp4Movie;-><init>()V

    .line 1802
    .local v23, "movie":Lorg/telegram/messenger/video/Mp4Movie;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoFile:Ljava/io/File;

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/video/Mp4Movie;->setCacheFile(Ljava/io/File;)V

    .line 1803
    const/4 v2, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/video/Mp4Movie;->setRotation(I)V

    .line 1804
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoWidth:I

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoHeight:I

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v3}, Lorg/telegram/messenger/video/Mp4Movie;->setSize(II)V

    .line 1805
    new-instance v2, Lorg/telegram/messenger/video/MP4Builder;

    invoke-direct {v2}, Lorg/telegram/messenger/video/MP4Builder;-><init>()V

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Lorg/telegram/messenger/video/MP4Builder;->createMovie(Lorg/telegram/messenger/video/Mp4Movie;)Lorg/telegram/messenger/video/MP4Builder;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->mediaMuxer:Lorg/telegram/messenger/video/MP4Builder;

    .line 1807
    new-instance v2, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$3;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder$3;-><init>(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;)V

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1830
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglDisplay:Landroid/opengl/EGLDisplay;

    sget-object v3, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-eq v2, v3, :cond_3

    .line 1831
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "EGL already set up"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1826
    .end local v7    # "bufferSize":I
    .end local v16    # "a":I
    .end local v18    # "audioFormat":Landroid/media/MediaFormat;
    .end local v19    # "format":Landroid/media/MediaFormat;
    .end local v23    # "movie":Lorg/telegram/messenger/video/Mp4Movie;
    .end local v24    # "recordBufferSize":I
    :catch_0
    move-exception v21

    .line 1827
    .local v21, "ioe":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/RuntimeException;

    move-object/from16 v0, v21

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 1834
    .end local v21    # "ioe":Ljava/lang/Exception;
    .restart local v7    # "bufferSize":I
    .restart local v16    # "a":I
    .restart local v18    # "audioFormat":Landroid/media/MediaFormat;
    .restart local v19    # "format":Landroid/media/MediaFormat;
    .restart local v23    # "movie":Lorg/telegram/messenger/video/Mp4Movie;
    .restart local v24    # "recordBufferSize":I
    :cond_3
    const/4 v2, 0x0

    invoke-static {v2}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglDisplay:Landroid/opengl/EGLDisplay;

    .line 1835
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglDisplay:Landroid/opengl/EGLDisplay;

    sget-object v3, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-ne v2, v3, :cond_4

    .line 1836
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "unable to get EGL14 display"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1838
    :cond_4
    const/4 v2, 0x2

    new-array v0, v2, [I

    move-object/from16 v28, v0

    .line 1839
    .local v28, "version":[I
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglDisplay:Landroid/opengl/EGLDisplay;

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object/from16 v0, v28

    move-object/from16 v1, v28

    invoke-static {v2, v0, v3, v1, v4}, Landroid/opengl/EGL14;->eglInitialize(Landroid/opengl/EGLDisplay;[II[II)Z

    move-result v2

    if-nez v2, :cond_5

    .line 1840
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglDisplay:Landroid/opengl/EGLDisplay;

    .line 1841
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "unable to initialize EGL14"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1844
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglContext:Landroid/opengl/EGLContext;

    sget-object v3, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    if-ne v2, v3, :cond_7

    .line 1845
    const/16 v25, 0x4

    .line 1847
    .local v25, "renderableType":I
    const/16 v2, 0xd

    new-array v9, v2, [I

    const/4 v2, 0x0

    const/16 v3, 0x3024

    aput v3, v9, v2

    const/4 v2, 0x1

    const/16 v3, 0x8

    aput v3, v9, v2

    const/4 v2, 0x2

    const/16 v3, 0x3023

    aput v3, v9, v2

    const/4 v2, 0x3

    const/16 v3, 0x8

    aput v3, v9, v2

    const/4 v2, 0x4

    const/16 v3, 0x3022

    aput v3, v9, v2

    const/4 v2, 0x5

    const/16 v3, 0x8

    aput v3, v9, v2

    const/4 v2, 0x6

    const/16 v3, 0x3021

    aput v3, v9, v2

    const/4 v2, 0x7

    const/16 v3, 0x8

    aput v3, v9, v2

    const/16 v2, 0x8

    const/16 v3, 0x3040

    aput v3, v9, v2

    const/16 v2, 0x9

    aput v25, v9, v2

    const/16 v2, 0xa

    const/16 v3, 0x3142

    aput v3, v9, v2

    const/16 v2, 0xb

    const/4 v3, 0x1

    aput v3, v9, v2

    const/16 v2, 0xc

    const/16 v3, 0x3038

    aput v3, v9, v2

    .line 1856
    .local v9, "attribList":[I
    const/4 v2, 0x1

    new-array v11, v2, [Landroid/opengl/EGLConfig;

    .line 1857
    .local v11, "configs":[Landroid/opengl/EGLConfig;
    const/4 v2, 0x1

    new-array v14, v2, [I

    .line 1858
    .local v14, "numConfigs":[I
    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglDisplay:Landroid/opengl/EGLDisplay;

    const/4 v10, 0x0

    const/4 v12, 0x0

    array-length v13, v11

    const/4 v15, 0x0

    invoke-static/range {v8 .. v15}, Landroid/opengl/EGL14;->eglChooseConfig(Landroid/opengl/EGLDisplay;[II[Landroid/opengl/EGLConfig;II[II)Z

    move-result v2

    if-nez v2, :cond_6

    .line 1859
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "Unable to find a suitable EGLConfig"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1862
    :cond_6
    const/4 v2, 0x3

    new-array v0, v2, [I

    move-object/from16 v17, v0

    fill-array-data v17, :array_0

    .line 1866
    .local v17, "attrib2_list":[I
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglDisplay:Landroid/opengl/EGLDisplay;

    const/4 v3, 0x0

    aget-object v3, v11, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->sharedEglContext:Landroid/opengl/EGLContext;

    const/4 v5, 0x0

    move-object/from16 v0, v17

    invoke-static {v2, v3, v4, v0, v5}, Landroid/opengl/EGL14;->eglCreateContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;[II)Landroid/opengl/EGLContext;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglContext:Landroid/opengl/EGLContext;

    .line 1867
    const/4 v2, 0x0

    aget-object v2, v11, v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglConfig:Landroid/opengl/EGLConfig;

    .line 1870
    .end local v9    # "attribList":[I
    .end local v11    # "configs":[Landroid/opengl/EGLConfig;
    .end local v14    # "numConfigs":[I
    .end local v17    # "attrib2_list":[I
    .end local v25    # "renderableType":I
    :cond_7
    const/4 v2, 0x1

    new-array v0, v2, [I

    move-object/from16 v27, v0

    .line 1871
    .local v27, "values":[I
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglDisplay:Landroid/opengl/EGLDisplay;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglContext:Landroid/opengl/EGLContext;

    const/16 v4, 0x3098

    const/4 v5, 0x0

    move-object/from16 v0, v27

    invoke-static {v2, v3, v4, v0, v5}, Landroid/opengl/EGL14;->eglQueryContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;I[II)Z

    .line 1873
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglSurface:Landroid/opengl/EGLSurface;

    sget-object v3, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    if-eq v2, v3, :cond_8

    .line 1874
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "surface already created"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1877
    :cond_8
    const/4 v2, 0x1

    new-array v0, v2, [I

    move-object/from16 v26, v0

    const/4 v2, 0x0

    const/16 v3, 0x3038

    aput v3, v26, v2

    .line 1880
    .local v26, "surfaceAttribs":[I
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglDisplay:Landroid/opengl/EGLDisplay;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglConfig:Landroid/opengl/EGLConfig;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->surface:Landroid/view/Surface;

    const/4 v5, 0x0

    move-object/from16 v0, v26

    invoke-static {v2, v3, v4, v0, v5}, Landroid/opengl/EGL14;->eglCreateWindowSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Ljava/lang/Object;[II)Landroid/opengl/EGLSurface;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglSurface:Landroid/opengl/EGLSurface;

    .line 1881
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglSurface:Landroid/opengl/EGLSurface;

    if-nez v2, :cond_9

    .line 1882
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "surface was null"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1885
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglDisplay:Landroid/opengl/EGLDisplay;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglSurface:Landroid/opengl/EGLSurface;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglSurface:Landroid/opengl/EGLSurface;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglContext:Landroid/opengl/EGLContext;

    invoke-static {v2, v3, v4, v5}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 1886
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "eglMakeCurrent failed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result v3

    invoke-static {v3}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 1887
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "eglMakeCurrent failed"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1889
    :cond_a
    const/16 v2, 0x302

    const/16 v3, 0x303

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    .line 1891
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    const v3, 0x8b31

    const-string/jumbo v4, "uniform mat4 uMVPMatrix;\nuniform mat4 uSTMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n   gl_Position = uMVPMatrix * aPosition;\n   vTextureCoord = (uSTMatrix * aTextureCoord).xy;\n}\n"

    # invokes: Lorg/telegram/ui/Components/InstantCameraView;->loadShader(ILjava/lang/String;)I
    invoke-static {v2, v3, v4}, Lorg/telegram/ui/Components/InstantCameraView;->access$2600(Lorg/telegram/ui/Components/InstantCameraView;ILjava/lang/String;)I

    move-result v29

    .line 1892
    .local v29, "vertexShader":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->this$0:Lorg/telegram/ui/Components/InstantCameraView;

    const v3, 0x8b30

    const-string/jumbo v4, "#extension GL_OES_EGL_image_external : require\nprecision highp float;\nvarying vec2 vTextureCoord;\nuniform float scaleX;\nuniform float scaleY;\nuniform float alpha;\nuniform samplerExternalOES sTexture;\nvoid main() {\n   vec2 coord = vec2((vTextureCoord.x - 0.5) * scaleX, (vTextureCoord.y - 0.5) * scaleY);\n   float coef = ceil(clamp(0.2601 - dot(coord, coord), 0.0, 1.0));\n   vec3 color = texture2D(sTexture, vTextureCoord).rgb * coef + (1.0 - step(0.001, coef));\n   gl_FragColor = vec4(color * alpha, alpha);\n}\n"

    # invokes: Lorg/telegram/ui/Components/InstantCameraView;->loadShader(ILjava/lang/String;)I
    invoke-static {v2, v3, v4}, Lorg/telegram/ui/Components/InstantCameraView;->access$2600(Lorg/telegram/ui/Components/InstantCameraView;ILjava/lang/String;)I

    move-result v20

    .line 1893
    .local v20, "fragmentShader":I
    if-eqz v29, :cond_b

    if-eqz v20, :cond_b

    .line 1894
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->drawProgram:I

    .line 1895
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->drawProgram:I

    move/from16 v0, v29

    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 1896
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->drawProgram:I

    move/from16 v0, v20

    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 1897
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->drawProgram:I

    invoke-static {v2}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 1898
    const/4 v2, 0x1

    new-array v0, v2, [I

    move-object/from16 v22, v0

    .line 1899
    .local v22, "linkStatus":[I
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->drawProgram:I

    const v3, 0x8b82

    const/4 v4, 0x0

    move-object/from16 v0, v22

    invoke-static {v2, v3, v0, v4}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 1900
    const/4 v2, 0x0

    aget v2, v22, v2

    if-nez v2, :cond_c

    .line 1901
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->drawProgram:I

    invoke-static {v2}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 1902
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->drawProgram:I

    .line 1913
    .end local v22    # "linkStatus":[I
    :cond_b
    :goto_1
    return-void

    .line 1904
    .restart local v22    # "linkStatus":[I
    :cond_c
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->drawProgram:I

    const-string/jumbo v3, "aPosition"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->positionHandle:I

    .line 1905
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->drawProgram:I

    const-string/jumbo v3, "aTextureCoord"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->textureHandle:I

    .line 1906
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->drawProgram:I

    const-string/jumbo v3, "scaleX"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->scaleXHandle:I

    .line 1907
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->drawProgram:I

    const-string/jumbo v3, "scaleY"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->scaleYHandle:I

    .line 1908
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->drawProgram:I

    const-string/jumbo v3, "alpha"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->alphaHandle:I

    .line 1909
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->drawProgram:I

    const-string/jumbo v3, "uMVPMatrix"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->vertexMatrixHandle:I

    .line 1910
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->drawProgram:I

    const-string/jumbo v3, "uSTMatrix"

    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->textureMatrixHandle:I

    goto :goto_1

    .line 1862
    nop

    :array_0
    .array-data 4
        0x3098
        0x2
        0x3038
    .end array-data
.end method


# virtual methods
.method public drainEncoder(Z)V
    .locals 14
    .param p1, "endOfStream"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1929
    if-eqz p1, :cond_0

    .line 1930
    iget-object v9, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v9}, Landroid/media/MediaCodec;->signalEndOfInputStream()V

    .line 1933
    :cond_0
    iget-object v9, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v9}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 1935
    .local v4, "encoderOutputBuffers":[Ljava/nio/ByteBuffer;
    :cond_1
    :goto_0
    iget-object v9, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoEncoder:Landroid/media/MediaCodec;

    iget-object v10, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    const-wide/16 v12, 0x2710

    invoke-virtual {v9, v10, v12, v13}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v5

    .line 1936
    .local v5, "encoderStatus":I
    const/4 v9, -0x1

    if-ne v5, v9, :cond_4

    .line 1937
    if-nez p1, :cond_1

    .line 2000
    :goto_1
    iget-object v9, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v9}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 2001
    const/4 v3, 0x1

    .line 2003
    .local v3, "encoderOutputAvailable":Z
    :cond_2
    :goto_2
    iget-object v9, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioEncoder:Landroid/media/MediaCodec;

    iget-object v10, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    const-wide/16 v12, 0x0

    invoke-virtual {v9, v10, v12, v13}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v5

    .line 2004
    const/4 v9, -0x1

    if-ne v5, v9, :cond_e

    .line 2005
    if-eqz p1, :cond_3

    iget-boolean v9, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->running:Z

    if-nez v9, :cond_2

    iget v9, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->sendWhenDone:I

    if-nez v9, :cond_2

    .line 2041
    :cond_3
    :goto_3
    return-void

    .line 1940
    .end local v3    # "encoderOutputAvailable":Z
    :cond_4
    const/4 v9, -0x3

    if-ne v5, v9, :cond_5

    .line 1941
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x15

    if-ge v9, v10, :cond_1

    .line 1942
    iget-object v9, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v9}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v4

    goto :goto_0

    .line 1944
    :cond_5
    const/4 v9, -0x2

    if-ne v5, v9, :cond_6

    .line 1945
    iget-object v9, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v9}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v6

    .line 1946
    .local v6, "newFormat":Landroid/media/MediaFormat;
    iget v9, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoTrackIndex:I

    const/4 v10, -0x5

    if-ne v9, v10, :cond_1

    .line 1947
    iget-object v9, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->mediaMuxer:Lorg/telegram/messenger/video/MP4Builder;

    const/4 v10, 0x0

    invoke-virtual {v9, v6, v10}, Lorg/telegram/messenger/video/MP4Builder;->addTrack(Landroid/media/MediaFormat;Z)I

    move-result v9

    iput v9, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoTrackIndex:I

    goto :goto_0

    .line 1949
    .end local v6    # "newFormat":Landroid/media/MediaFormat;
    :cond_6
    if-ltz v5, :cond_1

    .line 1951
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x15

    if-ge v9, v10, :cond_7

    .line 1952
    aget-object v2, v4, v5

    .line 1956
    .local v2, "encodedData":Ljava/nio/ByteBuffer;
    :goto_4
    if-nez v2, :cond_8

    .line 1957
    new-instance v9, Ljava/lang/RuntimeException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "encoderOutputBuffer "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " was null"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1954
    .end local v2    # "encodedData":Ljava/nio/ByteBuffer;
    :cond_7
    iget-object v9, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v9, v5}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .restart local v2    # "encodedData":Ljava/nio/ByteBuffer;
    goto :goto_4

    .line 1959
    :cond_8
    iget-object v9, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v9, v9, Landroid/media/MediaCodec$BufferInfo;->size:I

    const/4 v10, 0x1

    if-le v9, v10, :cond_9

    .line 1960
    iget-object v9, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v9, v9, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v9, v9, 0x2

    if-nez v9, :cond_a

    .line 1961
    iget-object v9, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->mediaMuxer:Lorg/telegram/messenger/video/MP4Builder;

    iget v10, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoTrackIndex:I

    iget-object v11, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    const/4 v12, 0x1

    invoke-virtual {v9, v10, v2, v11, v12}, Lorg/telegram/messenger/video/MP4Builder;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;Z)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 1962
    iget-object v9, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoFile:Ljava/io/File;

    const/4 v10, 0x0

    invoke-direct {p0, v9, v10}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->didWriteData(Ljava/io/File;Z)V

    .line 1993
    :cond_9
    :goto_5
    iget-object v9, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoEncoder:Landroid/media/MediaCodec;

    const/4 v10, 0x0

    invoke-virtual {v9, v5, v10}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 1994
    iget-object v9, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v9, v9, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v9, v9, 0x4

    if-eqz v9, :cond_1

    goto/16 :goto_1

    .line 1964
    :cond_a
    iget v9, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoTrackIndex:I

    const/4 v10, -0x5

    if-ne v9, v10, :cond_9

    .line 1965
    iget-object v9, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v9, v9, Landroid/media/MediaCodec$BufferInfo;->size:I

    new-array v1, v9, [B

    .line 1966
    .local v1, "csd":[B
    iget-object v9, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v9, v9, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget-object v10, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v10, v10, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v9, v10

    invoke-virtual {v2, v9}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 1967
    iget-object v9, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v9, v9, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v2, v9}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1968
    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 1969
    const/4 v8, 0x0

    .line 1970
    .local v8, "sps":Ljava/nio/ByteBuffer;
    const/4 v7, 0x0

    .line 1971
    .local v7, "pps":Ljava/nio/ByteBuffer;
    iget-object v9, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v9, v9, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/lit8 v0, v9, -0x1

    .local v0, "a":I
    :goto_6
    if-ltz v0, :cond_b

    .line 1972
    const/4 v9, 0x3

    if-le v0, v9, :cond_b

    .line 1973
    aget-byte v9, v1, v0

    const/4 v10, 0x1

    if-ne v9, v10, :cond_d

    add-int/lit8 v9, v0, -0x1

    aget-byte v9, v1, v9

    if-nez v9, :cond_d

    add-int/lit8 v9, v0, -0x2

    aget-byte v9, v1, v9

    if-nez v9, :cond_d

    add-int/lit8 v9, v0, -0x3

    aget-byte v9, v1, v9

    if-nez v9, :cond_d

    .line 1974
    add-int/lit8 v9, v0, -0x3

    invoke-static {v9}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 1975
    iget-object v9, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v9, v9, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/lit8 v10, v0, -0x3

    sub-int/2addr v9, v10

    invoke-static {v9}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 1976
    const/4 v9, 0x0

    add-int/lit8 v10, v0, -0x3

    invoke-virtual {v8, v1, v9, v10}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1977
    add-int/lit8 v9, v0, -0x3

    iget-object v10, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v10, v10, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/lit8 v11, v0, -0x3

    sub-int/2addr v10, v11

    invoke-virtual {v7, v1, v9, v10}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1985
    :cond_b
    const-string/jumbo v9, "video/avc"

    iget v10, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoWidth:I

    iget v11, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoHeight:I

    invoke-static {v9, v10, v11}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v6

    .line 1986
    .restart local v6    # "newFormat":Landroid/media/MediaFormat;
    if-eqz v8, :cond_c

    if-eqz v7, :cond_c

    .line 1987
    const-string/jumbo v9, "csd-0"

    invoke-virtual {v6, v9, v8}, Landroid/media/MediaFormat;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    .line 1988
    const-string/jumbo v9, "csd-1"

    invoke-virtual {v6, v9, v7}, Landroid/media/MediaFormat;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    .line 1990
    :cond_c
    iget-object v9, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->mediaMuxer:Lorg/telegram/messenger/video/MP4Builder;

    const/4 v10, 0x0

    invoke-virtual {v9, v6, v10}, Lorg/telegram/messenger/video/MP4Builder;->addTrack(Landroid/media/MediaFormat;Z)I

    move-result v9

    iput v9, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoTrackIndex:I

    goto/16 :goto_5

    .line 1971
    .end local v6    # "newFormat":Landroid/media/MediaFormat;
    :cond_d
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 2008
    .end local v0    # "a":I
    .end local v1    # "csd":[B
    .end local v2    # "encodedData":Ljava/nio/ByteBuffer;
    .end local v7    # "pps":Ljava/nio/ByteBuffer;
    .end local v8    # "sps":Ljava/nio/ByteBuffer;
    .restart local v3    # "encoderOutputAvailable":Z
    :cond_e
    const/4 v9, -0x3

    if-ne v5, v9, :cond_f

    .line 2009
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x15

    if-ge v9, v10, :cond_2

    .line 2010
    iget-object v9, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v9}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v4

    goto/16 :goto_2

    .line 2012
    :cond_f
    const/4 v9, -0x2

    if-ne v5, v9, :cond_10

    .line 2013
    iget-object v9, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v9}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v6

    .line 2014
    .restart local v6    # "newFormat":Landroid/media/MediaFormat;
    iget v9, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioTrackIndex:I

    const/4 v10, -0x5

    if-ne v9, v10, :cond_2

    .line 2015
    iget-object v9, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->mediaMuxer:Lorg/telegram/messenger/video/MP4Builder;

    const/4 v10, 0x1

    invoke-virtual {v9, v6, v10}, Lorg/telegram/messenger/video/MP4Builder;->addTrack(Landroid/media/MediaFormat;Z)I

    move-result v9

    iput v9, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioTrackIndex:I

    goto/16 :goto_2

    .line 2017
    .end local v6    # "newFormat":Landroid/media/MediaFormat;
    :cond_10
    if-ltz v5, :cond_2

    .line 2019
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x15

    if-ge v9, v10, :cond_11

    .line 2020
    aget-object v2, v4, v5

    .line 2024
    .restart local v2    # "encodedData":Ljava/nio/ByteBuffer;
    :goto_7
    if-nez v2, :cond_12

    .line 2025
    new-instance v9, Ljava/lang/RuntimeException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "encoderOutputBuffer "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " was null"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 2022
    .end local v2    # "encodedData":Ljava/nio/ByteBuffer;
    :cond_11
    iget-object v9, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v9, v5}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .restart local v2    # "encodedData":Ljava/nio/ByteBuffer;
    goto :goto_7

    .line 2027
    :cond_12
    iget-object v9, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v9, v9, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v9, v9, 0x2

    if-eqz v9, :cond_13

    .line 2028
    iget-object v9, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    const/4 v10, 0x0

    iput v10, v9, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 2030
    :cond_13
    iget-object v9, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v9, v9, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-eqz v9, :cond_14

    .line 2031
    iget-object v9, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->mediaMuxer:Lorg/telegram/messenger/video/MP4Builder;

    iget v10, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioTrackIndex:I

    iget-object v11, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v2, v11, v12}, Lorg/telegram/messenger/video/MP4Builder;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;Z)Z

    move-result v9

    if-eqz v9, :cond_14

    .line 2032
    iget-object v9, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoFile:Ljava/io/File;

    const/4 v10, 0x0

    invoke-direct {p0, v9, v10}, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->didWriteData(Ljava/io/File;Z)V

    .line 2035
    :cond_14
    iget-object v9, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioEncoder:Landroid/media/MediaCodec;

    const/4 v10, 0x0

    invoke-virtual {v9, v5, v10}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 2036
    iget-object v9, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->audioBufferInfo:Landroid/media/MediaCodec$BufferInfo;

    iget v9, v9, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v9, v9, 0x4

    if-eqz v9, :cond_2

    goto/16 :goto_3
.end method

.method protected finalize()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 2046
    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglDisplay:Landroid/opengl/EGLDisplay;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-eq v0, v1, :cond_0

    .line 2047
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglDisplay:Landroid/opengl/EGLDisplay;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v3, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    .line 2048
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglContext:Landroid/opengl/EGLContext;

    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglDestroyContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;)Z

    .line 2049
    invoke-static {}, Landroid/opengl/EGL14;->eglReleaseThread()Z

    .line 2050
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglDisplay:Landroid/opengl/EGLDisplay;

    invoke-static {v0}, Landroid/opengl/EGL14;->eglTerminate(Landroid/opengl/EGLDisplay;)Z

    .line 2051
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    iput-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglDisplay:Landroid/opengl/EGLDisplay;

    .line 2052
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    iput-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglContext:Landroid/opengl/EGLContext;

    .line 2053
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->eglConfig:Landroid/opengl/EGLConfig;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2056
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 2058
    return-void

    .line 2056
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public frameAvailable(Landroid/graphics/SurfaceTexture;Ljava/lang/Integer;)V
    .locals 8
    .param p1, "st"    # Landroid/graphics/SurfaceTexture;
    .param p2, "cameraId"    # Ljava/lang/Integer;

    .prologue
    .line 1451
    iget-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->sync:Ljava/lang/Object;

    monitor-enter v3

    .line 1452
    :try_start_0
    iget-boolean v2, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->ready:Z

    if-nez v2, :cond_1

    .line 1453
    monitor-exit v3

    .line 1463
    :cond_0
    :goto_0
    return-void

    .line 1455
    :cond_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1457
    invoke-virtual {p1}, Landroid/graphics/SurfaceTexture;->getTimestamp()J

    move-result-wide v0

    .line 1458
    .local v0, "timestamp":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 1462
    iget-object v2, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->handler:Lorg/telegram/ui/Components/InstantCameraView$EncoderHandler;

    iget-object v3, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->handler:Lorg/telegram/ui/Components/InstantCameraView$EncoderHandler;

    const/4 v4, 0x2

    const/16 v5, 0x20

    shr-long v6, v0, v5

    long-to-int v5, v6

    long-to-int v6, v0

    invoke-virtual {v3, v4, v5, v6, p2}, Lorg/telegram/ui/Components/InstantCameraView$EncoderHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/InstantCameraView$EncoderHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 1455
    .end local v0    # "timestamp":J
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public getInputSurface()Landroid/view/Surface;
    .locals 1

    .prologue
    .line 1916
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->surface:Landroid/view/Surface;

    return-object v0
.end method

.method public run()V
    .locals 2

    .prologue
    .line 1467
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 1468
    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->sync:Ljava/lang/Object;

    monitor-enter v1

    .line 1469
    :try_start_0
    new-instance v0, Lorg/telegram/ui/Components/InstantCameraView$EncoderHandler;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/InstantCameraView$EncoderHandler;-><init>(Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->handler:Lorg/telegram/ui/Components/InstantCameraView$EncoderHandler;

    .line 1470
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->ready:Z

    .line 1471
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->sync:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 1472
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1473
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 1475
    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->sync:Ljava/lang/Object;

    monitor-enter v1

    .line 1476
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->ready:Z

    .line 1477
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1478
    return-void

    .line 1472
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 1477
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public startRecording(Ljava/io/File;IILandroid/opengl/EGLContext;)V
    .locals 3
    .param p1, "outputFile"    # Ljava/io/File;
    .param p2, "size"    # I
    .param p3, "bitRate"    # I
    .param p4, "sharedContext"    # Landroid/opengl/EGLContext;

    .prologue
    .line 1423
    iput-object p1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoFile:Ljava/io/File;

    .line 1424
    iput p2, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoWidth:I

    .line 1425
    iput p2, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoHeight:I

    .line 1426
    iput p3, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->videoBitrate:I

    .line 1427
    iput-object p4, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->sharedEglContext:Landroid/opengl/EGLContext;

    .line 1429
    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->sync:Ljava/lang/Object;

    monitor-enter v1

    .line 1430
    :try_start_0
    iget-boolean v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->running:Z

    if-eqz v0, :cond_0

    .line 1431
    monitor-exit v1

    .line 1444
    :goto_0
    return-void

    .line 1433
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->running:Z

    .line 1434
    new-instance v0, Ljava/lang/Thread;

    const-string/jumbo v2, "TextureMovieEncoder"

    invoke-direct {v0, p0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1435
    :goto_1
    iget-boolean v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->ready:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 1437
    :try_start_1
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->sync:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1438
    :catch_0
    move-exception v0

    goto :goto_1

    .line 1442
    :cond_1
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1443
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->handler:Lorg/telegram/ui/Components/InstantCameraView$EncoderHandler;

    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->handler:Lorg/telegram/ui/Components/InstantCameraView$EncoderHandler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/InstantCameraView$EncoderHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/InstantCameraView$EncoderHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 1442
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public stopRecording(I)V
    .locals 4
    .param p1, "send"    # I

    .prologue
    .line 1447
    iget-object v0, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->handler:Lorg/telegram/ui/Components/InstantCameraView$EncoderHandler;

    iget-object v1, p0, Lorg/telegram/ui/Components/InstantCameraView$VideoRecorder;->handler:Lorg/telegram/ui/Components/InstantCameraView$EncoderHandler;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Lorg/telegram/ui/Components/InstantCameraView$EncoderHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/InstantCameraView$EncoderHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1448
    return-void
.end method
