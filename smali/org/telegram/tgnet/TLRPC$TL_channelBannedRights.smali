.class public Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_channelBannedRights"
.end annotation


# static fields
.field public static constructor:I


# instance fields
.field public embed_links:Z

.field public flags:I

.field public send_games:Z

.field public send_gifs:Z

.field public send_inline:Z

.field public send_media:Z

.field public send_messages:Z

.field public send_stickers:Z

.field public until_date:I

.field public view_messages:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1198
    const v0, 0x58cf4249

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1197
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;
    .locals 6
    .param p0, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p1, "constructor"    # I
    .param p2, "exception"    # Z

    .prologue
    .line 1212
    sget v1, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;->constructor:I

    if-eq v1, p1, :cond_1

    .line 1213
    if-eqz p2, :cond_0

    .line 1214
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "can\'t parse magic %x in TL_channelBannedRights"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1216
    :cond_0
    const/4 v0, 0x0

    .line 1221
    :goto_0
    return-object v0

    .line 1219
    :cond_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;-><init>()V

    .line 1220
    .local v0, "result":Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;
    invoke-virtual {v0, p0, p2}, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    goto :goto_0
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 3
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p2, "exception"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1225
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;->flags:I

    .line 1226
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;->view_messages:Z

    .line 1227
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;->send_messages:Z

    .line 1228
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;->send_media:Z

    .line 1229
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;->send_stickers:Z

    .line 1230
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    move v0, v1

    :goto_4
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;->send_gifs:Z

    .line 1231
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_5

    move v0, v1

    :goto_5
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;->send_games:Z

    .line 1232
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;->flags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_6

    move v0, v1

    :goto_6
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;->send_inline:Z

    .line 1233
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_7

    :goto_7
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;->embed_links:Z

    .line 1234
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;->until_date:I

    .line 1235
    return-void

    :cond_0
    move v0, v2

    .line 1226
    goto :goto_0

    :cond_1
    move v0, v2

    .line 1227
    goto :goto_1

    :cond_2
    move v0, v2

    .line 1228
    goto :goto_2

    :cond_3
    move v0, v2

    .line 1229
    goto :goto_3

    :cond_4
    move v0, v2

    .line 1230
    goto :goto_4

    :cond_5
    move v0, v2

    .line 1231
    goto :goto_5

    :cond_6
    move v0, v2

    .line 1232
    goto :goto_6

    :cond_7
    move v1, v2

    .line 1233
    goto :goto_7
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 1
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 1238
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 1239
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;->view_messages:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;->flags:I

    or-int/lit8 v0, v0, 0x1

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;->flags:I

    .line 1240
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;->send_messages:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;->flags:I

    or-int/lit8 v0, v0, 0x2

    :goto_1
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;->flags:I

    .line 1241
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;->send_media:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;->flags:I

    or-int/lit8 v0, v0, 0x4

    :goto_2
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;->flags:I

    .line 1242
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;->send_stickers:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;->flags:I

    or-int/lit8 v0, v0, 0x8

    :goto_3
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;->flags:I

    .line 1243
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;->send_gifs:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;->flags:I

    or-int/lit8 v0, v0, 0x10

    :goto_4
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;->flags:I

    .line 1244
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;->send_games:Z

    if-eqz v0, :cond_5

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;->flags:I

    or-int/lit8 v0, v0, 0x20

    :goto_5
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;->flags:I

    .line 1245
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;->send_inline:Z

    if-eqz v0, :cond_6

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;->flags:I

    or-int/lit8 v0, v0, 0x40

    :goto_6
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;->flags:I

    .line 1246
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;->embed_links:Z

    if-eqz v0, :cond_7

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;->flags:I

    or-int/lit16 v0, v0, 0x80

    :goto_7
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;->flags:I

    .line 1247
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;->flags:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 1248
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;->until_date:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 1249
    return-void

    .line 1239
    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;->flags:I

    and-int/lit8 v0, v0, -0x2

    goto :goto_0

    .line 1240
    :cond_1
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;->flags:I

    and-int/lit8 v0, v0, -0x3

    goto :goto_1

    .line 1241
    :cond_2
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;->flags:I

    and-int/lit8 v0, v0, -0x5

    goto :goto_2

    .line 1242
    :cond_3
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;->flags:I

    and-int/lit8 v0, v0, -0x9

    goto :goto_3

    .line 1243
    :cond_4
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;->flags:I

    and-int/lit8 v0, v0, -0x11

    goto :goto_4

    .line 1244
    :cond_5
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;->flags:I

    and-int/lit8 v0, v0, -0x21

    goto :goto_5

    .line 1245
    :cond_6
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;->flags:I

    and-int/lit8 v0, v0, -0x41

    goto :goto_6

    .line 1246
    :cond_7
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;->flags:I

    and-int/lit16 v0, v0, -0x81

    goto :goto_7
.end method
