.class public Lorg/telegram/tgnet/TLRPC$TL_channel_layer67;
.super Lorg/telegram/tgnet/TLRPC$TL_channel;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_channel_layer67"
.end annotation


# static fields
.field public static constructor:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18903
    const v0, -0x5eb235ae

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer67;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18902
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_channel;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 3
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p2, "exception"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 18906
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer67;->flags:I

    .line 18907
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer67;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer67;->creator:Z

    .line 18908
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer67;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_4

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer67;->kicked:Z

    .line 18909
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer67;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_5

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer67;->left:Z

    .line 18910
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer67;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_6

    move v0, v1

    :goto_3
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer67;->moderator:Z

    .line 18911
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer67;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_7

    move v0, v1

    :goto_4
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer67;->broadcast:Z

    .line 18912
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer67;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_8

    move v0, v1

    :goto_5
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer67;->verified:Z

    .line 18913
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer67;->flags:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_9

    move v0, v1

    :goto_6
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer67;->megagroup:Z

    .line 18914
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer67;->flags:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_a

    move v0, v1

    :goto_7
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer67;->restricted:Z

    .line 18915
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer67;->flags:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_b

    move v0, v1

    :goto_8
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer67;->democracy:Z

    .line 18916
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer67;->flags:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_c

    move v0, v1

    :goto_9
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer67;->signatures:Z

    .line 18917
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer67;->flags:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_d

    :goto_a
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer67;->min:Z

    .line 18918
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer67;->id:I

    .line 18919
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer67;->flags:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_0

    .line 18920
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer67;->access_hash:J

    .line 18922
    :cond_0
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer67;->title:Ljava/lang/String;

    .line 18923
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer67;->flags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_1

    .line 18924
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer67;->username:Ljava/lang/String;

    .line 18926
    :cond_1
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$ChatPhoto;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer67;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    .line 18927
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer67;->date:I

    .line 18928
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer67;->version:I

    .line 18929
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer67;->flags:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_2

    .line 18930
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer67;->restriction_reason:Ljava/lang/String;

    .line 18932
    :cond_2
    return-void

    :cond_3
    move v0, v2

    .line 18907
    goto/16 :goto_0

    :cond_4
    move v0, v2

    .line 18908
    goto/16 :goto_1

    :cond_5
    move v0, v2

    .line 18909
    goto/16 :goto_2

    :cond_6
    move v0, v2

    .line 18910
    goto/16 :goto_3

    :cond_7
    move v0, v2

    .line 18911
    goto/16 :goto_4

    :cond_8
    move v0, v2

    .line 18912
    goto/16 :goto_5

    :cond_9
    move v0, v2

    .line 18913
    goto :goto_6

    :cond_a
    move v0, v2

    .line 18914
    goto :goto_7

    :cond_b
    move v0, v2

    .line 18915
    goto :goto_8

    :cond_c
    move v0, v2

    .line 18916
    goto :goto_9

    :cond_d
    move v1, v2

    .line 18917
    goto :goto_a
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 2
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 18935
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer67;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 18936
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer67;->creator:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer67;->flags:I

    or-int/lit8 v0, v0, 0x1

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer67;->flags:I

    .line 18937
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer67;->kicked:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer67;->flags:I

    or-int/lit8 v0, v0, 0x2

    :goto_1
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer67;->flags:I

    .line 18938
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer67;->left:Z

    if-eqz v0, :cond_5

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer67;->flags:I

    or-int/lit8 v0, v0, 0x4

    :goto_2
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer67;->flags:I

    .line 18939
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer67;->moderator:Z

    if-eqz v0, :cond_6

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer67;->flags:I

    or-int/lit8 v0, v0, 0x10

    :goto_3
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer67;->flags:I

    .line 18940
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer67;->broadcast:Z

    if-eqz v0, :cond_7

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer67;->flags:I

    or-int/lit8 v0, v0, 0x20

    :goto_4
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer67;->flags:I

    .line 18941
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer67;->verified:Z

    if-eqz v0, :cond_8

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer67;->flags:I

    or-int/lit16 v0, v0, 0x80

    :goto_5
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer67;->flags:I

    .line 18942
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer67;->megagroup:Z

    if-eqz v0, :cond_9

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer67;->flags:I

    or-int/lit16 v0, v0, 0x100

    :goto_6
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer67;->flags:I

    .line 18943
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer67;->restricted:Z

    if-eqz v0, :cond_a

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer67;->flags:I

    or-int/lit16 v0, v0, 0x200

    :goto_7
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer67;->flags:I

    .line 18944
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer67;->democracy:Z

    if-eqz v0, :cond_b

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer67;->flags:I

    or-int/lit16 v0, v0, 0x400

    :goto_8
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer67;->flags:I

    .line 18945
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer67;->signatures:Z

    if-eqz v0, :cond_c

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer67;->flags:I

    or-int/lit16 v0, v0, 0x800

    :goto_9
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer67;->flags:I

    .line 18946
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer67;->min:Z

    if-eqz v0, :cond_d

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer67;->flags:I

    or-int/lit16 v0, v0, 0x1000

    :goto_a
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer67;->flags:I

    .line 18947
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer67;->flags:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 18948
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer67;->id:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 18949
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer67;->flags:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_0

    .line 18950
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer67;->access_hash:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    .line 18952
    :cond_0
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer67;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 18953
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer67;->flags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_1

    .line 18954
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer67;->username:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 18956
    :cond_1
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer67;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$ChatPhoto;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 18957
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer67;->date:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 18958
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer67;->version:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 18959
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer67;->flags:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_2

    .line 18960
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer67;->restriction_reason:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 18962
    :cond_2
    return-void

    .line 18936
    :cond_3
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer67;->flags:I

    and-int/lit8 v0, v0, -0x2

    goto/16 :goto_0

    .line 18937
    :cond_4
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer67;->flags:I

    and-int/lit8 v0, v0, -0x3

    goto/16 :goto_1

    .line 18938
    :cond_5
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer67;->flags:I

    and-int/lit8 v0, v0, -0x5

    goto/16 :goto_2

    .line 18939
    :cond_6
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer67;->flags:I

    and-int/lit8 v0, v0, -0x11

    goto/16 :goto_3

    .line 18940
    :cond_7
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer67;->flags:I

    and-int/lit8 v0, v0, -0x21

    goto/16 :goto_4

    .line 18941
    :cond_8
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer67;->flags:I

    and-int/lit16 v0, v0, -0x81

    goto/16 :goto_5

    .line 18942
    :cond_9
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer67;->flags:I

    and-int/lit16 v0, v0, -0x101

    goto/16 :goto_6

    .line 18943
    :cond_a
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer67;->flags:I

    and-int/lit16 v0, v0, -0x201

    goto/16 :goto_7

    .line 18944
    :cond_b
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer67;->flags:I

    and-int/lit16 v0, v0, -0x401

    goto/16 :goto_8

    .line 18945
    :cond_c
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer67;->flags:I

    and-int/lit16 v0, v0, -0x801

    goto/16 :goto_9

    .line 18946
    :cond_d
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel_layer67;->flags:I

    and-int/lit16 v0, v0, -0x1001

    goto/16 :goto_a
.end method
