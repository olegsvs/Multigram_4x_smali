.class public Lorg/telegram/tgnet/TLRPC$TL_user_layer65;
.super Lorg/telegram/tgnet/TLRPC$TL_user;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_user_layer65"
.end annotation


# static fields
.field public static constructor:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8395
    const v0, -0x2ef26866

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_user_layer65;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8394
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_user;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 5
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p2, "exception"    # Z

    .prologue
    const/high16 v4, 0x40000

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 8399
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_layer65;->flags:I

    .line 8400
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_layer65;->flags:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_a

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_layer65;->self:Z

    .line 8401
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_layer65;->flags:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_b

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_layer65;->contact:Z

    .line 8402
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_layer65;->flags:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_c

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_layer65;->mutual_contact:Z

    .line 8403
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_layer65;->flags:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_d

    move v0, v1

    :goto_3
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_layer65;->deleted:Z

    .line 8404
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_layer65;->flags:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_e

    move v0, v1

    :goto_4
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_layer65;->bot:Z

    .line 8405
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_layer65;->flags:I

    const v3, 0x8000

    and-int/2addr v0, v3

    if-eqz v0, :cond_f

    move v0, v1

    :goto_5
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_layer65;->bot_chat_history:Z

    .line 8406
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_layer65;->flags:I

    const/high16 v3, 0x10000

    and-int/2addr v0, v3

    if-eqz v0, :cond_10

    move v0, v1

    :goto_6
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_layer65;->bot_nochats:Z

    .line 8407
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_layer65;->flags:I

    const/high16 v3, 0x20000

    and-int/2addr v0, v3

    if-eqz v0, :cond_11

    move v0, v1

    :goto_7
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_layer65;->verified:Z

    .line 8408
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_layer65;->flags:I

    and-int/2addr v0, v4

    if-eqz v0, :cond_12

    move v0, v1

    :goto_8
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_layer65;->restricted:Z

    .line 8409
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_layer65;->flags:I

    const/high16 v3, 0x100000

    and-int/2addr v0, v3

    if-eqz v0, :cond_13

    move v0, v1

    :goto_9
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_layer65;->min:Z

    .line 8410
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_layer65;->flags:I

    const/high16 v3, 0x200000

    and-int/2addr v0, v3

    if-eqz v0, :cond_14

    :goto_a
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_user_layer65;->bot_inline_geo:Z

    .line 8411
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_layer65;->id:I

    .line 8412
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_layer65;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 8413
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_layer65;->access_hash:J

    .line 8415
    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_layer65;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 8416
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_layer65;->first_name:Ljava/lang/String;

    .line 8418
    :cond_1
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_layer65;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 8419
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_layer65;->last_name:Ljava/lang/String;

    .line 8421
    :cond_2
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_layer65;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 8422
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_layer65;->username:Ljava/lang/String;

    .line 8424
    :cond_3
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_layer65;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    .line 8425
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_layer65;->phone:Ljava/lang/String;

    .line 8427
    :cond_4
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_layer65;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_5

    .line 8428
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_layer65;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    .line 8430
    :cond_5
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_layer65;->flags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_6

    .line 8431
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$UserStatus;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$UserStatus;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_layer65;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    .line 8433
    :cond_6
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_layer65;->flags:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_7

    .line 8434
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_layer65;->bot_info_version:I

    .line 8436
    :cond_7
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_layer65;->flags:I

    and-int/2addr v0, v4

    if-eqz v0, :cond_8

    .line 8437
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_layer65;->restriction_reason:Ljava/lang/String;

    .line 8439
    :cond_8
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_layer65;->flags:I

    const/high16 v1, 0x80000

    and-int/2addr v0, v1

    if-eqz v0, :cond_9

    .line 8440
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_layer65;->bot_inline_placeholder:Ljava/lang/String;

    .line 8442
    :cond_9
    return-void

    :cond_a
    move v0, v2

    .line 8400
    goto/16 :goto_0

    :cond_b
    move v0, v2

    .line 8401
    goto/16 :goto_1

    :cond_c
    move v0, v2

    .line 8402
    goto/16 :goto_2

    :cond_d
    move v0, v2

    .line 8403
    goto/16 :goto_3

    :cond_e
    move v0, v2

    .line 8404
    goto/16 :goto_4

    :cond_f
    move v0, v2

    .line 8405
    goto/16 :goto_5

    :cond_10
    move v0, v2

    .line 8406
    goto/16 :goto_6

    :cond_11
    move v0, v2

    .line 8407
    goto/16 :goto_7

    :cond_12
    move v0, v2

    .line 8408
    goto/16 :goto_8

    :cond_13
    move v0, v2

    .line 8409
    goto/16 :goto_9

    :cond_14
    move v1, v2

    .line 8410
    goto/16 :goto_a
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 3
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    const/high16 v2, 0x40000

    .line 8445
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_user_layer65;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 8446
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_layer65;->self:Z

    if-eqz v0, :cond_a

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_layer65;->flags:I

    or-int/lit16 v0, v0, 0x400

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_layer65;->flags:I

    .line 8447
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_layer65;->contact:Z

    if-eqz v0, :cond_b

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_layer65;->flags:I

    or-int/lit16 v0, v0, 0x800

    :goto_1
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_layer65;->flags:I

    .line 8448
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_layer65;->mutual_contact:Z

    if-eqz v0, :cond_c

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_layer65;->flags:I

    or-int/lit16 v0, v0, 0x1000

    :goto_2
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_layer65;->flags:I

    .line 8449
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_layer65;->deleted:Z

    if-eqz v0, :cond_d

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_layer65;->flags:I

    or-int/lit16 v0, v0, 0x2000

    :goto_3
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_layer65;->flags:I

    .line 8450
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_layer65;->bot:Z

    if-eqz v0, :cond_e

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_layer65;->flags:I

    or-int/lit16 v0, v0, 0x4000

    :goto_4
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_layer65;->flags:I

    .line 8451
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_layer65;->bot_chat_history:Z

    if-eqz v0, :cond_f

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_layer65;->flags:I

    const v1, 0x8000

    or-int/2addr v0, v1

    :goto_5
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_layer65;->flags:I

    .line 8452
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_layer65;->bot_nochats:Z

    if-eqz v0, :cond_10

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_layer65;->flags:I

    const/high16 v1, 0x10000

    or-int/2addr v0, v1

    :goto_6
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_layer65;->flags:I

    .line 8453
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_layer65;->verified:Z

    if-eqz v0, :cond_11

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_layer65;->flags:I

    const/high16 v1, 0x20000

    or-int/2addr v0, v1

    :goto_7
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_layer65;->flags:I

    .line 8454
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_layer65;->restricted:Z

    if-eqz v0, :cond_12

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_layer65;->flags:I

    or-int/2addr v0, v2

    :goto_8
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_layer65;->flags:I

    .line 8455
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_layer65;->min:Z

    if-eqz v0, :cond_13

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_layer65;->flags:I

    const/high16 v1, 0x100000

    or-int/2addr v0, v1

    :goto_9
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_layer65;->flags:I

    .line 8456
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_layer65;->bot_inline_geo:Z

    if-eqz v0, :cond_14

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_layer65;->flags:I

    const/high16 v1, 0x200000

    or-int/2addr v0, v1

    :goto_a
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_layer65;->flags:I

    .line 8457
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_layer65;->flags:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 8458
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_layer65;->id:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 8459
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_layer65;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 8460
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_layer65;->access_hash:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    .line 8462
    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_layer65;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 8463
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_layer65;->first_name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 8465
    :cond_1
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_layer65;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 8466
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_layer65;->last_name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 8468
    :cond_2
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_layer65;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 8469
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_layer65;->username:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 8471
    :cond_3
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_layer65;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    .line 8472
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_layer65;->phone:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 8474
    :cond_4
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_layer65;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_5

    .line 8475
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_layer65;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 8477
    :cond_5
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_layer65;->flags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_6

    .line 8478
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_layer65;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$UserStatus;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 8480
    :cond_6
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_layer65;->flags:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_7

    .line 8481
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_layer65;->bot_info_version:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 8483
    :cond_7
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_layer65;->flags:I

    and-int/2addr v0, v2

    if-eqz v0, :cond_8

    .line 8484
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_layer65;->restriction_reason:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 8486
    :cond_8
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_layer65;->flags:I

    const/high16 v1, 0x80000

    and-int/2addr v0, v1

    if-eqz v0, :cond_9

    .line 8487
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_layer65;->bot_inline_placeholder:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 8489
    :cond_9
    return-void

    .line 8446
    :cond_a
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_layer65;->flags:I

    and-int/lit16 v0, v0, -0x401

    goto/16 :goto_0

    .line 8447
    :cond_b
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_layer65;->flags:I

    and-int/lit16 v0, v0, -0x801

    goto/16 :goto_1

    .line 8448
    :cond_c
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_layer65;->flags:I

    and-int/lit16 v0, v0, -0x1001

    goto/16 :goto_2

    .line 8449
    :cond_d
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_layer65;->flags:I

    and-int/lit16 v0, v0, -0x2001

    goto/16 :goto_3

    .line 8450
    :cond_e
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_layer65;->flags:I

    and-int/lit16 v0, v0, -0x4001

    goto/16 :goto_4

    .line 8451
    :cond_f
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_layer65;->flags:I

    const v1, -0x8001

    and-int/2addr v0, v1

    goto/16 :goto_5

    .line 8452
    :cond_10
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_layer65;->flags:I

    const v1, -0x10001

    and-int/2addr v0, v1

    goto/16 :goto_6

    .line 8453
    :cond_11
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_layer65;->flags:I

    const v1, -0x20001

    and-int/2addr v0, v1

    goto/16 :goto_7

    .line 8454
    :cond_12
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_layer65;->flags:I

    const v1, -0x40001

    and-int/2addr v0, v1

    goto/16 :goto_8

    .line 8455
    :cond_13
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_layer65;->flags:I

    const v1, -0x100001

    and-int/2addr v0, v1

    goto/16 :goto_9

    .line 8456
    :cond_14
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_layer65;->flags:I

    const v1, -0x200001

    and-int/2addr v0, v1

    goto/16 :goto_a
.end method
