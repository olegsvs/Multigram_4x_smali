.class public Lorg/telegram/messenger/UserConfig;
.super Ljava/lang/Object;
.source "UserConfig.java"


# static fields
.field public static allowScreenCapture:Z

.field public static appLocked:Z

.field public static autoLockIn:I

.field public static blockedUsersLoaded:Z

.field public static contactsHash:Ljava/lang/String;

.field private static currentUser:Lorg/telegram/tgnet/TLRPC$User;

.field public static dialogsLoadOffsetAccess:J

.field public static dialogsLoadOffsetChannelId:I

.field public static dialogsLoadOffsetChatId:I

.field public static dialogsLoadOffsetDate:I

.field public static dialogsLoadOffsetId:I

.field public static dialogsLoadOffsetUserId:I

.field public static draftsLoaded:Z

.field public static isWaitingForPasscodeEnter:Z

.field public static lastAppPauseTime:J

.field public static lastBroadcastId:I

.field public static lastContactsSyncTime:I

.field public static lastHintsSyncTime:I

.field public static lastLocalId:I

.field public static lastPauseTime:I

.field public static lastSendMessageId:I

.field public static lastUpdateVersion:Ljava/lang/String;

.field public static migrateOffsetAccess:J

.field public static migrateOffsetChannelId:I

.field public static migrateOffsetChatId:I

.field public static migrateOffsetDate:I

.field public static migrateOffsetId:I

.field public static migrateOffsetUserId:I

.field public static notificationsConverted:Z

.field public static passcodeHash:Ljava/lang/String;

.field public static passcodeSalt:[B

.field public static passcodeType:I

.field public static pinnedDialogsLoaded:Z

.field public static pushString:Ljava/lang/String;

.field public static registeredForPush:Z

.field public static saveIncomingPhotos:Z

.field private static final sync:Ljava/lang/Object;

.field public static tmpPassword:Lorg/telegram/tgnet/TLRPC$TL_account_tmpPassword;

.field public static totalDialogsLoadCount:I

.field public static useFingerprint:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const v4, -0x33450

    const/4 v3, 0x1

    const/4 v1, -0x1

    const/4 v2, 0x0

    .line 26
    const-string/jumbo v0, ""

    sput-object v0, Lorg/telegram/messenger/UserConfig;->pushString:Ljava/lang/String;

    .line 27
    sput v4, Lorg/telegram/messenger/UserConfig;->lastSendMessageId:I

    .line 28
    sput v4, Lorg/telegram/messenger/UserConfig;->lastLocalId:I

    .line 29
    sput v1, Lorg/telegram/messenger/UserConfig;->lastBroadcastId:I

    .line 30
    const-string/jumbo v0, ""

    sput-object v0, Lorg/telegram/messenger/UserConfig;->contactsHash:Ljava/lang/String;

    .line 32
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/telegram/messenger/UserConfig;->sync:Ljava/lang/Object;

    .line 34
    const-string/jumbo v0, ""

    sput-object v0, Lorg/telegram/messenger/UserConfig;->passcodeHash:Ljava/lang/String;

    .line 35
    new-array v0, v2, [B

    sput-object v0, Lorg/telegram/messenger/UserConfig;->passcodeSalt:[B

    .line 38
    const/16 v0, 0xe10

    sput v0, Lorg/telegram/messenger/UserConfig;->autoLockIn:I

    .line 43
    sput-boolean v3, Lorg/telegram/messenger/UserConfig;->useFingerprint:Z

    .line 48
    sput-boolean v3, Lorg/telegram/messenger/UserConfig;->notificationsConverted:Z

    .line 49
    sput-boolean v3, Lorg/telegram/messenger/UserConfig;->pinnedDialogsLoaded:Z

    .line 52
    sput v1, Lorg/telegram/messenger/UserConfig;->migrateOffsetId:I

    .line 53
    sput v1, Lorg/telegram/messenger/UserConfig;->migrateOffsetDate:I

    .line 54
    sput v1, Lorg/telegram/messenger/UserConfig;->migrateOffsetUserId:I

    .line 55
    sput v1, Lorg/telegram/messenger/UserConfig;->migrateOffsetChatId:I

    .line 56
    sput v1, Lorg/telegram/messenger/UserConfig;->migrateOffsetChannelId:I

    .line 57
    const-wide/16 v0, -0x1

    sput-wide v0, Lorg/telegram/messenger/UserConfig;->migrateOffsetAccess:J

    .line 59
    sput v2, Lorg/telegram/messenger/UserConfig;->totalDialogsLoadCount:I

    .line 60
    sput v2, Lorg/telegram/messenger/UserConfig;->dialogsLoadOffsetId:I

    .line 61
    sput v2, Lorg/telegram/messenger/UserConfig;->dialogsLoadOffsetDate:I

    .line 62
    sput v2, Lorg/telegram/messenger/UserConfig;->dialogsLoadOffsetUserId:I

    .line 63
    sput v2, Lorg/telegram/messenger/UserConfig;->dialogsLoadOffsetChatId:I

    .line 64
    sput v2, Lorg/telegram/messenger/UserConfig;->dialogsLoadOffsetChannelId:I

    .line 65
    const-wide/16 v0, 0x0

    sput-wide v0, Lorg/telegram/messenger/UserConfig;->dialogsLoadOffsetAccess:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkPasscode(Ljava/lang/String;)Z
    .locals 9
    .param p0, "passcode"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 411
    sget-object v5, Lorg/telegram/messenger/UserConfig;->passcodeSalt:[B

    array-length v5, v5

    if-nez v5, :cond_1

    .line 412
    invoke-static {p0}, Lorg/telegram/messenger/Utilities;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lorg/telegram/messenger/UserConfig;->passcodeHash:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 413
    .local v4, "result":Z
    if-eqz v4, :cond_0

    .line 415
    const/16 v5, 0x10

    :try_start_0
    new-array v5, v5, [B

    sput-object v5, Lorg/telegram/messenger/UserConfig;->passcodeSalt:[B

    .line 416
    sget-object v5, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    sget-object v6, Lorg/telegram/messenger/UserConfig;->passcodeSalt:[B

    invoke-virtual {v5, v6}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 417
    const-string/jumbo v5, "UTF-8"

    invoke-virtual {p0, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 418
    .local v3, "passcodeBytes":[B
    array-length v5, v3

    add-int/lit8 v5, v5, 0x20

    new-array v0, v5, [B

    .line 419
    .local v0, "bytes":[B
    sget-object v5, Lorg/telegram/messenger/UserConfig;->passcodeSalt:[B

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x10

    invoke-static {v5, v6, v0, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 420
    const/4 v5, 0x0

    const/16 v6, 0x10

    array-length v7, v3

    invoke-static {v3, v5, v0, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 421
    sget-object v5, Lorg/telegram/messenger/UserConfig;->passcodeSalt:[B

    const/4 v6, 0x0

    array-length v7, v3

    add-int/lit8 v7, v7, 0x10

    const/16 v8, 0x10

    invoke-static {v5, v6, v0, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 422
    const/4 v5, 0x0

    array-length v6, v0

    invoke-static {v0, v5, v6}, Lorg/telegram/messenger/Utilities;->computeSHA256([BII)[B

    move-result-object v5

    invoke-static {v5}, Lorg/telegram/messenger/Utilities;->bytesToHex([B)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lorg/telegram/messenger/UserConfig;->passcodeHash:Ljava/lang/String;

    .line 423
    const/4 v5, 0x0

    invoke-static {v5}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 442
    .end local v0    # "bytes":[B
    .end local v3    # "passcodeBytes":[B
    .end local v4    # "result":Z
    :cond_0
    :goto_0
    return v4

    .line 424
    .restart local v4    # "result":Z
    :catch_0
    move-exception v1

    .line 425
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 431
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v4    # "result":Z
    :cond_1
    :try_start_1
    const-string/jumbo v5, "UTF-8"

    invoke-virtual {p0, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 432
    .restart local v3    # "passcodeBytes":[B
    array-length v5, v3

    add-int/lit8 v5, v5, 0x20

    new-array v0, v5, [B

    .line 433
    .restart local v0    # "bytes":[B
    sget-object v5, Lorg/telegram/messenger/UserConfig;->passcodeSalt:[B

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x10

    invoke-static {v5, v6, v0, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 434
    const/4 v5, 0x0

    const/16 v6, 0x10

    array-length v7, v3

    invoke-static {v3, v5, v0, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 435
    sget-object v5, Lorg/telegram/messenger/UserConfig;->passcodeSalt:[B

    const/4 v6, 0x0

    array-length v7, v3

    add-int/lit8 v7, v7, 0x10

    const/16 v8, 0x10

    invoke-static {v5, v6, v0, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 436
    const/4 v5, 0x0

    array-length v6, v0

    invoke-static {v0, v5, v6}, Lorg/telegram/messenger/Utilities;->computeSHA256([BII)[B

    move-result-object v5

    invoke-static {v5}, Lorg/telegram/messenger/Utilities;->bytesToHex([B)Ljava/lang/String;

    move-result-object v2

    .line 437
    .local v2, "hash":Ljava/lang/String;
    sget-object v5, Lorg/telegram/messenger/UserConfig;->passcodeHash:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v4

    goto :goto_0

    .line 438
    .end local v0    # "bytes":[B
    .end local v2    # "hash":Ljava/lang/String;
    .end local v3    # "passcodeBytes":[B
    :catch_1
    move-exception v1

    .line 439
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static clearConfig()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x3e8

    const/4 v3, 0x1

    const/4 v1, -0x1

    const/4 v2, 0x0

    .line 446
    const/4 v0, 0x0

    sput-object v0, Lorg/telegram/messenger/UserConfig;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    .line 447
    sput-boolean v2, Lorg/telegram/messenger/UserConfig;->registeredForPush:Z

    .line 448
    const-string/jumbo v0, ""

    sput-object v0, Lorg/telegram/messenger/UserConfig;->contactsHash:Ljava/lang/String;

    .line 449
    const v0, -0x33450

    sput v0, Lorg/telegram/messenger/UserConfig;->lastSendMessageId:I

    .line 450
    sput v1, Lorg/telegram/messenger/UserConfig;->lastBroadcastId:I

    .line 451
    sput-boolean v2, Lorg/telegram/messenger/UserConfig;->saveIncomingPhotos:Z

    .line 452
    sput-boolean v2, Lorg/telegram/messenger/UserConfig;->blockedUsersLoaded:Z

    .line 453
    sput v1, Lorg/telegram/messenger/UserConfig;->migrateOffsetId:I

    .line 454
    sput v1, Lorg/telegram/messenger/UserConfig;->migrateOffsetDate:I

    .line 455
    sput v1, Lorg/telegram/messenger/UserConfig;->migrateOffsetUserId:I

    .line 456
    sput v1, Lorg/telegram/messenger/UserConfig;->migrateOffsetChatId:I

    .line 457
    sput v1, Lorg/telegram/messenger/UserConfig;->migrateOffsetChannelId:I

    .line 458
    const-wide/16 v0, -0x1

    sput-wide v0, Lorg/telegram/messenger/UserConfig;->migrateOffsetAccess:J

    .line 459
    sput v2, Lorg/telegram/messenger/UserConfig;->dialogsLoadOffsetId:I

    .line 460
    sput v2, Lorg/telegram/messenger/UserConfig;->totalDialogsLoadCount:I

    .line 461
    sput v2, Lorg/telegram/messenger/UserConfig;->dialogsLoadOffsetDate:I

    .line 462
    sput v2, Lorg/telegram/messenger/UserConfig;->dialogsLoadOffsetUserId:I

    .line 463
    sput v2, Lorg/telegram/messenger/UserConfig;->dialogsLoadOffsetChatId:I

    .line 464
    sput v2, Lorg/telegram/messenger/UserConfig;->dialogsLoadOffsetChannelId:I

    .line 465
    const-wide/16 v0, 0x0

    sput-wide v0, Lorg/telegram/messenger/UserConfig;->dialogsLoadOffsetAccess:J

    .line 466
    sput-boolean v2, Lorg/telegram/messenger/UserConfig;->appLocked:Z

    .line 467
    sput v2, Lorg/telegram/messenger/UserConfig;->passcodeType:I

    .line 468
    const-string/jumbo v0, ""

    sput-object v0, Lorg/telegram/messenger/UserConfig;->passcodeHash:Ljava/lang/String;

    .line 469
    new-array v0, v2, [B

    sput-object v0, Lorg/telegram/messenger/UserConfig;->passcodeSalt:[B

    .line 470
    const/16 v0, 0xe10

    sput v0, Lorg/telegram/messenger/UserConfig;->autoLockIn:I

    .line 471
    sput v2, Lorg/telegram/messenger/UserConfig;->lastPauseTime:I

    .line 472
    sput-boolean v3, Lorg/telegram/messenger/UserConfig;->useFingerprint:Z

    .line 473
    sput-boolean v3, Lorg/telegram/messenger/UserConfig;->draftsLoaded:Z

    .line 474
    sput-boolean v3, Lorg/telegram/messenger/UserConfig;->notificationsConverted:Z

    .line 475
    sput-boolean v2, Lorg/telegram/messenger/UserConfig;->isWaitingForPasscodeEnter:Z

    .line 476
    sput-boolean v2, Lorg/telegram/messenger/UserConfig;->allowScreenCapture:Z

    .line 477
    sput-boolean v2, Lorg/telegram/messenger/UserConfig;->pinnedDialogsLoaded:Z

    .line 478
    sget-object v0, Lorg/telegram/messenger/BuildVars;->BUILD_VERSION_STRING:Ljava/lang/String;

    sput-object v0, Lorg/telegram/messenger/UserConfig;->lastUpdateVersion:Ljava/lang/String;

    .line 479
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    div-long/2addr v0, v4

    long-to-int v0, v0

    const v1, 0x14370

    sub-int/2addr v0, v1

    sput v0, Lorg/telegram/messenger/UserConfig;->lastContactsSyncTime:I

    .line 480
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    div-long/2addr v0, v4

    long-to-int v0, v0

    const v1, 0x15f90

    sub-int/2addr v0, v1

    sput v0, Lorg/telegram/messenger/UserConfig;->lastHintsSyncTime:I

    .line 481
    invoke-static {v3}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    .line 482
    return-void
.end method

.method public static getClientUserId()I
    .locals 2

    .prologue
    .line 166
    sget-object v1, Lorg/telegram/messenger/UserConfig;->sync:Ljava/lang/Object;

    monitor-enter v1

    .line 167
    :try_start_0
    sget-object v0, Lorg/telegram/messenger/UserConfig;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v0, :cond_0

    sget-object v0, Lorg/telegram/messenger/UserConfig;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$User;->id:I

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 168
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getCurrentUser()Lorg/telegram/tgnet/TLRPC$User;
    .locals 2

    .prologue
    .line 172
    sget-object v1, Lorg/telegram/messenger/UserConfig;->sync:Ljava/lang/Object;

    monitor-enter v1

    .line 173
    :try_start_0
    sget-object v0, Lorg/telegram/messenger/UserConfig;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    monitor-exit v1

    return-object v0

    .line 174
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getNewMessageId()I
    .locals 3

    .prologue
    .line 69
    sget-object v2, Lorg/telegram/messenger/UserConfig;->sync:Ljava/lang/Object;

    monitor-enter v2

    .line 70
    :try_start_0
    sget v0, Lorg/telegram/messenger/UserConfig;->lastSendMessageId:I

    .line 71
    .local v0, "id":I
    sget v1, Lorg/telegram/messenger/UserConfig;->lastSendMessageId:I

    add-int/lit8 v1, v1, -0x1

    sput v1, Lorg/telegram/messenger/UserConfig;->lastSendMessageId:I

    .line 72
    monitor-exit v2

    .line 73
    return v0

    .line 72
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static isClientActivated()Z
    .locals 2

    .prologue
    .line 160
    sget-object v1, Lorg/telegram/messenger/UserConfig;->sync:Ljava/lang/Object;

    monitor-enter v1

    .line 161
    :try_start_0
    sget-object v0, Lorg/telegram/messenger/UserConfig;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 162
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static loadConfig()V
    .locals 36

    .prologue
    .line 184
    sget-object v30, Lorg/telegram/messenger/UserConfig;->sync:Ljava/lang/Object;

    monitor-enter v30

    .line 185
    :try_start_0
    new-instance v7, Ljava/io/File;

    invoke-static {}, Lorg/telegram/messenger/ApplicationLoader;->getFilesDirFixed()Ljava/io/File;

    move-result-object v29

    const-string/jumbo v31, "user.dat"

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-direct {v7, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 186
    .local v7, "configFile":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v29

    if-eqz v29, :cond_6

    .line 188
    :try_start_1
    new-instance v10, Lorg/telegram/tgnet/SerializedData;

    invoke-direct {v10, v7}, Lorg/telegram/tgnet/SerializedData;-><init>(Ljava/io/File;)V

    .line 189
    .local v10, "data":Lorg/telegram/tgnet/SerializedData;
    const/16 v29, 0x0

    move/from16 v0, v29

    invoke-virtual {v10, v0}, Lorg/telegram/tgnet/SerializedData;->readInt32(Z)I

    move-result v28

    .line 190
    .local v28, "ver":I
    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_5

    .line 191
    const/16 v29, 0x0

    move/from16 v0, v29

    invoke-virtual {v10, v0}, Lorg/telegram/tgnet/SerializedData;->readInt32(Z)I

    move-result v8

    .line 192
    .local v8, "constructor":I
    const/16 v29, 0x0

    move/from16 v0, v29

    invoke-static {v10, v8, v0}, Lorg/telegram/tgnet/TLRPC$User;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v29

    sput-object v29, Lorg/telegram/messenger/UserConfig;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    .line 193
    const/16 v29, 0x0

    move/from16 v0, v29

    invoke-virtual {v10, v0}, Lorg/telegram/tgnet/SerializedData;->readInt32(Z)I

    move-result v29

    sput v29, Lorg/telegram/messenger/MessagesStorage;->lastDateValue:I

    .line 194
    const/16 v29, 0x0

    move/from16 v0, v29

    invoke-virtual {v10, v0}, Lorg/telegram/tgnet/SerializedData;->readInt32(Z)I

    move-result v29

    sput v29, Lorg/telegram/messenger/MessagesStorage;->lastPtsValue:I

    .line 195
    const/16 v29, 0x0

    move/from16 v0, v29

    invoke-virtual {v10, v0}, Lorg/telegram/tgnet/SerializedData;->readInt32(Z)I

    move-result v29

    sput v29, Lorg/telegram/messenger/MessagesStorage;->lastSeqValue:I

    .line 196
    const/16 v29, 0x0

    move/from16 v0, v29

    invoke-virtual {v10, v0}, Lorg/telegram/tgnet/SerializedData;->readBool(Z)Z

    move-result v29

    sput-boolean v29, Lorg/telegram/messenger/UserConfig;->registeredForPush:Z

    .line 197
    const/16 v29, 0x0

    move/from16 v0, v29

    invoke-virtual {v10, v0}, Lorg/telegram/tgnet/SerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v29

    sput-object v29, Lorg/telegram/messenger/UserConfig;->pushString:Ljava/lang/String;

    .line 198
    const/16 v29, 0x0

    move/from16 v0, v29

    invoke-virtual {v10, v0}, Lorg/telegram/tgnet/SerializedData;->readInt32(Z)I

    move-result v29

    sput v29, Lorg/telegram/messenger/UserConfig;->lastSendMessageId:I

    .line 199
    const/16 v29, 0x0

    move/from16 v0, v29

    invoke-virtual {v10, v0}, Lorg/telegram/tgnet/SerializedData;->readInt32(Z)I

    move-result v29

    sput v29, Lorg/telegram/messenger/UserConfig;->lastLocalId:I

    .line 200
    const/16 v29, 0x0

    move/from16 v0, v29

    invoke-virtual {v10, v0}, Lorg/telegram/tgnet/SerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v29

    sput-object v29, Lorg/telegram/messenger/UserConfig;->contactsHash:Ljava/lang/String;

    .line 201
    const/16 v29, 0x0

    move/from16 v0, v29

    invoke-virtual {v10, v0}, Lorg/telegram/tgnet/SerializedData;->readString(Z)Ljava/lang/String;

    .line 202
    const/16 v29, 0x0

    move/from16 v0, v29

    invoke-virtual {v10, v0}, Lorg/telegram/tgnet/SerializedData;->readBool(Z)Z

    move-result v29

    sput-boolean v29, Lorg/telegram/messenger/UserConfig;->saveIncomingPhotos:Z

    .line 203
    const/16 v29, 0x0

    move/from16 v0, v29

    invoke-virtual {v10, v0}, Lorg/telegram/tgnet/SerializedData;->readInt32(Z)I

    move-result v29

    sput v29, Lorg/telegram/messenger/MessagesStorage;->lastQtsValue:I

    .line 204
    const/16 v29, 0x0

    move/from16 v0, v29

    invoke-virtual {v10, v0}, Lorg/telegram/tgnet/SerializedData;->readInt32(Z)I

    move-result v29

    sput v29, Lorg/telegram/messenger/MessagesStorage;->lastSecretVersion:I

    .line 205
    const/16 v29, 0x0

    move/from16 v0, v29

    invoke-virtual {v10, v0}, Lorg/telegram/tgnet/SerializedData;->readInt32(Z)I

    move-result v26

    .line 206
    .local v26, "val":I
    const/16 v29, 0x1

    move/from16 v0, v26

    move/from16 v1, v29

    if-ne v0, v1, :cond_0

    .line 207
    const/16 v29, 0x0

    move/from16 v0, v29

    invoke-virtual {v10, v0}, Lorg/telegram/tgnet/SerializedData;->readByteArray(Z)[B

    move-result-object v29

    sput-object v29, Lorg/telegram/messenger/MessagesStorage;->secretPBytes:[B

    .line 209
    :cond_0
    const/16 v29, 0x0

    move/from16 v0, v29

    invoke-virtual {v10, v0}, Lorg/telegram/tgnet/SerializedData;->readInt32(Z)I

    move-result v29

    sput v29, Lorg/telegram/messenger/MessagesStorage;->secretG:I

    .line 210
    sget-object v29, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v31, Lorg/telegram/messenger/UserConfig$1;

    move-object/from16 v0, v31

    invoke-direct {v0, v7}, Lorg/telegram/messenger/UserConfig$1;-><init>(Ljava/io/File;)V

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 228
    .end local v8    # "constructor":I
    .end local v26    # "val":I
    :cond_1
    :goto_0
    sget v29, Lorg/telegram/messenger/UserConfig;->lastLocalId:I

    const v31, -0x33450

    move/from16 v0, v29

    move/from16 v1, v31

    if-le v0, v1, :cond_2

    .line 229
    const v29, -0x33450

    sput v29, Lorg/telegram/messenger/UserConfig;->lastLocalId:I

    .line 231
    :cond_2
    sget v29, Lorg/telegram/messenger/UserConfig;->lastSendMessageId:I

    const v31, -0x33450

    move/from16 v0, v29

    move/from16 v1, v31

    if-le v0, v1, :cond_3

    .line 232
    const v29, -0x33450

    sput v29, Lorg/telegram/messenger/UserConfig;->lastSendMessageId:I

    .line 234
    :cond_3
    invoke-virtual {v10}, Lorg/telegram/tgnet/SerializedData;->cleanup()V

    .line 235
    sget-object v29, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v31, Lorg/telegram/messenger/UserConfig$2;

    move-object/from16 v0, v31

    invoke-direct {v0, v7}, Lorg/telegram/messenger/UserConfig$2;-><init>(Ljava/io/File;)V

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 407
    .end local v10    # "data":Lorg/telegram/tgnet/SerializedData;
    .end local v28    # "ver":I
    :cond_4
    :goto_1
    :try_start_2
    monitor-exit v30
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 408
    return-void

    .line 216
    .restart local v10    # "data":Lorg/telegram/tgnet/SerializedData;
    .restart local v28    # "ver":I
    :cond_5
    const/16 v29, 0x2

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_1

    .line 217
    const/16 v29, 0x0

    :try_start_3
    move/from16 v0, v29

    invoke-virtual {v10, v0}, Lorg/telegram/tgnet/SerializedData;->readInt32(Z)I

    move-result v8

    .line 218
    .restart local v8    # "constructor":I
    const/16 v29, 0x0

    move/from16 v0, v29

    invoke-static {v10, v8, v0}, Lorg/telegram/tgnet/TLRPC$User;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v29

    sput-object v29, Lorg/telegram/messenger/UserConfig;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    .line 220
    sget-object v29, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    sget-object v31, Lorg/telegram/messenger/AndroidUtilities;->userconfig:Ljava/lang/String;

    const/16 v32, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v24

    .line 221
    .local v24, "preferences":Landroid/content/SharedPreferences;
    const-string/jumbo v29, "registeredForPush"

    const/16 v31, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    move/from16 v2, v31

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v29

    sput-boolean v29, Lorg/telegram/messenger/UserConfig;->registeredForPush:Z

    .line 222
    const-string/jumbo v29, "pushString2"

    const-string/jumbo v31, ""

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    move-object/from16 v2, v31

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    sput-object v29, Lorg/telegram/messenger/UserConfig;->pushString:Ljava/lang/String;

    .line 223
    const-string/jumbo v29, "lastSendMessageId"

    const v31, -0x33450

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    move/from16 v2, v31

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v29

    sput v29, Lorg/telegram/messenger/UserConfig;->lastSendMessageId:I

    .line 224
    const-string/jumbo v29, "lastLocalId"

    const v31, -0x33450

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    move/from16 v2, v31

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v29

    sput v29, Lorg/telegram/messenger/UserConfig;->lastLocalId:I

    .line 225
    const-string/jumbo v29, "contactsHash"

    const-string/jumbo v31, ""

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    move-object/from16 v2, v31

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    sput-object v29, Lorg/telegram/messenger/UserConfig;->contactsHash:Ljava/lang/String;

    .line 226
    const-string/jumbo v29, "saveIncomingPhotos"

    const/16 v31, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    move/from16 v2, v31

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v29

    sput-boolean v29, Lorg/telegram/messenger/UserConfig;->saveIncomingPhotos:Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 241
    .end local v8    # "constructor":I
    .end local v10    # "data":Lorg/telegram/tgnet/SerializedData;
    .end local v24    # "preferences":Landroid/content/SharedPreferences;
    .end local v28    # "ver":I
    :catch_0
    move-exception v17

    .line 242
    .local v17, "e":Ljava/lang/Exception;
    :try_start_4
    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 407
    .end local v17    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v29

    monitor-exit v30
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v29

    .line 245
    :cond_6
    :try_start_5
    sget-object v29, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    sget-object v31, Lorg/telegram/messenger/AndroidUtilities;->userconfig:Ljava/lang/String;

    const/16 v32, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v24

    .line 246
    .restart local v24    # "preferences":Landroid/content/SharedPreferences;
    const-string/jumbo v29, "registeredForPush"

    const/16 v31, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    move/from16 v2, v31

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v29

    sput-boolean v29, Lorg/telegram/messenger/UserConfig;->registeredForPush:Z

    .line 247
    const-string/jumbo v29, "pushString2"

    const-string/jumbo v31, ""

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    move-object/from16 v2, v31

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    sput-object v29, Lorg/telegram/messenger/UserConfig;->pushString:Ljava/lang/String;

    .line 248
    const-string/jumbo v29, "lastSendMessageId"

    const v31, -0x33450

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    move/from16 v2, v31

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v29

    sput v29, Lorg/telegram/messenger/UserConfig;->lastSendMessageId:I

    .line 249
    const-string/jumbo v29, "lastLocalId"

    const v31, -0x33450

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    move/from16 v2, v31

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v29

    sput v29, Lorg/telegram/messenger/UserConfig;->lastLocalId:I

    .line 250
    const-string/jumbo v29, "contactsHash"

    const-string/jumbo v31, ""

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    move-object/from16 v2, v31

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    sput-object v29, Lorg/telegram/messenger/UserConfig;->contactsHash:Ljava/lang/String;

    .line 251
    const-string/jumbo v29, "saveIncomingPhotos"

    const/16 v31, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    move/from16 v2, v31

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v29

    sput-boolean v29, Lorg/telegram/messenger/UserConfig;->saveIncomingPhotos:Z

    .line 252
    const-string/jumbo v29, "lastBroadcastId"

    const/16 v31, -0x1

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    move/from16 v2, v31

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v29

    sput v29, Lorg/telegram/messenger/UserConfig;->lastBroadcastId:I

    .line 253
    const-string/jumbo v29, "blockedUsersLoaded"

    const/16 v31, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    move/from16 v2, v31

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v29

    sput-boolean v29, Lorg/telegram/messenger/UserConfig;->blockedUsersLoaded:Z

    .line 254
    const-string/jumbo v29, "passcodeHash1"

    const-string/jumbo v31, ""

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    move-object/from16 v2, v31

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    sput-object v29, Lorg/telegram/messenger/UserConfig;->passcodeHash:Ljava/lang/String;

    .line 255
    const-string/jumbo v29, "appLocked"

    const/16 v31, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    move/from16 v2, v31

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v29

    sput-boolean v29, Lorg/telegram/messenger/UserConfig;->appLocked:Z

    .line 256
    const-string/jumbo v29, "passcodeType"

    const/16 v31, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    move/from16 v2, v31

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v29

    sput v29, Lorg/telegram/messenger/UserConfig;->passcodeType:I

    .line 257
    const-string/jumbo v29, "autoLockIn"

    const/16 v31, 0xe10

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    move/from16 v2, v31

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v29

    sput v29, Lorg/telegram/messenger/UserConfig;->autoLockIn:I

    .line 258
    const-string/jumbo v29, "lastPauseTime"

    const/16 v31, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    move/from16 v2, v31

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v29

    sput v29, Lorg/telegram/messenger/UserConfig;->lastPauseTime:I

    .line 259
    const-string/jumbo v29, "lastAppPauseTime"

    const-wide/16 v32, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    move-wide/from16 v2, v32

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v32

    sput-wide v32, Lorg/telegram/messenger/UserConfig;->lastAppPauseTime:J

    .line 260
    const-string/jumbo v29, "useFingerprint"

    const/16 v31, 0x1

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    move/from16 v2, v31

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v29

    sput-boolean v29, Lorg/telegram/messenger/UserConfig;->useFingerprint:Z

    .line 261
    const-string/jumbo v29, "lastUpdateVersion2"

    const-string/jumbo v31, "3.5"

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    move-object/from16 v2, v31

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    sput-object v29, Lorg/telegram/messenger/UserConfig;->lastUpdateVersion:Ljava/lang/String;

    .line 262
    const-string/jumbo v29, "lastContactsSyncTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v32

    const-wide/16 v34, 0x3e8

    div-long v32, v32, v34

    move-wide/from16 v0, v32

    long-to-int v0, v0

    move/from16 v31, v0

    const v32, 0x14370

    sub-int v31, v31, v32

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    move/from16 v2, v31

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v29

    sput v29, Lorg/telegram/messenger/UserConfig;->lastContactsSyncTime:I

    .line 263
    const-string/jumbo v29, "lastHintsSyncTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v32

    const-wide/16 v34, 0x3e8

    div-long v32, v32, v34

    move-wide/from16 v0, v32

    long-to-int v0, v0

    move/from16 v31, v0

    const v32, 0x15f90

    sub-int v31, v31, v32

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    move/from16 v2, v31

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v29

    sput v29, Lorg/telegram/messenger/UserConfig;->lastHintsSyncTime:I

    .line 264
    const-string/jumbo v29, "draftsLoaded"

    const/16 v31, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    move/from16 v2, v31

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v29

    sput-boolean v29, Lorg/telegram/messenger/UserConfig;->draftsLoaded:Z

    .line 265
    const-string/jumbo v29, "notificationsConverted"

    const/16 v31, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    move/from16 v2, v31

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v29

    sput-boolean v29, Lorg/telegram/messenger/UserConfig;->notificationsConverted:Z

    .line 266
    const-string/jumbo v29, "allowScreenCapture"

    const/16 v31, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    move/from16 v2, v31

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v29

    sput-boolean v29, Lorg/telegram/messenger/UserConfig;->allowScreenCapture:Z

    .line 267
    const-string/jumbo v29, "pinnedDialogsLoaded"

    const/16 v31, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    move/from16 v2, v31

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v29

    sput-boolean v29, Lorg/telegram/messenger/UserConfig;->pinnedDialogsLoaded:Z

    .line 269
    sget-object v29, Lorg/telegram/messenger/UserConfig;->passcodeHash:Ljava/lang/String;

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->length()I

    move-result v29

    if-lez v29, :cond_7

    sget v29, Lorg/telegram/messenger/UserConfig;->lastPauseTime:I

    if-nez v29, :cond_7

    .line 270
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v32

    const-wide/16 v34, 0x3e8

    div-long v32, v32, v34

    const-wide/16 v34, 0x258

    sub-long v32, v32, v34

    move-wide/from16 v0, v32

    long-to-int v0, v0

    move/from16 v29, v0

    sput v29, Lorg/telegram/messenger/UserConfig;->lastPauseTime:I

    .line 273
    :cond_7
    const-string/jumbo v29, "3migrateOffsetId"

    const/16 v31, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    move/from16 v2, v31

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v29

    sput v29, Lorg/telegram/messenger/UserConfig;->migrateOffsetId:I

    .line 274
    sget v29, Lorg/telegram/messenger/UserConfig;->migrateOffsetId:I

    const/16 v31, -0x1

    move/from16 v0, v29

    move/from16 v1, v31

    if-eq v0, v1, :cond_8

    .line 275
    const-string/jumbo v29, "3migrateOffsetDate"

    const/16 v31, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    move/from16 v2, v31

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v29

    sput v29, Lorg/telegram/messenger/UserConfig;->migrateOffsetDate:I

    .line 276
    const-string/jumbo v29, "3migrateOffsetUserId"

    const/16 v31, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    move/from16 v2, v31

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v29

    sput v29, Lorg/telegram/messenger/UserConfig;->migrateOffsetUserId:I

    .line 277
    const-string/jumbo v29, "3migrateOffsetChatId"

    const/16 v31, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    move/from16 v2, v31

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v29

    sput v29, Lorg/telegram/messenger/UserConfig;->migrateOffsetChatId:I

    .line 278
    const-string/jumbo v29, "3migrateOffsetChannelId"

    const/16 v31, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    move/from16 v2, v31

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v29

    sput v29, Lorg/telegram/messenger/UserConfig;->migrateOffsetChannelId:I

    .line 279
    const-string/jumbo v29, "3migrateOffsetAccess"

    const-wide/16 v32, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    move-wide/from16 v2, v32

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v32

    sput-wide v32, Lorg/telegram/messenger/UserConfig;->migrateOffsetAccess:J

    .line 288
    :cond_8
    const-string/jumbo v29, "2dialogsLoadOffsetId"

    const/16 v31, -0x1

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    move/from16 v2, v31

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v29

    sput v29, Lorg/telegram/messenger/UserConfig;->dialogsLoadOffsetId:I

    .line 289
    const-string/jumbo v29, "2totalDialogsLoadCount"

    const/16 v31, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    move/from16 v2, v31

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v29

    sput v29, Lorg/telegram/messenger/UserConfig;->totalDialogsLoadCount:I

    .line 290
    const-string/jumbo v29, "2dialogsLoadOffsetDate"

    const/16 v31, -0x1

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    move/from16 v2, v31

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v29

    sput v29, Lorg/telegram/messenger/UserConfig;->dialogsLoadOffsetDate:I

    .line 291
    const-string/jumbo v29, "2dialogsLoadOffsetUserId"

    const/16 v31, -0x1

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    move/from16 v2, v31

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v29

    sput v29, Lorg/telegram/messenger/UserConfig;->dialogsLoadOffsetUserId:I

    .line 292
    const-string/jumbo v29, "2dialogsLoadOffsetChatId"

    const/16 v31, -0x1

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    move/from16 v2, v31

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v29

    sput v29, Lorg/telegram/messenger/UserConfig;->dialogsLoadOffsetChatId:I

    .line 293
    const-string/jumbo v29, "2dialogsLoadOffsetChannelId"

    const/16 v31, -0x1

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    move/from16 v2, v31

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v29

    sput v29, Lorg/telegram/messenger/UserConfig;->dialogsLoadOffsetChannelId:I

    .line 294
    const-string/jumbo v29, "2dialogsLoadOffsetAccess"

    const-wide/16 v32, -0x1

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    move-wide/from16 v2, v32

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v32

    sput-wide v32, Lorg/telegram/messenger/UserConfig;->dialogsLoadOffsetAccess:J

    .line 304
    const-string/jumbo v29, "tmpPassword"

    const/16 v31, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    move-object/from16 v2, v31

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 305
    .local v25, "string":Ljava/lang/String;
    if-eqz v25, :cond_9

    .line 306
    const/16 v29, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v29

    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v6

    .line 307
    .local v6, "bytes":[B
    if-eqz v6, :cond_9

    .line 308
    new-instance v10, Lorg/telegram/tgnet/SerializedData;

    invoke-direct {v10, v6}, Lorg/telegram/tgnet/SerializedData;-><init>([B)V

    .line 309
    .restart local v10    # "data":Lorg/telegram/tgnet/SerializedData;
    const/16 v29, 0x0

    move/from16 v0, v29

    invoke-virtual {v10, v0}, Lorg/telegram/tgnet/SerializedData;->readInt32(Z)I

    move-result v29

    const/16 v31, 0x0

    move/from16 v0, v29

    move/from16 v1, v31

    invoke-static {v10, v0, v1}, Lorg/telegram/tgnet/TLRPC$TL_account_tmpPassword;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_account_tmpPassword;

    move-result-object v29

    sput-object v29, Lorg/telegram/messenger/UserConfig;->tmpPassword:Lorg/telegram/tgnet/TLRPC$TL_account_tmpPassword;

    .line 310
    invoke-virtual {v10}, Lorg/telegram/tgnet/SerializedData;->cleanup()V

    .line 314
    .end local v6    # "bytes":[B
    .end local v10    # "data":Lorg/telegram/tgnet/SerializedData;
    :cond_9
    const-string/jumbo v29, "user"

    const/16 v31, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    move-object/from16 v2, v31

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 315
    if-eqz v25, :cond_a

    .line 316
    const/16 v29, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v29

    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v6

    .line 317
    .restart local v6    # "bytes":[B
    if-eqz v6, :cond_a

    .line 318
    new-instance v10, Lorg/telegram/tgnet/SerializedData;

    invoke-direct {v10, v6}, Lorg/telegram/tgnet/SerializedData;-><init>([B)V

    .line 319
    .restart local v10    # "data":Lorg/telegram/tgnet/SerializedData;
    const/16 v29, 0x0

    move/from16 v0, v29

    invoke-virtual {v10, v0}, Lorg/telegram/tgnet/SerializedData;->readInt32(Z)I

    move-result v29

    const/16 v31, 0x0

    move/from16 v0, v29

    move/from16 v1, v31

    invoke-static {v10, v0, v1}, Lorg/telegram/tgnet/TLRPC$User;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v29

    sput-object v29, Lorg/telegram/messenger/UserConfig;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    .line 320
    invoke-virtual {v10}, Lorg/telegram/tgnet/SerializedData;->cleanup()V

    .line 323
    .end local v6    # "bytes":[B
    .end local v10    # "data":Lorg/telegram/tgnet/SerializedData;
    :cond_a
    const-string/jumbo v29, "passcodeSalt"

    const-string/jumbo v31, ""

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    move-object/from16 v2, v31

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 324
    .local v23, "passcodeSaltString":Ljava/lang/String;
    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v29

    if-lez v29, :cond_d

    .line 325
    const/16 v29, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v29

    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v29

    sput-object v29, Lorg/telegram/messenger/UserConfig;->passcodeSalt:[B

    .line 330
    :goto_2
    sget-boolean v29, Lorg/telegram/messenger/UserConfig;->notificationsConverted:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-nez v29, :cond_4

    .line 332
    :try_start_6
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 333
    .local v9, "customDialogs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    sget-object v29, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    sget-object v31, Lorg/telegram/messenger/AndroidUtilities;->Notifications:Ljava/lang/String;

    const/16 v32, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v24

    .line 334
    invoke-interface/range {v24 .. v24}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v5

    .line 335
    .local v5, "all":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    const-string/jumbo v29, "SoundDefault"

    const v31, 0x7f0706ae

    move-object/from16 v0, v29

    move/from16 v1, v31

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v15

    .line 336
    .local v15, "defaultSound":Ljava/lang/String;
    const/16 v16, 0x0

    .line 337
    .local v16, "defaultVibrate":I
    const/4 v14, 0x0

    .line 338
    .local v14, "defaultPriority":I
    const/4 v11, 0x0

    .line 339
    .local v11, "defaultColor":I
    const/4 v12, 0x2

    .line 340
    .local v12, "defaultMaxCount":I
    const/16 v13, 0xb4

    .line 341
    .local v13, "defaultMaxDelay":I
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v29

    invoke-interface/range {v29 .. v29}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v29

    :cond_b
    :goto_3
    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->hasNext()Z

    move-result v31

    if-eqz v31, :cond_13

    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/util/Map$Entry;

    .line 342
    .local v21, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    invoke-interface/range {v21 .. v21}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    .line 343
    .local v22, "key":Ljava/lang/String;
    const-string/jumbo v31, "sound_"

    move-object/from16 v0, v22

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_e

    .line 344
    invoke-interface/range {v21 .. v21}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/lang/String;

    .line 345
    .local v27, "value":Ljava/lang/String;
    move-object/from16 v0, v27

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-nez v31, :cond_b

    .line 346
    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/Utilities;->parseLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    .line 347
    .local v18, "dialogId":J
    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v31

    if-nez v31, :cond_b

    .line 348
    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_3

    .line 400
    .end local v5    # "all":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    .end local v9    # "customDialogs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v11    # "defaultColor":I
    .end local v12    # "defaultMaxCount":I
    .end local v13    # "defaultMaxDelay":I
    .end local v14    # "defaultPriority":I
    .end local v15    # "defaultSound":Ljava/lang/String;
    .end local v16    # "defaultVibrate":I
    .end local v18    # "dialogId":J
    .end local v21    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    .end local v22    # "key":Ljava/lang/String;
    .end local v27    # "value":Ljava/lang/String;
    :catch_1
    move-exception v17

    .line 401
    .restart local v17    # "e":Ljava/lang/Exception;
    :try_start_7
    invoke-static/range {v17 .. v17}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 403
    .end local v17    # "e":Ljava/lang/Exception;
    :cond_c
    :goto_4
    const/16 v29, 0x1

    sput-boolean v29, Lorg/telegram/messenger/UserConfig;->notificationsConverted:Z

    .line 404
    const/16 v29, 0x0

    invoke-static/range {v29 .. v29}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    goto/16 :goto_1

    .line 327
    :cond_d
    const/16 v29, 0x0

    move/from16 v0, v29

    new-array v0, v0, [B

    move-object/from16 v29, v0

    sput-object v29, Lorg/telegram/messenger/UserConfig;->passcodeSalt:[B
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_2

    .line 351
    .restart local v5    # "all":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    .restart local v9    # "customDialogs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .restart local v11    # "defaultColor":I
    .restart local v12    # "defaultMaxCount":I
    .restart local v13    # "defaultMaxDelay":I
    .restart local v14    # "defaultPriority":I
    .restart local v15    # "defaultSound":Ljava/lang/String;
    .restart local v16    # "defaultVibrate":I
    .restart local v21    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    .restart local v22    # "key":Ljava/lang/String;
    :cond_e
    :try_start_8
    const-string/jumbo v31, "vibrate_"

    move-object/from16 v0, v22

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_f

    .line 352
    invoke-interface/range {v21 .. v21}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/lang/Integer;

    .line 353
    .local v27, "value":Ljava/lang/Integer;
    invoke-virtual/range {v27 .. v27}, Ljava/lang/Integer;->intValue()I

    move-result v31

    move/from16 v0, v31

    move/from16 v1, v16

    if-eq v0, v1, :cond_b

    .line 354
    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/Utilities;->parseLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    .line 355
    .restart local v18    # "dialogId":J
    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v31

    if-nez v31, :cond_b

    .line 356
    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 359
    .end local v18    # "dialogId":J
    .end local v27    # "value":Ljava/lang/Integer;
    :cond_f
    const-string/jumbo v31, "priority_"

    move-object/from16 v0, v22

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_10

    .line 360
    invoke-interface/range {v21 .. v21}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/lang/Integer;

    .line 361
    .restart local v27    # "value":Ljava/lang/Integer;
    invoke-virtual/range {v27 .. v27}, Ljava/lang/Integer;->intValue()I

    move-result v31

    move/from16 v0, v31

    if-eq v0, v14, :cond_b

    .line 362
    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/Utilities;->parseLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    .line 363
    .restart local v18    # "dialogId":J
    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v31

    if-nez v31, :cond_b

    .line 364
    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 367
    .end local v18    # "dialogId":J
    .end local v27    # "value":Ljava/lang/Integer;
    :cond_10
    const-string/jumbo v31, "color_"

    move-object/from16 v0, v22

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_11

    .line 368
    invoke-interface/range {v21 .. v21}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/lang/Integer;

    .line 369
    .restart local v27    # "value":Ljava/lang/Integer;
    invoke-virtual/range {v27 .. v27}, Ljava/lang/Integer;->intValue()I

    move-result v31

    move/from16 v0, v31

    if-eq v0, v11, :cond_b

    .line 370
    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/Utilities;->parseLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    .line 371
    .restart local v18    # "dialogId":J
    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v31

    if-nez v31, :cond_b

    .line 372
    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 375
    .end local v18    # "dialogId":J
    .end local v27    # "value":Ljava/lang/Integer;
    :cond_11
    const-string/jumbo v31, "smart_max_count_"

    move-object/from16 v0, v22

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_12

    .line 376
    invoke-interface/range {v21 .. v21}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/lang/Integer;

    .line 377
    .restart local v27    # "value":Ljava/lang/Integer;
    invoke-virtual/range {v27 .. v27}, Ljava/lang/Integer;->intValue()I

    move-result v31

    move/from16 v0, v31

    if-eq v0, v12, :cond_b

    .line 378
    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/Utilities;->parseLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    .line 379
    .restart local v18    # "dialogId":J
    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v31

    if-nez v31, :cond_b

    .line 380
    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 383
    .end local v18    # "dialogId":J
    .end local v27    # "value":Ljava/lang/Integer;
    :cond_12
    const-string/jumbo v31, "smart_delay_"

    move-object/from16 v0, v22

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_b

    .line 384
    invoke-interface/range {v21 .. v21}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/lang/Integer;

    .line 385
    .restart local v27    # "value":Ljava/lang/Integer;
    invoke-virtual/range {v27 .. v27}, Ljava/lang/Integer;->intValue()I

    move-result v31

    move/from16 v0, v31

    if-eq v0, v13, :cond_b

    .line 386
    invoke-static/range {v22 .. v22}, Lorg/telegram/messenger/Utilities;->parseLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    .line 387
    .restart local v18    # "dialogId":J
    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v31

    if-nez v31, :cond_b

    .line 388
    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 393
    .end local v18    # "dialogId":J
    .end local v21    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    .end local v22    # "key":Ljava/lang/String;
    .end local v27    # "value":Ljava/lang/Integer;
    :cond_13
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v29

    if-nez v29, :cond_c

    .line 394
    invoke-interface/range {v24 .. v24}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v20

    .line 395
    .local v20, "editor":Landroid/content/SharedPreferences$Editor;
    const/4 v4, 0x0

    .local v4, "a":I
    :goto_5
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v29

    move/from16 v0, v29

    if-ge v4, v0, :cond_14

    .line 396
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v31, "custom_"

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v31

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    const/16 v31, 0x1

    move-object/from16 v0, v20

    move-object/from16 v1, v29

    move/from16 v2, v31

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 395
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 398
    :cond_14
    invoke-interface/range {v20 .. v20}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_4
.end method

.method public static saveConfig(Z)V
    .locals 1
    .param p0, "withFile"    # Z

    .prologue
    .line 77
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/telegram/messenger/UserConfig;->saveConfig(ZLjava/io/File;)V

    .line 78
    return-void
.end method

.method public static saveConfig(ZLjava/io/File;)V
    .locals 10
    .param p0, "withFile"    # Z
    .param p1, "oldFile"    # Ljava/io/File;

    .prologue
    .line 81
    sget-object v6, Lorg/telegram/messenger/UserConfig;->sync:Ljava/lang/Object;

    monitor-enter v6

    .line 83
    :try_start_0
    sget-object v5, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    sget-object v7, Lorg/telegram/messenger/AndroidUtilities;->userconfig:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-virtual {v5, v7, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 84
    .local v3, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 85
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v5, "registeredForPush"

    sget-boolean v7, Lorg/telegram/messenger/UserConfig;->registeredForPush:Z

    invoke-interface {v2, v5, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 86
    const-string/jumbo v5, "pushString2"

    sget-object v7, Lorg/telegram/messenger/UserConfig;->pushString:Ljava/lang/String;

    invoke-interface {v2, v5, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 87
    const-string/jumbo v5, "lastSendMessageId"

    sget v7, Lorg/telegram/messenger/UserConfig;->lastSendMessageId:I

    invoke-interface {v2, v5, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 88
    const-string/jumbo v5, "lastLocalId"

    sget v7, Lorg/telegram/messenger/UserConfig;->lastLocalId:I

    invoke-interface {v2, v5, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 89
    const-string/jumbo v5, "contactsHash"

    sget-object v7, Lorg/telegram/messenger/UserConfig;->contactsHash:Ljava/lang/String;

    invoke-interface {v2, v5, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 90
    const-string/jumbo v5, "saveIncomingPhotos"

    sget-boolean v7, Lorg/telegram/messenger/UserConfig;->saveIncomingPhotos:Z

    invoke-interface {v2, v5, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 91
    const-string/jumbo v5, "lastBroadcastId"

    sget v7, Lorg/telegram/messenger/UserConfig;->lastBroadcastId:I

    invoke-interface {v2, v5, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 92
    const-string/jumbo v5, "blockedUsersLoaded"

    sget-boolean v7, Lorg/telegram/messenger/UserConfig;->blockedUsersLoaded:Z

    invoke-interface {v2, v5, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 93
    const-string/jumbo v5, "passcodeHash1"

    sget-object v7, Lorg/telegram/messenger/UserConfig;->passcodeHash:Ljava/lang/String;

    invoke-interface {v2, v5, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 94
    const-string/jumbo v7, "passcodeSalt"

    sget-object v5, Lorg/telegram/messenger/UserConfig;->passcodeSalt:[B

    array-length v5, v5

    if-lez v5, :cond_3

    sget-object v5, Lorg/telegram/messenger/UserConfig;->passcodeSalt:[B

    const/4 v8, 0x0

    invoke-static {v5, v8}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v5

    :goto_0
    invoke-interface {v2, v7, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 95
    const-string/jumbo v5, "appLocked"

    sget-boolean v7, Lorg/telegram/messenger/UserConfig;->appLocked:Z

    invoke-interface {v2, v5, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 96
    const-string/jumbo v5, "passcodeType"

    sget v7, Lorg/telegram/messenger/UserConfig;->passcodeType:I

    invoke-interface {v2, v5, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 97
    const-string/jumbo v5, "autoLockIn"

    sget v7, Lorg/telegram/messenger/UserConfig;->autoLockIn:I

    invoke-interface {v2, v5, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 98
    const-string/jumbo v5, "lastPauseTime"

    sget v7, Lorg/telegram/messenger/UserConfig;->lastPauseTime:I

    invoke-interface {v2, v5, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 99
    const-string/jumbo v5, "lastAppPauseTime"

    sget-wide v8, Lorg/telegram/messenger/UserConfig;->lastAppPauseTime:J

    invoke-interface {v2, v5, v8, v9}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 100
    const-string/jumbo v5, "lastUpdateVersion2"

    sget-object v7, Lorg/telegram/messenger/UserConfig;->lastUpdateVersion:Ljava/lang/String;

    invoke-interface {v2, v5, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 101
    const-string/jumbo v5, "lastContactsSyncTime"

    sget v7, Lorg/telegram/messenger/UserConfig;->lastContactsSyncTime:I

    invoke-interface {v2, v5, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 102
    const-string/jumbo v5, "useFingerprint"

    sget-boolean v7, Lorg/telegram/messenger/UserConfig;->useFingerprint:Z

    invoke-interface {v2, v5, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 103
    const-string/jumbo v5, "lastHintsSyncTime"

    sget v7, Lorg/telegram/messenger/UserConfig;->lastHintsSyncTime:I

    invoke-interface {v2, v5, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 104
    const-string/jumbo v5, "draftsLoaded"

    sget-boolean v7, Lorg/telegram/messenger/UserConfig;->draftsLoaded:Z

    invoke-interface {v2, v5, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 105
    const-string/jumbo v5, "notificationsConverted"

    sget-boolean v7, Lorg/telegram/messenger/UserConfig;->notificationsConverted:Z

    invoke-interface {v2, v5, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 106
    const-string/jumbo v5, "allowScreenCapture"

    sget-boolean v7, Lorg/telegram/messenger/UserConfig;->allowScreenCapture:Z

    invoke-interface {v2, v5, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 107
    const-string/jumbo v5, "pinnedDialogsLoaded"

    sget-boolean v7, Lorg/telegram/messenger/UserConfig;->pinnedDialogsLoaded:Z

    invoke-interface {v2, v5, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 109
    const-string/jumbo v5, "3migrateOffsetId"

    sget v7, Lorg/telegram/messenger/UserConfig;->migrateOffsetId:I

    invoke-interface {v2, v5, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 110
    sget v5, Lorg/telegram/messenger/UserConfig;->migrateOffsetId:I

    const/4 v7, -0x1

    if-eq v5, v7, :cond_0

    .line 111
    const-string/jumbo v5, "3migrateOffsetDate"

    sget v7, Lorg/telegram/messenger/UserConfig;->migrateOffsetDate:I

    invoke-interface {v2, v5, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 112
    const-string/jumbo v5, "3migrateOffsetUserId"

    sget v7, Lorg/telegram/messenger/UserConfig;->migrateOffsetUserId:I

    invoke-interface {v2, v5, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 113
    const-string/jumbo v5, "3migrateOffsetChatId"

    sget v7, Lorg/telegram/messenger/UserConfig;->migrateOffsetChatId:I

    invoke-interface {v2, v5, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 114
    const-string/jumbo v5, "3migrateOffsetChannelId"

    sget v7, Lorg/telegram/messenger/UserConfig;->migrateOffsetChannelId:I

    invoke-interface {v2, v5, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 115
    const-string/jumbo v5, "3migrateOffsetAccess"

    sget-wide v8, Lorg/telegram/messenger/UserConfig;->migrateOffsetAccess:J

    invoke-interface {v2, v5, v8, v9}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 119
    :cond_0
    const-string/jumbo v5, "2totalDialogsLoadCount"

    sget v7, Lorg/telegram/messenger/UserConfig;->totalDialogsLoadCount:I

    invoke-interface {v2, v5, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 120
    const-string/jumbo v5, "2dialogsLoadOffsetId"

    sget v7, Lorg/telegram/messenger/UserConfig;->dialogsLoadOffsetId:I

    invoke-interface {v2, v5, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 121
    const-string/jumbo v5, "2dialogsLoadOffsetDate"

    sget v7, Lorg/telegram/messenger/UserConfig;->dialogsLoadOffsetDate:I

    invoke-interface {v2, v5, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 122
    const-string/jumbo v5, "2dialogsLoadOffsetUserId"

    sget v7, Lorg/telegram/messenger/UserConfig;->dialogsLoadOffsetUserId:I

    invoke-interface {v2, v5, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 123
    const-string/jumbo v5, "2dialogsLoadOffsetChatId"

    sget v7, Lorg/telegram/messenger/UserConfig;->dialogsLoadOffsetChatId:I

    invoke-interface {v2, v5, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 124
    const-string/jumbo v5, "2dialogsLoadOffsetChannelId"

    sget v7, Lorg/telegram/messenger/UserConfig;->dialogsLoadOffsetChannelId:I

    invoke-interface {v2, v5, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 125
    const-string/jumbo v5, "2dialogsLoadOffsetAccess"

    sget-wide v8, Lorg/telegram/messenger/UserConfig;->dialogsLoadOffsetAccess:J

    invoke-interface {v2, v5, v8, v9}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 127
    sget-object v5, Lorg/telegram/messenger/UserConfig;->tmpPassword:Lorg/telegram/tgnet/TLRPC$TL_account_tmpPassword;

    if-eqz v5, :cond_4

    .line 128
    new-instance v0, Lorg/telegram/tgnet/SerializedData;

    invoke-direct {v0}, Lorg/telegram/tgnet/SerializedData;-><init>()V

    .line 129
    .local v0, "data":Lorg/telegram/tgnet/SerializedData;
    sget-object v5, Lorg/telegram/messenger/UserConfig;->tmpPassword:Lorg/telegram/tgnet/TLRPC$TL_account_tmpPassword;

    invoke-virtual {v5, v0}, Lorg/telegram/tgnet/TLRPC$TL_account_tmpPassword;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 130
    invoke-virtual {v0}, Lorg/telegram/tgnet/SerializedData;->toByteArray()[B

    move-result-object v5

    const/4 v7, 0x0

    invoke-static {v5, v7}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v4

    .line 131
    .local v4, "string":Ljava/lang/String;
    const-string/jumbo v5, "tmpPassword"

    invoke-interface {v2, v5, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 132
    invoke-virtual {v0}, Lorg/telegram/tgnet/SerializedData;->cleanup()V

    .line 137
    .end local v0    # "data":Lorg/telegram/tgnet/SerializedData;
    .end local v4    # "string":Ljava/lang/String;
    :goto_1
    sget-object v5, Lorg/telegram/messenger/UserConfig;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v5, :cond_5

    .line 138
    if-eqz p0, :cond_1

    .line 139
    new-instance v0, Lorg/telegram/tgnet/SerializedData;

    invoke-direct {v0}, Lorg/telegram/tgnet/SerializedData;-><init>()V

    .line 140
    .restart local v0    # "data":Lorg/telegram/tgnet/SerializedData;
    sget-object v5, Lorg/telegram/messenger/UserConfig;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    invoke-virtual {v5, v0}, Lorg/telegram/tgnet/TLRPC$User;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 141
    invoke-virtual {v0}, Lorg/telegram/tgnet/SerializedData;->toByteArray()[B

    move-result-object v5

    const/4 v7, 0x0

    invoke-static {v5, v7}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v4

    .line 142
    .restart local v4    # "string":Ljava/lang/String;
    const-string/jumbo v5, "user"

    invoke-interface {v2, v5, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 143
    invoke-virtual {v0}, Lorg/telegram/tgnet/SerializedData;->cleanup()V

    .line 149
    .end local v0    # "data":Lorg/telegram/tgnet/SerializedData;
    .end local v4    # "string":Ljava/lang/String;
    :cond_1
    :goto_2
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 150
    if-eqz p1, :cond_2

    .line 151
    invoke-virtual {p1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    .end local v2    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v3    # "preferences":Landroid/content/SharedPreferences;
    :cond_2
    :goto_3
    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 157
    return-void

    .line 94
    .restart local v2    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local v3    # "preferences":Landroid/content/SharedPreferences;
    :cond_3
    :try_start_2
    const-string/jumbo v5, ""

    goto/16 :goto_0

    .line 134
    :cond_4
    const-string/jumbo v5, "tmpPassword"

    invoke-interface {v2, v5}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 153
    .end local v2    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v3    # "preferences":Landroid/content/SharedPreferences;
    :catch_0
    move-exception v1

    .line 154
    .local v1, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_3

    .line 156
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v5

    .line 146
    .restart local v2    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local v3    # "preferences":Landroid/content/SharedPreferences;
    :cond_5
    :try_start_4
    const-string/jumbo v5, "user"

    invoke-interface {v2, v5}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2
.end method

.method public static setCurrentUser(Lorg/telegram/tgnet/TLRPC$User;)V
    .locals 2
    .param p0, "user"    # Lorg/telegram/tgnet/TLRPC$User;

    .prologue
    .line 178
    sget-object v1, Lorg/telegram/messenger/UserConfig;->sync:Ljava/lang/Object;

    monitor-enter v1

    .line 179
    :try_start_0
    sput-object p0, Lorg/telegram/messenger/UserConfig;->currentUser:Lorg/telegram/tgnet/TLRPC$User;

    .line 180
    monitor-exit v1

    .line 181
    return-void

    .line 180
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
