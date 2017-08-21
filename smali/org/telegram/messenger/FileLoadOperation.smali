.class public Lorg/telegram/messenger/FileLoadOperation;
.super Ljava/lang/Object;
.source "FileLoadOperation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/FileLoadOperation$FileLoadOperationDelegate;,
        Lorg/telegram/messenger/FileLoadOperation$RequestInfo;
    }
.end annotation


# static fields
.field private static final bigFileSizeFrom:I = 0x100000

.field private static final cdnChunkCheckSize:I = 0x20000

.field private static final downloadChunkSize:I = 0x8000

.field private static final downloadChunkSizeBig:I = 0x20000

.field private static final maxDownloadRequests:I = 0x4

.field private static final maxDownloadRequestsBig:I = 0x2

.field private static orgName:Ljava/lang/String; = null

.field private static final stateDownloading:I = 0x1

.field private static final stateFailed:I = 0x2

.field private static final stateFinished:I = 0x3

.field private static final stateIdle:I


# instance fields
.field private bytesCountPadding:I

.field private cacheFileFinal:Ljava/io/File;

.field private cacheFileTemp:Ljava/io/File;

.field private cacheIvTemp:Ljava/io/File;

.field private cdnCheckBytes:[B

.field private cdnDatacenterId:I

.field private cdnHashes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/telegram/tgnet/TLRPC$TL_cdnFileHash;",
            ">;"
        }
    .end annotation
.end field

.field private cdnIv:[B

.field private cdnKey:[B

.field private cdnToken:[B

.field private currentDownloadChunkSize:I

.field private currentMaxDownloadRequests:I

.field private currentType:I

.field private datacenter_id:I

.field private delayedRequestInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/FileLoadOperation$RequestInfo;",
            ">;"
        }
    .end annotation
.end field

.field private delegate:Lorg/telegram/messenger/FileLoadOperation$FileLoadOperationDelegate;

.field private downloadedBytes:I

.field private encryptFile:Z

.field private encryptIv:[B

.field private encryptKey:[B

.field private ext:Ljava/lang/String;

.field private fileOutputStream:Ljava/io/RandomAccessFile;

.field private fileReadStream:Ljava/io/RandomAccessFile;

.field private fiv:Ljava/io/RandomAccessFile;

.field private isCdn:Z

.field private isForceRequest:Z

.field private iv:[B

.field private key:[B

.field private lastCheckedCdnPart:I

.field private location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

.field private nextDownloadOffset:I

.field private renameRetryCount:I

.field private requestInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/FileLoadOperation$RequestInfo;",
            ">;"
        }
    .end annotation
.end field

.field private requestingCdnOffsets:Z

.field private requestsCount:I

.field private reuploadingCdn:Z

.field private started:Z

.field private volatile state:I

.field private storePath:Ljava/io/File;

.field private tempPath:Ljava/io/File;

.field private totalBytesCount:I

.field private webLocation:Lorg/telegram/tgnet/TLRPC$TL_inputWebFileLocation;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x0

    sput-object v0, Lorg/telegram/messenger/FileLoadOperation;->orgName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/telegram/tgnet/TLRPC$Document;)V
    .locals 11
    .param p1, "documentLocation"    # Lorg/telegram/tgnet/TLRPC$Document;

    .prologue
    const/4 v3, -0x1

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput v4, p0, Lorg/telegram/messenger/FileLoadOperation;->state:I

    .line 151
    :try_start_0
    instance-of v6, p1, Lorg/telegram/tgnet/TLRPC$TL_documentEncrypted;

    if-eqz v6, :cond_6

    .line 152
    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedFileLocation;

    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedFileLocation;-><init>()V

    iput-object v6, p0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    .line 153
    iget-object v6, p0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget-wide v8, p1, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    iput-wide v8, v6, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->id:J

    .line 154
    iget-object v6, p0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget-wide v8, p1, Lorg/telegram/tgnet/TLRPC$Document;->access_hash:J

    iput-wide v8, v6, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->access_hash:J

    .line 155
    iget v6, p1, Lorg/telegram/tgnet/TLRPC$Document;->dc_id:I

    iput v6, p0, Lorg/telegram/messenger/FileLoadOperation;->datacenter_id:I

    .line 156
    const/16 v6, 0x20

    new-array v6, v6, [B

    iput-object v6, p0, Lorg/telegram/messenger/FileLoadOperation;->iv:[B

    .line 157
    iget-object v6, p1, Lorg/telegram/tgnet/TLRPC$Document;->iv:[B

    const/4 v7, 0x0

    iget-object v8, p0, Lorg/telegram/messenger/FileLoadOperation;->iv:[B

    const/4 v9, 0x0

    iget-object v10, p0, Lorg/telegram/messenger/FileLoadOperation;->iv:[B

    array-length v10, v10

    invoke-static {v6, v7, v8, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 158
    iget-object v6, p1, Lorg/telegram/tgnet/TLRPC$Document;->key:[B

    iput-object v6, p0, Lorg/telegram/messenger/FileLoadOperation;->key:[B

    .line 165
    :cond_0
    :goto_0
    iget v6, p1, Lorg/telegram/tgnet/TLRPC$Document;->size:I

    iput v6, p0, Lorg/telegram/messenger/FileLoadOperation;->totalBytesCount:I

    .line 166
    iget-object v6, p0, Lorg/telegram/messenger/FileLoadOperation;->key:[B

    if-eqz v6, :cond_1

    .line 167
    const/4 v2, 0x0

    .line 168
    .local v2, "toAdd":I
    iget v6, p0, Lorg/telegram/messenger/FileLoadOperation;->totalBytesCount:I

    rem-int/lit8 v6, v6, 0x10

    if-eqz v6, :cond_1

    .line 169
    iget v6, p0, Lorg/telegram/messenger/FileLoadOperation;->totalBytesCount:I

    rem-int/lit8 v6, v6, 0x10

    rsub-int/lit8 v6, v6, 0x10

    iput v6, p0, Lorg/telegram/messenger/FileLoadOperation;->bytesCountPadding:I

    .line 170
    iget v6, p0, Lorg/telegram/messenger/FileLoadOperation;->totalBytesCount:I

    iget v7, p0, Lorg/telegram/messenger/FileLoadOperation;->bytesCountPadding:I

    add-int/2addr v6, v7

    iput v6, p0, Lorg/telegram/messenger/FileLoadOperation;->totalBytesCount:I

    .line 173
    .end local v2    # "toAdd":I
    :cond_1
    invoke-static {p1}, Lorg/telegram/messenger/FileLoader;->getDocumentFileName(Lorg/telegram/tgnet/TLRPC$Document;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lorg/telegram/messenger/FileLoadOperation;->ext:Ljava/lang/String;

    .line 175
    iget-object v6, p0, Lorg/telegram/messenger/FileLoadOperation;->ext:Ljava/lang/String;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lorg/telegram/messenger/FileLoadOperation;->ext:Ljava/lang/String;

    const/16 v7, 0x2e

    invoke-virtual {v6, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .local v1, "idx":I
    if-ne v1, v3, :cond_7

    .line 176
    .end local v1    # "idx":I
    :cond_2
    const-string/jumbo v6, ""

    iput-object v6, p0, Lorg/telegram/messenger/FileLoadOperation;->ext:Ljava/lang/String;

    .line 180
    :goto_1
    const-string/jumbo v6, "audio/ogg"

    iget-object v7, p1, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 181
    const/high16 v6, 0x3000000

    iput v6, p0, Lorg/telegram/messenger/FileLoadOperation;->currentType:I

    .line 187
    :goto_2
    iget-object v6, p0, Lorg/telegram/messenger/FileLoadOperation;->ext:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-gt v6, v5, :cond_4

    .line 188
    iget-object v6, p1, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    if-eqz v6, :cond_a

    .line 189
    iget-object v6, p1, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    :cond_3
    :goto_3
    packed-switch v3, :pswitch_data_0

    .line 197
    const-string/jumbo v3, ""

    iput-object v3, p0, Lorg/telegram/messenger/FileLoadOperation;->ext:Ljava/lang/String;

    .line 205
    :cond_4
    :goto_4
    iget-object v3, p0, Lorg/telegram/messenger/FileLoadOperation;->ext:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v5, :cond_5

    sget-boolean v3, Lorg/telegram/messenger/ApplicationLoader;->KEEP_ORIGINAL_FILENAME:Z

    if-eqz v3, :cond_5

    iget-object v3, p0, Lorg/telegram/messenger/FileLoadOperation;->ext:Ljava/lang/String;

    const-string/jumbo v6, "webp"

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Lorg/telegram/messenger/FileLoadOperation;->ext:Ljava/lang/String;

    const-string/jumbo v6, ".mp4"

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Lorg/telegram/messenger/FileLoadOperation;->ext:Ljava/lang/String;

    const-string/jumbo v6, ".gif"

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Lorg/telegram/messenger/FileLoadOperation;->ext:Ljava/lang/String;

    const-string/jumbo v6, ".ogg"

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 206
    invoke-static {p1}, Lorg/telegram/messenger/FileLoader;->getDocName(Lorg/telegram/tgnet/TLRPC$Document;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lorg/telegram/messenger/FileLoadOperation;->orgName:Ljava/lang/String;

    .line 213
    :cond_5
    :goto_5
    return-void

    .line 159
    :cond_6
    instance-of v6, p1, Lorg/telegram/tgnet/TLRPC$TL_document;

    if-eqz v6, :cond_0

    .line 160
    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_inputDocumentFileLocation;

    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_inputDocumentFileLocation;-><init>()V

    iput-object v6, p0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    .line 161
    iget-object v6, p0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget-wide v8, p1, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    iput-wide v8, v6, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->id:J

    .line 162
    iget-object v6, p0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget-wide v8, p1, Lorg/telegram/tgnet/TLRPC$Document;->access_hash:J

    iput-wide v8, v6, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->access_hash:J

    .line 163
    iget v6, p1, Lorg/telegram/tgnet/TLRPC$Document;->dc_id:I

    iput v6, p0, Lorg/telegram/messenger/FileLoadOperation;->datacenter_id:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 209
    :catch_0
    move-exception v0

    .line 210
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 211
    invoke-direct {p0, v5, v4}, Lorg/telegram/messenger/FileLoadOperation;->onFail(ZI)V

    goto :goto_5

    .line 178
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "idx":I
    :cond_7
    :try_start_1
    iget-object v6, p0, Lorg/telegram/messenger/FileLoadOperation;->ext:Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lorg/telegram/messenger/FileLoadOperation;->ext:Ljava/lang/String;

    goto/16 :goto_1

    .line 182
    .end local v1    # "idx":I
    :cond_8
    const-string/jumbo v6, "video/mp4"

    iget-object v7, p1, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 183
    const/high16 v6, 0x2000000

    iput v6, p0, Lorg/telegram/messenger/FileLoadOperation;->currentType:I

    goto/16 :goto_2

    .line 185
    :cond_9
    const/high16 v6, 0x4000000

    iput v6, p0, Lorg/telegram/messenger/FileLoadOperation;->currentType:I

    goto/16 :goto_2

    .line 189
    :sswitch_0
    const-string/jumbo v7, "video/mp4"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    move v3, v4

    goto/16 :goto_3

    :sswitch_1
    const-string/jumbo v7, "audio/ogg"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    move v3, v5

    goto/16 :goto_3

    .line 191
    :pswitch_0
    const-string/jumbo v3, ".mp4"

    iput-object v3, p0, Lorg/telegram/messenger/FileLoadOperation;->ext:Ljava/lang/String;

    goto/16 :goto_4

    .line 194
    :pswitch_1
    const-string/jumbo v3, ".ogg"

    iput-object v3, p0, Lorg/telegram/messenger/FileLoadOperation;->ext:Ljava/lang/String;

    goto/16 :goto_4

    .line 201
    :cond_a
    const-string/jumbo v3, ""

    iput-object v3, p0, Lorg/telegram/messenger/FileLoadOperation;->ext:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_4

    .line 189
    :sswitch_data_0
    .sparse-switch
        0xb26cbd6 -> :sswitch_1
        0x4f62635d -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public constructor <init>(Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/lang/String;I)V
    .locals 5
    .param p1, "photoLocation"    # Lorg/telegram/tgnet/TLRPC$FileLocation;
    .param p2, "extension"    # Ljava/lang/String;
    .param p3, "size"    # I

    .prologue
    const/4 v4, 0x0

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput v4, p0, Lorg/telegram/messenger/FileLoadOperation;->state:I

    .line 107
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_fileEncryptedLocation;

    if-eqz v0, :cond_1

    .line 108
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedFileLocation;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedFileLocation;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    .line 109
    iget-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget-wide v2, p1, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    iput-wide v2, v0, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->id:J

    .line 110
    iget-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget-wide v2, p1, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    iput-wide v2, v0, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->volume_id:J

    .line 111
    iget-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget-wide v2, p1, Lorg/telegram/tgnet/TLRPC$FileLocation;->secret:J

    iput-wide v2, v0, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->access_hash:J

    .line 112
    iget-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget v1, p1, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->local_id:I

    .line 113
    const/16 v0, 0x20

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->iv:[B

    .line 114
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$FileLocation;->iv:[B

    iget-object v1, p0, Lorg/telegram/messenger/FileLoadOperation;->iv:[B

    iget-object v2, p0, Lorg/telegram/messenger/FileLoadOperation;->iv:[B

    array-length v2, v2

    invoke-static {v0, v4, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 115
    iget-object v0, p1, Lorg/telegram/tgnet/TLRPC$FileLocation;->key:[B

    iput-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->key:[B

    .line 116
    iget v0, p1, Lorg/telegram/tgnet/TLRPC$FileLocation;->dc_id:I

    iput v0, p0, Lorg/telegram/messenger/FileLoadOperation;->datacenter_id:I

    .line 124
    :cond_0
    :goto_0
    const/high16 v0, 0x1000000

    iput v0, p0, Lorg/telegram/messenger/FileLoadOperation;->currentType:I

    .line 125
    iput p3, p0, Lorg/telegram/messenger/FileLoadOperation;->totalBytesCount:I

    .line 126
    if-eqz p2, :cond_2

    .end local p2    # "extension":Ljava/lang/String;
    :goto_1
    iput-object p2, p0, Lorg/telegram/messenger/FileLoadOperation;->ext:Ljava/lang/String;

    .line 127
    const/4 v0, 0x0

    sput-object v0, Lorg/telegram/messenger/FileLoadOperation;->orgName:Ljava/lang/String;

    .line 128
    return-void

    .line 117
    .restart local p2    # "extension":Ljava/lang/String;
    :cond_1
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_fileLocation;

    if-eqz v0, :cond_0

    .line 118
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_inputFileLocation;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_inputFileLocation;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    .line 119
    iget-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget-wide v2, p1, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    iput-wide v2, v0, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->volume_id:J

    .line 120
    iget-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget-wide v2, p1, Lorg/telegram/tgnet/TLRPC$FileLocation;->secret:J

    iput-wide v2, v0, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->secret:J

    .line 121
    iget-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget v1, p1, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->local_id:I

    .line 122
    iget v0, p1, Lorg/telegram/tgnet/TLRPC$FileLocation;->dc_id:I

    iput v0, p0, Lorg/telegram/messenger/FileLoadOperation;->datacenter_id:I

    goto :goto_0

    .line 126
    :cond_2
    const-string/jumbo p2, "jpg"

    goto :goto_1
.end method

.method public constructor <init>(Lorg/telegram/tgnet/TLRPC$TL_webDocument;)V
    .locals 4
    .param p1, "webDocument"    # Lorg/telegram/tgnet/TLRPC$TL_webDocument;

    .prologue
    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/4 v1, 0x0

    iput v1, p0, Lorg/telegram/messenger/FileLoadOperation;->state:I

    .line 131
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_inputWebFileLocation;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_inputWebFileLocation;-><init>()V

    iput-object v1, p0, Lorg/telegram/messenger/FileLoadOperation;->webLocation:Lorg/telegram/tgnet/TLRPC$TL_inputWebFileLocation;

    .line 132
    iget-object v1, p0, Lorg/telegram/messenger/FileLoadOperation;->webLocation:Lorg/telegram/tgnet/TLRPC$TL_inputWebFileLocation;

    iget-object v2, p1, Lorg/telegram/tgnet/TLRPC$TL_webDocument;->url:Ljava/lang/String;

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_inputWebFileLocation;->url:Ljava/lang/String;

    .line 133
    iget-object v1, p0, Lorg/telegram/messenger/FileLoadOperation;->webLocation:Lorg/telegram/tgnet/TLRPC$TL_inputWebFileLocation;

    iget-wide v2, p1, Lorg/telegram/tgnet/TLRPC$TL_webDocument;->access_hash:J

    iput-wide v2, v1, Lorg/telegram/tgnet/TLRPC$TL_inputWebFileLocation;->access_hash:J

    .line 134
    iget v1, p1, Lorg/telegram/tgnet/TLRPC$TL_webDocument;->size:I

    iput v1, p0, Lorg/telegram/messenger/FileLoadOperation;->totalBytesCount:I

    .line 135
    iget v1, p1, Lorg/telegram/tgnet/TLRPC$TL_webDocument;->dc_id:I

    iput v1, p0, Lorg/telegram/messenger/FileLoadOperation;->datacenter_id:I

    .line 136
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$TL_webDocument;->mime_type:Ljava/lang/String;

    invoke-static {v1}, Lorg/telegram/messenger/FileLoader;->getExtensionByMime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 137
    .local v0, "defaultExt":Ljava/lang/String;
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$TL_webDocument;->mime_type:Ljava/lang/String;

    const-string/jumbo v2, "image/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 138
    const/high16 v1, 0x1000000

    iput v1, p0, Lorg/telegram/messenger/FileLoadOperation;->currentType:I

    .line 146
    :goto_0
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$TL_webDocument;->url:Ljava/lang/String;

    invoke-static {v1, v0}, Lorg/telegram/messenger/ImageLoader;->getHttpUrlExtension(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/messenger/FileLoadOperation;->ext:Ljava/lang/String;

    .line 147
    return-void

    .line 139
    :cond_0
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$TL_webDocument;->mime_type:Ljava/lang/String;

    const-string/jumbo v2, "audio/ogg"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 140
    const/high16 v1, 0x3000000

    iput v1, p0, Lorg/telegram/messenger/FileLoadOperation;->currentType:I

    goto :goto_0

    .line 141
    :cond_1
    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$TL_webDocument;->mime_type:Ljava/lang/String;

    const-string/jumbo v2, "video/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 142
    const/high16 v1, 0x2000000

    iput v1, p0, Lorg/telegram/messenger/FileLoadOperation;->currentType:I

    goto :goto_0

    .line 144
    :cond_2
    const/high16 v1, 0x4000000

    iput v1, p0, Lorg/telegram/messenger/FileLoadOperation;->currentType:I

    goto :goto_0
.end method

.method static synthetic access$000(Lorg/telegram/messenger/FileLoadOperation;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/FileLoadOperation;

    .prologue
    .line 25
    iget v0, p0, Lorg/telegram/messenger/FileLoadOperation;->totalBytesCount:I

    return v0
.end method

.method static synthetic access$100(Lorg/telegram/messenger/FileLoadOperation;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/FileLoadOperation;

    .prologue
    .line 25
    iget v0, p0, Lorg/telegram/messenger/FileLoadOperation;->downloadedBytes:I

    return v0
.end method

.method static synthetic access$1102(Lorg/telegram/messenger/FileLoadOperation;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/FileLoadOperation;
    .param p1, "x1"    # Z

    .prologue
    .line 25
    iput-boolean p1, p0, Lorg/telegram/messenger/FileLoadOperation;->requestingCdnOffsets:Z

    return p1
.end method

.method static synthetic access$1200(Lorg/telegram/messenger/FileLoadOperation;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/FileLoadOperation;

    .prologue
    .line 25
    iget-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->cdnHashes:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1202(Lorg/telegram/messenger/FileLoadOperation;Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/FileLoadOperation;
    .param p1, "x1"    # Ljava/util/HashMap;

    .prologue
    .line 25
    iput-object p1, p0, Lorg/telegram/messenger/FileLoadOperation;->cdnHashes:Ljava/util/HashMap;

    return-object p1
.end method

.method static synthetic access$1300(Lorg/telegram/messenger/FileLoadOperation;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/FileLoadOperation;

    .prologue
    .line 25
    iget-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->delayedRequestInfos:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1500(Lorg/telegram/messenger/FileLoadOperation;Lorg/telegram/messenger/FileLoadOperation$RequestInfo;Lorg/telegram/tgnet/TLRPC$TL_error;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/FileLoadOperation;
    .param p1, "x1"    # Lorg/telegram/messenger/FileLoadOperation$RequestInfo;
    .param p2, "x2"    # Lorg/telegram/tgnet/TLRPC$TL_error;

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/FileLoadOperation;->processRequestResult(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;Lorg/telegram/tgnet/TLRPC$TL_error;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lorg/telegram/messenger/FileLoadOperation;)Lorg/telegram/messenger/FileLoadOperation$FileLoadOperationDelegate;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/FileLoadOperation;

    .prologue
    .line 25
    iget-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->delegate:Lorg/telegram/messenger/FileLoadOperation$FileLoadOperationDelegate;

    return-object v0
.end method

.method static synthetic access$1802(Lorg/telegram/messenger/FileLoadOperation;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/FileLoadOperation;
    .param p1, "x1"    # Z

    .prologue
    .line 25
    iput-boolean p1, p0, Lorg/telegram/messenger/FileLoadOperation;->isCdn:Z

    return p1
.end method

.method static synthetic access$1900(Lorg/telegram/messenger/FileLoadOperation;Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/FileLoadOperation;
    .param p1, "x1"    # Lorg/telegram/messenger/FileLoadOperation$RequestInfo;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lorg/telegram/messenger/FileLoadOperation;->clearOperaion(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)V

    return-void
.end method

.method static synthetic access$200(Lorg/telegram/messenger/FileLoadOperation;Z)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/FileLoadOperation;
    .param p1, "x1"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lorg/telegram/messenger/FileLoadOperation;->onFinishLoadingFile(Z)V

    return-void
.end method

.method static synthetic access$2002(Lorg/telegram/messenger/FileLoadOperation;I)I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/FileLoadOperation;
    .param p1, "x1"    # I

    .prologue
    .line 25
    iput p1, p0, Lorg/telegram/messenger/FileLoadOperation;->cdnDatacenterId:I

    return p1
.end method

.method static synthetic access$2102(Lorg/telegram/messenger/FileLoadOperation;[B)[B
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/FileLoadOperation;
    .param p1, "x1"    # [B

    .prologue
    .line 25
    iput-object p1, p0, Lorg/telegram/messenger/FileLoadOperation;->cdnIv:[B

    return-object p1
.end method

.method static synthetic access$2202(Lorg/telegram/messenger/FileLoadOperation;[B)[B
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/FileLoadOperation;
    .param p1, "x1"    # [B

    .prologue
    .line 25
    iput-object p1, p0, Lorg/telegram/messenger/FileLoadOperation;->cdnKey:[B

    return-object p1
.end method

.method static synthetic access$2300(Lorg/telegram/messenger/FileLoadOperation;)[B
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/FileLoadOperation;

    .prologue
    .line 25
    iget-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->cdnToken:[B

    return-object v0
.end method

.method static synthetic access$2302(Lorg/telegram/messenger/FileLoadOperation;[B)[B
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/FileLoadOperation;
    .param p1, "x1"    # [B

    .prologue
    .line 25
    iput-object p1, p0, Lorg/telegram/messenger/FileLoadOperation;->cdnToken:[B

    return-object p1
.end method

.method static synthetic access$2400(Lorg/telegram/messenger/FileLoadOperation;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/FileLoadOperation;

    .prologue
    .line 25
    iget-boolean v0, p0, Lorg/telegram/messenger/FileLoadOperation;->reuploadingCdn:Z

    return v0
.end method

.method static synthetic access$2402(Lorg/telegram/messenger/FileLoadOperation;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/FileLoadOperation;
    .param p1, "x1"    # Z

    .prologue
    .line 25
    iput-boolean p1, p0, Lorg/telegram/messenger/FileLoadOperation;->reuploadingCdn:Z

    return p1
.end method

.method static synthetic access$2500(Lorg/telegram/messenger/FileLoadOperation;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/FileLoadOperation;

    .prologue
    .line 25
    iget v0, p0, Lorg/telegram/messenger/FileLoadOperation;->datacenter_id:I

    return v0
.end method

.method static synthetic access$2600(Lorg/telegram/messenger/FileLoadOperation;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/FileLoadOperation;

    .prologue
    .line 25
    iget v0, p0, Lorg/telegram/messenger/FileLoadOperation;->currentType:I

    return v0
.end method

.method static synthetic access$300(Lorg/telegram/messenger/FileLoadOperation;ZI)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/FileLoadOperation;
    .param p1, "x1"    # Z
    .param p2, "x2"    # I

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/FileLoadOperation;->onFail(ZI)V

    return-void
.end method

.method static synthetic access$400(Lorg/telegram/messenger/FileLoadOperation;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/FileLoadOperation;

    .prologue
    .line 25
    invoke-direct {p0}, Lorg/telegram/messenger/FileLoadOperation;->startDownloadRequest()V

    return-void
.end method

.method static synthetic access$500(Lorg/telegram/messenger/FileLoadOperation;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/FileLoadOperation;

    .prologue
    .line 25
    iget v0, p0, Lorg/telegram/messenger/FileLoadOperation;->state:I

    return v0
.end method

.method static synthetic access$600(Lorg/telegram/messenger/FileLoadOperation;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/FileLoadOperation;

    .prologue
    .line 25
    iget-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->requestInfos:Ljava/util/ArrayList;

    return-object v0
.end method

.method private cleanup()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 460
    :try_start_0
    iget-object v3, p0, Lorg/telegram/messenger/FileLoadOperation;->fileOutputStream:Ljava/io/RandomAccessFile;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v3, :cond_0

    .line 462
    :try_start_1
    iget-object v3, p0, Lorg/telegram/messenger/FileLoadOperation;->fileOutputStream:Ljava/io/RandomAccessFile;

    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 466
    :goto_0
    :try_start_2
    iget-object v3, p0, Lorg/telegram/messenger/FileLoadOperation;->fileOutputStream:Ljava/io/RandomAccessFile;

    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V

    .line 467
    const/4 v3, 0x0

    iput-object v3, p0, Lorg/telegram/messenger/FileLoadOperation;->fileOutputStream:Ljava/io/RandomAccessFile;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 473
    :cond_0
    :goto_1
    :try_start_3
    iget-object v3, p0, Lorg/telegram/messenger/FileLoadOperation;->fileReadStream:Ljava/io/RandomAccessFile;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    if-eqz v3, :cond_1

    .line 475
    :try_start_4
    iget-object v3, p0, Lorg/telegram/messenger/FileLoadOperation;->fileReadStream:Ljava/io/RandomAccessFile;

    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 479
    :goto_2
    :try_start_5
    iget-object v3, p0, Lorg/telegram/messenger/FileLoadOperation;->fileReadStream:Ljava/io/RandomAccessFile;

    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V

    .line 480
    const/4 v3, 0x0

    iput-object v3, p0, Lorg/telegram/messenger/FileLoadOperation;->fileReadStream:Ljava/io/RandomAccessFile;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 487
    :cond_1
    :goto_3
    :try_start_6
    iget-object v3, p0, Lorg/telegram/messenger/FileLoadOperation;->fiv:Ljava/io/RandomAccessFile;

    if-eqz v3, :cond_2

    .line 488
    iget-object v3, p0, Lorg/telegram/messenger/FileLoadOperation;->fiv:Ljava/io/RandomAccessFile;

    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V

    .line 489
    const/4 v3, 0x0

    iput-object v3, p0, Lorg/telegram/messenger/FileLoadOperation;->fiv:Ljava/io/RandomAccessFile;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .line 494
    :cond_2
    :goto_4
    iget-object v3, p0, Lorg/telegram/messenger/FileLoadOperation;->delayedRequestInfos:Ljava/util/ArrayList;

    if-eqz v3, :cond_7

    .line 495
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_5
    iget-object v3, p0, Lorg/telegram/messenger/FileLoadOperation;->delayedRequestInfos:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_6

    .line 496
    iget-object v3, p0, Lorg/telegram/messenger/FileLoadOperation;->delayedRequestInfos:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;

    .line 497
    .local v2, "requestInfo":Lorg/telegram/messenger/FileLoadOperation$RequestInfo;
    invoke-static {v2}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$800(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_file;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 498
    invoke-static {v2}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$800(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_file;

    move-result-object v3

    iput-boolean v4, v3, Lorg/telegram/tgnet/TLRPC$TL_upload_file;->disableFree:Z

    .line 499
    invoke-static {v2}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$800(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_file;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/tgnet/TLRPC$TL_upload_file;->freeResources()V

    .line 495
    :cond_3
    :goto_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 463
    .end local v0    # "a":I
    .end local v2    # "requestInfo":Lorg/telegram/messenger/FileLoadOperation$RequestInfo;
    :catch_0
    move-exception v1

    .line 464
    .local v1, "e":Ljava/lang/Exception;
    :try_start_7
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_0

    .line 469
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 470
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 476
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v1

    .line 477
    .restart local v1    # "e":Ljava/lang/Exception;
    :try_start_8
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_2

    .line 482
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v1

    .line 483
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_3

    .line 491
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v1

    .line 492
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto :goto_4

    .line 500
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "a":I
    .restart local v2    # "requestInfo":Lorg/telegram/messenger/FileLoadOperation$RequestInfo;
    :cond_4
    invoke-static {v2}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$900(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_webFile;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 501
    invoke-static {v2}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$900(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_webFile;

    move-result-object v3

    iput-boolean v4, v3, Lorg/telegram/tgnet/TLRPC$TL_upload_webFile;->disableFree:Z

    .line 502
    invoke-static {v2}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$900(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_webFile;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/tgnet/TLRPC$TL_upload_webFile;->freeResources()V

    goto :goto_6

    .line 503
    :cond_5
    invoke-static {v2}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$1000(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_cdnFile;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 504
    invoke-static {v2}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$1000(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_cdnFile;

    move-result-object v3

    iput-boolean v4, v3, Lorg/telegram/tgnet/TLRPC$TL_upload_cdnFile;->disableFree:Z

    .line 505
    invoke-static {v2}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$1000(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_cdnFile;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/tgnet/TLRPC$TL_upload_cdnFile;->freeResources()V

    goto :goto_6

    .line 508
    .end local v2    # "requestInfo":Lorg/telegram/messenger/FileLoadOperation$RequestInfo;
    :cond_6
    iget-object v3, p0, Lorg/telegram/messenger/FileLoadOperation;->delayedRequestInfos:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 510
    .end local v0    # "a":I
    :cond_7
    return-void
.end method

.method private clearOperaion(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)V
    .locals 7
    .param p1, "currentInfo"    # Lorg/telegram/messenger/FileLoadOperation$RequestInfo;

    .prologue
    const/4 v6, 0x0

    .line 818
    const v2, 0x7fffffff

    .line 819
    .local v2, "minOffset":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    iget-object v3, p0, Lorg/telegram/messenger/FileLoadOperation;->requestInfos:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 820
    iget-object v3, p0, Lorg/telegram/messenger/FileLoadOperation;->requestInfos:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;

    .line 821
    .local v1, "info":Lorg/telegram/messenger/FileLoadOperation$RequestInfo;
    invoke-static {v1}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$1400(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)I

    move-result v3

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 822
    if-ne p1, v1, :cond_1

    .line 819
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 825
    :cond_1
    invoke-static {v1}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$700(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 826
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v3

    invoke-static {v1}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$700(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)I

    move-result v4

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lorg/telegram/tgnet/ConnectionsManager;->cancelRequest(IZ)V

    goto :goto_1

    .line 829
    .end local v1    # "info":Lorg/telegram/messenger/FileLoadOperation$RequestInfo;
    :cond_2
    iget-object v3, p0, Lorg/telegram/messenger/FileLoadOperation;->requestInfos:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 830
    const/4 v0, 0x0

    :goto_2
    iget-object v3, p0, Lorg/telegram/messenger/FileLoadOperation;->delayedRequestInfos:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_6

    .line 831
    iget-object v3, p0, Lorg/telegram/messenger/FileLoadOperation;->delayedRequestInfos:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;

    .line 832
    .restart local v1    # "info":Lorg/telegram/messenger/FileLoadOperation$RequestInfo;
    invoke-static {v1}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$800(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_file;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 833
    invoke-static {v1}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$800(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_file;

    move-result-object v3

    iput-boolean v6, v3, Lorg/telegram/tgnet/TLRPC$TL_upload_file;->disableFree:Z

    .line 834
    invoke-static {v1}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$800(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_file;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/tgnet/TLRPC$TL_upload_file;->freeResources()V

    .line 842
    :cond_3
    :goto_3
    invoke-static {v1}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$1400(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)I

    move-result v3

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 830
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 835
    :cond_4
    invoke-static {v1}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$900(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_webFile;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 836
    invoke-static {v1}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$900(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_webFile;

    move-result-object v3

    iput-boolean v6, v3, Lorg/telegram/tgnet/TLRPC$TL_upload_webFile;->disableFree:Z

    .line 837
    invoke-static {v1}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$900(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_webFile;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/tgnet/TLRPC$TL_upload_webFile;->freeResources()V

    goto :goto_3

    .line 838
    :cond_5
    invoke-static {v1}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$1000(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_cdnFile;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 839
    invoke-static {v1}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$1000(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_cdnFile;

    move-result-object v3

    iput-boolean v6, v3, Lorg/telegram/tgnet/TLRPC$TL_upload_cdnFile;->disableFree:Z

    .line 840
    invoke-static {v1}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$1000(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_cdnFile;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/tgnet/TLRPC$TL_upload_cdnFile;->freeResources()V

    goto :goto_3

    .line 844
    .end local v1    # "info":Lorg/telegram/messenger/FileLoadOperation$RequestInfo;
    :cond_6
    iget-object v3, p0, Lorg/telegram/messenger/FileLoadOperation;->delayedRequestInfos:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 845
    iput v6, p0, Lorg/telegram/messenger/FileLoadOperation;->requestsCount:I

    .line 846
    iput v2, p0, Lorg/telegram/messenger/FileLoadOperation;->nextDownloadOffset:I

    .line 847
    return-void
.end method

.method private delayRequestInfo(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)V
    .locals 2
    .param p1, "requestInfo"    # Lorg/telegram/messenger/FileLoadOperation$RequestInfo;

    .prologue
    const/4 v1, 0x1

    .line 564
    iget-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->delayedRequestInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 565
    invoke-static {p1}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$800(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_file;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 566
    invoke-static {p1}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$800(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_file;

    move-result-object v0

    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_upload_file;->disableFree:Z

    .line 572
    :cond_0
    :goto_0
    return-void

    .line 567
    :cond_1
    invoke-static {p1}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$900(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_webFile;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 568
    invoke-static {p1}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$900(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_webFile;

    move-result-object v0

    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_upload_webFile;->disableFree:Z

    goto :goto_0

    .line 569
    :cond_2
    invoke-static {p1}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$1000(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_cdnFile;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 570
    invoke-static {p1}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$1000(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_cdnFile;

    move-result-object v0

    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_upload_cdnFile;->disableFree:Z

    goto :goto_0
.end method

.method private onFail(ZI)V
    .locals 2
    .param p1, "thread"    # Z
    .param p2, "reason"    # I

    .prologue
    .line 803
    invoke-direct {p0}, Lorg/telegram/messenger/FileLoadOperation;->cleanup()V

    .line 804
    const/4 v0, 0x2

    iput v0, p0, Lorg/telegram/messenger/FileLoadOperation;->state:I

    .line 805
    if-eqz p1, :cond_0

    .line 806
    sget-object v0, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/FileLoadOperation$5;

    invoke-direct {v1, p0, p2}, Lorg/telegram/messenger/FileLoadOperation$5;-><init>(Lorg/telegram/messenger/FileLoadOperation;I)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 815
    :goto_0
    return-void

    .line 813
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->delegate:Lorg/telegram/messenger/FileLoadOperation$FileLoadOperationDelegate;

    invoke-interface {v0, p0, p2}, Lorg/telegram/messenger/FileLoadOperation$FileLoadOperationDelegate;->didFailedLoadingFile(Lorg/telegram/messenger/FileLoadOperation;I)V

    goto :goto_0
.end method

.method private onFinishLoadingFile(Z)V
    .locals 6
    .param p1, "increment"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v3, 0x3

    const/4 v4, 0x1

    .line 513
    iget v1, p0, Lorg/telegram/messenger/FileLoadOperation;->state:I

    if-eq v1, v4, :cond_1

    .line 561
    :cond_0
    :goto_0
    return-void

    .line 516
    :cond_1
    iput v3, p0, Lorg/telegram/messenger/FileLoadOperation;->state:I

    .line 517
    invoke-direct {p0}, Lorg/telegram/messenger/FileLoadOperation;->cleanup()V

    .line 518
    iget-object v1, p0, Lorg/telegram/messenger/FileLoadOperation;->cacheIvTemp:Ljava/io/File;

    if-eqz v1, :cond_2

    .line 519
    iget-object v1, p0, Lorg/telegram/messenger/FileLoadOperation;->cacheIvTemp:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 520
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/telegram/messenger/FileLoadOperation;->cacheIvTemp:Ljava/io/File;

    .line 522
    :cond_2
    iget-object v1, p0, Lorg/telegram/messenger/FileLoadOperation;->cacheFileTemp:Ljava/io/File;

    if-eqz v1, :cond_5

    .line 523
    iget-object v1, p0, Lorg/telegram/messenger/FileLoadOperation;->cacheFileTemp:Ljava/io/File;

    iget-object v2, p0, Lorg/telegram/messenger/FileLoadOperation;->cacheFileFinal:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    .line 524
    .local v0, "renameResult":Z
    if-nez v0, :cond_5

    .line 525
    sget-boolean v1, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-eqz v1, :cond_3

    .line 526
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unable to rename temp = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/messenger/FileLoadOperation;->cacheFileTemp:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " to final = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/messenger/FileLoadOperation;->cacheFileFinal:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " retry = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/telegram/messenger/FileLoadOperation;->renameRetryCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 528
    :cond_3
    iget v1, p0, Lorg/telegram/messenger/FileLoadOperation;->renameRetryCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/telegram/messenger/FileLoadOperation;->renameRetryCount:I

    .line 529
    iget v1, p0, Lorg/telegram/messenger/FileLoadOperation;->renameRetryCount:I

    if-ge v1, v3, :cond_4

    .line 530
    iput v4, p0, Lorg/telegram/messenger/FileLoadOperation;->state:I

    .line 531
    sget-object v1, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v2, Lorg/telegram/messenger/FileLoadOperation$3;

    invoke-direct {v2, p0, p1}, Lorg/telegram/messenger/FileLoadOperation$3;-><init>(Lorg/telegram/messenger/FileLoadOperation;Z)V

    const-wide/16 v4, 0xc8

    invoke-virtual {v1, v2, v4, v5}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;J)V

    goto :goto_0

    .line 543
    :cond_4
    iget-object v1, p0, Lorg/telegram/messenger/FileLoadOperation;->cacheFileTemp:Ljava/io/File;

    iput-object v1, p0, Lorg/telegram/messenger/FileLoadOperation;->cacheFileFinal:Ljava/io/File;

    .line 546
    .end local v0    # "renameResult":Z
    :cond_5
    sget-boolean v1, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-eqz v1, :cond_6

    .line 547
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "finished downloading file to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/messenger/FileLoadOperation;->cacheFileFinal:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 549
    :cond_6
    iget-object v1, p0, Lorg/telegram/messenger/FileLoadOperation;->delegate:Lorg/telegram/messenger/FileLoadOperation$FileLoadOperationDelegate;

    iget-object v2, p0, Lorg/telegram/messenger/FileLoadOperation;->cacheFileFinal:Ljava/io/File;

    invoke-interface {v1, p0, v2}, Lorg/telegram/messenger/FileLoadOperation$FileLoadOperationDelegate;->didFinishLoadingFile(Lorg/telegram/messenger/FileLoadOperation;Ljava/io/File;)V

    .line 550
    if-eqz p1, :cond_0

    .line 551
    iget v1, p0, Lorg/telegram/messenger/FileLoadOperation;->currentType:I

    const/high16 v2, 0x3000000

    if-ne v1, v2, :cond_7

    .line 552
    invoke-static {}, Lorg/telegram/messenger/StatsController;->getInstance()Lorg/telegram/messenger/StatsController;

    move-result-object v1

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentNetworkType()I

    move-result v2

    invoke-virtual {v1, v2, v3, v4}, Lorg/telegram/messenger/StatsController;->incrementReceivedItemsCount(III)V

    goto/16 :goto_0

    .line 553
    :cond_7
    iget v1, p0, Lorg/telegram/messenger/FileLoadOperation;->currentType:I

    const/high16 v2, 0x2000000

    if-ne v1, v2, :cond_8

    .line 554
    invoke-static {}, Lorg/telegram/messenger/StatsController;->getInstance()Lorg/telegram/messenger/StatsController;

    move-result-object v1

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentNetworkType()I

    move-result v2

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3, v4}, Lorg/telegram/messenger/StatsController;->incrementReceivedItemsCount(III)V

    goto/16 :goto_0

    .line 555
    :cond_8
    iget v1, p0, Lorg/telegram/messenger/FileLoadOperation;->currentType:I

    const/high16 v2, 0x1000000

    if-ne v1, v2, :cond_9

    .line 556
    invoke-static {}, Lorg/telegram/messenger/StatsController;->getInstance()Lorg/telegram/messenger/StatsController;

    move-result-object v1

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentNetworkType()I

    move-result v2

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3, v4}, Lorg/telegram/messenger/StatsController;->incrementReceivedItemsCount(III)V

    goto/16 :goto_0

    .line 557
    :cond_9
    iget v1, p0, Lorg/telegram/messenger/FileLoadOperation;->currentType:I

    const/high16 v2, 0x4000000

    if-ne v1, v2, :cond_0

    .line 558
    invoke-static {}, Lorg/telegram/messenger/StatsController;->getInstance()Lorg/telegram/messenger/StatsController;

    move-result-object v1

    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentNetworkType()I

    move-result v2

    const/4 v3, 0x5

    invoke-virtual {v1, v2, v3, v4}, Lorg/telegram/messenger/StatsController;->incrementReceivedItemsCount(III)V

    goto/16 :goto_0
.end method

.method private processRequestResult(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;Lorg/telegram/tgnet/TLRPC$TL_error;)Z
    .locals 25
    .param p1, "requestInfo"    # Lorg/telegram/messenger/FileLoadOperation$RequestInfo;
    .param p2, "error"    # Lorg/telegram/tgnet/TLRPC$TL_error;

    .prologue
    .line 624
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/FileLoadOperation;->state:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    .line 625
    const/4 v2, 0x0

    .line 799
    :goto_0
    return v2

    .line 627
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/FileLoadOperation;->requestInfos:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 628
    if-nez p2, :cond_1f

    .line 630
    :try_start_0
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/FileLoadOperation;->downloadedBytes:I

    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$1400(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)I

    move-result v3

    if-eq v2, v3, :cond_1

    .line 631
    invoke-direct/range {p0 .. p1}, Lorg/telegram/messenger/FileLoadOperation;->delayRequestInfo(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)V

    .line 632
    const/4 v2, 0x0

    goto :goto_0

    .line 635
    :cond_1
    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$800(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_file;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 636
    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$800(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_file;

    move-result-object v2

    iget-object v10, v2, Lorg/telegram/tgnet/TLRPC$TL_upload_file;->bytes:Lorg/telegram/tgnet/NativeByteBuffer;

    .line 644
    .local v10, "bytes":Lorg/telegram/tgnet/NativeByteBuffer;
    :goto_1
    if-eqz v10, :cond_2

    invoke-virtual {v10}, Lorg/telegram/tgnet/NativeByteBuffer;->limit()I

    move-result v2

    if-nez v2, :cond_6

    .line 645
    :cond_2
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lorg/telegram/messenger/FileLoadOperation;->onFinishLoadingFile(Z)V

    .line 646
    const/4 v2, 0x0

    goto :goto_0

    .line 637
    .end local v10    # "bytes":Lorg/telegram/tgnet/NativeByteBuffer;
    :cond_3
    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$900(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_webFile;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 638
    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$900(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_webFile;

    move-result-object v2

    iget-object v10, v2, Lorg/telegram/tgnet/TLRPC$TL_upload_webFile;->bytes:Lorg/telegram/tgnet/NativeByteBuffer;

    .restart local v10    # "bytes":Lorg/telegram/tgnet/NativeByteBuffer;
    goto :goto_1

    .line 639
    .end local v10    # "bytes":Lorg/telegram/tgnet/NativeByteBuffer;
    :cond_4
    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$1000(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_cdnFile;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 640
    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$1000(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_cdnFile;

    move-result-object v2

    iget-object v10, v2, Lorg/telegram/tgnet/TLRPC$TL_upload_cdnFile;->bytes:Lorg/telegram/tgnet/NativeByteBuffer;

    .restart local v10    # "bytes":Lorg/telegram/tgnet/NativeByteBuffer;
    goto :goto_1

    .line 642
    .end local v10    # "bytes":Lorg/telegram/tgnet/NativeByteBuffer;
    :cond_5
    const/4 v10, 0x0

    .restart local v10    # "bytes":Lorg/telegram/tgnet/NativeByteBuffer;
    goto :goto_1

    .line 648
    :cond_6
    invoke-virtual {v10}, Lorg/telegram/tgnet/NativeByteBuffer;->limit()I

    move-result v14

    .line 649
    .local v14, "currentBytesSize":I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/messenger/FileLoadOperation;->isCdn:Z

    if-eqz v2, :cond_9

    .line 650
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/FileLoadOperation;->downloadedBytes:I

    add-int/2addr v2, v14

    const/high16 v3, 0x20000

    div-int v11, v2, v3

    .line 651
    .local v11, "cdnCheckPart":I
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/FileLoadOperation;->lastCheckedCdnPart:I

    if-eq v2, v11, :cond_7

    const/4 v2, 0x1

    :goto_2
    sub-int v2, v11, v2

    const/high16 v3, 0x20000

    mul-int v18, v2, v3

    .line 652
    .local v18, "fileOffset":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/FileLoadOperation;->cdnHashes:Ljava/util/HashMap;

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/FileLoadOperation;->cdnHashes:Ljava/util/HashMap;

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_cdnFileHash;

    move-object/from16 v20, v2

    .line 653
    .local v20, "hash":Lorg/telegram/tgnet/TLRPC$TL_cdnFileHash;
    :goto_3
    if-nez v20, :cond_9

    .line 654
    invoke-direct/range {p0 .. p1}, Lorg/telegram/messenger/FileLoadOperation;->delayRequestInfo(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)V

    .line 655
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lorg/telegram/messenger/FileLoadOperation;->requestFileOffsets(I)V

    .line 656
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 651
    .end local v18    # "fileOffset":I
    .end local v20    # "hash":Lorg/telegram/tgnet/TLRPC$TL_cdnFileHash;
    :cond_7
    const/4 v2, 0x0

    goto :goto_2

    .line 652
    .restart local v18    # "fileOffset":I
    :cond_8
    const/16 v20, 0x0

    goto :goto_3

    .line 660
    .end local v11    # "cdnCheckPart":I
    .end local v18    # "fileOffset":I
    :cond_9
    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$1000(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_cdnFile;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 661
    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$1400(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)I

    move-result v2

    div-int/lit8 v21, v2, 0x10

    .line 662
    .local v21, "offset":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/FileLoadOperation;->cdnIv:[B

    const/16 v3, 0xf

    move/from16 v0, v21

    and-int/lit16 v4, v0, 0xff

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 663
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/FileLoadOperation;->cdnIv:[B

    const/16 v3, 0xe

    shr-int/lit8 v4, v21, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 664
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/FileLoadOperation;->cdnIv:[B

    const/16 v3, 0xd

    shr-int/lit8 v4, v21, 0x10

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 665
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/FileLoadOperation;->cdnIv:[B

    const/16 v3, 0xc

    shr-int/lit8 v4, v21, 0x18

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 666
    iget-object v2, v10, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/FileLoadOperation;->cdnKey:[B

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/FileLoadOperation;->cdnIv:[B

    const/4 v5, 0x0

    invoke-virtual {v10}, Lorg/telegram/tgnet/NativeByteBuffer;->limit()I

    move-result v6

    invoke-static {v2, v3, v4, v5, v6}, Lorg/telegram/messenger/Utilities;->aesCtrDecryption(Ljava/nio/ByteBuffer;[B[BII)V

    .line 669
    .end local v21    # "offset":I
    :cond_a
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/FileLoadOperation;->downloadedBytes:I

    add-int/2addr v2, v14

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/messenger/FileLoadOperation;->downloadedBytes:I

    .line 670
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/FileLoadOperation;->currentDownloadChunkSize:I

    if-ne v14, v2, :cond_c

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/FileLoadOperation;->totalBytesCount:I

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/messenger/FileLoadOperation;->downloadedBytes:I

    if-eq v2, v3, :cond_b

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/FileLoadOperation;->downloadedBytes:I

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/messenger/FileLoadOperation;->currentDownloadChunkSize:I

    rem-int/2addr v2, v3

    if-eqz v2, :cond_12

    :cond_b
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/FileLoadOperation;->totalBytesCount:I

    if-lez v2, :cond_c

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/FileLoadOperation;->totalBytesCount:I

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/messenger/FileLoadOperation;->downloadedBytes:I

    if-gt v2, v3, :cond_12

    :cond_c
    const/16 v19, 0x1

    .line 672
    .local v19, "finishedDownloading":Z
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/FileLoadOperation;->key:[B

    if-eqz v2, :cond_d

    .line 673
    iget-object v2, v10, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/FileLoadOperation;->key:[B

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/FileLoadOperation;->iv:[B

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual {v10}, Lorg/telegram/tgnet/NativeByteBuffer;->limit()I

    move-result v8

    invoke-static/range {v2 .. v8}, Lorg/telegram/messenger/Utilities;->aesIgeEncryption(Ljava/nio/ByteBuffer;[B[BZZII)V

    .line 674
    if-eqz v19, :cond_d

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/FileLoadOperation;->bytesCountPadding:I

    if-eqz v2, :cond_d

    .line 675
    invoke-virtual {v10}, Lorg/telegram/tgnet/NativeByteBuffer;->limit()I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/messenger/FileLoadOperation;->bytesCountPadding:I

    sub-int/2addr v2, v3

    invoke-virtual {v10, v2}, Lorg/telegram/tgnet/NativeByteBuffer;->limit(I)V

    .line 678
    :cond_d
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/messenger/FileLoadOperation;->encryptFile:Z

    if-eqz v2, :cond_e

    .line 679
    invoke-static/range {p1 .. p1}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$1400(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)I

    move-result v2

    div-int/lit8 v21, v2, 0x10

    .line 680
    .restart local v21    # "offset":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/FileLoadOperation;->encryptIv:[B

    const/16 v3, 0xf

    move/from16 v0, v21

    and-int/lit16 v4, v0, 0xff

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 681
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/FileLoadOperation;->encryptIv:[B

    const/16 v3, 0xe

    shr-int/lit8 v4, v21, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 682
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/FileLoadOperation;->encryptIv:[B

    const/16 v3, 0xd

    shr-int/lit8 v4, v21, 0x10

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 683
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/FileLoadOperation;->encryptIv:[B

    const/16 v3, 0xc

    shr-int/lit8 v4, v21, 0x18

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 684
    iget-object v2, v10, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/FileLoadOperation;->encryptKey:[B

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/FileLoadOperation;->encryptIv:[B

    const/4 v5, 0x0

    invoke-virtual {v10}, Lorg/telegram/tgnet/NativeByteBuffer;->limit()I

    move-result v6

    invoke-static {v2, v3, v4, v5, v6}, Lorg/telegram/messenger/Utilities;->aesCtrDecryption(Ljava/nio/ByteBuffer;[B[BII)V

    .line 686
    .end local v21    # "offset":I
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/FileLoadOperation;->fileOutputStream:Ljava/io/RandomAccessFile;

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v12

    .line 687
    .local v12, "channel":Ljava/nio/channels/FileChannel;
    iget-object v2, v10, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v12, v2}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 688
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/messenger/FileLoadOperation;->isCdn:Z

    if-eqz v2, :cond_17

    .line 689
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/FileLoadOperation;->downloadedBytes:I

    const/high16 v3, 0x20000

    div-int v11, v2, v3

    .line 690
    .restart local v11    # "cdnCheckPart":I
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/FileLoadOperation;->lastCheckedCdnPart:I

    if-ne v11, v2, :cond_f

    if-eqz v19, :cond_17

    .line 691
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/FileLoadOperation;->fileOutputStream:Ljava/io/RandomAccessFile;

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/FileDescriptor;->sync()V

    .line 692
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/FileLoadOperation;->lastCheckedCdnPart:I

    if-eq v2, v11, :cond_13

    const/4 v2, 0x1

    :goto_5
    sub-int v2, v11, v2

    const/high16 v3, 0x20000

    mul-int v18, v2, v3

    .line 693
    .restart local v18    # "fileOffset":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/FileLoadOperation;->cdnHashes:Ljava/util/HashMap;

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lorg/telegram/tgnet/TLRPC$TL_cdnFileHash;

    .line 694
    .restart local v20    # "hash":Lorg/telegram/tgnet/TLRPC$TL_cdnFileHash;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/FileLoadOperation;->fileReadStream:Ljava/io/RandomAccessFile;

    if-nez v2, :cond_10

    .line 695
    const/high16 v2, 0x20000

    new-array v2, v2, [B

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/messenger/FileLoadOperation;->cdnCheckBytes:[B

    .line 696
    new-instance v2, Ljava/io/RandomAccessFile;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/FileLoadOperation;->cacheFileTemp:Ljava/io/File;

    const-string/jumbo v4, "r"

    invoke-direct {v2, v3, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/messenger/FileLoadOperation;->fileReadStream:Ljava/io/RandomAccessFile;

    .line 697
    if-eqz v18, :cond_10

    .line 698
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/FileLoadOperation;->fileReadStream:Ljava/io/RandomAccessFile;

    move/from16 v0, v18

    int-to-long v4, v0

    invoke-virtual {v2, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 702
    :cond_10
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/FileLoadOperation;->lastCheckedCdnPart:I

    if-eq v2, v11, :cond_14

    .line 703
    const/high16 v13, 0x20000

    .line 707
    .local v13, "count":I
    :goto_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/FileLoadOperation;->fileReadStream:Ljava/io/RandomAccessFile;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/FileLoadOperation;->cdnCheckBytes:[B

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v13}, Ljava/io/RandomAccessFile;->readFully([BII)V

    .line 708
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/FileLoadOperation;->cdnCheckBytes:[B

    const/4 v3, 0x0

    invoke-static {v2, v3, v13}, Lorg/telegram/messenger/Utilities;->computeSHA256([BII)[B

    move-result-object v23

    .line 709
    .local v23, "sha256":[B
    move-object/from16 v0, v20

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_cdnFileHash;->hash:[B

    move-object/from16 v0, v23

    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_16

    .line 710
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    if-eqz v2, :cond_15

    .line 711
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "invalid cdn hash "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget-wide v4, v3, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->id:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " local_id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->local_id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " access_hash = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget-wide v4, v3, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->access_hash:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " volume_id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget-wide v4, v3, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->volume_id:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " secret = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget-wide v4, v3, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->secret:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 715
    :cond_11
    :goto_7
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lorg/telegram/messenger/FileLoadOperation;->onFail(ZI)V

    .line 716
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/FileLoadOperation;->cacheFileTemp:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 717
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 670
    .end local v11    # "cdnCheckPart":I
    .end local v12    # "channel":Ljava/nio/channels/FileChannel;
    .end local v13    # "count":I
    .end local v18    # "fileOffset":I
    .end local v19    # "finishedDownloading":Z
    .end local v20    # "hash":Lorg/telegram/tgnet/TLRPC$TL_cdnFileHash;
    .end local v23    # "sha256":[B
    :cond_12
    const/16 v19, 0x0

    goto/16 :goto_4

    .line 692
    .restart local v11    # "cdnCheckPart":I
    .restart local v12    # "channel":Ljava/nio/channels/FileChannel;
    .restart local v19    # "finishedDownloading":Z
    :cond_13
    const/4 v2, 0x0

    goto/16 :goto_5

    .line 705
    .restart local v18    # "fileOffset":I
    .restart local v20    # "hash":Lorg/telegram/tgnet/TLRPC$TL_cdnFileHash;
    :cond_14
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/FileLoadOperation;->downloadedBytes:I

    const/high16 v3, 0x20000

    mul-int/2addr v3, v11

    sub-int v13, v2, v3

    .restart local v13    # "count":I
    goto/16 :goto_6

    .line 712
    .restart local v23    # "sha256":[B
    :cond_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/FileLoadOperation;->webLocation:Lorg/telegram/tgnet/TLRPC$TL_inputWebFileLocation;

    if-eqz v2, :cond_11

    .line 713
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "invalid cdn hash  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/FileLoadOperation;->webLocation:Lorg/telegram/tgnet/TLRPC$TL_inputWebFileLocation;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/FileLoadOperation;->webLocation:Lorg/telegram/tgnet/TLRPC$TL_inputWebFileLocation;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$TL_inputWebFileLocation;->url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " access_hash = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/FileLoadOperation;->webLocation:Lorg/telegram/tgnet/TLRPC$TL_inputWebFileLocation;

    iget-wide v4, v3, Lorg/telegram/tgnet/TLRPC$TL_inputWebFileLocation;->access_hash:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_7

    .line 755
    .end local v10    # "bytes":Lorg/telegram/tgnet/NativeByteBuffer;
    .end local v11    # "cdnCheckPart":I
    .end local v12    # "channel":Ljava/nio/channels/FileChannel;
    .end local v13    # "count":I
    .end local v14    # "currentBytesSize":I
    .end local v18    # "fileOffset":I
    .end local v19    # "finishedDownloading":Z
    .end local v20    # "hash":Lorg/telegram/tgnet/TLRPC$TL_cdnFileHash;
    .end local v23    # "sha256":[B
    :catch_0
    move-exception v16

    .line 756
    .local v16, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lorg/telegram/messenger/FileLoadOperation;->onFail(ZI)V

    .line 757
    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 799
    .end local v16    # "e":Ljava/lang/Exception;
    :goto_8
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 719
    .restart local v10    # "bytes":Lorg/telegram/tgnet/NativeByteBuffer;
    .restart local v11    # "cdnCheckPart":I
    .restart local v12    # "channel":Ljava/nio/channels/FileChannel;
    .restart local v13    # "count":I
    .restart local v14    # "currentBytesSize":I
    .restart local v18    # "fileOffset":I
    .restart local v19    # "finishedDownloading":Z
    .restart local v20    # "hash":Lorg/telegram/tgnet/TLRPC$TL_cdnFileHash;
    .restart local v23    # "sha256":[B
    :cond_16
    :try_start_1
    move-object/from16 v0, p0

    iput v11, v0, Lorg/telegram/messenger/FileLoadOperation;->lastCheckedCdnPart:I

    .line 722
    .end local v11    # "cdnCheckPart":I
    .end local v13    # "count":I
    .end local v18    # "fileOffset":I
    .end local v20    # "hash":Lorg/telegram/tgnet/TLRPC$TL_cdnFileHash;
    .end local v23    # "sha256":[B
    :cond_17
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/FileLoadOperation;->fiv:Ljava/io/RandomAccessFile;

    if-eqz v2, :cond_18

    .line 723
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/FileLoadOperation;->fiv:Ljava/io/RandomAccessFile;

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 724
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/FileLoadOperation;->fiv:Ljava/io/RandomAccessFile;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/FileLoadOperation;->iv:[B

    invoke-virtual {v2, v3}, Ljava/io/RandomAccessFile;->write([B)V

    .line 726
    :cond_18
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/FileLoadOperation;->totalBytesCount:I

    if-lez v2, :cond_19

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/FileLoadOperation;->state:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_19

    .line 727
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/FileLoadOperation;->delegate:Lorg/telegram/messenger/FileLoadOperation$FileLoadOperationDelegate;

    const/high16 v3, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/FileLoadOperation;->downloadedBytes:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lorg/telegram/messenger/FileLoadOperation;->totalBytesCount:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    move-object/from16 v0, p0

    invoke-interface {v2, v0, v3}, Lorg/telegram/messenger/FileLoadOperation$FileLoadOperationDelegate;->didChangedLoadProgress(Lorg/telegram/messenger/FileLoadOperation;F)V

    .line 730
    :cond_19
    const/4 v9, 0x0

    .local v9, "a":I
    :goto_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/FileLoadOperation;->delayedRequestInfos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v9, v2, :cond_1a

    .line 731
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/FileLoadOperation;->delayedRequestInfos:Ljava/util/ArrayList;

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;

    .line 732
    .local v15, "delayedRequestInfo":Lorg/telegram/messenger/FileLoadOperation$RequestInfo;
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/FileLoadOperation;->downloadedBytes:I

    invoke-static {v15}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$1400(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)I

    move-result v3

    if-ne v2, v3, :cond_1d

    .line 733
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/FileLoadOperation;->delayedRequestInfos:Ljava/util/ArrayList;

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 734
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v2}, Lorg/telegram/messenger/FileLoadOperation;->processRequestResult(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;Lorg/telegram/tgnet/TLRPC$TL_error;)Z

    move-result v2

    if-nez v2, :cond_1a

    .line 735
    invoke-static {v15}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$800(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_file;

    move-result-object v2

    if-eqz v2, :cond_1b

    .line 736
    invoke-static {v15}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$800(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_file;

    move-result-object v2

    const/4 v3, 0x0

    iput-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$TL_upload_file;->disableFree:Z

    .line 737
    invoke-static {v15}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$800(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_file;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/tgnet/TLRPC$TL_upload_file;->freeResources()V

    .line 750
    .end local v15    # "delayedRequestInfo":Lorg/telegram/messenger/FileLoadOperation$RequestInfo;
    :cond_1a
    :goto_a
    if-eqz v19, :cond_1e

    .line 751
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lorg/telegram/messenger/FileLoadOperation;->onFinishLoadingFile(Z)V

    goto/16 :goto_8

    .line 738
    .restart local v15    # "delayedRequestInfo":Lorg/telegram/messenger/FileLoadOperation$RequestInfo;
    :cond_1b
    invoke-static {v15}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$900(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_webFile;

    move-result-object v2

    if-eqz v2, :cond_1c

    .line 739
    invoke-static {v15}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$900(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_webFile;

    move-result-object v2

    const/4 v3, 0x0

    iput-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$TL_upload_webFile;->disableFree:Z

    .line 740
    invoke-static {v15}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$900(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_webFile;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/tgnet/TLRPC$TL_upload_webFile;->freeResources()V

    goto :goto_a

    .line 741
    :cond_1c
    invoke-static {v15}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$1000(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_cdnFile;

    move-result-object v2

    if-eqz v2, :cond_1a

    .line 742
    invoke-static {v15}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$1000(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_cdnFile;

    move-result-object v2

    const/4 v3, 0x0

    iput-boolean v3, v2, Lorg/telegram/tgnet/TLRPC$TL_upload_cdnFile;->disableFree:Z

    .line 743
    invoke-static {v15}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$1000(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;)Lorg/telegram/tgnet/TLRPC$TL_upload_cdnFile;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/tgnet/TLRPC$TL_upload_cdnFile;->freeResources()V

    goto :goto_a

    .line 730
    :cond_1d
    add-int/lit8 v9, v9, 0x1

    goto :goto_9

    .line 753
    .end local v15    # "delayedRequestInfo":Lorg/telegram/messenger/FileLoadOperation$RequestInfo;
    :cond_1e
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/FileLoadOperation;->startDownloadRequest()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_8

    .line 760
    .end local v9    # "a":I
    .end local v10    # "bytes":Lorg/telegram/tgnet/NativeByteBuffer;
    .end local v12    # "channel":Ljava/nio/channels/FileChannel;
    .end local v14    # "currentBytesSize":I
    .end local v19    # "finishedDownloading":Z
    :cond_1f
    move-object/from16 v0, p2

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string/jumbo v3, "FILE_MIGRATE_"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 761
    move-object/from16 v0, p2

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string/jumbo v3, "FILE_MIGRATE_"

    const-string/jumbo v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v17

    .line 762
    .local v17, "errorMsg":Ljava/lang/String;
    new-instance v22, Ljava/util/Scanner;

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/util/Scanner;-><init>(Ljava/lang/String;)V

    .line 763
    .local v22, "scanner":Ljava/util/Scanner;
    const-string/jumbo v2, ""

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/util/Scanner;->useDelimiter(Ljava/lang/String;)Ljava/util/Scanner;

    .line 766
    :try_start_2
    invoke-virtual/range {v22 .. v22}, Ljava/util/Scanner;->nextInt()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v24

    .line 770
    .local v24, "val":Ljava/lang/Integer;
    :goto_b
    if-nez v24, :cond_20

    .line 771
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lorg/telegram/messenger/FileLoadOperation;->onFail(ZI)V

    goto/16 :goto_8

    .line 767
    .end local v24    # "val":Ljava/lang/Integer;
    :catch_1
    move-exception v16

    .line 768
    .restart local v16    # "e":Ljava/lang/Exception;
    const/16 v24, 0x0

    .restart local v24    # "val":Ljava/lang/Integer;
    goto :goto_b

    .line 773
    .end local v16    # "e":Ljava/lang/Exception;
    :cond_20
    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/messenger/FileLoadOperation;->datacenter_id:I

    .line 774
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/messenger/FileLoadOperation;->nextDownloadOffset:I

    .line 775
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/FileLoadOperation;->startDownloadRequest()V

    goto/16 :goto_8

    .line 777
    .end local v17    # "errorMsg":Ljava/lang/String;
    .end local v22    # "scanner":Ljava/util/Scanner;
    .end local v24    # "val":Ljava/lang/Integer;
    :cond_21
    move-object/from16 v0, p2

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string/jumbo v3, "OFFSET_INVALID"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 778
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/FileLoadOperation;->downloadedBytes:I

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/messenger/FileLoadOperation;->currentDownloadChunkSize:I

    rem-int/2addr v2, v3

    if-nez v2, :cond_22

    .line 780
    const/4 v2, 0x1

    :try_start_3
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lorg/telegram/messenger/FileLoadOperation;->onFinishLoadingFile(Z)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_8

    .line 781
    :catch_2
    move-exception v16

    .line 782
    .restart local v16    # "e":Ljava/lang/Exception;
    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 783
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lorg/telegram/messenger/FileLoadOperation;->onFail(ZI)V

    goto/16 :goto_8

    .line 786
    .end local v16    # "e":Ljava/lang/Exception;
    :cond_22
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lorg/telegram/messenger/FileLoadOperation;->onFail(ZI)V

    goto/16 :goto_8

    .line 788
    :cond_23
    move-object/from16 v0, p2

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string/jumbo v3, "RETRY_LIMIT"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 789
    const/4 v2, 0x0

    const/4 v3, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lorg/telegram/messenger/FileLoadOperation;->onFail(ZI)V

    goto/16 :goto_8

    .line 791
    :cond_24
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    if-eqz v2, :cond_26

    .line 792
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget-wide v4, v3, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->id:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " local_id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->local_id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " access_hash = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget-wide v4, v3, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->access_hash:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " volume_id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget-wide v4, v3, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->volume_id:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " secret = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget-wide v4, v3, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->secret:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    .line 796
    :cond_25
    :goto_c
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lorg/telegram/messenger/FileLoadOperation;->onFail(ZI)V

    goto/16 :goto_8

    .line 793
    :cond_26
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/FileLoadOperation;->webLocation:Lorg/telegram/tgnet/TLRPC$TL_inputWebFileLocation;

    if-eqz v2, :cond_25

    .line 794
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/FileLoadOperation;->webLocation:Lorg/telegram/tgnet/TLRPC$TL_inputWebFileLocation;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/FileLoadOperation;->webLocation:Lorg/telegram/tgnet/TLRPC$TL_inputWebFileLocation;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$TL_inputWebFileLocation;->url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " access_hash = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/FileLoadOperation;->webLocation:Lorg/telegram/tgnet/TLRPC$TL_inputWebFileLocation;

    iget-wide v4, v3, Lorg/telegram/tgnet/TLRPC$TL_inputWebFileLocation;->access_hash:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;)V

    goto :goto_c
.end method

.method private requestFileOffsets(I)V
    .locals 9
    .param p1, "offset"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v7, 0x1

    .line 575
    iget-boolean v0, p0, Lorg/telegram/messenger/FileLoadOperation;->requestingCdnOffsets:Z

    if-eqz v0, :cond_0

    .line 621
    :goto_0
    return-void

    .line 578
    :cond_0
    iput-boolean v7, p0, Lorg/telegram/messenger/FileLoadOperation;->requestingCdnOffsets:Z

    .line 579
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_upload_getCdnFileHashes;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_upload_getCdnFileHashes;-><init>()V

    .line 580
    .local v1, "req":Lorg/telegram/tgnet/TLRPC$TL_upload_getCdnFileHashes;
    iget-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->cdnToken:[B

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_upload_getCdnFileHashes;->file_token:[B

    .line 581
    iput p1, v1, Lorg/telegram/tgnet/TLRPC$TL_upload_getCdnFileHashes;->offset:I

    .line 582
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    new-instance v2, Lorg/telegram/messenger/FileLoadOperation$4;

    invoke-direct {v2, p0}, Lorg/telegram/messenger/FileLoadOperation$4;-><init>(Lorg/telegram/messenger/FileLoadOperation;)V

    const/4 v5, 0x0

    iget v6, p0, Lorg/telegram/messenger/FileLoadOperation;->datacenter_id:I

    move-object v4, v3

    move v8, v7

    invoke-virtual/range {v0 .. v8}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;Lorg/telegram/tgnet/QuickAckDelegate;Lorg/telegram/tgnet/WriteToSocketDelegate;IIIZ)I

    goto :goto_0
.end method

.method private startDownloadRequest()V
    .locals 14

    .prologue
    .line 850
    iget v0, p0, Lorg/telegram/messenger/FileLoadOperation;->state:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    iget v0, p0, Lorg/telegram/messenger/FileLoadOperation;->totalBytesCount:I

    if-lez v0, :cond_0

    iget v0, p0, Lorg/telegram/messenger/FileLoadOperation;->nextDownloadOffset:I

    iget v2, p0, Lorg/telegram/messenger/FileLoadOperation;->totalBytesCount:I

    if-ge v0, v2, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->requestInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v2, p0, Lorg/telegram/messenger/FileLoadOperation;->delayedRequestInfos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr v0, v2

    iget v2, p0, Lorg/telegram/messenger/FileLoadOperation;->currentMaxDownloadRequests:I

    if-lt v0, v2, :cond_2

    .line 995
    :cond_1
    return-void

    .line 853
    :cond_2
    const/4 v10, 0x1

    .line 854
    .local v10, "count":I
    iget v0, p0, Lorg/telegram/messenger/FileLoadOperation;->totalBytesCount:I

    if-lez v0, :cond_3

    .line 855
    const/4 v0, 0x0

    iget v2, p0, Lorg/telegram/messenger/FileLoadOperation;->currentMaxDownloadRequests:I

    iget-object v3, p0, Lorg/telegram/messenger/FileLoadOperation;->requestInfos:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 858
    :cond_3
    const/4 v9, 0x0

    .local v9, "a":I
    :goto_0
    if-ge v9, v10, :cond_1

    .line 859
    iget v0, p0, Lorg/telegram/messenger/FileLoadOperation;->totalBytesCount:I

    if-lez v0, :cond_4

    iget v0, p0, Lorg/telegram/messenger/FileLoadOperation;->nextDownloadOffset:I

    iget v2, p0, Lorg/telegram/messenger/FileLoadOperation;->totalBytesCount:I

    if-ge v0, v2, :cond_1

    .line 862
    :cond_4
    iget v0, p0, Lorg/telegram/messenger/FileLoadOperation;->totalBytesCount:I

    if-lez v0, :cond_5

    add-int/lit8 v0, v10, -0x1

    if-eq v9, v0, :cond_5

    iget v0, p0, Lorg/telegram/messenger/FileLoadOperation;->totalBytesCount:I

    if-lez v0, :cond_6

    iget v0, p0, Lorg/telegram/messenger/FileLoadOperation;->nextDownloadOffset:I

    iget v2, p0, Lorg/telegram/messenger/FileLoadOperation;->currentDownloadChunkSize:I

    add-int/2addr v0, v2

    iget v2, p0, Lorg/telegram/messenger/FileLoadOperation;->totalBytesCount:I

    if-lt v0, v2, :cond_6

    :cond_5
    const/4 v8, 0x1

    .line 865
    .local v8, "isLast":Z
    :goto_1
    iget v0, p0, Lorg/telegram/messenger/FileLoadOperation;->requestsCount:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_7

    const/4 v7, 0x2

    .line 866
    .local v7, "connectionType":I
    :goto_2
    iget-boolean v0, p0, Lorg/telegram/messenger/FileLoadOperation;->isForceRequest:Z

    if-eqz v0, :cond_8

    const/16 v0, 0x20

    :goto_3
    or-int/lit8 v5, v0, 0x2

    .line 867
    .local v5, "flags":I
    iget-boolean v0, p0, Lorg/telegram/messenger/FileLoadOperation;->isCdn:Z

    if-eqz v0, :cond_9

    .line 868
    new-instance v12, Lorg/telegram/tgnet/TLRPC$TL_upload_getCdnFile;

    invoke-direct {v12}, Lorg/telegram/tgnet/TLRPC$TL_upload_getCdnFile;-><init>()V

    .line 869
    .local v12, "req":Lorg/telegram/tgnet/TLRPC$TL_upload_getCdnFile;
    iget-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->cdnToken:[B

    iput-object v0, v12, Lorg/telegram/tgnet/TLRPC$TL_upload_getCdnFile;->file_token:[B

    .line 870
    iget v11, p0, Lorg/telegram/messenger/FileLoadOperation;->nextDownloadOffset:I

    .local v11, "offset":I
    iput v11, v12, Lorg/telegram/tgnet/TLRPC$TL_upload_getCdnFile;->offset:I

    .line 871
    iget v0, p0, Lorg/telegram/messenger/FileLoadOperation;->currentDownloadChunkSize:I

    iput v0, v12, Lorg/telegram/tgnet/TLRPC$TL_upload_getCdnFile;->limit:I

    .line 872
    move-object v1, v12

    .line 873
    .local v1, "request":Lorg/telegram/tgnet/TLObject;
    or-int/lit8 v5, v5, 0x1

    .line 889
    .end local v12    # "req":Lorg/telegram/tgnet/TLRPC$TL_upload_getCdnFile;
    :goto_4
    iget v0, p0, Lorg/telegram/messenger/FileLoadOperation;->nextDownloadOffset:I

    iget v2, p0, Lorg/telegram/messenger/FileLoadOperation;->currentDownloadChunkSize:I

    add-int/2addr v0, v2

    iput v0, p0, Lorg/telegram/messenger/FileLoadOperation;->nextDownloadOffset:I

    .line 890
    new-instance v13, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;

    const/4 v0, 0x0

    invoke-direct {v13, v0}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;-><init>(Lorg/telegram/messenger/FileLoadOperation$1;)V

    .line 891
    .local v13, "requestInfo":Lorg/telegram/messenger/FileLoadOperation$RequestInfo;
    iget-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->requestInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 892
    invoke-static {v13, v11}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$1402(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;I)I

    .line 893
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    new-instance v2, Lorg/telegram/messenger/FileLoadOperation$6;

    invoke-direct {v2, p0, v13, v1}, Lorg/telegram/messenger/FileLoadOperation$6;-><init>(Lorg/telegram/messenger/FileLoadOperation;Lorg/telegram/messenger/FileLoadOperation$RequestInfo;Lorg/telegram/tgnet/TLObject;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-boolean v6, p0, Lorg/telegram/messenger/FileLoadOperation;->isCdn:Z

    if-eqz v6, :cond_b

    iget v6, p0, Lorg/telegram/messenger/FileLoadOperation;->cdnDatacenterId:I

    :goto_5
    invoke-virtual/range {v0 .. v8}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;Lorg/telegram/tgnet/QuickAckDelegate;Lorg/telegram/tgnet/WriteToSocketDelegate;IIIZ)I

    move-result v0

    invoke-static {v13, v0}, Lorg/telegram/messenger/FileLoadOperation$RequestInfo;->access$702(Lorg/telegram/messenger/FileLoadOperation$RequestInfo;I)I

    .line 993
    iget v0, p0, Lorg/telegram/messenger/FileLoadOperation;->requestsCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/telegram/messenger/FileLoadOperation;->requestsCount:I

    .line 858
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 862
    .end local v1    # "request":Lorg/telegram/tgnet/TLObject;
    .end local v5    # "flags":I
    .end local v7    # "connectionType":I
    .end local v8    # "isLast":Z
    .end local v11    # "offset":I
    .end local v13    # "requestInfo":Lorg/telegram/messenger/FileLoadOperation$RequestInfo;
    :cond_6
    const/4 v8, 0x0

    goto :goto_1

    .line 865
    .restart local v8    # "isLast":Z
    :cond_7
    const v7, 0x10002

    goto :goto_2

    .line 866
    .restart local v7    # "connectionType":I
    :cond_8
    const/4 v0, 0x0

    goto :goto_3

    .line 875
    .restart local v5    # "flags":I
    :cond_9
    iget-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->webLocation:Lorg/telegram/tgnet/TLRPC$TL_inputWebFileLocation;

    if-eqz v0, :cond_a

    .line 876
    new-instance v12, Lorg/telegram/tgnet/TLRPC$TL_upload_getWebFile;

    invoke-direct {v12}, Lorg/telegram/tgnet/TLRPC$TL_upload_getWebFile;-><init>()V

    .line 877
    .local v12, "req":Lorg/telegram/tgnet/TLRPC$TL_upload_getWebFile;
    iget-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->webLocation:Lorg/telegram/tgnet/TLRPC$TL_inputWebFileLocation;

    iput-object v0, v12, Lorg/telegram/tgnet/TLRPC$TL_upload_getWebFile;->location:Lorg/telegram/tgnet/TLRPC$TL_inputWebFileLocation;

    .line 878
    iget v11, p0, Lorg/telegram/messenger/FileLoadOperation;->nextDownloadOffset:I

    .restart local v11    # "offset":I
    iput v11, v12, Lorg/telegram/tgnet/TLRPC$TL_upload_getWebFile;->offset:I

    .line 879
    iget v0, p0, Lorg/telegram/messenger/FileLoadOperation;->currentDownloadChunkSize:I

    iput v0, v12, Lorg/telegram/tgnet/TLRPC$TL_upload_getWebFile;->limit:I

    .line 880
    move-object v1, v12

    .line 881
    .restart local v1    # "request":Lorg/telegram/tgnet/TLObject;
    goto :goto_4

    .line 882
    .end local v1    # "request":Lorg/telegram/tgnet/TLObject;
    .end local v11    # "offset":I
    .end local v12    # "req":Lorg/telegram/tgnet/TLRPC$TL_upload_getWebFile;
    :cond_a
    new-instance v12, Lorg/telegram/tgnet/TLRPC$TL_upload_getFile;

    invoke-direct {v12}, Lorg/telegram/tgnet/TLRPC$TL_upload_getFile;-><init>()V

    .line 883
    .local v12, "req":Lorg/telegram/tgnet/TLRPC$TL_upload_getFile;
    iget-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iput-object v0, v12, Lorg/telegram/tgnet/TLRPC$TL_upload_getFile;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    .line 884
    iget v11, p0, Lorg/telegram/messenger/FileLoadOperation;->nextDownloadOffset:I

    .restart local v11    # "offset":I
    iput v11, v12, Lorg/telegram/tgnet/TLRPC$TL_upload_getFile;->offset:I

    .line 885
    iget v0, p0, Lorg/telegram/messenger/FileLoadOperation;->currentDownloadChunkSize:I

    iput v0, v12, Lorg/telegram/tgnet/TLRPC$TL_upload_getFile;->limit:I

    .line 886
    move-object v1, v12

    .restart local v1    # "request":Lorg/telegram/tgnet/TLObject;
    goto :goto_4

    .line 893
    .end local v12    # "req":Lorg/telegram/tgnet/TLRPC$TL_upload_getFile;
    .restart local v13    # "requestInfo":Lorg/telegram/messenger/FileLoadOperation$RequestInfo;
    :cond_b
    iget v6, p0, Lorg/telegram/messenger/FileLoadOperation;->datacenter_id:I

    goto :goto_5
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    .line 439
    sget-object v0, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v1, Lorg/telegram/messenger/FileLoadOperation$2;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/FileLoadOperation$2;-><init>(Lorg/telegram/messenger/FileLoadOperation;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 456
    return-void
.end method

.method public getCurrentType()I
    .locals 1

    .prologue
    .line 237
    iget v0, p0, Lorg/telegram/messenger/FileLoadOperation;->currentType:I

    return v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 241
    iget-object v0, p0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    if-eqz v0, :cond_0

    .line 242
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget-wide v2, v1, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->volume_id:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->local_id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/FileLoadOperation;->ext:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 244
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/telegram/messenger/FileLoadOperation;->webLocation:Lorg/telegram/tgnet/TLRPC$TL_inputWebFileLocation;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$TL_inputWebFileLocation;->url:Ljava/lang/String;

    invoke-static {v1}, Lorg/telegram/messenger/Utilities;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/FileLoadOperation;->ext:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public isForceRequest()Z
    .locals 1

    .prologue
    .line 224
    iget-boolean v0, p0, Lorg/telegram/messenger/FileLoadOperation;->isForceRequest:Z

    return v0
.end method

.method public setDelegate(Lorg/telegram/messenger/FileLoadOperation$FileLoadOperationDelegate;)V
    .locals 0
    .param p1, "delegate"    # Lorg/telegram/messenger/FileLoadOperation$FileLoadOperationDelegate;

    .prologue
    .line 998
    iput-object p1, p0, Lorg/telegram/messenger/FileLoadOperation;->delegate:Lorg/telegram/messenger/FileLoadOperation$FileLoadOperationDelegate;

    .line 999
    return-void
.end method

.method public setEncryptFile(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 216
    iput-boolean p1, p0, Lorg/telegram/messenger/FileLoadOperation;->encryptFile:Z

    .line 217
    return-void
.end method

.method public setForceRequest(Z)V
    .locals 0
    .param p1, "forceRequest"    # Z

    .prologue
    .line 220
    iput-boolean p1, p0, Lorg/telegram/messenger/FileLoadOperation;->isForceRequest:Z

    .line 221
    return-void
.end method

.method public setPaths(Ljava/io/File;Ljava/io/File;)V
    .locals 0
    .param p1, "store"    # Ljava/io/File;
    .param p2, "temp"    # Ljava/io/File;

    .prologue
    .line 228
    iput-object p1, p0, Lorg/telegram/messenger/FileLoadOperation;->storePath:Ljava/io/File;

    .line 229
    iput-object p2, p0, Lorg/telegram/messenger/FileLoadOperation;->tempPath:Ljava/io/File;

    .line 230
    return-void
.end method

.method public start()Z
    .locals 18

    .prologue
    .line 249
    move-object/from16 v0, p0

    iget v14, v0, Lorg/telegram/messenger/FileLoadOperation;->state:I

    if-eqz v14, :cond_0

    .line 250
    const/4 v14, 0x0

    .line 435
    :goto_0
    return v14

    .line 252
    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    if-nez v14, :cond_1

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/FileLoadOperation;->webLocation:Lorg/telegram/tgnet/TLRPC$TL_inputWebFileLocation;

    if-nez v14, :cond_1

    .line 253
    const/4 v14, 0x1

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lorg/telegram/messenger/FileLoadOperation;->onFail(ZI)V

    .line 254
    const/4 v14, 0x0

    goto :goto_0

    .line 259
    :cond_1
    const/4 v6, 0x0

    .line 260
    .local v6, "fileNameIv":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/FileLoadOperation;->webLocation:Lorg/telegram/tgnet/TLRPC$TL_inputWebFileLocation;

    if-eqz v14, :cond_c

    .line 261
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/FileLoadOperation;->webLocation:Lorg/telegram/tgnet/TLRPC$TL_inputWebFileLocation;

    iget-object v14, v14, Lorg/telegram/tgnet/TLRPC$TL_inputWebFileLocation;->url:Ljava/lang/String;

    invoke-static {v14}, Lorg/telegram/messenger/Utilities;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 262
    .local v9, "md5":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lorg/telegram/messenger/FileLoadOperation;->encryptFile:Z

    if-eqz v14, :cond_b

    .line 263
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, ".temp.enc"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 264
    .local v7, "fileNameTemp":Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "."

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/messenger/FileLoadOperation;->ext:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, ".enc"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 265
    .local v5, "fileNameFinal":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/FileLoadOperation;->key:[B

    if-eqz v14, :cond_2

    .line 266
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, ".iv.enc"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 315
    .end local v9    # "md5":Ljava/lang/String;
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget v14, v0, Lorg/telegram/messenger/FileLoadOperation;->totalBytesCount:I

    const/high16 v15, 0x100000

    if-lt v14, v15, :cond_14

    const/high16 v14, 0x20000

    :goto_2
    move-object/from16 v0, p0

    iput v14, v0, Lorg/telegram/messenger/FileLoadOperation;->currentDownloadChunkSize:I

    .line 316
    move-object/from16 v0, p0

    iget v14, v0, Lorg/telegram/messenger/FileLoadOperation;->totalBytesCount:I

    const/high16 v15, 0x100000

    if-lt v14, v15, :cond_15

    const/4 v14, 0x2

    :goto_3
    move-object/from16 v0, p0

    iput v14, v0, Lorg/telegram/messenger/FileLoadOperation;->currentMaxDownloadRequests:I

    .line 317
    new-instance v14, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v15, v0, Lorg/telegram/messenger/FileLoadOperation;->currentMaxDownloadRequests:I

    invoke-direct {v14, v15}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lorg/telegram/messenger/FileLoadOperation;->requestInfos:Ljava/util/ArrayList;

    .line 318
    new-instance v14, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v15, v0, Lorg/telegram/messenger/FileLoadOperation;->currentMaxDownloadRequests:I

    add-int/lit8 v15, v15, -0x1

    invoke-direct {v14, v15}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lorg/telegram/messenger/FileLoadOperation;->delayedRequestInfos:Ljava/util/ArrayList;

    .line 319
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Lorg/telegram/messenger/FileLoadOperation;->state:I

    .line 321
    sget-boolean v14, Lorg/telegram/messenger/ApplicationLoader;->KEEP_ORIGINAL_FILENAME:Z

    if-eqz v14, :cond_16

    sget-object v14, Lorg/telegram/messenger/FileLoadOperation;->orgName:Ljava/lang/String;

    if-eqz v14, :cond_16

    const/4 v13, 0x1

    .line 322
    .local v13, "ok":Z
    :goto_4
    if-eqz v13, :cond_3

    .line 323
    sget-object v5, Lorg/telegram/messenger/FileLoadOperation;->orgName:Ljava/lang/String;

    .line 326
    :cond_3
    new-instance v14, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/messenger/FileLoadOperation;->storePath:Ljava/io/File;

    invoke-direct {v14, v15, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lorg/telegram/messenger/FileLoadOperation;->cacheFileFinal:Ljava/io/File;

    .line 327
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/FileLoadOperation;->cacheFileFinal:Ljava/io/File;

    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v3

    .line 329
    .local v3, "exist":Z
    if-eqz v3, :cond_4

    if-eqz v13, :cond_4

    .line 330
    const/4 v3, 0x0

    .line 331
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/FileLoadOperation;->cacheFileFinal:Ljava/io/File;

    invoke-virtual {v14}, Ljava/io/File;->delete()Z

    .line 334
    :cond_4
    if-eqz v3, :cond_5

    move-object/from16 v0, p0

    iget v14, v0, Lorg/telegram/messenger/FileLoadOperation;->totalBytesCount:I

    if-eqz v14, :cond_5

    move-object/from16 v0, p0

    iget v14, v0, Lorg/telegram/messenger/FileLoadOperation;->totalBytesCount:I

    int-to-long v14, v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/FileLoadOperation;->cacheFileFinal:Ljava/io/File;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->length()J

    move-result-wide v16

    cmp-long v14, v14, v16

    if-eqz v14, :cond_5

    .line 335
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/FileLoadOperation;->cacheFileFinal:Ljava/io/File;

    invoke-virtual {v14}, Ljava/io/File;->delete()Z

    .line 338
    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/FileLoadOperation;->cacheFileFinal:Ljava/io/File;

    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v14

    if-nez v14, :cond_1b

    .line 339
    new-instance v14, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/messenger/FileLoadOperation;->tempPath:Ljava/io/File;

    invoke-direct {v14, v15, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lorg/telegram/messenger/FileLoadOperation;->cacheFileTemp:Ljava/io/File;

    .line 340
    const/4 v12, 0x0

    .line 342
    .local v12, "newKeyGenerated":Z
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lorg/telegram/messenger/FileLoadOperation;->encryptFile:Z

    if-eqz v14, :cond_6

    .line 343
    new-instance v8, Ljava/io/File;

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInternalCacheDir()Ljava/io/File;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, ".key"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v8, v14, v15}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 345
    .local v8, "keyFile":Ljava/io/File;
    :try_start_0
    new-instance v4, Ljava/io/RandomAccessFile;

    const-string/jumbo v14, "rws"

    invoke-direct {v4, v8, v14}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 346
    .local v4, "file":Ljava/io/RandomAccessFile;
    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v10

    .line 347
    .local v10, "len":J
    const/16 v14, 0x20

    new-array v14, v14, [B

    move-object/from16 v0, p0

    iput-object v14, v0, Lorg/telegram/messenger/FileLoadOperation;->encryptKey:[B

    .line 348
    const/16 v14, 0x10

    new-array v14, v14, [B

    move-object/from16 v0, p0

    iput-object v14, v0, Lorg/telegram/messenger/FileLoadOperation;->encryptIv:[B

    .line 349
    const-wide/16 v14, 0x0

    cmp-long v14, v10, v14

    if-lez v14, :cond_17

    const-wide/16 v14, 0x30

    rem-long v14, v10, v14

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-nez v14, :cond_17

    .line 350
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/FileLoadOperation;->encryptKey:[B

    const/4 v15, 0x0

    const/16 v16, 0x20

    move/from16 v0, v16

    invoke-virtual {v4, v14, v15, v0}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 351
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/FileLoadOperation;->encryptIv:[B

    const/4 v15, 0x0

    const/16 v16, 0x10

    move/from16 v0, v16

    invoke-virtual {v4, v14, v15, v0}, Ljava/io/RandomAccessFile;->read([BII)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 360
    :goto_5
    :try_start_1
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v14

    invoke-virtual {v14}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 364
    :goto_6
    :try_start_2
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 370
    .end local v4    # "file":Ljava/io/RandomAccessFile;
    .end local v8    # "keyFile":Ljava/io/File;
    .end local v10    # "len":J
    :cond_6
    :goto_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/FileLoadOperation;->cacheFileTemp:Ljava/io/File;

    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v14

    if-eqz v14, :cond_7

    .line 371
    if-eqz v12, :cond_18

    .line 372
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/FileLoadOperation;->cacheFileTemp:Ljava/io/File;

    invoke-virtual {v14}, Ljava/io/File;->delete()Z

    .line 379
    :cond_7
    :goto_8
    sget-boolean v14, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-eqz v14, :cond_8

    .line 380
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "start loading file to temp = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/messenger/FileLoadOperation;->cacheFileTemp:Ljava/io/File;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " final = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/messenger/FileLoadOperation;->cacheFileFinal:Ljava/io/File;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lorg/telegram/messenger/FileLog;->d(Ljava/lang/String;)V

    .line 383
    :cond_8
    if-eqz v6, :cond_9

    .line 384
    new-instance v14, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/messenger/FileLoadOperation;->tempPath:Ljava/io/File;

    invoke-direct {v14, v15, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lorg/telegram/messenger/FileLoadOperation;->cacheIvTemp:Ljava/io/File;

    .line 386
    :try_start_3
    new-instance v14, Ljava/io/RandomAccessFile;

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/messenger/FileLoadOperation;->cacheIvTemp:Ljava/io/File;

    const-string/jumbo v16, "rws"

    invoke-direct/range {v14 .. v16}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lorg/telegram/messenger/FileLoadOperation;->fiv:Ljava/io/RandomAccessFile;

    .line 387
    if-nez v12, :cond_9

    .line 388
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/FileLoadOperation;->cacheIvTemp:Ljava/io/File;

    invoke-virtual {v14}, Ljava/io/File;->length()J

    move-result-wide v10

    .line 389
    .restart local v10    # "len":J
    const-wide/16 v14, 0x0

    cmp-long v14, v10, v14

    if-lez v14, :cond_19

    const-wide/16 v14, 0x20

    rem-long v14, v10, v14

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-nez v14, :cond_19

    .line 390
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/FileLoadOperation;->fiv:Ljava/io/RandomAccessFile;

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/messenger/FileLoadOperation;->iv:[B

    const/16 v16, 0x0

    const/16 v17, 0x20

    invoke-virtual/range {v14 .. v17}, Ljava/io/RandomAccessFile;->read([BII)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 401
    .end local v10    # "len":J
    :cond_9
    :goto_9
    :try_start_4
    new-instance v14, Ljava/io/RandomAccessFile;

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/messenger/FileLoadOperation;->cacheFileTemp:Ljava/io/File;

    const-string/jumbo v16, "rws"

    invoke-direct/range {v14 .. v16}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lorg/telegram/messenger/FileLoadOperation;->fileOutputStream:Ljava/io/RandomAccessFile;

    .line 402
    move-object/from16 v0, p0

    iget v14, v0, Lorg/telegram/messenger/FileLoadOperation;->downloadedBytes:I

    if-eqz v14, :cond_a

    .line 403
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/FileLoadOperation;->fileOutputStream:Ljava/io/RandomAccessFile;

    move-object/from16 v0, p0

    iget v15, v0, Lorg/telegram/messenger/FileLoadOperation;->downloadedBytes:I

    int-to-long v0, v15

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 408
    :cond_a
    :goto_a
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/FileLoadOperation;->fileOutputStream:Ljava/io/RandomAccessFile;

    if-nez v14, :cond_1a

    .line 409
    const/4 v14, 0x1

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lorg/telegram/messenger/FileLoadOperation;->onFail(ZI)V

    .line 410
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 269
    .end local v3    # "exist":Z
    .end local v5    # "fileNameFinal":Ljava/lang/String;
    .end local v7    # "fileNameTemp":Ljava/lang/String;
    .end local v12    # "newKeyGenerated":Z
    .end local v13    # "ok":Z
    .restart local v9    # "md5":Ljava/lang/String;
    :cond_b
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, ".temp"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 270
    .restart local v7    # "fileNameTemp":Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "."

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/messenger/FileLoadOperation;->ext:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 271
    .restart local v5    # "fileNameFinal":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/FileLoadOperation;->key:[B

    if-eqz v14, :cond_2

    .line 272
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, ".iv"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_1

    .line 276
    .end local v5    # "fileNameFinal":Ljava/lang/String;
    .end local v7    # "fileNameTemp":Ljava/lang/String;
    .end local v9    # "md5":Ljava/lang/String;
    :cond_c
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget-wide v14, v14, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->volume_id:J

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-eqz v14, :cond_10

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget v14, v14, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->local_id:I

    if-eqz v14, :cond_10

    .line 277
    move-object/from16 v0, p0

    iget v14, v0, Lorg/telegram/messenger/FileLoadOperation;->datacenter_id:I

    const/high16 v15, -0x80000000

    if-eq v14, v15, :cond_d

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget-wide v14, v14, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->volume_id:J

    const-wide/32 v16, -0x80000000

    cmp-long v14, v14, v16

    if-eqz v14, :cond_d

    move-object/from16 v0, p0

    iget v14, v0, Lorg/telegram/messenger/FileLoadOperation;->datacenter_id:I

    if-nez v14, :cond_e

    .line 278
    :cond_d
    const/4 v14, 0x1

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lorg/telegram/messenger/FileLoadOperation;->onFail(ZI)V

    .line 279
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 282
    :cond_e
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lorg/telegram/messenger/FileLoadOperation;->encryptFile:Z

    if-eqz v14, :cond_f

    .line 283
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget-wide v0, v15, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->volume_id:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "_"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget v15, v15, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->local_id:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, ".temp.enc"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 284
    .restart local v7    # "fileNameTemp":Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget-wide v0, v15, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->volume_id:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "_"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget v15, v15, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->local_id:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "."

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/messenger/FileLoadOperation;->ext:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, ".enc"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 285
    .restart local v5    # "fileNameFinal":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/FileLoadOperation;->key:[B

    if-eqz v14, :cond_2

    .line 286
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget-wide v0, v15, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->volume_id:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "_"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget v15, v15, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->local_id:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, ".iv.enc"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_1

    .line 289
    .end local v5    # "fileNameFinal":Ljava/lang/String;
    .end local v7    # "fileNameTemp":Ljava/lang/String;
    :cond_f
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget-wide v0, v15, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->volume_id:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "_"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget v15, v15, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->local_id:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, ".temp"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 290
    .restart local v7    # "fileNameTemp":Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget-wide v0, v15, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->volume_id:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "_"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget v15, v15, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->local_id:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "."

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/messenger/FileLoadOperation;->ext:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 291
    .restart local v5    # "fileNameFinal":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/FileLoadOperation;->key:[B

    if-eqz v14, :cond_2

    .line 292
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget-wide v0, v15, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->volume_id:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "_"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget v15, v15, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->local_id:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, ".iv"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_1

    .line 296
    .end local v5    # "fileNameFinal":Ljava/lang/String;
    .end local v7    # "fileNameTemp":Ljava/lang/String;
    :cond_10
    move-object/from16 v0, p0

    iget v14, v0, Lorg/telegram/messenger/FileLoadOperation;->datacenter_id:I

    if-eqz v14, :cond_11

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget-wide v14, v14, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->id:J

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-nez v14, :cond_12

    .line 297
    :cond_11
    const/4 v14, 0x1

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lorg/telegram/messenger/FileLoadOperation;->onFail(ZI)V

    .line 298
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 300
    :cond_12
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lorg/telegram/messenger/FileLoadOperation;->encryptFile:Z

    if-eqz v14, :cond_13

    .line 301
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget v15, v0, Lorg/telegram/messenger/FileLoadOperation;->datacenter_id:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "_"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget-wide v0, v15, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->id:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, ".temp.enc"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 302
    .restart local v7    # "fileNameTemp":Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget v15, v0, Lorg/telegram/messenger/FileLoadOperation;->datacenter_id:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "_"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget-wide v0, v15, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->id:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/messenger/FileLoadOperation;->ext:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, ".enc"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 303
    .restart local v5    # "fileNameFinal":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/FileLoadOperation;->key:[B

    if-eqz v14, :cond_2

    .line 304
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget v15, v0, Lorg/telegram/messenger/FileLoadOperation;->datacenter_id:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "_"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget-wide v0, v15, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->id:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, ".iv.enc"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_1

    .line 307
    .end local v5    # "fileNameFinal":Ljava/lang/String;
    .end local v7    # "fileNameTemp":Ljava/lang/String;
    :cond_13
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget v15, v0, Lorg/telegram/messenger/FileLoadOperation;->datacenter_id:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "_"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget-wide v0, v15, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->id:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, ".temp"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 308
    .restart local v7    # "fileNameTemp":Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget v15, v0, Lorg/telegram/messenger/FileLoadOperation;->datacenter_id:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "_"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget-wide v0, v15, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->id:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/messenger/FileLoadOperation;->ext:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 309
    .restart local v5    # "fileNameFinal":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/FileLoadOperation;->key:[B

    if-eqz v14, :cond_2

    .line 310
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget v15, v0, Lorg/telegram/messenger/FileLoadOperation;->datacenter_id:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "_"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/messenger/FileLoadOperation;->location:Lorg/telegram/tgnet/TLRPC$InputFileLocation;

    iget-wide v0, v15, Lorg/telegram/tgnet/TLRPC$InputFileLocation;->id:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, ".iv"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_1

    .line 315
    :cond_14
    const v14, 0x8000

    goto/16 :goto_2

    .line 316
    :cond_15
    const/4 v14, 0x4

    goto/16 :goto_3

    .line 321
    :cond_16
    const/4 v13, 0x0

    goto/16 :goto_4

    .line 353
    .restart local v3    # "exist":Z
    .restart local v4    # "file":Ljava/io/RandomAccessFile;
    .restart local v8    # "keyFile":Ljava/io/File;
    .restart local v10    # "len":J
    .restart local v12    # "newKeyGenerated":Z
    .restart local v13    # "ok":Z
    :cond_17
    :try_start_5
    sget-object v14, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/messenger/FileLoadOperation;->encryptKey:[B

    invoke-virtual {v14, v15}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 354
    sget-object v14, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/messenger/FileLoadOperation;->encryptIv:[B

    invoke-virtual {v14, v15}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 355
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/FileLoadOperation;->encryptKey:[B

    invoke-virtual {v4, v14}, Ljava/io/RandomAccessFile;->write([B)V

    .line 356
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/FileLoadOperation;->encryptIv:[B

    invoke-virtual {v4, v14}, Ljava/io/RandomAccessFile;->write([B)V

    .line 357
    const/4 v12, 0x1

    goto/16 :goto_5

    .line 361
    :catch_0
    move-exception v2

    .line 362
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_6

    .line 365
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v4    # "file":Ljava/io/RandomAccessFile;
    .end local v10    # "len":J
    :catch_1
    move-exception v2

    .line 366
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_7

    .line 374
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v8    # "keyFile":Ljava/io/File;
    :cond_18
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/FileLoadOperation;->cacheFileTemp:Ljava/io/File;

    invoke-virtual {v14}, Ljava/io/File;->length()J

    move-result-wide v14

    long-to-int v14, v14

    move-object/from16 v0, p0

    iput v14, v0, Lorg/telegram/messenger/FileLoadOperation;->downloadedBytes:I

    .line 375
    move-object/from16 v0, p0

    iget v14, v0, Lorg/telegram/messenger/FileLoadOperation;->downloadedBytes:I

    move-object/from16 v0, p0

    iget v15, v0, Lorg/telegram/messenger/FileLoadOperation;->currentDownloadChunkSize:I

    div-int/2addr v14, v15

    move-object/from16 v0, p0

    iget v15, v0, Lorg/telegram/messenger/FileLoadOperation;->currentDownloadChunkSize:I

    mul-int/2addr v14, v15

    move-object/from16 v0, p0

    iput v14, v0, Lorg/telegram/messenger/FileLoadOperation;->downloadedBytes:I

    move-object/from16 v0, p0

    iput v14, v0, Lorg/telegram/messenger/FileLoadOperation;->nextDownloadOffset:I

    goto/16 :goto_8

    .line 392
    .restart local v10    # "len":J
    :cond_19
    const/4 v14, 0x0

    :try_start_6
    move-object/from16 v0, p0

    iput v14, v0, Lorg/telegram/messenger/FileLoadOperation;->downloadedBytes:I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto/16 :goto_9

    .line 395
    .end local v10    # "len":J
    :catch_2
    move-exception v2

    .line 396
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    .line 397
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lorg/telegram/messenger/FileLoadOperation;->downloadedBytes:I

    goto/16 :goto_9

    .line 405
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v2

    .line 406
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-static {v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_a

    .line 412
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1a
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lorg/telegram/messenger/FileLoadOperation;->started:Z

    .line 413
    sget-object v14, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v15, Lorg/telegram/messenger/FileLoadOperation$1;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lorg/telegram/messenger/FileLoadOperation$1;-><init>(Lorg/telegram/messenger/FileLoadOperation;)V

    invoke-virtual {v14, v15}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 435
    .end local v12    # "newKeyGenerated":Z
    :goto_b
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 428
    :cond_1b
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lorg/telegram/messenger/FileLoadOperation;->started:Z

    .line 430
    const/4 v14, 0x0

    :try_start_7
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lorg/telegram/messenger/FileLoadOperation;->onFinishLoadingFile(Z)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_b

    .line 431
    :catch_4
    move-exception v2

    .line 432
    .restart local v2    # "e":Ljava/lang/Exception;
    const/4 v14, 0x1

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lorg/telegram/messenger/FileLoadOperation;->onFail(ZI)V

    goto :goto_b
.end method

.method public wasStarted()Z
    .locals 1

    .prologue
    .line 233
    iget-boolean v0, p0, Lorg/telegram/messenger/FileLoadOperation;->started:Z

    return v0
.end method
