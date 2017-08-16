.class public Lorg/telegram/tgnet/TLRPC$TL_webPage_layer58;
.super Lorg/telegram/tgnet/TLRPC$TL_webPage;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_webPage_layer58"
.end annotation


# static fields
.field public static constructor:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7187
    const v0, -0x357df129    # -4261739.5f

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_webPage_layer58;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7186
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_webPage;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 2
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p2, "exception"    # Z

    .prologue
    .line 7191
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_layer58;->flags:I

    .line 7192
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_layer58;->id:J

    .line 7193
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_layer58;->url:Ljava/lang/String;

    .line 7194
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_layer58;->display_url:Ljava/lang/String;

    .line 7195
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_layer58;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 7196
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_layer58;->type:Ljava/lang/String;

    .line 7198
    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_layer58;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 7199
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_layer58;->site_name:Ljava/lang/String;

    .line 7201
    :cond_1
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_layer58;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 7202
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_layer58;->title:Ljava/lang/String;

    .line 7204
    :cond_2
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_layer58;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 7205
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_layer58;->description:Ljava/lang/String;

    .line 7207
    :cond_3
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_layer58;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    .line 7208
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$Photo;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Photo;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_layer58;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    .line 7210
    :cond_4
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_layer58;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_5

    .line 7211
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_layer58;->embed_url:Ljava/lang/String;

    .line 7213
    :cond_5
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_layer58;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_6

    .line 7214
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_layer58;->embed_type:Ljava/lang/String;

    .line 7216
    :cond_6
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_layer58;->flags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_7

    .line 7217
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_layer58;->embed_width:I

    .line 7219
    :cond_7
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_layer58;->flags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_8

    .line 7220
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_layer58;->embed_height:I

    .line 7222
    :cond_8
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_layer58;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_9

    .line 7223
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_layer58;->duration:I

    .line 7225
    :cond_9
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_layer58;->flags:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_a

    .line 7226
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_layer58;->author:Ljava/lang/String;

    .line 7228
    :cond_a
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_layer58;->flags:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_b

    .line 7229
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$Document;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_layer58;->document:Lorg/telegram/tgnet/TLRPC$Document;

    .line 7231
    :cond_b
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 2
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 7234
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_webPage_layer58;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 7235
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_layer58;->flags:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 7236
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_layer58;->id:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    .line 7237
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_layer58;->url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 7238
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_layer58;->display_url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 7239
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_layer58;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 7240
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_layer58;->type:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 7242
    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_layer58;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 7243
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_layer58;->site_name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 7245
    :cond_1
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_layer58;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 7246
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_layer58;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 7248
    :cond_2
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_layer58;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 7249
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_layer58;->description:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 7251
    :cond_3
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_layer58;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    .line 7252
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_layer58;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$Photo;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 7254
    :cond_4
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_layer58;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_5

    .line 7255
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_layer58;->embed_url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 7257
    :cond_5
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_layer58;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_6

    .line 7258
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_layer58;->embed_type:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 7260
    :cond_6
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_layer58;->flags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_7

    .line 7261
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_layer58;->embed_width:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 7263
    :cond_7
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_layer58;->flags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_8

    .line 7264
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_layer58;->embed_height:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 7266
    :cond_8
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_layer58;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_9

    .line 7267
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_layer58;->duration:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 7269
    :cond_9
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_layer58;->flags:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_a

    .line 7270
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_layer58;->author:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 7272
    :cond_a
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_layer58;->flags:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_b

    .line 7273
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_layer58;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$Document;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 7275
    :cond_b
    return-void
.end method
