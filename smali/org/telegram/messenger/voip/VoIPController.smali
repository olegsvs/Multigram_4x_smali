.class public Lorg/telegram/messenger/voip/VoIPController;
.super Ljava/lang/Object;
.source "VoIPController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/voip/VoIPController$Stats;,
        Lorg/telegram/messenger/voip/VoIPController$ConnectionStateListener;
    }
.end annotation


# static fields
.field public static final DATA_SAVING_ALWAYS:I = 0x2

.field public static final DATA_SAVING_MOBILE:I = 0x1

.field public static final DATA_SAVING_NEVER:I = 0x0

.field public static final ERROR_AUDIO_IO:I = 0x3

.field public static final ERROR_INCOMPATIBLE:I = 0x1

.field public static final ERROR_LOCALIZED:I = -0x3

.field public static final ERROR_PEER_OUTDATED:I = -0x1

.field public static final ERROR_PRIVACY:I = -0x2

.field public static final ERROR_TIMEOUT:I = 0x2

.field public static final ERROR_UNKNOWN:I = 0x0

.field public static final NET_TYPE_3G:I = 0x3

.field public static final NET_TYPE_DIALUP:I = 0xa

.field public static final NET_TYPE_EDGE:I = 0x2

.field public static final NET_TYPE_ETHERNET:I = 0x7

.field public static final NET_TYPE_GPRS:I = 0x1

.field public static final NET_TYPE_HSPA:I = 0x4

.field public static final NET_TYPE_LTE:I = 0x5

.field public static final NET_TYPE_OTHER_HIGH_SPEED:I = 0x8

.field public static final NET_TYPE_OTHER_LOW_SPEED:I = 0x9

.field public static final NET_TYPE_OTHER_MOBILE:I = 0xb

.field public static final NET_TYPE_UNKNOWN:I = 0x0

.field public static final NET_TYPE_WIFI:I = 0x6

.field public static final STATE_ESTABLISHED:I = 0x3

.field public static final STATE_FAILED:I = 0x4

.field public static final STATE_RECONNECTING:I = 0x5

.field public static final STATE_WAIT_INIT:I = 0x1

.field public static final STATE_WAIT_INIT_ACK:I = 0x2


# instance fields
.field private callStartTime:J

.field private listener:Lorg/telegram/messenger/voip/VoIPController$ConnectionStateListener;

.field private nativeInst:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/telegram/messenger/voip/VoIPController;->nativeInst:J

    .line 68
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-direct {p0, v0}, Lorg/telegram/messenger/voip/VoIPController;->nativeInit(I)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/messenger/voip/VoIPController;->nativeInst:J

    .line 69
    return-void
.end method

.method private ensureNativeInstance()V
    .locals 4

    .prologue
    .line 122
    iget-wide v0, p0, Lorg/telegram/messenger/voip/VoIPController;->nativeInst:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 123
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Native instance is not valid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 125
    :cond_0
    return-void
.end method

.method private getLogFilePath(J)Ljava/lang/String;
    .locals 11
    .param p1, "callID"    # J

    .prologue
    .line 207
    invoke-static {}, Lorg/telegram/ui/Components/voip/VoIPHelper;->getLogsDir()Ljava/io/File;

    move-result-object v1

    .line 209
    .local v1, "dir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 210
    .local v0, "_logs":[Ljava/io/File;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 211
    .local v3, "logs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/io/File;>;"
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 212
    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/16 v6, 0x14

    if-le v5, v6, :cond_2

    .line 213
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/File;

    .line 214
    .local v4, "oldest":Ljava/io/File;
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    .line 215
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, ".log"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    invoke-virtual {v4}, Ljava/io/File;->lastModified()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-gez v6, :cond_0

    .line 216
    move-object v4, v2

    goto :goto_1

    .line 218
    .end local v2    # "file":Ljava/io/File;
    :cond_1
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 219
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 222
    .end local v4    # "oldest":Ljava/io/File;
    :cond_2
    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ".log"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v1, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method private getLogFilePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x5

    const/4 v9, 0x2

    const/4 v8, 0x1

    .line 199
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 200
    .local v0, "c":Ljava/util/Calendar;
    new-instance v1, Ljava/io/File;

    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v4, "logs/%02d_%02d_%04d_%02d_%02d_%02d_%s.txt"

    const/4 v5, 0x7

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 202
    invoke-virtual {v0, v10}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v0, v9}, Ljava/util/Calendar;->get(I)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v9

    const/4 v6, 0x3

    const/16 v7, 0xb

    .line 203
    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x4

    const/16 v7, 0xc

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/16 v6, 0xd

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v10

    const/4 v6, 0x6

    aput-object p1, v5, v6

    .line 201
    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 203
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 195
    invoke-static {}, Lorg/telegram/messenger/voip/VoIPController;->nativeGetVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private handleStateChange(I)V
    .locals 4
    .param p1, "state"    # I

    .prologue
    .line 132
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    iget-wide v0, p0, Lorg/telegram/messenger/voip/VoIPController;->callStartTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 133
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/messenger/voip/VoIPController;->callStartTime:J

    .line 134
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPController;->listener:Lorg/telegram/messenger/voip/VoIPController$ConnectionStateListener;

    if-eqz v0, :cond_1

    .line 135
    iget-object v0, p0, Lorg/telegram/messenger/voip/VoIPController;->listener:Lorg/telegram/messenger/voip/VoIPController$ConnectionStateListener;

    invoke-interface {v0, p1}, Lorg/telegram/messenger/voip/VoIPController$ConnectionStateListener;->onConnectionStateChanged(I)V

    .line 137
    :cond_1
    return-void
.end method

.method private native nativeConnect(J)V
.end method

.method private native nativeDebugCtl(JII)V
.end method

.method private native nativeGetDebugLog(J)Ljava/lang/String;
.end method

.method private native nativeGetDebugString(J)Ljava/lang/String;
.end method

.method private native nativeGetLastError(J)I
.end method

.method private native nativeGetPreferredRelayID(J)J
.end method

.method private native nativeGetStats(JLorg/telegram/messenger/voip/VoIPController$Stats;)V
.end method

.method private static native nativeGetVersion()Ljava/lang/String;
.end method

.method private native nativeInit(I)J
.end method

.method private native nativeRelease(J)V
.end method

.method private native nativeSetConfig(JDDIZZZLjava/lang/String;Ljava/lang/String;)V
.end method

.method private native nativeSetEncryptionKey(J[BZ)V
.end method

.method private native nativeSetMicMute(JZ)V
.end method

.method private static native nativeSetNativeBufferSize(I)V
.end method

.method private native nativeSetNetworkType(JI)V
.end method

.method private native nativeSetProxy(JLjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
.end method

.method private native nativeSetRemoteEndpoints(J[Lorg/telegram/tgnet/TLRPC$TL_phoneConnection;Z)V
.end method

.method private native nativeStart(J)V
.end method

.method public static setNativeBufferSize(I)V
    .locals 0
    .param p0, "size"    # I

    .prologue
    .line 107
    invoke-static {p0}, Lorg/telegram/messenger/voip/VoIPController;->nativeSetNativeBufferSize(I)V

    .line 108
    return-void
.end method


# virtual methods
.method public connect()V
    .locals 2

    .prologue
    .line 77
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPController;->ensureNativeInstance()V

    .line 78
    iget-wide v0, p0, Lorg/telegram/messenger/voip/VoIPController;->nativeInst:J

    invoke-direct {p0, v0, v1}, Lorg/telegram/messenger/voip/VoIPController;->nativeConnect(J)V

    .line 79
    return-void
.end method

.method public debugCtl(II)V
    .locals 2
    .param p1, "request"    # I
    .param p2, "param"    # I

    .prologue
    .line 173
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPController;->ensureNativeInstance()V

    .line 174
    iget-wide v0, p0, Lorg/telegram/messenger/voip/VoIPController;->nativeInst:J

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/telegram/messenger/voip/VoIPController;->nativeDebugCtl(JII)V

    .line 175
    return-void
.end method

.method public getCallDuration()J
    .locals 4

    .prologue
    .line 145
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/telegram/messenger/voip/VoIPController;->callStartTime:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public getDebugLog()Ljava/lang/String;
    .locals 2

    .prologue
    .line 226
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPController;->ensureNativeInstance()V

    .line 227
    iget-wide v0, p0, Lorg/telegram/messenger/voip/VoIPController;->nativeInst:J

    invoke-direct {p0, v0, v1}, Lorg/telegram/messenger/voip/VoIPController;->nativeGetDebugLog(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDebugString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 117
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPController;->ensureNativeInstance()V

    .line 118
    iget-wide v0, p0, Lorg/telegram/messenger/voip/VoIPController;->nativeInst:J

    invoke-direct {p0, v0, v1}, Lorg/telegram/messenger/voip/VoIPController;->nativeGetDebugString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLastError()I
    .locals 2

    .prologue
    .line 183
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPController;->ensureNativeInstance()V

    .line 184
    iget-wide v0, p0, Lorg/telegram/messenger/voip/VoIPController;->nativeInst:J

    invoke-direct {p0, v0, v1}, Lorg/telegram/messenger/voip/VoIPController;->nativeGetLastError(J)I

    move-result v0

    return v0
.end method

.method public getPreferredRelayID()J
    .locals 2

    .prologue
    .line 178
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPController;->ensureNativeInstance()V

    .line 179
    iget-wide v0, p0, Lorg/telegram/messenger/voip/VoIPController;->nativeInst:J

    invoke-direct {p0, v0, v1}, Lorg/telegram/messenger/voip/VoIPController;->nativeGetPreferredRelayID(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getStats(Lorg/telegram/messenger/voip/VoIPController$Stats;)V
    .locals 2
    .param p1, "stats"    # Lorg/telegram/messenger/voip/VoIPController$Stats;

    .prologue
    .line 188
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPController;->ensureNativeInstance()V

    .line 189
    if-nez p1, :cond_0

    .line 190
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "You\'re not supposed to pass null here"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 191
    :cond_0
    iget-wide v0, p0, Lorg/telegram/messenger/voip/VoIPController;->nativeInst:J

    invoke-direct {p0, v0, v1, p1}, Lorg/telegram/messenger/voip/VoIPController;->nativeGetStats(JLorg/telegram/messenger/voip/VoIPController$Stats;)V

    .line 192
    return-void
.end method

.method public release()V
    .locals 2

    .prologue
    .line 111
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPController;->ensureNativeInstance()V

    .line 112
    iget-wide v0, p0, Lorg/telegram/messenger/voip/VoIPController;->nativeInst:J

    invoke-direct {p0, v0, v1}, Lorg/telegram/messenger/voip/VoIPController;->nativeRelease(J)V

    .line 113
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/telegram/messenger/voip/VoIPController;->nativeInst:J

    .line 114
    return-void
.end method

.method public setConfig(DDIJ)V
    .locals 21
    .param p1, "recvTimeout"    # D
    .param p3, "initTimeout"    # D
    .param p5, "dataSavingOption"    # I
    .param p6, "callID"    # J

    .prologue
    .line 154
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/voip/VoIPController;->ensureNativeInstance()V

    .line 155
    const/16 v19, 0x0

    .local v19, "sysAecAvailable":Z
    const/16 v20, 0x0

    .line 156
    .local v20, "sysNsAvailable":Z
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x10

    if-lt v5, v6, :cond_0

    .line 158
    :try_start_0
    invoke-static {}, Landroid/media/audiofx/AcousticEchoCanceler;->isAvailable()Z

    move-result v19

    .line 159
    invoke-static {}, Landroid/media/audiofx/AcousticEchoCanceler;->isAvailable()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v20

    .line 164
    :cond_0
    :goto_0
    sget-object v5, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v6, "mainconfig"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v18

    .line 165
    .local v18, "preferences":Landroid/content/SharedPreferences;
    const-string/jumbo v5, "dbg_dump_call_stats"

    const/4 v6, 0x0

    move-object/from16 v0, v18

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 166
    .local v4, "dump":Z
    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/telegram/messenger/voip/VoIPController;->nativeInst:J

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x10

    if-lt v5, v8, :cond_1

    if-eqz v19, :cond_1

    const-string/jumbo v5, "use_system_aec"

    const/4 v8, 0x1

    .line 167
    invoke-static {v5, v8}, Lorg/telegram/messenger/voip/VoIPServerConfig;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_3

    :cond_1
    const/4 v13, 0x1

    :goto_1
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x10

    if-lt v5, v8, :cond_2

    if-eqz v20, :cond_2

    const-string/jumbo v5, "use_system_ns"

    const/4 v8, 0x1

    .line 168
    invoke-static {v5, v8}, Lorg/telegram/messenger/voip/VoIPServerConfig;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_4

    :cond_2
    const/4 v14, 0x1

    :goto_2
    const/4 v15, 0x1

    .line 169
    move-object/from16 v0, p0

    move-wide/from16 v1, p6

    invoke-direct {v0, v1, v2}, Lorg/telegram/messenger/voip/VoIPController;->getLogFilePath(J)Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    move-object/from16 v5, p0

    move-wide/from16 v8, p1

    move-wide/from16 v10, p3

    move/from16 v12, p5

    .line 166
    invoke-direct/range {v5 .. v17}, Lorg/telegram/messenger/voip/VoIPController;->nativeSetConfig(JDDIZZZLjava/lang/String;Ljava/lang/String;)V

    .line 170
    return-void

    .line 167
    :cond_3
    const/4 v13, 0x0

    goto :goto_1

    .line 168
    :cond_4
    const/4 v14, 0x0

    goto :goto_2

    .line 160
    .end local v4    # "dump":Z
    .end local v18    # "preferences":Landroid/content/SharedPreferences;
    :catch_0
    move-exception v5

    goto :goto_0
.end method

.method public setConnectionStateListener(Lorg/telegram/messenger/voip/VoIPController$ConnectionStateListener;)V
    .locals 0
    .param p1, "connectionStateListener"    # Lorg/telegram/messenger/voip/VoIPController$ConnectionStateListener;

    .prologue
    .line 128
    iput-object p1, p0, Lorg/telegram/messenger/voip/VoIPController;->listener:Lorg/telegram/messenger/voip/VoIPController$ConnectionStateListener;

    .line 129
    return-void
.end method

.method public setEncryptionKey([BZ)V
    .locals 3
    .param p1, "key"    # [B
    .param p2, "isOutgoing"    # Z

    .prologue
    .line 99
    array-length v0, p1

    const/16 v1, 0x100

    if-eq v0, v1, :cond_0

    .line 100
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "key length must be exactly 256 bytes but is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 102
    :cond_0
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPController;->ensureNativeInstance()V

    .line 103
    iget-wide v0, p0, Lorg/telegram/messenger/voip/VoIPController;->nativeInst:J

    invoke-direct {p0, v0, v1, p1, p2}, Lorg/telegram/messenger/voip/VoIPController;->nativeSetEncryptionKey(J[BZ)V

    .line 104
    return-void
.end method

.method public setMicMute(Z)V
    .locals 2
    .param p1, "mute"    # Z

    .prologue
    .line 149
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPController;->ensureNativeInstance()V

    .line 150
    iget-wide v0, p0, Lorg/telegram/messenger/voip/VoIPController;->nativeInst:J

    invoke-direct {p0, v0, v1, p1}, Lorg/telegram/messenger/voip/VoIPController;->nativeSetMicMute(JZ)V

    .line 151
    return-void
.end method

.method public setNetworkType(I)V
    .locals 2
    .param p1, "type"    # I

    .prologue
    .line 140
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPController;->ensureNativeInstance()V

    .line 141
    iget-wide v0, p0, Lorg/telegram/messenger/voip/VoIPController;->nativeInst:J

    invoke-direct {p0, v0, v1, p1}, Lorg/telegram/messenger/voip/VoIPController;->nativeSetNetworkType(JI)V

    .line 142
    return-void
.end method

.method public setProxy(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "username"    # Ljava/lang/String;
    .param p4, "password"    # Ljava/lang/String;

    .prologue
    .line 231
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPController;->ensureNativeInstance()V

    .line 232
    if-nez p1, :cond_0

    .line 233
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "address can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 234
    :cond_0
    iget-wide v2, p0, Lorg/telegram/messenger/voip/VoIPController;->nativeInst:J

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v1 .. v7}, Lorg/telegram/messenger/voip/VoIPController;->nativeSetProxy(JLjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 235
    return-void
.end method

.method public setRemoteEndpoints([Lorg/telegram/tgnet/TLRPC$TL_phoneConnection;Z)V
    .locals 5
    .param p1, "endpoints"    # [Lorg/telegram/tgnet/TLRPC$TL_phoneConnection;
    .param p2, "allowP2p"    # Z

    .prologue
    .line 82
    array-length v2, p1

    if-nez v2, :cond_0

    .line 83
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "endpoints size is 0"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 85
    :cond_0
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_4

    .line 86
    aget-object v1, p1, v0

    .line 87
    .local v1, "endpoint":Lorg/telegram/tgnet/TLRPC$TL_phoneConnection;
    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_phoneConnection;->ip:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_phoneConnection;->ip:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    .line 88
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "endpoint "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " has empty/null ipv4"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 90
    :cond_2
    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_phoneConnection;->peer_tag:[B

    if-eqz v2, :cond_3

    iget-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_phoneConnection;->peer_tag:[B

    array-length v2, v2

    const/16 v3, 0x10

    if-eq v2, v3, :cond_3

    .line 91
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "endpoint "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " has peer_tag of wrong length"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 85
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 94
    .end local v1    # "endpoint":Lorg/telegram/tgnet/TLRPC$TL_phoneConnection;
    :cond_4
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPController;->ensureNativeInstance()V

    .line 95
    iget-wide v2, p0, Lorg/telegram/messenger/voip/VoIPController;->nativeInst:J

    invoke-direct {p0, v2, v3, p1, p2}, Lorg/telegram/messenger/voip/VoIPController;->nativeSetRemoteEndpoints(J[Lorg/telegram/tgnet/TLRPC$TL_phoneConnection;Z)V

    .line 96
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 72
    invoke-direct {p0}, Lorg/telegram/messenger/voip/VoIPController;->ensureNativeInstance()V

    .line 73
    iget-wide v0, p0, Lorg/telegram/messenger/voip/VoIPController;->nativeInst:J

    invoke-direct {p0, v0, v1}, Lorg/telegram/messenger/voip/VoIPController;->nativeStart(J)V

    .line 74
    return-void
.end method
