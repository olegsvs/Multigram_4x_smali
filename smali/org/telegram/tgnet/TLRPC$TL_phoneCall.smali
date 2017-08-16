.class public Lorg/telegram/tgnet/TLRPC$TL_phoneCall;
.super Lorg/telegram/tgnet/TLRPC$PhoneCall;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TL_phoneCall"
.end annotation


# static fields
.field public static constructor:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7785
    const v0, -0x195499

    sput v0, Lorg/telegram/tgnet/TLRPC$TL_phoneCall;->constructor:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7784
    invoke-direct {p0}, Lorg/telegram/tgnet/TLRPC$PhoneCall;-><init>()V

    return-void
.end method


# virtual methods
.method public readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V
    .locals 9
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p2, "exception"    # Z

    .prologue
    .line 7789
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt64(Z)J

    move-result-wide v4

    iput-wide v4, p0, Lorg/telegram/tgnet/TLRPC$TL_phoneCall;->id:J

    .line 7790
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt64(Z)J

    move-result-wide v4

    iput-wide v4, p0, Lorg/telegram/tgnet/TLRPC$TL_phoneCall;->access_hash:J

    .line 7791
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    iput v4, p0, Lorg/telegram/tgnet/TLRPC$TL_phoneCall;->date:I

    .line 7792
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    iput v4, p0, Lorg/telegram/tgnet/TLRPC$TL_phoneCall;->admin_id:I

    .line 7793
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    iput v4, p0, Lorg/telegram/tgnet/TLRPC$TL_phoneCall;->participant_id:I

    .line 7794
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readByteArray(Z)[B

    move-result-object v4

    iput-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_phoneCall;->g_a_or_b:[B

    .line 7795
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt64(Z)J

    move-result-wide v4

    iput-wide v4, p0, Lorg/telegram/tgnet/TLRPC$TL_phoneCall;->key_fingerprint:J

    .line 7796
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    invoke-static {p1, v4, p2}, Lorg/telegram/tgnet/TLRPC$TL_phoneCallProtocol;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_phoneCallProtocol;

    move-result-object v4

    iput-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_phoneCall;->protocol:Lorg/telegram/tgnet/TLRPC$TL_phoneCallProtocol;

    .line 7797
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    invoke-static {p1, v4, p2}, Lorg/telegram/tgnet/TLRPC$TL_phoneConnection;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_phoneConnection;

    move-result-object v4

    iput-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_phoneCall;->connection:Lorg/telegram/tgnet/TLRPC$TL_phoneConnection;

    .line 7798
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v2

    .line 7799
    .local v2, "magic":I
    const v4, 0x1cb5c415

    if-eq v2, v4, :cond_0

    .line 7800
    if-eqz p2, :cond_1

    .line 7801
    new-instance v4, Ljava/lang/RuntimeException;

    const-string/jumbo v5, "wrong Vector magic, got %x"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 7805
    :cond_0
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v1

    .line 7806
    .local v1, "count":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    if-ge v0, v1, :cond_3

    .line 7807
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    invoke-static {p1, v4, p2}, Lorg/telegram/tgnet/TLRPC$TL_phoneConnection;->TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$TL_phoneConnection;

    move-result-object v3

    .line 7808
    .local v3, "object":Lorg/telegram/tgnet/TLRPC$TL_phoneConnection;
    if-nez v3, :cond_2

    .line 7814
    .end local v0    # "a":I
    .end local v1    # "count":I
    .end local v3    # "object":Lorg/telegram/tgnet/TLRPC$TL_phoneConnection;
    :cond_1
    :goto_1
    return-void

    .line 7811
    .restart local v0    # "a":I
    .restart local v1    # "count":I
    .restart local v3    # "object":Lorg/telegram/tgnet/TLRPC$TL_phoneConnection;
    :cond_2
    iget-object v4, p0, Lorg/telegram/tgnet/TLRPC$TL_phoneCall;->alternative_connections:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7806
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 7813
    .end local v3    # "object":Lorg/telegram/tgnet/TLRPC$TL_phoneConnection;
    :cond_3
    invoke-virtual {p1, p2}, Lorg/telegram/tgnet/AbstractSerializedData;->readInt32(Z)I

    move-result v4

    iput v4, p0, Lorg/telegram/tgnet/TLRPC$TL_phoneCall;->start_date:I

    goto :goto_1
.end method

.method public serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V
    .locals 4
    .param p1, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;

    .prologue
    .line 7817
    sget v2, Lorg/telegram/tgnet/TLRPC$TL_phoneCall;->constructor:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 7818
    iget-wide v2, p0, Lorg/telegram/tgnet/TLRPC$TL_phoneCall;->id:J

    invoke-virtual {p1, v2, v3}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    .line 7819
    iget-wide v2, p0, Lorg/telegram/tgnet/TLRPC$TL_phoneCall;->access_hash:J

    invoke-virtual {p1, v2, v3}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    .line 7820
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_phoneCall;->date:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 7821
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_phoneCall;->admin_id:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 7822
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_phoneCall;->participant_id:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 7823
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_phoneCall;->g_a_or_b:[B

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeByteArray([B)V

    .line 7824
    iget-wide v2, p0, Lorg/telegram/tgnet/TLRPC$TL_phoneCall;->key_fingerprint:J

    invoke-virtual {p1, v2, v3}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt64(J)V

    .line 7825
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_phoneCall;->protocol:Lorg/telegram/tgnet/TLRPC$TL_phoneCallProtocol;

    invoke-virtual {v2, p1}, Lorg/telegram/tgnet/TLRPC$TL_phoneCallProtocol;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 7826
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_phoneCall;->connection:Lorg/telegram/tgnet/TLRPC$TL_phoneConnection;

    invoke-virtual {v2, p1}, Lorg/telegram/tgnet/TLRPC$TL_phoneConnection;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 7827
    const v2, 0x1cb5c415

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 7828
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_phoneCall;->alternative_connections:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 7829
    .local v1, "count":I
    invoke-virtual {p1, v1}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 7830
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 7831
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$TL_phoneCall;->alternative_connections:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_phoneConnection;

    invoke-virtual {v2, p1}, Lorg/telegram/tgnet/TLRPC$TL_phoneConnection;->serializeToStream(Lorg/telegram/tgnet/AbstractSerializedData;)V

    .line 7830
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 7833
    :cond_0
    iget v2, p0, Lorg/telegram/tgnet/TLRPC$TL_phoneCall;->start_date:I

    invoke-virtual {p1, v2}, Lorg/telegram/tgnet/AbstractSerializedData;->writeInt32(I)V

    .line 7834
    return-void
.end method