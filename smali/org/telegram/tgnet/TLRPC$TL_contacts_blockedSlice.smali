.class public Lorg/telegram/tgnet/TLRPC$TL_contacts_blockedSlice;
.super Lorg/telegram/tgnet/TLRPC$contacts_Blocked;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_contacts_blockedSlice"
.end annotation


# static fields
.field public static constructor:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 4376
    const v0, -0x6ff7fd5f

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_contacts_blockedSlice;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4375
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$contacts_Blocked;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 9
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p2, "exception"    # Z

    .prologue
    const v5, 0x1cb5c415

    const/4 v6, 0x1

    const/4 v8, 0x0

    .line 4380
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    iput v4, p0, Lorg/telegram/tgnet/TLRPC$TL_contacts_blockedSlice;->count:I

    .line 4381
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v2

    .line 4382
    .local v2, "magic":I
    if-eq v2, v5, :cond_0

    .line 4383
    if-eqz p2, :cond_1

    .line 4384
    new-instance v4, Ljava/lang/RuntimeException;

    const-string/jumbo v5, "wrong Vector magic, got %x"

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 4388
    :cond_0
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v1

    .line 4389
    .local v1, "count":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    if-ge v0, v1, :cond_3

    .line 4390
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    invoke-static {p1, v4, p2}, Lorg/telegram/tgnet/TLRPC$TL_contactBlocked;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_contactBlocked;

    move-result-object v3

    .line 4391
    .local v3, "object":Lorg/telegram/tgnet/TLRPC$TL_contactBlocked;
    if-nez v3, :cond_2

    .line 4411
    .end local v0    # "a":I
    .end local v1    # "count":I
    .end local v3    # "object":Lorg/telegram/tgnet/TLRPC$TL_contactBlocked;
    :cond_1
    return-void

    .line 4394
    .restart local v0    # "a":I
    .restart local v1    # "count":I
    .restart local v3    # "object":Lorg/telegram/tgnet/TLRPC$TL_contactBlocked;
    :cond_2
    iget-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_contacts_blockedSlice;->blocked:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4389
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4396
    .end local v3    # "object":Lorg/telegram/tgnet/TLRPC$TL_contactBlocked;
    :cond_3
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v2

    .line 4397
    if-eq v2, v5, :cond_4

    .line 4398
    if-eqz p2, :cond_1

    .line 4399
    new-instance v4, Ljava/lang/RuntimeException;

    const-string/jumbo v5, "wrong Vector magic, got %x"

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 4403
    :cond_4
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v1

    .line 4404
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_1

    .line 4405
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    invoke-static {p1, v4, p2}, Lorg/telegram/tgnet/TLRPC$User;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v3

    .line 4406
    .local v3, "object":Lorg/telegram/tgnet/TLRPC$User;
    if-eqz v3, :cond_1

    .line 4409
    iget-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_contacts_blockedSlice;->users:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4404
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 4
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    const v3, 0x1cb5c415

    .line 4414
    sget v2, Lorg/telegram/tgnet/TLRPC$TL_contacts_blockedSlice;->constructor:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 4415
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_contacts_blockedSlice;->count:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 4416
    invoke-virtual {p1, v3}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 4417
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_contacts_blockedSlice;->blocked:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 4418
    .local v1, "count":I
    invoke-virtual {p1, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 4419
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 4420
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_contacts_blockedSlice;->blocked:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_contactBlocked;

    invoke-virtual {v2, p1}, Lorg/telegram/tgnet/TLRPC$TL_contactBlocked;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 4419
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4422
    :cond_0
    invoke-virtual {p1, v3}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 4423
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_contacts_blockedSlice;->users:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 4424
    invoke-virtual {p1, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 4425
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_1

    .line 4426
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_contacts_blockedSlice;->users:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$User;

    invoke-virtual {v2, p1}, Lorg/telegram/tgnet/TLRPC$User;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 4425
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 4428
    :cond_1
    return-void
.end method