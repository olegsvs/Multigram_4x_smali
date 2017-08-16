.class public Lorg/telegram/tgnet/TLRPC$TL_user_old;
.super Lorg/telegram/tgnet/TLRPC$TL_user;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_user_old"
.end annotation


# static fields
.field public static constructor:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8493
    const v0, 0x22e49072

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8492
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$TL_user;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 4
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p2, "exception"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 8497
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->flags:I

    .line 8498
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->flags:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_8

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->self:Z

    .line 8499
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->flags:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_9

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->contact:Z

    .line 8500
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->flags:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_a

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->mutual_contact:Z

    .line 8501
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->flags:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_b

    move v0, v1

    :goto_3
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->deleted:Z

    .line 8502
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->flags:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_c

    move v0, v1

    :goto_4
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->bot:Z

    .line 8503
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->flags:I

    const v3, 0x8000

    and-int/2addr v0, v3

    if-eqz v0, :cond_d

    move v0, v1

    :goto_5
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->bot_chat_history:Z

    .line 8504
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->flags:I

    const/high16 v3, 0x10000

    and-int/2addr v0, v3

    if-eqz v0, :cond_e

    move v0, v1

    :goto_6
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->bot_nochats:Z

    .line 8505
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->flags:I

    const/high16 v3, 0x20000

    and-int/2addr v0, v3

    if-eqz v0, :cond_f

    move v0, v1

    :goto_7
    iput-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->verified:Z

    .line 8506
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->flags:I

    const/high16 v3, 0x40000

    and-int/2addr v0, v3

    if-eqz v0, :cond_10

    :goto_8
    iput-boolean v1, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->explicit_content:Z

    .line 8507
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->id:I

    .line 8508
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 8509
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt64(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->access_hash:J

    .line 8511
    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 8512
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->first_name:Ljava/lang/String;

    .line 8514
    :cond_1
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 8515
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->last_name:Ljava/lang/String;

    .line 8517
    :cond_2
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 8518
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->username:Ljava/lang/String;

    .line 8520
    :cond_3
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    .line 8521
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->phone:Ljava/lang/String;

    .line 8523
    :cond_4
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_5

    .line 8524
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    .line 8526
    :cond_5
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->flags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_6

    .line 8527
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    invoke-static {p1, v0, p2}, Lorg/telegram/tgnet/TLRPC$UserStatus;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$UserStatus;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    .line 8529
    :cond_6
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->flags:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_7

    .line 8530
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v0

    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->bot_info_version:I

    .line 8532
    :cond_7
    return-void

    :cond_8
    move v0, v2

    .line 8498
    goto/16 :goto_0

    :cond_9
    move v0, v2

    .line 8499
    goto/16 :goto_1

    :cond_a
    move v0, v2

    .line 8500
    goto/16 :goto_2

    :cond_b
    move v0, v2

    .line 8501
    goto/16 :goto_3

    :cond_c
    move v0, v2

    .line 8502
    goto/16 :goto_4

    :cond_d
    move v0, v2

    .line 8503
    goto/16 :goto_5

    :cond_e
    move v0, v2

    .line 8504
    goto/16 :goto_6

    :cond_f
    move v0, v2

    .line 8505
    goto/16 :goto_7

    :cond_10
    move v1, v2

    .line 8506
    goto/16 :goto_8
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 2
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 8535
    sget v0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->constructor:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 8536
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->self:Z

    if-eqz v0, :cond_8

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->flags:I

    or-int/lit16 v0, v0, 0x400

    :goto_0
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->flags:I

    .line 8537
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->contact:Z

    if-eqz v0, :cond_9

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->flags:I

    or-int/lit16 v0, v0, 0x800

    :goto_1
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->flags:I

    .line 8538
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->mutual_contact:Z

    if-eqz v0, :cond_a

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->flags:I

    or-int/lit16 v0, v0, 0x1000

    :goto_2
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->flags:I

    .line 8539
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->deleted:Z

    if-eqz v0, :cond_b

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->flags:I

    or-int/lit16 v0, v0, 0x2000

    :goto_3
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->flags:I

    .line 8540
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->bot:Z

    if-eqz v0, :cond_c

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->flags:I

    or-int/lit16 v0, v0, 0x4000

    :goto_4
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->flags:I

    .line 8541
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->bot_chat_history:Z

    if-eqz v0, :cond_d

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->flags:I

    const v1, 0x8000

    or-int/2addr v0, v1

    :goto_5
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->flags:I

    .line 8542
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->bot_nochats:Z

    if-eqz v0, :cond_e

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->flags:I

    const/high16 v1, 0x10000

    or-int/2addr v0, v1

    :goto_6
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->flags:I

    .line 8543
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->verified:Z

    if-eqz v0, :cond_f

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->flags:I

    const/high16 v1, 0x20000

    or-int/2addr v0, v1

    :goto_7
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->flags:I

    .line 8544
    iget-boolean v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->explicit_content:Z

    if-eqz v0, :cond_10

    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->flags:I

    const/high16 v1, 0x40000

    or-int/2addr v0, v1

    :goto_8
    iput v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->flags:I

    .line 8545
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->flags:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 8546
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->id:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 8547
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 8548
    iget-wide v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->access_hash:J

    invoke-virtual {p1, v0, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    .line 8550
    :cond_0
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 8551
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->first_name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 8553
    :cond_1
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 8554
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->last_name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 8556
    :cond_2
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 8557
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->username:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 8559
    :cond_3
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    .line 8560
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->phone:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 8562
    :cond_4
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->flags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_5

    .line 8563
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 8565
    :cond_5
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->flags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_6

    .line 8566
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->status:Lorg/telegram/tgnet/TLRPC$UserStatus;

    invoke-virtual {v0, p1}, Lorg/telegram/tgnet/TLRPC$UserStatus;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 8568
    :cond_6
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->flags:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_7

    .line 8569
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->bot_info_version:I

    invoke-virtual {p1, v0}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 8571
    :cond_7
    return-void

    .line 8536
    :cond_8
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->flags:I

    and-int/lit16 v0, v0, -0x401

    goto/16 :goto_0

    .line 8537
    :cond_9
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->flags:I

    and-int/lit16 v0, v0, -0x801

    goto/16 :goto_1

    .line 8538
    :cond_a
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->flags:I

    and-int/lit16 v0, v0, -0x1001

    goto/16 :goto_2

    .line 8539
    :cond_b
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->flags:I

    and-int/lit16 v0, v0, -0x2001

    goto/16 :goto_3

    .line 8540
    :cond_c
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->flags:I

    and-int/lit16 v0, v0, -0x4001

    goto/16 :goto_4

    .line 8541
    :cond_d
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->flags:I

    const v1, -0x8001

    and-int/2addr v0, v1

    goto/16 :goto_5

    .line 8542
    :cond_e
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->flags:I

    const v1, -0x10001

    and-int/2addr v0, v1

    goto/16 :goto_6

    .line 8543
    :cond_f
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->flags:I

    const v1, -0x20001

    and-int/2addr v0, v1

    goto/16 :goto_7

    .line 8544
    :cond_10
    iget v0, p0, Lorg/telegram/tgnet/TLRPC$TL_user_old;->flags:I

    const v1, -0x40001

    and-int/2addr v0, v1

    goto/16 :goto_8
.end method
