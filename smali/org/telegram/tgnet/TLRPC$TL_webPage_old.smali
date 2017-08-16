.class public Lorg/telegram/tgnet/TLRPC$TL_webPage_old;
.super Lorg/telegram/tgnet/TLRPC$TL_webPage;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_webPage_old"
.end annotation


# static fields
.field public static constructor:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7048
    const v0, -0x5ce15f4b

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_webPage_old;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7047
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_webPage;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 2
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p2, "exception"    # Z

    .prologue
    .line 7052
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_old;->flags:I

    .line 7053
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_old;->id:J

    .line 7054
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_old;->url:Ljava/lang/String;

    .line 7055
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_old;->display_url:Ljava/lang/String;

    .line 7056
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_old;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 7057
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_old;->type:Ljava/lang/String;

    .line 7059
    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_old;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 7060
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_old;->site_name:Ljava/lang/String;

    .line 7062
    :cond_1
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_old;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 7063
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_old;->title:Ljava/lang/String;

    .line 7065
    :cond_2
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_old;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 7066
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_old;->description:Ljava/lang/String;

    .line 7068
    :cond_3
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_old;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    .line 7069
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$Photo;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Photo;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_old;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    .line 7071
    :cond_4
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_old;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_5

    .line 7072
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_old;->embed_url:Ljava/lang/String;

    .line 7074
    :cond_5
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_old;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_6

    .line 7075
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_old;->embed_type:Ljava/lang/String;

    .line 7077
    :cond_6
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_old;->flags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_7

    .line 7078
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_old;->embed_width:I

    .line 7080
    :cond_7
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_old;->flags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_8

    .line 7081
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_old;->embed_height:I

    .line 7083
    :cond_8
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_old;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_9

    .line 7084
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_old;->duration:I

    .line 7086
    :cond_9
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_old;->flags:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_a

    .line 7087
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_old;->author:Ljava/lang/String;

    .line 7089
    :cond_a
    return-void
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 2
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 7092
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_webPage_old;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 7093
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_old;->flags:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 7094
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_old;->id:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    .line 7095
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_old;->url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 7096
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_old;->display_url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 7097
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_old;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 7098
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_old;->type:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 7100
    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_old;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 7101
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_old;->site_name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 7103
    :cond_1
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_old;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 7104
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_old;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 7106
    :cond_2
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_old;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 7107
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_old;->description:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 7109
    :cond_3
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_old;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    .line 7110
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_old;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$Photo;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 7112
    :cond_4
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_old;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_5

    .line 7113
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_old;->embed_url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 7115
    :cond_5
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_old;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_6

    .line 7116
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_old;->embed_type:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 7118
    :cond_6
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_old;->flags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_7

    .line 7119
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_old;->embed_width:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 7121
    :cond_7
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_old;->flags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_8

    .line 7122
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_old;->embed_height:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 7124
    :cond_8
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_old;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_9

    .line 7125
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_old;->duration:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 7127
    :cond_9
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_old;->flags:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_a

    .line 7128
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_webPage_old;->author:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 7130
    :cond_a
    return-void
.end method
