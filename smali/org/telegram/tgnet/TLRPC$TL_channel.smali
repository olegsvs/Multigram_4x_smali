.class public Lorg/telegram/tgnet/TLRPC$TL_channel;
.super Lorg/telegram/tgnet/TLRPC$Chat;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_channel"
.end annotation


# static fields
.field public static constructor:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19038
    const v0, 0xcb44b1c

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_channel;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19037
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$Chat;-><init>()V

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

    .line 19041
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->flags:I

    .line 19042
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_5

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->creator:Z

    .line 19043
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_6

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->left:Z

    .line 19044
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_7

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->broadcast:Z

    .line 19045
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_8

    move v0, v1

    :goto_3
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->verified:Z

    .line 19046
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->flags:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_9

    move v0, v1

    :goto_4
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->megagroup:Z

    .line 19047
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->flags:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_a

    move v0, v1

    :goto_5
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->restricted:Z

    .line 19048
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->flags:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_b

    move v0, v1

    :goto_6
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->democracy:Z

    .line 19049
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->flags:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_c

    move v0, v1

    :goto_7
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->signatures:Z

    .line 19050
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->flags:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_d

    :goto_8
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->min:Z

    .line 19051
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->id:I

    .line 19052
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->flags:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_0

    .line 19053
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->access_hash:J

    .line 19055
    :cond_0
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->title:Ljava/lang/String;

    .line 19056
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->flags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_1

    .line 19057
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->username:Ljava/lang/String;

    .line 19059
    :cond_1
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$ChatPhoto;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    .line 19060
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->date:I

    .line 19061
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->version:I

    .line 19062
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->flags:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_2

    .line 19063
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->restriction_reason:Ljava/lang/String;

    .line 19065
    :cond_2
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->flags:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_3

    .line 19066
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->admin_rights:Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;

    .line 19068
    :cond_3
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->flags:I

    const v1, 0x8000

    and-int/2addr v0, v1

    if-eqz v0, :cond_4

    .line 19069
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->banned_rights:Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;

    .line 19071
    :cond_4
    return-void

    :cond_5
    move v0, v2

    .line 19042
    goto/16 :goto_0

    :cond_6
    move v0, v2

    .line 19043
    goto/16 :goto_1

    :cond_7
    move v0, v2

    .line 19044
    goto/16 :goto_2

    :cond_8
    move v0, v2

    .line 19045
    goto/16 :goto_3

    :cond_9
    move v0, v2

    .line 19046
    goto/16 :goto_4

    :cond_a
    move v0, v2

    .line 19047
    goto/16 :goto_5

    :cond_b
    move v0, v2

    .line 19048
    goto/16 :goto_6

    :cond_c
    move v0, v2

    .line 19049
    goto/16 :goto_7

    :cond_d
    move v1, v2

    .line 19050
    goto/16 :goto_8
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 2
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 19074
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_channel;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 19075
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->creator:Z

    if-eqz v0, :cond_5

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->flags:I

    or-int/lit8 v0, v0, 0x1

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->flags:I

    .line 19076
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->kicked:Z

    if-eqz v0, :cond_6

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->flags:I

    or-int/lit8 v0, v0, 0x2

    :goto_1
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->flags:I

    .line 19077
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->left:Z

    if-eqz v0, :cond_7

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->flags:I

    or-int/lit8 v0, v0, 0x4

    :goto_2
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->flags:I

    .line 19078
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->broadcast:Z

    if-eqz v0, :cond_8

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->flags:I

    or-int/lit8 v0, v0, 0x20

    :goto_3
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->flags:I

    .line 19079
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->verified:Z

    if-eqz v0, :cond_9

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->flags:I

    or-int/lit16 v0, v0, 0x80

    :goto_4
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->flags:I

    .line 19080
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->megagroup:Z

    if-eqz v0, :cond_a

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->flags:I

    or-int/lit16 v0, v0, 0x100

    :goto_5
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->flags:I

    .line 19081
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->restricted:Z

    if-eqz v0, :cond_b

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->flags:I

    or-int/lit16 v0, v0, 0x200

    :goto_6
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->flags:I

    .line 19082
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->democracy:Z

    if-eqz v0, :cond_c

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->flags:I

    or-int/lit16 v0, v0, 0x400

    :goto_7
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->flags:I

    .line 19083
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->signatures:Z

    if-eqz v0, :cond_d

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->flags:I

    or-int/lit16 v0, v0, 0x800

    :goto_8
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->flags:I

    .line 19084
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->min:Z

    if-eqz v0, :cond_e

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->flags:I

    or-int/lit16 v0, v0, 0x1000

    :goto_9
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->flags:I

    .line 19085
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->flags:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 19086
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->id:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 19087
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->flags:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_0

    .line 19088
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->access_hash:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    .line 19090
    :cond_0
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 19091
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->flags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_1

    .line 19092
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->username:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 19094
    :cond_1
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->photo:Lorg/telegram/tgnet/TLRPC$ChatPhoto;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$ChatPhoto;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 19095
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->date:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 19096
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->version:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 19097
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->flags:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_2

    .line 19098
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->restriction_reason:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 19100
    :cond_2
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->flags:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_3

    .line 19101
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->admin_rights:Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$TL_channelAdminRights;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 19103
    :cond_3
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->flags:I

    const v1, 0x8000

    and-int/2addr v0, v1

    if-eqz v0, :cond_4

    .line 19104
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->banned_rights:Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$TL_channelBannedRights;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 19106
    :cond_4
    return-void

    .line 19075
    :cond_5
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->flags:I

    and-int/lit8 v0, v0, -0x2

    goto/16 :goto_0

    .line 19076
    :cond_6
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->flags:I

    and-int/lit8 v0, v0, -0x3

    goto/16 :goto_1

    .line 19077
    :cond_7
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->flags:I

    and-int/lit8 v0, v0, -0x5

    goto/16 :goto_2

    .line 19078
    :cond_8
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->flags:I

    and-int/lit8 v0, v0, -0x21

    goto/16 :goto_3

    .line 19079
    :cond_9
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->flags:I

    and-int/lit16 v0, v0, -0x81

    goto/16 :goto_4

    .line 19080
    :cond_a
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->flags:I

    and-int/lit16 v0, v0, -0x101

    goto/16 :goto_5

    .line 19081
    :cond_b
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->flags:I

    and-int/lit16 v0, v0, -0x201

    goto/16 :goto_6

    .line 19082
    :cond_c
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->flags:I

    and-int/lit16 v0, v0, -0x401

    goto/16 :goto_7

    .line 19083
    :cond_d
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->flags:I

    and-int/lit16 v0, v0, -0x801

    goto/16 :goto_8

    .line 19084
    :cond_e
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_channel;->flags:I

    and-int/lit16 v0, v0, -0x1001

    goto/16 :goto_9
.end method
