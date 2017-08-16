.class public Lorg/telegram/tgnet/TLRPC$TL_webPage;
.super Lorg/telegram/tgnet/TLRPC$WebPage;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_webPage"
.end annotation


# static fields
.field public static constructor:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 6948
    const v0, 0x5f07b4bc

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_webPage;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6947
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$WebPage;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 2
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p2, "exception"    # Z

    .prologue
    .line 6952
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage;->flags:I

    .line 6953
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage;->id:J

    .line 6954
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage;->url:Ljava/lang/String;

    .line 6955
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage;->display_url:Ljava/lang/String;

    .line 6956
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage;->hash:I

    .line 6957
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 6958
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage;->type:Ljava/lang/String;

    .line 6960
    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 6961
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage;->site_name:Ljava/lang/String;

    .line 6963
    :cond_1
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 6964
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage;->title:Ljava/lang/String;

    .line 6966
    :cond_2
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 6967
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage;->description:Ljava/lang/String;

    .line 6969
    :cond_3
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    .line 6970
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$Photo;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Photo;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    .line 6972
    :cond_4
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_5

    .line 6973
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage;->embed_url:Ljava/lang/String;

    .line 6975
    :cond_5
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_6

    .line 6976
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage;->embed_type:Ljava/lang/String;

    .line 6978
    :cond_6
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage;->flags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_7

    .line 6979
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage;->embed_width:I

    .line 6981
    :cond_7
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage;->flags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_8

    .line 6982
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage;->embed_height:I

    .line 6984
    :cond_8
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_9

    .line 6985
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage;->duration:I

    .line 6987
    :cond_9
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage;->flags:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_a

    .line 6988
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage;->author:Ljava/lang/String;

    .line 6990
    :cond_a
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage;->flags:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_b

    .line 6991
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$Document;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage;->document:Lorg/telegram/tgnet/TLRPC$Document;

    .line 6993
    :cond_b
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage;->flags:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_c

    .line 6994
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$Page;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Page;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage;->cached_page:Lorg/telegram/tgnet/TLRPC$Page;

    .line 6996
    :cond_c
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 2
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 6999
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_webPage;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 7000
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage;->flags:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 7001
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage;->id:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    .line 7002
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage;->url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 7003
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage;->display_url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 7004
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage;->hash:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 7005
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 7006
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage;->type:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 7008
    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 7009
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage;->site_name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 7011
    :cond_1
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 7012
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 7014
    :cond_2
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 7015
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage;->description:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 7017
    :cond_3
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    .line 7018
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$Photo;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 7020
    :cond_4
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_5

    .line 7021
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage;->embed_url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 7023
    :cond_5
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_6

    .line 7024
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage;->embed_type:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 7026
    :cond_6
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage;->flags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_7

    .line 7027
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage;->embed_width:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 7029
    :cond_7
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage;->flags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_8

    .line 7030
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage;->embed_height:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 7032
    :cond_8
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_9

    .line 7033
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage;->duration:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 7035
    :cond_9
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage;->flags:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_a

    .line 7036
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage;->author:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 7038
    :cond_a
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage;->flags:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_b

    .line 7039
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$Document;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 7041
    :cond_b
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage;->flags:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_c

    .line 7042
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage;->cached_page:Lorg/telegram/tgnet/TLRPC$Page;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$Page;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 7044
    :cond_c
    return-void
.end method
