.class public Lorg/telegram/tgnet/TLRPC$TL_message;
.super Lorg/telegram/tgnet/TLRPC$Message;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_message"
.end annotation


# static fields
.field public static constructor:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26670
    const v0, -0x6f2223ef

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_message;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26669
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$Message;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 11
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p2, "exception"    # Z

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 26673
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v6

    iput v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->flags:I

    .line 26674
    iget v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->flags:I

    and-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_6

    move v6, v7

    :goto_0
    iput-boolean v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->out:Z

    .line 26675
    iget v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->flags:I

    and-int/lit8 v6, v6, 0x10

    if-eqz v6, :cond_7

    move v6, v7

    :goto_1
    iput-boolean v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->mentioned:Z

    .line 26676
    iget v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->flags:I

    and-int/lit8 v6, v6, 0x20

    if-eqz v6, :cond_8

    move v6, v7

    :goto_2
    iput-boolean v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->media_unread:Z

    .line 26677
    iget v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->flags:I

    and-int/lit16 v6, v6, 0x2000

    if-eqz v6, :cond_9

    move v6, v7

    :goto_3
    iput-boolean v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->silent:Z

    .line 26678
    iget v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->flags:I

    and-int/lit16 v6, v6, 0x4000

    if-eqz v6, :cond_a

    move v6, v7

    :goto_4
    iput-boolean v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->post:Z

    .line 26679
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v6

    iput v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->id:I

    .line 26680
    iget v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->flags:I

    and-int/lit16 v6, v6, 0x100

    if-eqz v6, :cond_0

    .line 26681
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v6

    iput v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->from_id:I

    .line 26683
    :cond_0
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v6

    invoke-static {p1, v6, p2}, Lorg/telegram/tgnet/TLRPC$Peer;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Peer;

    move-result-object v6

    iput-object v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 26684
    iget v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->flags:I

    and-int/lit8 v6, v6, 0x4

    if-eqz v6, :cond_1

    .line 26685
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v6

    invoke-static {p1, v6, p2}, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;

    move-result-object v6

    iput-object v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;

    .line 26687
    :cond_1
    iget v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->flags:I

    and-int/lit16 v6, v6, 0x800

    if-eqz v6, :cond_2

    .line 26688
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v6

    iput v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->via_bot_id:I

    .line 26690
    :cond_2
    iget v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->flags:I

    and-int/lit8 v6, v6, 0x8

    if-eqz v6, :cond_3

    .line 26691
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v6

    iput v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->reply_to_msg_id:I

    .line 26693
    :cond_3
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v6

    iput v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->date:I

    .line 26694
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->message:Ljava/lang/String;

    .line 26695
    iget v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->flags:I

    and-int/lit16 v6, v6, 0x200

    if-eqz v6, :cond_4

    .line 26696
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v6

    invoke-static {p1, v6, p2}, Lorg/telegram/tgnet/TLRPC$MessageMedia;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-result-object v6

    iput-object v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    .line 26697
    iget-object v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz v6, :cond_4

    .line 26698
    iget-object v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$MessageMedia;->ttl_seconds:I

    iput v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->ttl:I

    .line 26701
    :cond_4
    iget v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->flags:I

    and-int/lit8 v6, v6, 0x40

    if-eqz v6, :cond_5

    .line 26702
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v6

    invoke-static {p1, v6, p2}, Lorg/telegram/tgnet/TLRPC$ReplyMarkup;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$ReplyMarkup;

    move-result-object v6

    iput-object v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->reply_markup:Lorg/telegram/tgnet/TLRPC$ReplyMarkup;

    .line 26704
    :cond_5
    iget v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->flags:I

    and-int/lit16 v6, v6, 0x80

    if-eqz v6, :cond_e

    .line 26705
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    .line 26706
    .local v4, "magic":I
    const v6, 0x1cb5c415

    if-eq v4, v6, :cond_b

    .line 26707
    if-eqz p2, :cond_c

    .line 26708
    new-instance v6, Ljava/lang/RuntimeException;

    const-string/jumbo v9, "wrong Vector magic, got %x"

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v7, v8

    invoke-static {v9, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .end local v4    # "magic":I
    :cond_6
    move v6, v8

    .line 26674
    goto/16 :goto_0

    :cond_7
    move v6, v8

    .line 26675
    goto/16 :goto_1

    :cond_8
    move v6, v8

    .line 26676
    goto/16 :goto_2

    :cond_9
    move v6, v8

    .line 26677
    goto/16 :goto_3

    :cond_a
    move v6, v8

    .line 26678
    goto/16 :goto_4

    .line 26712
    .restart local v4    # "magic":I
    :cond_b
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v3

    .line 26713
    .local v3, "count":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_5
    if-ge v0, v3, :cond_e

    .line 26714
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v6

    invoke-static {p1, v6, p2}, Lorg/telegram/tgnet/TLRPC$MessageEntity;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$MessageEntity;

    move-result-object v5

    .line 26715
    .local v5, "object":Lorg/telegram/tgnet/TLRPC$MessageEntity;
    if-nez v5, :cond_d

    .line 26749
    .end local v0    # "a":I
    .end local v3    # "count":I
    .end local v4    # "magic":I
    .end local v5    # "object":Lorg/telegram/tgnet/TLRPC$MessageEntity;
    :cond_c
    :goto_6
    return-void

    .line 26718
    .restart local v0    # "a":I
    .restart local v3    # "count":I
    .restart local v4    # "magic":I
    .restart local v5    # "object":Lorg/telegram/tgnet/TLRPC$MessageEntity;
    :cond_d
    iget-object v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->entities:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26713
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 26721
    .end local v0    # "a":I
    .end local v3    # "count":I
    .end local v4    # "magic":I
    .end local v5    # "object":Lorg/telegram/tgnet/TLRPC$MessageEntity;
    :cond_e
    iget v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->flags:I

    and-int/lit16 v6, v6, 0x400

    if-eqz v6, :cond_f

    .line 26722
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v6

    iput v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->views:I

    .line 26724
    :cond_f
    iget v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->flags:I

    const v9, 0x8000

    and-int/2addr v6, v9

    if-eqz v6, :cond_10

    .line 26725
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v6

    iput v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->edit_date:I

    .line 26727
    :cond_10
    iget v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->flags:I

    const/high16 v9, 0x10000

    and-int/2addr v6, v9

    if-eqz v6, :cond_11

    .line 26728
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->post_author:Ljava/lang/String;

    .line 26730
    :cond_11
    iget v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->id:I

    if-ltz v6, :cond_12

    iget-object v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz v6, :cond_15

    iget-object v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v6, v6, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;

    if-nez v6, :cond_15

    iget-object v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v6, v6, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;

    if-nez v6, :cond_15

    iget-object v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->message:Ljava/lang/String;

    if-eqz v6, :cond_15

    iget-object v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->message:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_15

    iget-object v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->message:Ljava/lang/String;

    const-string/jumbo v9, "-1"

    invoke-virtual {v6, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_15

    .line 26731
    :cond_12
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readString(Z)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->attachPath:Ljava/lang/String;

    .line 26732
    iget v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->id:I

    if-gez v6, :cond_15

    iget-object v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->attachPath:Ljava/lang/String;

    const-string/jumbo v9, "||"

    invoke-virtual {v6, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_15

    .line 26733
    iget-object v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->attachPath:Ljava/lang/String;

    const-string/jumbo v9, "\\|\\|"

    invoke-virtual {v6, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 26734
    .local v1, "args":[Ljava/lang/String;
    array-length v6, v1

    if-lez v6, :cond_15

    .line 26735
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->params:Ljava/util/HashMap;

    .line 26736
    const/4 v0, 0x1

    .restart local v0    # "a":I
    :goto_7
    array-length v6, v1

    add-int/lit8 v6, v6, -0x1

    if-ge v0, v6, :cond_14

    .line 26737
    aget-object v6, v1, v0

    const-string/jumbo v9, "\\|=\\|"

    invoke-virtual {v6, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 26738
    .local v2, "args2":[Ljava/lang/String;
    array-length v6, v2

    const/4 v9, 0x2

    if-ne v6, v9, :cond_13

    .line 26739
    iget-object v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->params:Ljava/util/HashMap;

    aget-object v9, v2, v8

    aget-object v10, v2, v7

    invoke-virtual {v6, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26736
    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 26742
    .end local v2    # "args2":[Ljava/lang/String;
    :cond_14
    array-length v6, v1

    add-int/lit8 v6, v6, -0x1

    aget-object v6, v1, v6

    iput-object v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->attachPath:Ljava/lang/String;

    .line 26746
    .end local v0    # "a":I
    .end local v1    # "args":[Ljava/lang/String;
    :cond_15
    iget v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->flags:I

    and-int/lit8 v6, v6, 0x4

    if-eqz v6, :cond_c

    iget v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->id:I

    if-gez v6, :cond_c

    .line 26747
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v6

    iput v6, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->fwd_msg_id:I

    goto/16 :goto_6
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 7
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 26752
    sget v4, Lorg/telegram/tgnet/TLRPC$TL_message;->constructor:I

    invoke-virtual {p1, v4}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 26753
    iget-boolean v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->out:Z

    if-eqz v4, :cond_6

    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->flags:I

    or-int/lit8 v4, v4, 0x2

    :goto_0
    iput v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->flags:I

    .line 26754
    iget-boolean v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->mentioned:Z

    if-eqz v4, :cond_7

    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->flags:I

    or-int/lit8 v4, v4, 0x10

    :goto_1
    iput v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->flags:I

    .line 26755
    iget-boolean v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->media_unread:Z

    if-eqz v4, :cond_8

    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->flags:I

    or-int/lit8 v4, v4, 0x20

    :goto_2
    iput v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->flags:I

    .line 26756
    iget-boolean v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->silent:Z

    if-eqz v4, :cond_9

    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->flags:I

    or-int/lit16 v4, v4, 0x2000

    :goto_3
    iput v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->flags:I

    .line 26757
    iget-boolean v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->post:Z

    if-eqz v4, :cond_a

    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->flags:I

    or-int/lit16 v4, v4, 0x4000

    :goto_4
    iput v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->flags:I

    .line 26758
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->flags:I

    invoke-virtual {p1, v4}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 26759
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->id:I

    invoke-virtual {p1, v4}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 26760
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->flags:I

    and-int/lit16 v4, v4, 0x100

    if-eqz v4, :cond_0

    .line 26761
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->from_id:I

    invoke-virtual {p1, v4}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 26763
    :cond_0
    iget-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-virtual {v4, p1}, Lorg/telegram/tgnet/TLRPC$Peer;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 26764
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->flags:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_1

    .line 26765
    iget-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->fwd_from:Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;

    invoke-virtual {v4, p1}, Lorg/telegram/tgnet/TLRPC$MessageFwdHeader;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 26767
    :cond_1
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->flags:I

    and-int/lit16 v4, v4, 0x800

    if-eqz v4, :cond_2

    .line 26768
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->via_bot_id:I

    invoke-virtual {p1, v4}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 26770
    :cond_2
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->flags:I

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_3

    .line 26771
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->reply_to_msg_id:I

    invoke-virtual {p1, v4}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 26773
    :cond_3
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->date:I

    invoke-virtual {p1, v4}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 26774
    iget-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->message:Ljava/lang/String;

    invoke-virtual {p1, v4}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 26775
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->flags:I

    and-int/lit16 v4, v4, 0x200

    if-eqz v4, :cond_4

    .line 26776
    iget-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    invoke-virtual {v4, p1}, Lorg/telegram/tgnet/TLRPC$MessageMedia;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 26778
    :cond_4
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->flags:I

    and-int/lit8 v4, v4, 0x40

    if-eqz v4, :cond_5

    .line 26779
    iget-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->reply_markup:Lorg/telegram/tgnet/TLRPC$ReplyMarkup;

    invoke-virtual {v4, p1}, Lorg/telegram/tgnet/TLRPC$ReplyMarkup;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 26781
    :cond_5
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->flags:I

    and-int/lit16 v4, v4, 0x80

    if-eqz v4, :cond_b

    .line 26782
    const v4, 0x1cb5c415

    invoke-virtual {p1, v4}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 26783
    iget-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->entities:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 26784
    .local v1, "count":I
    invoke-virtual {p1, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 26785
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_5
    if-ge v0, v1, :cond_b

    .line 26786
    iget-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->entities:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$MessageEntity;

    invoke-virtual {v4, p1}, Lorg/telegram/tgnet/TLRPC$MessageEntity;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 26785
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 26753
    .end local v0    # "a":I
    .end local v1    # "count":I
    :cond_6
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->flags:I

    and-int/lit8 v4, v4, -0x3

    goto/16 :goto_0

    .line 26754
    :cond_7
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->flags:I

    and-int/lit8 v4, v4, -0x11

    goto/16 :goto_1

    .line 26755
    :cond_8
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->flags:I

    and-int/lit8 v4, v4, -0x21

    goto/16 :goto_2

    .line 26756
    :cond_9
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->flags:I

    and-int/lit16 v4, v4, -0x2001

    goto/16 :goto_3

    .line 26757
    :cond_a
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->flags:I

    and-int/lit16 v4, v4, -0x4001

    goto/16 :goto_4

    .line 26789
    :cond_b
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->flags:I

    and-int/lit16 v4, v4, 0x400

    if-eqz v4, :cond_c

    .line 26790
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->views:I

    invoke-virtual {p1, v4}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 26792
    :cond_c
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->flags:I

    const v5, 0x8000

    and-int/2addr v4, v5

    if-eqz v4, :cond_d

    .line 26793
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->edit_date:I

    invoke-virtual {p1, v4}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 26795
    :cond_d
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->flags:I

    const/high16 v5, 0x10000

    and-int/2addr v4, v5

    if-eqz v4, :cond_e

    .line 26796
    iget-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->post_author:Ljava/lang/String;

    invoke-virtual {p1, v4}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 26798
    :cond_e
    iget-object v3, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->attachPath:Ljava/lang/String;

    .line 26799
    .local v3, "path":Ljava/lang/String;
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->id:I

    if-gez v4, :cond_10

    iget-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->params:Ljava/util/HashMap;

    if-eqz v4, :cond_10

    iget-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->params:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    if-lez v4, :cond_10

    .line 26800
    iget-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->params:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 26801
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, "|=|"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, "||"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 26802
    goto :goto_6

    .line 26803
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_f
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "||"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 26805
    :cond_10
    invoke-virtual {p1, v3}, Lorg/telegram/tgnet/AbstractSerializedData;->writeString(Ljava/lang/String;)V

    .line 26806
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->flags:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_11

    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->id:I

    if-gez v4, :cond_11

    .line 26807
    iget v4, p0, Lorg/telegram/tgnet/TLRPC$TL_message;->fwd_msg_id:I

    invoke-virtual {p1, v4}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 26809
    :cond_11
    return-void
.end method
